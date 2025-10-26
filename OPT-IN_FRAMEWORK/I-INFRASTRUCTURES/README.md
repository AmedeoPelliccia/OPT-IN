# I-INFRASTRUCTURES

Authoritative ground infrastructure and support content organized by ATA chapter. All human-readable docs are Markdown; each file has a `.meta.yaml` sidecar (v1.1). Folder names use `NN-SECTION_NAME` numeration. Indices are hyperlinkable.

## Contents

- [ATA_02-OPERATIONS_INFORMATION](ATA_02-OPERATIONS_INFORMATION/)  
  Ground-based ops: FCOM/QRH, performance, W&B, MEL, ground ops.

- [ATA_03-SUPPORT_INFORMATION](ATA_03-SUPPORT_INFORMATION/)  
  GSE standards and manuals, firmware, acceptance tests, safety, registry.

- [ATA_10-PARKING_MOORING_STORAGE_RTS](ATA_10-PARKING_MOORING_STORAGE_RTS/)  
  Parking, mooring, storage (short/long term), return to service, diagrams.

- [ATA_13-HARDWARE_AND_GENERAL_TOOLS](ATA_13-HARDWARE_AND_GENERAL_TOOLS/)  
  Hardware and consumables catalogs, general tools, inventory and control.

- [ATA_85-FLUID_INTERFACES_AND_SERVICING](ATA_85-FLUID_INTERFACES_AND_SERVICING/)  
  Standards for LH₂ and LCO₂: interfaces, couplings, and servicing procedures.

- [ATA_86-ELECTRICAL_AND_DATA_INTERFACES](ATA_86-ELECTRICAL_AND_DATA_INTERFACES/)  
  Standards for HVDC power and gate data link: connectors, protocols, security.

- [ATA_87-PHYSICAL_AND_AIRFRAME_INTERFACES](ATA_87-PHYSICAL_AND_AIRFRAME_INTERFACES/)  
  Standards for gate compatibility, physical envelopes, and automated docking.

- [ATA_88-GROUND_OPERATIONS_AUTOMATION](ATA_88-GROUND_OPERATIONS_AUTOMATION/)  
  Roadmap for ground operations automation.

- [ATA_89-INFRASTRUCTURE_COMPLIANCE_AND_CERTIFICATION](ATA_89-INFRASTRUCTURE_COMPLIANCE_AND_CERTIFICATION/)  
  AMPEL360-Ready certification program and compliance test procedures.

- [ATA_90-RESERVED](ATA_90-RESERVED/)  
  Reserved for future expansion of infrastructure standards.

- [ATA_115-FLIGHT_SIMULATOR_SYSTEMS](ATA_115-FLIGHT_SIMULATOR_SYSTEMS/)  
  Qualification (QTG), aircraft data packages, simulator architecture, ops & maintenance, software, logs.

- [ATA_116-FLIGHT_SIMULATOR_CUING_SYSTEM](ATA_116-FLIGHT_SIMULATOR_CUING_SYSTEM/)  
  Visual, motion, aural, and control loading specs; calibration; latency tests; software; logs.

## Conventions

- **Naming:** `<DOC>_<SUBJECT>_rev<SEMVER>_<YYYYMMDD>.<ext>`  
- **Sidecars:** every `.md/.yml/.json/.bin` **will have** a `<file>.meta.yaml` sidecar with `{id, revision, effective_date, integrity.checksum}` (future requirement).  
- **Integrity:** signatures and `checksums/SHA256SUMS.txt` where present.  
- **Cross-refs (minimum):**  
  - ATA 02 ↔ 03, 10, 13  
  - ATA 85 ↔ 28-60, 26-40; ATA 86 ↔ 24, 46-40, 95  
  - ATA 115 ↔ 116, 42, 27, 28-60  
- **CI checks:** filename lint, sidecar schema, link check, checksum verify.

## Change control

All changes via PR with approver roles per `INDEX.meta.yaml`. Breaking changes require version bump and back-links update.
