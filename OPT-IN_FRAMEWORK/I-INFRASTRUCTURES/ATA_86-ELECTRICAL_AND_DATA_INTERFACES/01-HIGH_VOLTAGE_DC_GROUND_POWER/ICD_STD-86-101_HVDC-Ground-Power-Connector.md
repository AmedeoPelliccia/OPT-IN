# ICD_STD-86-101: HVDC Ground Power Connector

**Revisión:** 1.0.0  
**Estado:** CANDIDATE  
**Fecha Efectiva:** 2029-06-01

## 1. Alcance

Este documento de control de interfaz (ICD) define el conector estándar de energía de tierra de alto voltaje en corriente continua (HVDC) para la aeronave AMPEL360.

## 2. Referencias Normativas

- **IEC 61851-23:** Electric vehicle conductive charging system - Part 23: DC electric vehicle charging station
- **SAE J3068:** Electric Vehicle Power Transfer System Using Conductive Automated Connection
- **ATA 24:** Electrical Power
- **TEST_STD-89-101:** Infrastructure System Fidelity Test

## 3. Especificaciones de Interfaz

### 3.1 Conector Físico

| Parámetro | Especificación |
|:----------|:---------------|
| **Estándar de Conector** | CCS2 (Combined Charging System 2) adaptado |
| **Voltaje Nominal** | 800 VDC |
| **Rango de Voltaje** | 400-900 VDC |
| **Corriente Máxima** | 500 A |
| **Potencia Máxima** | 450 kW |
| **Material de Contactos** | Cobre plateado |
| **Grado de Protección** | IP67 (conectado), IP54 (desconectado) |
| **Aislamiento** | Clase I, 2000 VDC |

### 3.2 Pinout del Conector

| Pin | Función | Especificación |
|:----|:--------|:---------------|
| **DC+** | Positivo de potencia | 800V, 500A |
| **DC-** | Negativo de potencia | Retorno |
| **PE** | Tierra de protección | 70 mm² mínimo |
| **CP** | Control Pilot | Señal PWM 1 kHz |
| **PP** | Proximity Pilot | Detección de conexión |
| **CAN-H** | CAN Bus High | ISO 11898 |
| **CAN-L** | CAN Bus Low | ISO 11898 |

### 3.3 Características Mecánicas

- **Fuerza de Inserción:** < 200 N
- **Fuerza de Extracción:** < 150 N
- **Ciclos de Vida Mínimos:** 10,000 conexiones
- **Resistencia de Contacto:** < 0.5 mΩ por contacto
- **Temperatura de Operación:** -40°C a +85°C

## 4. Protocolo de Conexión y Carga

### 4.1 Secuencia de Conexión

```
1. PRE-CONNECTION
   └─ Verificar aeronave en modo de tierra
   └─ Verificar frenos de estacionamiento aplicados
   └─ Verificar ausencia de fallos eléctricos

2. PHYSICAL CONNECTION
   └─ Alinear conector con guías mecánicas
   └─ Insertar hasta escuchar "click" de bloqueo
   └─ Verificar indicador LED verde en conector

3. ELECTRICAL HANDSHAKE
   └─ Ground → Aircraft: HELLO (via CAN)
   └─ Aircraft → Ground: CAPABILITIES
      ├─ Battery Voltage: [XXX] VDC
      ├─ Max Charge Current: [XXX] A
      ├─ Battery SOC: [XX]%
      └─ Battery Temperature: [XX]°C
   └─ Ground → Aircraft: CHARGE_PARAMS
      ├─ Available Voltage: [XXX] VDC
      ├─ Available Current: [XXX] A
      └─ Max Power: [XXX] kW

4. SAFETY CHECKS
   └─ Verify insulation resistance > 500 MΩ
   └─ Verify ground continuity < 0.1 Ω
   └─ Verify no voltage on DC pins before contactor close

5. READY TO CHARGE
   └─ Ground closes main contactors
   └─ Charging begins per PROTOCOL_STD-86-102
```

### 4.2 Características de Seguridad

- **Bloqueo Mecánico:** Conector no puede ser desconectado bajo corriente
- **Detección de Conexión:** Proximity Pilot detecta presencia física del conector
- **Control de Carga:** Control Pilot regula corriente mediante PWM
- **Interlock de Emergencia:** Botón de parada de emergencia en ambos lados
- **Monitoreo de Aislamiento:** Detección de fugas a tierra < 500 MΩ
- **Protección contra Sobretemperatura:** Sensor térmico en contactos, umbral 90°C

## 5. Requisitos de la Infraestructura

### 5.1 Sistema de Tierra HVDC

- **Fuente de Energía:** Rectificador trifásico AC/DC o banco de baterías
- **Regulación de Voltaje:** ±2% de voltaje nominal
- **Ondulación (Ripple):** < 5% RMS
- **Eficiencia:** > 95% a carga nominal
- **Protección:** Fusibles ultrarrápidos, contactor de emergencia, GFCI

### 5.2 Sistema de Comunicación

- **CAN Bus:** ISO 11898, 500 kbps
- **Protocolo de Aplicación:** ISO 15118 (V2G Communication)
- **Cifrado:** TLS 1.3 para datos sensibles
- **Autenticación:** Certificados X.509 (Plug & Charge)

## 6. Mantenimiento e Inspección

- **Inspección Visual:** Antes de cada uso (daños, contaminación)
- **Prueba de Continuidad de Tierra:** Semanal
- **Medición de Resistencia de Contacto:** Mensual
- **Prueba de Aislamiento:** Mensual (1000 VDC, 60 segundos)
- **Reemplazo de Sellos:** Anualmente o según desgaste
- **Calibración de Sensores:** Semestral

## 7. Compatibilidad

Este estándar es compatible con:
- Sistemas eléctricos de aeronaves AMPEL360 (ATA 24)
- Estaciones de carga HVDC según IEC 61851-23
- Infraestructura de vehículos eléctricos (adaptadores disponibles)

---

**Notas de Seguridad:**
- Alto voltaje presente - Personal cualificado únicamente
- Usar EPP dieléctrico (guantes, calzado) durante conexión
- No desconectar bajo carga - Verificar corriente = 0A antes de desconectar

---

*Refs: ATA 24, IEC 61851-23, SAE J3068*  
*Procedimiento de Cumplimiento: TEST_STD-89-101*
