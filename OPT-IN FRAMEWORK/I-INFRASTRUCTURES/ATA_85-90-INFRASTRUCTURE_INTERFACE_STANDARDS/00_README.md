# ATA 85-90: Infrastructure Interface Standards

Este capítulo define los estándares técnicos, protocolos y procedimientos de cumplimiento para toda la infraestructura terrestre que interactúa con la aeronave AMPEL360. Su objetivo es garantizar la interoperabilidad, seguridad y eficiencia a nivel mundial.

## Gobernanza
*   **Ciclo de Vida de la Norma:** Cada documento de estándar (`-STD`) tiene un estado de ciclo de vida (`DRAFT`, `CANDIDATE`, `RATIFIED`, `DEPRECATED`) definido en sus metadatos.
*   **Cumplimiento Verificable:** Cada norma de interfaz (ICD, PROTOCOL, SPEC) está directamente vinculada a un procedimiento de prueba de cumplimiento (`TEST_STD-89-xxx`).
*   **Seguridad por Diseño:** Las interfaces de datos críticas, como el enlace de puerta, incluyen un estándar de seguridad dedicado (`SEC_STD`) y requieren firmas digitales para sus especificaciones API.

## Índice
-   **[ATA 85 - Fluid Interfaces and Servicing](./ATA_85-FLUID_INTERFACES_AND_SERVICING/):** Estándares para LH₂ y LCO₂.
-   **[ATA 86 - Electrical and Data Interfaces](./ATA_86-ELECTRICAL_AND_DATA_INTERFACES/):** Estándares para energía HVDC y enlace de datos en puerta.
-   **[ATA 87 - Physical and Airframe Interfaces](./ATA_87-PHYSICAL_AND_AIRFRAME_INTERFACES/):** Estándares para compatibilidad de puerta y atraque.
-   **[ATA 88 - Ground Operations Automation](./ATA_88-GROUND_OPERATIONS_AUTOMATION/):** Hoja de ruta para futuras normas de automatización.
-   **[ATA 89 - Infrastructure Compliance and Certification](./ATA_89-INFRASTRUCTURE_COMPLIANCE_AND_CERTIFICATION/):** Programa de certificación "AMPEL360-Ready" y procedimientos de prueba.
-   **[ATA 90 - Reserved](./ATA_90-RESERVED/):** Reservado para futuras expansiones.

---

## Estructura de Directorios

```
/I-INFRASTRUCTURES
└── /ATA_85-90-INFRASTRUCTURE_INTERFACE_STANDARDS
    ├── 00_README.md
    ├── INDEX.meta.yaml
    ├── /ATA_85-FLUID_INTERFACES_AND_SERVICING
    │   ├── /01-CRYOGENIC_HYDROGEN_LH2
    │   │   ├── ICD_STD-85-101_LH2-Refueling-Coupling.md
    │   │   └── PROC_STD-85-102_LH2-Automated-Refueling-Sequence.md
    │   └── /02-CAPTURED_CARBON_DIOXIDE_LCO2
    │       └── ICD_STD-85-201_LCO2-Offload-Coupling-And-Protocol.md
    ├── /ATA_86-ELECTRICAL_AND_DATA_INTERFACES
    │   ├── /01-HIGH_VOLTAGE_DC_GROUND_POWER
    │   │   ├── ICD_STD-86-101_HVDC-Ground-Power-Connector.md
    │   │   └── PROTOCOL_STD-86-102_HVDC-Charging-Handshake.md
    │   └── /02-HIGH_BANDWIDTH_GATE_INTERFACE
    │       ├── API_STD-86-202_DPP-Ground-Sync-API.yml
    │       ├── API_STD-86-202_DPP-Ground-Sync-API.yml.sig
    │       ├── ICD_STD-86-201_Secure-Gate-Datalink-Physical-Connector.md
    │       └── SEC_STD-86-203_Gate-Datalink-Security.md
    ├── /ATA_87-PHYSICAL_AND_AIRFRAME_INTERFACES
    │   ├── /01-GATE_COMPATIBILITY
    │   │   ├── SPEC_STD-87-101_Jet-Bridge-Interface-Envelope-BWB.md
    │   │   └── SPEC_STD-87-102_Aircraft-Clearance-And-Exclusion-Zones.md
    │   └── /02-AUTOMATED_DOCKING
    │       └── PROTOCOL_STD-87-201_Automated-Guidance-And-Docking.md
    ├── /ATA_88-GROUND_OPERATIONS_AUTOMATION
    │   └── ROADMAP_STD-88-000.md
    ├── /ATA_89-INFRASTRUCTURE_COMPLIANCE_AND_CERTIFICATION
    │   ├── PROC_STD-89-001_Airport-Certification-Program-AMPEL360-Ready.md
    │   └── /test_procedures
    │       ├── TEST_STD-89-101_LH2-Hydrant-System-Fidelity-Test.md
    │       └── TEST_STD-89-201_Gate-Datalink-API-Compliance-Test.md
    └── /ATA_90-RESERVED
```

---

## Artefactos de Control

### Metadatos Obligatorios por Norma (`*.meta.yaml`)

Cada documento de norma debe incluir un archivo de metadatos sidecar siguiendo el esquema definido en `schemas/meta_v1_1.json`. Los metadatos incluyen:

- **schema_version:** Versión del esquema de metadatos
- **id:** Identificador único del documento
- **document:** Tipo, título, revisión, fecha efectiva y estado del documento
- **compliance:** Normas y procedimientos de certificación relacionados
- **integrity:** Checksum y requisitos de firma digital
- **traceability:** Referencias cruzadas a otros capítulos ATA y procedimientos de prueba

### Plantillas de Documentos

Este capítulo proporciona plantillas estandarizadas para:

- **Normas de Seguridad (`SEC_STD-*.md`):** Define requisitos de seguridad obligatorios
- **Hojas de Ruta (`ROADMAP_STD-*.md`):** Describe la hoja de ruta para futuros estándares
- **Estándares de Interfaz (`ICD_STD-*.md`):** Define interfaces físicas y lógicas
- **Especificaciones de Protocolo (`PROTOCOL_STD-*.md`):** Define protocolos de comunicación
- **Especificaciones Técnicas (`SPEC_STD-*.md`):** Define especificaciones técnicas detalladas

---

*Parte del Mapeo de Capítulos ATA AMPEL360 - Marco OPT-IN*
