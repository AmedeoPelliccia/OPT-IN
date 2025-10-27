# PROTOCOL_STD-86-102: HVDC Charging Handshake

**Revisión:** 1.0.0  
**Estado:** CANDIDATE  
**Fecha Efectiva:** 2025-10-27

## 1. Alcance

Este documento define el protocolo de comunicación para el proceso de carga HVDC entre la infraestructura de tierra y la aeronave AMPEL360, incluyendo negociación de parámetros, control de carga y gestión de errores.

## 2. Referencias Normativas

- **ICD_STD-86-101:** HVDC Ground Power Connector
- **ISO 15118:** Road vehicles - Vehicle to grid communication interface
- **IEC 61851-23:** DC electric vehicle charging station
- **ATA 24:** Electrical Power

## 3. Arquitectura de Comunicación

### 3.1 Stack de Protocolos

```
┌─────────────────────────────────────┐
│  Application Layer (Charge Control) │
├─────────────────────────────────────┤
│  ISO 15118-2 (V2G Protocol)         │
├─────────────────────────────────────┤
│  TLS 1.3 (Security Layer)           │
├─────────────────────────────────────┤
│  TCP/IP (Transport)                 │
├─────────────────────────────────────┤
│  Ethernet over CAN (Data Link)      │
├─────────────────────────────────────┤
│  CAN Bus (Physical - ISO 11898)     │
└─────────────────────────────────────┘
```

### 3.2 Parámetros de Comunicación

- **Velocidad CAN:** 500 kbps
- **Formato de Mensaje:** CAN 2.0B (29-bit identifier)
- **Latencia Máxima:** 100 ms
- **Frecuencia de Actualización:** 10 Hz (estado), 100 Hz (crítico)

## 4. Secuencia de Carga

### 4.1 Fase 1: Inicialización

```
GROUND → AIRCRAFT: SessionSetupReq
{
  "protocol_version": "ISO15118-2:2019",
  "session_id": <UUID>,
  "timestamp": <ISO8601>
}

AIRCRAFT → GROUND: SessionSetupRes
{
  "session_id": <UUID>,
  "evse_id": "AMPEL360-GND-001",
  "response_code": "OK"
}
```

### 4.2 Fase 2: Autenticación

```
GROUND → AIRCRAFT: AuthorizationReq
{
  "auth_mode": "PnC",  // Plug and Charge
  "certificate": <X.509_cert>
}

AIRCRAFT → GROUND: AuthorizationRes
{
  "auth_result": "AUTHORIZED",
  "contract_id": "AMPEL360-AC-12345"
}
```

### 4.3 Fase 3: Negociación de Parámetros

```
AIRCRAFT → GROUND: ChargeParameterDiscoveryReq
{
  "battery_capacity": 1500,  // kWh
  "battery_voltage_current": 720,  // VDC
  "battery_voltage_target": 800,  // VDC
  "battery_soc": 35,  // %
  "battery_temperature": 25,  // °C
  "max_current": 500,  // A
  "max_power": 400,  // kW
  "target_soc": 90  // %
}

GROUND → AIRCRAFT: ChargeParameterDiscoveryRes
{
  "evse_voltage_range": {"min": 400, "max": 900},  // VDC
  "evse_current_max": 500,  // A
  "evse_power_max": 450,  // kW
  "charging_profile": "FAST_CHARGE"
}
```

### 4.4 Fase 4: Pre-Charge

```
AIRCRAFT → GROUND: PreChargeReq
{
  "target_voltage": 720,  // VDC (match battery voltage)
  "target_current": 2  // A (trickle)
}

GROUND → AIRCRAFT: PreChargeRes
{
  "present_voltage": 720,  // VDC
  "voltage_deviation": 0.5  // V
}

// Repeat until voltage_deviation < 5V
```

### 4.5 Fase 5: Carga Activa

```
AIRCRAFT → GROUND: PowerDeliveryReq
{
  "charge_progress": "START",
  "current_demand": 50  // A (initial ramp)
}

GROUND → AIRCRAFT: PowerDeliveryRes
{
  "present_voltage": 722,  // VDC
  "present_current": 50,  // A
  "max_current_limit": 500  // A
}

// Aircraft ramps up current demand
AIRCRAFT → GROUND: CurrentDemandReq
{
  "current_demand": 500,  // A
  "voltage_target": 800  // VDC
}

GROUND → AIRCRAFT: CurrentDemandRes
{
  "present_voltage": 785,  // VDC
  "present_current": 495,  // A
  "evse_status": "CHARGING",
  "isolation_status": "VALID"  // > 500 MΩ
}

// Update every 100ms during active charge
```

### 4.6 Fase 6: Finalización

```
AIRCRAFT → GROUND: PowerDeliveryReq
{
  "charge_progress": "STOP",
  "current_demand": 0  // A
}

GROUND → AIRCRAFT: PowerDeliveryRes
{
  "present_voltage": 800,  // VDC
  "present_current": 0,  // A
  "evse_status": "READY"
}

// Ground opens contactors
GROUND → AIRCRAFT: SessionStopReq
{
  "charging_session": {
    "energy_delivered": 825,  // kWh
    "duration": 7200,  // seconds
    "avg_power": 412,  // kW
    "final_soc": 90  // %
  }
}

AIRCRAFT → GROUND: SessionStopRes
{
  "response_code": "OK"
}
```

## 5. Control de Carga Dinámico

### 5.1 Curva de Carga CC-CV

La carga sigue un perfil de corriente constante (CC) hasta alcanzar el voltaje objetivo, luego cambia a voltaje constante (CV):

```
Phase 1: CC (Constant Current)
├─ Current = Max (e.g., 500A)
├─ Voltage increases linearly
└─ Until Voltage = Target (e.g., 800V)

Phase 2: CV (Constant Voltage)
├─ Voltage = Target (e.g., 800V)
├─ Current decreases exponentially
└─ Until SOC = Target (e.g., 90%)
```

### 5.2 Limitaciones Dinámicas

El sistema ajusta la carga en tiempo real basado en:

- **Temperatura de Batería:** Reduce corriente si T > 45°C
- **Temperatura de Conector:** Reduce corriente si T > 75°C
- **Voltaje de Red:** Ajusta potencia si grid voltage < 95% nominal
- **Estado de Red:** Participa en demand response si requerido

## 6. Gestión de Errores

### 6.1 Códigos de Error

| Código | Descripción | Acción |
|:-------|:------------|:-------|
| **E_001** | Fallo de comunicación | Reintentar 3 veces, luego abortar |
| **E_002** | Fallo de autenticación | Notificar operador, no cargar |
| **E_003** | Sobrevoltaje detectado | Abrir contactores inmediatamente |
| **E_004** | Sobrecorriente detectado | Reducir corriente a 50%, evaluar |
| **E_005** | Fallo de aislamiento | Abortar carga, desconectar |
| **E_006** | Temperatura excesiva | Reducir potencia o pausar |
| **E_007** | BMS error | Abortar carga, notificar mantenimiento |

### 6.2 Procedimiento de Emergencia

En caso de fallo crítico:

```
1. Enviar mensaje EMERGENCY_STOP
2. Reducir corriente a 0A en < 500ms
3. Abrir contactores principales
4. Activar indicador de fallo (LED rojo)
5. Registrar evento en log
6. Notificar a operador y personal de seguridad
```

## 7. Seguridad

- **Cifrado:** TLS 1.3 con AES-256-GCM
- **Autenticación:** Certificados X.509 (PKI)
- **Integridad:** HMAC-SHA256 para mensajes críticos
- **Replay Protection:** Timestamps y nonces
- **Autorización:** Lista blanca de certificados válidos

## 8. Registro y Telemetría

Cada sesión de carga genera un registro con:
- ID de sesión y timestamps
- Energía entregada y duración
- Perfil de voltaje y corriente
- Eventos y alarmas
- Eficiencia y pérdidas
- Firma digital del registro

---

*Refs: ICD_STD-86-101, ATA 24, ISO 15118, IEC 61851-23*  
*Procedimiento de Cumplimiento: TEST_STD-89-101*
