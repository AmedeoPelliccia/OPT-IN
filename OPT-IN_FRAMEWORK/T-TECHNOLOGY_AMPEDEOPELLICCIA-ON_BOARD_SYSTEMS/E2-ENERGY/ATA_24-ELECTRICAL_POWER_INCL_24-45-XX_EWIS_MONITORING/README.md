# ATA 24 - ELECTRICAL POWER (INCL. 24-45-xx EWIS MONITORING)

## Description

Electrical generation, distribution, battery systems, and EWIS monitoring.

## Software Components

Este capítulo incluye **38 componentes software** principales con códigos de 6 dígitos siguiendo el patrón `24 YY ZZ` (24 = ATA, YY = subcapítulo, ZZ = índice). Cada componente tiene asignado un nivel de certificación DO-178C/DO-254 según su criticidad.

### ATA-24-00 (General) — Sistemas de gestión de energía principales

| Código | Nombre | DO-178C | Criticidad |
|--------|--------|---------|------------|
| 240010 | Energy Management System (EMS) Software | A | Critical |
| 240011 | Power Conversion Firmware (Inverter/Converter FW) | A | Critical |
| 240012 | Battery Management System (BMS) Software | A | Critical |
| 240013 | Protections & Relay Logic Software | A | Critical |
| 240014 | Power Quality Monitoring Software | C | Non-critical |
| 240015 | Ground/Service Tools & SW | N/A | Non-critical |

### ATA-24-60 (Fuel Cell Stacks & DC Output)

| Código | Nombre | DO-178C | Criticidad |
|--------|--------|---------|------------|
| 246009 | Fuel-Cell Stack Control Software | A | Critical |
| 246010 | Fuel-Cell Power Conditioning SW (PCU) | A | Critical |
| 246011 | BOP Diagnostics & Predictive Maintenance SW | B | Non-critical |
| 246012 | H₂ Safety Management Software | A | Critical |
| 246013 | Fuel-Cell HIL / Simulator SW | N/A | Non-critical |
| 246014 | Fuel-Cell Data Logger & Telemetry SW | C | Non-critical |

### ATA-24-33 (PROV — Solid-CO₂ Battery Modules)

| Código | Nombre | DO-178C | Criticidad |
|--------|--------|---------|------------|
| 243309 | Solid-CO₂ Module Control SW | B | Critical |
| 243310 | Sorbent Health & Life Management SW | B | Non-critical |
| 243311 | CO₂ Storage & Compression Control SW | A | Critical |
| 243312 | CO₂ Safety & Venting Controller SW | A | Critical |
| 243313 | CO₂ Lab Simulator / HIL SW | N/A | Non-critical |
| 243314 | CO₂ Reporting & DPP Integration SW | C | Non-critical |

### ATA-24-34 (PROV — Endocircular Recharge Loops)

| Código | Nombre | DO-178C | Criticidad |
|--------|--------|---------|------------|
| 243408 | Endocircular Loop Controller SW | B | Critical |
| 243409 | Thermal Energy Scheduler SW | B | Non-critical |
| 243410 | Recharge Interface Protocol Stack | C | Non-critical |
| 243411 | Loop Fault Detection & Isolation SW (FDI) | A | Critical |
| 243412 | Loop HIL & Bench Automation SW | N/A | Non-critical |
| 243413 | Loop Data Logger & Maintenance SW | C | Non-critical |
| 243414 | Recharge→EMS Integration SW | A | Critical |

### ATA-24-45 (EWIS Monitoring)

| Código | Nombre | DO-178C | Criticidad |
|--------|--------|---------|------------|
| 244510 | EWIS Monitoring ECU Software | A | Critical |
| 244511 | EWIS Sensor Node Firmware | C | Non-critical |
| 244512 | EWIS Gateway Protocol Stack | A | Critical |
| 244513 | EWIS Analytics & Trending Platform | C | Non-critical |
| 244514 | EWIS Maintenance & Test Tools SW | N/A | Non-critical |
| 244515 | EWIS Fault Injection & HIL Tools | N/A | Non-critical |
| 244516 | EWIS Cybersecurity & Secure Boot Module | A | Critical |
| 244517 | EWIS Update & Patch Manager | A | Critical |

### ATA-24-99 (Cross-cutting software)

| Código | Nombre | DO-178C | Criticidad |
|--------|--------|---------|------------|
| 249908 | System Health & Prognostics SW | B | Non-critical |
| 249909 | Cybersecurity & Key Management SW | A | Critical |
| 249910 | HIL Orchestrator / Test Automation SW | N/A | Non-critical |
| 249911 | Compliance & Traceability Tooling | N/A | Non-critical |
| 249912 | Integration Middleware (EWIS/Power Bus) | B | Critical |

## Archivos Disponibles

- **`INDEX.meta.yaml`**: Metadatos del capítulo ATA-24 con governance y traceability
- **`DATA_SOFTWARE_BOM_ATA24.csv`**: BOM de componentes software en formato CSV
- **`DATA_SOFTWARE_BOM_ATA24.json`**: BOM de componentes software en formato JSON
- **`schemas/software.schema.json`**: Schema JSON para validación de metadatos de software
- **`10-SIDE-CAR_META/templates/software.meta.yaml`**: Plantilla para sidecars de componentes software

## Applicable Standards & Regulations

- FAA Part 25.1351
- SAE AS50881
- RTCA DO-160
- RTCA DO-178C (Software Considerations in Airborne Systems)
- RTCA DO-254 (Design Assurance for Airborne Electronic Hardware)
- ARP4754A (Development of Civil Aircraft and Systems)
- ARP4761 (Safety Assessment Process)

## Related ATA Chapters

- ATA 23: COMMUNICATIONS (electrical power for avionics)
- ATA 31: INDICATING/RECORDING SYSTEMS (power monitoring)
- ATA 33: LIGHTS (electrical power distribution)
- ATA 47: INERTING SYSTEM (fuel cell safety)
- ATA 49: AIRBORNE AUXILIARY POWER (APU electrical generation)
- ATA 80: STARTING (engine starting electrical systems)
- ATA 95: DIGITAL PRODUCT PASSPORT (traceability)

## Navigation

[↑ E2-ENERGY](../README.md)

### Related Sections

- [ATA 24-33-00 (Prov) - Solid-CO2 Battery Modules](../ATA_24-33-00_PROV-SOLID-CO2_BATTERY_MODULES/README.md)
- [ATA 24-34-00 (Prov) - Endocircular Recharge Loops](../ATA_24-34-00_PROV-ENDOCIRCULAR_RECHARGE_LOOPS/README.md)
- [ATA 24-60-00 - Fuel Cell Stacks & DC Output](../ATA_24-60-00-FUEL_CELL_STACKS_AND_DC_OUTPUT/README.md)
- [ATA 47 - INERTING SYSTEM](../ATA_47-INERTING_SYSTEM/README.md)
- [ATA 49 - AIRBORNE AUXILIARY POWER](../ATA_49-AIRBORNE_AUXILIARY_POWER/README.md)
- [ATA 80 - STARTING](../ATA_80-STARTING/README.md)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
