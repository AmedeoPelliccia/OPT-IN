# ATA 73 - ENGINE FUEL AND CONTROL

## Descripción

Sistema de control de combustible del motor, FADEC y sistemas de dosificación para el proyecto **OPT-IN\_FRAMEWORK/T-TECHNOLOGY\_AMPEDEOPELLICCIA-ON\_BOARD\_SYSTEMS/P-PROPULSION**.

---

## 🛠️ Estructura de Directorios (PLM)

Cada subcarpeta (ATA-73-YY) debería contener esta estructura para la gestión del ciclo de vida del producto (PLM):

* **01-REQUIREMENTS:** Especificaciones funcionales, de rendimiento y de seguridad.
* **02-DESIGN:** Documentos de diseño de alto y bajo nivel, esquemas.
* **03-ANALYSIS\_AND\_MODELLING:** Informes de simulación, modelos térmicos/fluidos/estructurales.
* **04-OPTIMIZATION:** Registros de trade-offs de diseño y mejoras.
* **05-PROTOTYPING\_AND\_TESTING:** Registros de pruebas de prototipos y resultados iniciales.
* **06-VERIFICATION\_AND\_VALIDATION (V&V):** Planes, procedimientos e informes de V&V.
* **07-PACKAGING:** Instrucciones y listas de empaquetado (LRA, LRU).
* **08-CERTIFICATION:** Documentación de cumplimiento (DO-178C, DO-254, ARP-4754A).
* **09-INTEGRATION:** Procedimientos de montaje e integración con otros sistemas.
* **10-DEPLOYMENT:** Paquetes de instalación de software e instrucciones de hardware.
* **11-OPERATIONS\_AND\_SERVICES:** Manuales de operación, mantenimiento (AMM), e ILS.

---

## ⛽ Componentes Físicos y Software (ATA 73)

### ATA-73-00 — General (YY = 00)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **730001** | Conjunto de tuberías maestras de combustible | Backbone de distribución. | **Material/M&P crítico**. |
| **730002** | Paneles de servicio y estaciones de prueba | Acceso para llenado/pruebas. | Interfaz con equipos de tierra. |
| **730003** | Rack LRU de control de combustible | Alojar controladores y relés. | **Enclosure EMI/thermal** (protección). |
| **730004** | Sistema de duplicado/redundancia física | Fail-operational por separación física. | Requisito de **seguridad crítica**. |
| **730005** | Equipos de seguridad de compartimiento | Control drenajes y contención de fugas. | Interfaces de drenaje/sumideros. |
| **730006** | Carro de servicio y herramientas de MRO de combustible | Soporte de mantenimiento y calibración. | Herramientas de MRO (tierra). |
| **730010** | Fuel Systems Supervisor SW | Coordinación alto nivel entre fuel, engines y FM. | **DO-178C Nivel A/B**. |
| **730011** | Part Number / PN Registry Interface (CM) | Integrar PN↔BOM para piezas fuel. | Nivel C (herramienta de CM). |
| **730012** | Evidence / Manifest Generator SW | Empaquetar logs y manifest para certificación. | Nivel C (generación de informes). |

---

### ATA-73-10 — Fuel System Overview & Architecture (YY = 10)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **731001** | Main fuel lines (primary & secondary) | Transporte principal entre tanques y AGB/engine. | Integrity/Leak test. |
| **731002** | Fuel system manifold (central distribution manifold) | Ramificar y aislar zonas. | Actuación de válvulas. |
| **731003** | Structural supports and bulkhead pass-throughs | Soporte y estanqueidad en BWB. | Structural integrity. |
| **731004** | Fire/thermal shielding for fuel plumbing | Protección térmica y contra incendio. | Requisito de protección contra incendios. |
| **731005** | Quick-disconnect interfaces & warning interlocks | Seguridad en conexión/desconexión. | Interlocks para mantenimiento. |
| **731006** | Isolation valves & service shutoffs (lokout) | Seccionamiento para mantenimiento. | Lockout/Tagout capability. |
| **731010** | Fuel Architecture Manager SW | Mapa topológico, effectivity y control de modos. | Nivel B (control de modos). |
| **731011** | Config & Effectivity Tooling SW | Gestionar variantes MSN/config. | Herramienta (gestión de datos). |

---

### ATA-73-20 — Fuel Pumps & Pressurization (YY = 20)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **732001** | Engine-driven fuel pumps (primary) | Presión primaria para metering. | Interfaz mecánica y control de presión. |
| **732002** | Boost / transfer pumps (electric) | Transferencias tanque→tank y redundancia. | Interfaz de alimentación eléctrica. |
| **732003** | Pump drivers & motor controllers | Alimentar bombas y controlar caudal. | **HW crítico** (Power Electronics). |
| **732004** | Pump filters & bypass valves | Proteger bombas y evitar cavitación. | Monitoreo de diferencial de presión. |
| **732005** | Pressure regulators & relief valves | Mantener presión de sistema y seguridad. | Ajuste de setpoints. |
| **732006** | Pump mounting & vibration isolation hardware | Fiabilidad mecánica y durabilidad. | Requisito de aislamiento de vibración. |
| **732010** | Pump Control FW | Control closed-loop presión/caudal. | **DO-178C Nivel A/B** si afecta disponibilidad motor. |
| **732011** | Pump Health & Predictive SW | Detección degradación y RUL. | Nivel B (mantenimiento predictivo). |
| **732012** | Drive Inverter FW (pump drivers) | Control torque/velocidad. | **DO-178C A / DO-254** si FPGA. |

---

### ATA-73-30 — Fuel Metering & Control Units (FCU) (YY = 30)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **733001** | Fuel Control Unit (FCU) hardware (valve body) | Dosificación para combustor/FADEC. | Interfaz con FADEC. |
| **733002** | Fuel metering valves (servo/proportional) | Ajuste fin de flujo. | Controlado por 733010. |
| **733003** | Mechanical linkages and actuation hardware | Interfaces entre FCU y actuadores. | Calibración de recorrido. |
| **733004** | FCU housing with thermal/cooling features | Mantener temperatura operacional. | Requisito de gestión térmica. |
| **733005** | Backup mechanical fail-safe valve | Modo seguro si falla electrónica. | **Mecanismo de seguridad** (última línea). |
| **733006** | FCU connectors and harnesses | Garantizar señal/energía segura. | **Certificado para ambiente de combustible**. |
| **733010** | FCU Software (metering algorithms) | Control de flujo según mapas y modos. | **DO-178C Nivel A (crítico)**. |
| **733011** | FCU Fault Detection & Voting SW | Detectar discrepancias y degradar seguro. | Nivel A (detección de fallos). |
| **733012** | FCU Calibration & Tuning Tooling | Ajuste de mapas y parámetros. | Herramienta (ajuste en MRO). |

---

### ATA-73-40 — Fuel Conditioning & Filtration (YY = 40)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **734001** | Primary fuel filters | Eliminar partículas y agua. | Indicador de obstrucción (Delta-P). |
| **734002** | Water separators and drains | Extraer agua y sedimentos. | Interfaz con sistema de drenaje. |
| **734003** | Fuel heaters / temperature conditioners | Evitar parafin/ice y coking. | Control de temperatura de combustible. |
| **734004** | Contamination sensors | Detección de partículas / agua. | Interfaz con 734010. |
| **734005** | Bypass valves & clog indicators | Continuidad de suministro en fallo filtro. | Operación automática/manual. |
| **734006** | Filter housings with pressure ports | Verificación y cambio rápido. | Puntos de prueba para MRO. |
| **734010** | Contamination Monitoring & Alarm SW | Detectar agua/partículas y comandar acciones. | Nivel A/B (si comanda bypass). |
| **734011** | Filter Life Estimation & Maintenance SW | Trending y reemplazo planificado. | Nivel B (mantenimiento predictivo). |
| **734012** | Thermal Control SW for Fuel Heaters | Mantener temperatura objetivo. | Nivel B (control de temperatura). |

---

### ATA-73-50 — Fuel Storage & Tanks (YY = 50)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **735001** | Integral / bladder fuel tanks | Almacenamiento en BWB. | **M&P y structural critical**. |
| **735002** | Tank venting & surge protection hardware | Manejo presión y ventilación. | Requisito de seguridad de tanque. |
| **735003** | Tank access panels and sumps | Inspección y drenaje. | Sellado y estanqueidad. |
| **735004** | Tank sensors & sight gauges | Medición nivel y temp. | Interfaz con 735010 (FQIS). |
| **735005** | Tank baffling and anti-slosh hardware | Estabilidad y transferencia. | Diseño estructural. |
| **735006** | Tank inerting / vent valves interfaces | Compatibilidad con inerting systems. | Interfaz con ATA 47 (si aplica). |
| **735010** | Fuel Quantity Indicating System (FQIS) SW | Calcular nivel, correction factors. | **DO-178C Nivel A/B** (si info safety). |
| **735011** | Tank Management & Transfer Scheduler SW | Gestionar trasferencias, balance y CG. | Nivel A/B (control de balance). |
| **735012** | Tank Leak Detection & Localization SW | Análisis de pérdida y contención. | Nivel A (seguridad y contención). |

---

### ATA-73-60 — Refuel / Defuel & Servicing (YY = 60)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **736001** | Refuel/defuel ports & overfill protection valves | Interfaces robustas en rampa. | Válvulas de control (736011). |
| **736002** | Ground coupling hardware & interlocks | Seguridad durante operación en tierra. | Interlocks eléctricos/mecánicos. |
| **736003** | Filter / cart interfaces for service carts | Filtrado y purga en tierra. | Interfaz estándar (e.g., ISO). |
| **736004** | Vent lines and pressure relief on service interfaces | Prevención overpressure en operación. | Válvulas de alivio. |
| **736005** | Fuel hydrazine/chemical handling fixtures | Soporte químico separado y seguro. | **Requisito de manejo de tóxicos** (si aplica). |
| **736006** | Ground monitoring & measurement panels | Detección y logs durante servicio. | HMI de servicio. |
| **736010** | Refuel Management SW | Negotiation with ground carts, safety interlocks. | Nivel B/C (interfaz de tierra). |
| **736011** | Overfill Protection & Auto-stop SW | Stop on setpoints and record events. | **Nivel A/B** (función de seguridad). |
| **736012** | Service Evidence Logger SW | Record fill volumes, serials and manifests. | Nivel C (registro de datos). |

---

### ATA-73-70 — Fuel Jettison & Dumping (YY = 70)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **737001** | Jettison pipework & nozzles | Verter combustible en vuelo seguro. | Requisito de dispersión segura. |
| **737002** | Jettison pumps & valves | Controlar tasa y aislamiento. | Interfaz de actuación. |
| **737003** | Jettison control panels & indicators | HMI de jettison. | Cockpit interface. |
| **737004** | Overpressure / flow restrictors & check valves | Prevenir retroflujo y sobrepresión. | Protección del sistema. |
| **737005** | Flame arrestors and venting safety hardware | Seguridad tóxica e ignición. | Requisito de ignición/toxicidad. |
| **737006** | Jettison system routing and structural supports | Integridad y exposición ambiental. | Diseño estructural. |
| **737010** | Jettison Sequencer & Safety SW | Lógica autorizada y condiciones seguras. | **DO-178C Nivel A** (si impacta seguridad). |
| **737011** | Jettison Flow Monitor & Reporting SW | Medir tasas y registrar eventos. | Nivel B (monitoreo). |
| **737012** | Environmental Compliance Logger SW | Registrar dumps y cumplimiento ambiental. | Nivel C (registro ambiental). |

---

### ATA-73-80 — Sensors & Instrumentation (YY = 80)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **738001** | Fuel pressure transducers | Medición de alta/baja presión. | Interfaz con controladores (e.g., FCU). |
| **738002** | Fuel temperature probes and compensators | Medición de temperatura. | Compensación por densidad. |
| **738003** | Mass flow sensors | Medición precisa del caudal de combustible. | Interfaz con FADEC/FCU. |
| **738004** | Particle / water-in-fuel detectors | Detección electro-óptica. | Interfaz con 734010. |
| **738005** | Tank level probes | Medición de nivel (capacitiva/resistiva). | Interfaz con 735010 (FQIS). |
| **738006** | Leak detection acoustic / differential sensor arrays | Detección y localización de fugas. | Interfaz con 738012. |
| **738010** | Sensor Fusion & Compensation SW | Combine sensors for robust estimation. | Nivel A/B (estimación robusta). |
| **738011** | Calibration & Auto-zero SW for probes | Auto-calibration routines. | Nivel B (mantenimiento/precisión). |
| **738012** | Leak Detection Analytics & Trending SW | Early warning and localization. | Nivel A/B (alerta temprana de seguridad). |

---

### ATA-73-90 — V&V, Test & Maintenance (YY = 90)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **739001** | Fuel system test rig / flow benches | Bando de pruebas de caudal. | Interfaz para MRO y V&V. |
| **739002** | Altitude chamber interfaces & adaptors | Pruebas ambientales de combustible. | Adaptadores de cámara. |
| **739003** | Portable DAQ & instrumentation kits | Adquisición de datos en campo. | Herramienta de MRO. |
| **739004** | Spares and service LRU kits | Kits de repuestos. | Gestión de inventario. |
| **739005** | Calibration gas & fluid standards | Estándares de calibración. | Trazabilidad metrológica. |
| **739006** | Test harnesses and coupling fixtures | Cableado y acoplamientos de prueba. | Interfaz de diagnóstico. |
| **739010** | HIL Orchestrator for Fuel Systems | Simulation/fault injection for FCU, pumps. | Herramienta (V&V crítica). |
| **739011** | Test Automation & Evidence Packaging SW | Run testcases and produce manifests. | Nivel C (generación de evidencia). |
| **739012** | Chamber Control & Synchronization SW | Synchronize env chamber with tests. | Herramienta (control de entorno de prueba). |

---

### ATA-73-99 — Cross-cutting / Reserved (YY = 99)

| Código | Componente | Propósito Breve | Certificación / Interfaz |
| :---: | :--- | :--- | :--- |
| **739901** | High-pressure fittings & bulkhead feed-throughs | Acoplamientos de alta presión. | Certificado para ambiente de combustible. |
| **739902** | Bonding/grounding & EMI shielding for fuel LRUs | Conexión a tierra y protección EMI. | Requisito de EMC/EMI. |
| **739903** | Fire suppression piping & cartridge hardware | Tuberías/cartuchos de extinción en bahía. | Interfaz con ATA 26 (Protección contra Incendios). |
| **739904** | Segregated routing and firewalls for fuel systems | Rutas separadas y cortafuegos. | Requisito de seguridad contra incendios. |
| **739910** | Secure Update & Software Signing Manager | Sign and verify firmware images. | **Nivel A** (seguridad/integridad). |
| **739911** | Traceability / RTM Tooling for fuel ARTIFACTS | Requirements→tests→CI mapping. | Herramienta (gestión de requisitos). |
| **739912** | Cybersecurity & Access Control Module | Protect interfaces and updates. | Nivel A/B (protección de la misión). |

---

## Applicable Standards & Regulations

- SAE AS4059
- RTCA DO-160
- DO-178C (Software)
- DO-254 (Hardware)
- ARP-4754A (Development Assurance)

## Related ATA Chapters

- ATA 28: FUEL
- ATA 72: ENGINE
- ATA 76: ENGINE CONTROLS

## Navigation

[↑ P-PROPULSION](../README.md)

### Related Sections

- [ATA 60 - STANDARD PRACTICES - PROP. ROTOR](../ATA 60 - STANDARD PRACTICES - PROP. ROTOR/README.md)
- [ATA 61 - PROPELLERS PROPULSORS](../ATA 61 - PROPELLERS PROPULSORS/README.md)
- [ATA 70 - STANDARD PRACTICES - ENGINE](../ATA 70 - STANDARD PRACTICES - ENGINE/README.md)
- [ATA 71 - POWER PLANT](../ATA 71 - POWER PLANT/README.md)
- [ATA 72 - ENGINE](../ATA 72 - ENGINE/README.md)
- [ATA 74 - IGNITION](../ATA 74 - IGNITION/README.md)
- [ATA 75 - AIR](../ATA 75 - AIR/README.md)
- [ATA 76 - ENGINE CONTROLS](../ATA 76 - ENGINE CONTROLS/README.md)
- [ATA 77 - ENGINE INDICATING](../ATA 77 - ENGINE INDICATING/README.md)
- [ATA 78 - EXHAUST](../ATA 78 - EXHAUST/README.md)
- [ATA 79 - OIL (INCL. 79-30-xx OPEN-FAN GEARBOX OIL SYSTEM)](../ATA 79 - OIL (INCL. 79-30-xx OPEN-FAN GEARBOX OIL SYSTEM)/README.md)
- [ATA 83 - ACCESSORY GEAR BOXES](../ATA 83 - ACCESSORY GEAR BOXES/README.md)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
