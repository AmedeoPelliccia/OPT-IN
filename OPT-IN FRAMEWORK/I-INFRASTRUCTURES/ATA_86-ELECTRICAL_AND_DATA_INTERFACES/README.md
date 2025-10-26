# ATA 86: Electrical and Data Interfaces

Este capítulo define los estándares para interfaces eléctricas y de datos entre la aeronave AMPEL360 y la infraestructura terrestre, incluyendo energía HVDC y enlaces de datos seguros.

## Gobernanza
* **Ciclo de Vida de la Norma:** Cada documento de estándar (`-STD`) tiene un estado de ciclo de vida (`DRAFT`, `CANDIDATE`, `RATIFIED`, `DEPRECATED`) definido en sus metadatos.
* **Cumplimiento Verificable:** Cada norma de interfaz (ICD, PROTOCOL, SPEC) está directamente vinculada a un procedimiento de prueba de cumplimiento (`TEST_STD-89-xxx`).
* **Seguridad por Diseño:** Las interfaces de datos críticas incluyen un estándar de seguridad dedicado (`SEC_STD`) y requieren firmas digitales para sus especificaciones API.

## Contenido

### 01-HIGH_VOLTAGE_DC_GROUND_POWER
Estándares para energía de tierra en alta tensión DC:
- **ICD_STD-86-101:** HVDC Ground Power Connector - Especificación del conector
- **PROTOCOL_STD-86-102:** HVDC Charging Handshake - Protocolo de handshake de carga

### 02-HIGH_BANDWIDTH_GATE_INTERFACE
Estándares para enlace de datos de alta velocidad en puerta:
- **ICD_STD-86-201:** Secure Gate Datalink Physical Connector - Conector físico seguro
- **API_STD-86-202:** DPP Ground Sync API - API para sincronización con tierra
- **SEC_STD-86-203:** Gate Datalink Security - Estándares de seguridad

## Referencias Cruzadas
- **ATA 24:** Electrical Power (sistema eléctrico de la aeronave)
- **ATA 46:** Information Systems (sistemas de información)
- **ATA 95:** Digital Product Passport (sincronización de datos)
- **ATA 89:** Infrastructure Compliance and Certification (procedimientos de prueba)

---

*Parte del Mapeo de Capítulos ATA AMPEL360 - Marco OPT-IN*
