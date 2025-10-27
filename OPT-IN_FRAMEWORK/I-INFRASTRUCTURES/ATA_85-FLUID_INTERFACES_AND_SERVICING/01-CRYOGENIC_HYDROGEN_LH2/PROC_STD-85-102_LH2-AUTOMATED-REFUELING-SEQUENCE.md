# PROC_STD-85-102: LH2 Automated Refueling Sequence

**Revisión:** 1.0.0  
**Estado:** CANDIDATE  
**Fecha Efectiva:** 2025-10-27

## 1. Alcance

Este documento de procedimiento estándar define la secuencia automatizada de reabastecimiento de hidrógeno líquido (LH₂) para la aeronave AMPEL360, incluyendo protocolos de comunicación, puntos de verificación y procedimientos de emergencia.

## 2. Referencias Normativas

- **ICD_STD-85-101:** LH2 Refueling Coupling Interface
- **ISO 21013:** Cryogenic vessels - Pressure-relief accessories
- **NFPA 2:** Hydrogen Technologies Code
- **ATA 28-60:** Fuel Storage System
- **TEST_STD-89-101:** LH2 Hydrant System Fidelity Test

## 3. Prerrequisitos del Sistema

### 3.1 Estado de la Aeronave

- Motores apagados y enfriados (< 50°C)
- Sistema eléctrico en modo de tierra
- Frenos de estacionamiento aplicados
- Todas las puertas cerradas excepto puerta de servicio
- Personal no esencial evacuado (radio de 10 metros)

### 3.2 Estado de la Infraestructura

- Sistema de hidratante LH₂ presurizado y verificado
- Sensores de H₂ operacionales y calibrados
- Sistema de venteo de emergencia activo
- Equipo de respuesta a emergencias en standby
- Condiciones meteorológicas: viento < 15 m/s, sin tormenta eléctrica

## 4. Secuencia Automatizada de Reabastecimiento

### 4.1 Fase 1: Inicialización (Pre-Connection)

```
STEP 1.1: SYSTEM HANDSHAKE
├─ Ground System → Aircraft: REQUEST_REFUEL
├─ Aircraft → Ground System: ACK + STATUS
│  └─ Tank Level: [XX]%
│  └─ Tank Temperature: [XX]K
│  └─ Tank Pressure: [XX]bar
└─ Ground System → Aircraft: REFUEL_PARAMS
   └─ Target Level: [XX]%
   └─ Flow Rate: [XX] kg/min
   └─ Max Pressure: [XX] bar

STEP 1.2: SAFETY CHECKS
├─ Verify H₂ sensors < 0.1% LEL
├─ Verify no ignition sources within 10m
├─ Verify emergency systems ready
└─ Verify weather conditions acceptable

STEP 1.3: COUPLING CONNECTION
├─ Operator connects coupling per ICD_STD-85-101
├─ Aircraft detects coupling pressure
└─ System verifies leak-free connection
```

### 4.2 Fase 2: Pre-Cooling

```
STEP 2.1: THERMAL CONDITIONING
├─ Ground System: Open pre-cool valve
├─ Flow cold H₂ vapor through lines (60 seconds)
├─ Monitor temperature: target < -250°C
└─ Aircraft: Confirm thermal stability

STEP 2.2: PRESSURE EQUALIZATION
├─ Equalize pressure between ground and aircraft
├─ Target pressure: 2.5 bar ± 0.2 bar
└─ Verify pressure stability (10 seconds)
```

### 4.3 Fase 3: Transferencia de LH₂

```
STEP 3.1: INITIATE TRANSFER
├─ Ground System: Open main transfer valve
├─ Start flow at 10% target rate
├─ Monitor for 30 seconds
└─ Ramp up to 100% target rate over 60 seconds

STEP 3.2: ACTIVE TRANSFER
├─ Maintain constant flow rate: 50-100 kg/min
├─ Monitor parameters every 5 seconds:
│  ├─ Flow rate
│  ├─ Pressure (aircraft tank)
│  ├─ Temperature (LH₂)
│  ├─ H₂ ambient concentration
│  └─ Tank level
└─ Adjust flow rate if pressure > 7.5 bar

STEP 3.3: TOP-OFF
├─ When tank level reaches 95% target:
│  └─ Reduce flow rate to 20%
├─ When tank level reaches 99% target:
│  └─ Reduce flow rate to 5%
└─ When tank level reaches 100% target:
   └─ Close transfer valve
```

### 4.4 Fase 4: Post-Transfer y Desconexión

```
STEP 4.1: PURGE AND DEPRESSURIZE
├─ Purge transfer line with N₂ gas
├─ Vent residual H₂ to flare stack
├─ Reduce line pressure to < 0.5 bar
└─ Wait 60 seconds for stabilization

STEP 4.2: DISCONNECT COUPLING
├─ Aircraft → Ground System: TRANSFER_COMPLETE
├─ Ground System: Confirm ready to disconnect
├─ Operator disconnects coupling per ICD_STD-85-101
└─ Aircraft: Confirm coupling disconnected

STEP 4.3: FINAL VERIFICATION
├─ Verify tank level within ±1% of target
├─ Verify tank pressure < 8 bar
├─ Verify H₂ sensors < 0.1% LEL
└─ Generate refueling report
```

## 5. Protocolos de Comunicación

### 5.1 Enlace de Datos

- **Protocolo:** Ethernet TCP/IP sobre cable blindado
- **Velocidad:** 100 Mbps
- **Cifrado:** TLS 1.3 con autenticación mutua
- **Latencia Máxima:** 100 ms
- **Frecuencia de Actualización:** 1 Hz (normal), 10 Hz (crítico)

### 5.2 Mensajes de Estado

| Código | Mensaje | Acción Requerida |
|:-------|:--------|:-----------------|
| **REF-000** | READY | Sistema listo para iniciar |
| **REF-100** | IN_PROGRESS | Transferencia en curso |
| **REF-200** | COMPLETE | Transferencia completada |
| **REF-E01** | LEAK_DETECTED | ABORTAR - Desconectar inmediatamente |
| **REF-E02** | OVERPRESSURE | ABORTAR - Ventilar y desconectar |
| **REF-E03** | OVERTEMPERATURE | ABORTAR - Detener flujo |
| **REF-W01** | FLOW_ANOMALY | Reducir tasa de flujo |
| **REF-W02** | SENSOR_DEGRADED | Continuar con monitoreo manual |

## 6. Procedimientos de Emergencia

### 6.1 Fuga de H₂ Detectada

```
1. Sistema automáticamente cierra todas las válvulas
2. Activa venteo de emergencia
3. Suena alarma audible y visual
4. Notifica a equipo de emergencia
5. Operador evacúa a zona segura (> 25 metros)
6. Esperar confirmación de H₂ < 0.1% LEL antes de reentrar
```

### 6.2 Sobrepresión de Tanque

```
1. Sistema cierra válvula de transferencia
2. Abre válvula de alivio de presión de aeronave
3. Ventila exceso a sistema de flare
4. Monitorea presión hasta < 7 bar
5. Evaluar causa raíz antes de reintentar
```

### 6.3 Pérdida de Comunicación

```
1. Sistema entra en modo "safe hold"
2. Mantiene estado actual durante 30 segundos
3. Si no se restablece comunicación:
   └─ Reduce flujo a 0% en 10 segundos
   └─ Cierra válvula de transferencia
   └─ Activa alarma de atención manual
```

## 7. Requisitos de Entrenamiento

- Certificación en Manejo de Criogénicos (Nivel 2)
- Certificación en Seguridad de Hidrógeno (NFPA 2)
- Entrenamiento en Procedimientos de Emergencia
- Renovación anual obligatoria

## 8. Registros y Documentación

Cada operación de reabastecimiento debe generar un registro que incluya:
- Fecha, hora, ubicación
- ID de aeronave y operador
- Volumen transferido y tiempo de operación
- Parámetros monitoreados (presión, temperatura, flujo)
- Alarmas o eventos anormales
- Firma digital del operador

---

*Refs: ICD_STD-85-101, ATA 28-60, ISO 21013, NFPA 2*  
*Procedimiento de Cumplimiento: TEST_STD-89-101*
