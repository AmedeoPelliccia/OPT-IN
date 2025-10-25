# ICD_STD-86-201: Secure Gate Datalink Physical Connector

**Revisión:** 1.0.0  
**Estado:** CANDIDATE  
**Fecha Efectiva:** 2029-06-01

## 1. Alcance

Este documento define el conector físico y las especificaciones eléctricas para el enlace de datos de alta velocidad en puerta entre la aeronave AMPEL360 y la infraestructura aeroportuaria.

## 2. Referencias Normativas

- **IEEE 802.3:** Ethernet Standards
- **API_STD-86-202:** DPP Ground Sync API
- **SEC_STD-86-203:** Gate Datalink Security
- **ATA 46-40:** Data Loading

## 3. Especificaciones de Interfaz

### 3.1 Conector Físico

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo de Conector** | RJ45 shielded (8P8C) + USB-C combo |
| **Ethernet Standard** | 10GBASE-T (10 Gigabit Ethernet) |
| **Cable Type** | Cat 6a STP (Shielded Twisted Pair) |
| **Longitud Máxima de Cable** | 30 metros |
| **Grado de Protección** | IP65 (conectado) |
| **Material del Cuerpo** | Aleación de aluminio anodizado |

### 3.2 Pinout Ethernet (RJ45)

| Pin | Función | Color (T568B) |
|:----|:--------|:--------------|
| 1 | TX+ (Data A) | Naranja/Blanco |
| 2 | TX- (Data A) | Naranja |
| 3 | RX+ (Data B) | Verde/Blanco |
| 4 | Power + (PoE++) | Azul |
| 5 | Power + (PoE++) | Azul/Blanco |
| 6 | RX- (Data B) | Verde |
| 7 | Power - (PoE++) | Marrón/Blanco |
| 8 | Power - (PoE++) | Marrón |

### 3.3 Power over Ethernet (PoE++)

- **Standard:** IEEE 802.3bt (Type 4)
- **Power Delivery:** 100W (aircraft side powered)
- **Voltage:** 52-57 VDC
- **Current:** Up to 2A per pair

### 3.4 USB-C (Auxiliary Data)

- **Standard:** USB 3.2 Gen 2 (10 Gbps)
- **Power Delivery:** USB-PD 3.0 (100W)
- **Alternate Modes:** DisplayPort 1.4 (for maintenance displays)

## 4. Características de Desempeño

| Parámetro | Especificación |
|:----------|:---------------|
| **Ancho de Banda** | 10 Gbps (full duplex) |
| **Latencia** | < 1 ms |
| **Jitter** | < 100 ns |
| **BER (Bit Error Rate)** | < 10⁻¹² |
| **Temperatura de Operación** | -40°C a +85°C |

## 5. Protocolo de Conexión

```
1. PHYSICAL CONNECTION
   └─ Alinear conector con guías
   └─ Insertar hasta el tope (audible click)
   └─ Verificar LED de enlace (verde = OK)

2. LINK ESTABLISHMENT
   └─ Auto-negotiation (802.3ab)
   └─ Establecer velocidad 10GBASE-T
   └─ Verificar integridad de enlace

3. SECURITY HANDSHAKE
   └─ Iniciar TLS 1.3 handshake
   └─ Autenticación mutua (ver SEC_STD-86-203)
   └─ Establecer túnel cifrado

4. DATA READY
   └─ Interfaz lista para transferencia de datos
```

## 6. Seguridad Física

- **Bloqueo Mecánico:** Pestillo de seguridad previene desconexión accidental
- **Indicador Visual:** LED multicolor indica estado de conexión
  - Verde: Conectado y autenticado
  - Ámbar: Conectado, sin autenticación
  - Rojo: Error o fallo de seguridad
- **Detección de Manipulación:** Sensor detecta intentos de acceso no autorizado

---

*Refs: ATA 46-40, IEEE 802.3, API_STD-86-202, SEC_STD-86-203*  
*Procedimiento de Cumplimiento: TEST_STD-89-201*
