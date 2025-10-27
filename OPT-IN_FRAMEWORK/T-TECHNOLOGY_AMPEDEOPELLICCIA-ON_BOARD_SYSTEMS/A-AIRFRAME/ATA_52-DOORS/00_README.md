# ATA 52 — DOORS

## Overview

This chapter provides comprehensive documentation for all door systems on AMPEL360 aircraft, including passenger, cargo, emergency evacuation, and blowout panels. It encompasses inspection procedures, maintenance requirements, repair guidelines, and qualification standards.

## Scope

- **Passenger doors:** Entry, service, and emergency exit doors
- **Cargo doors:** Main cargo, bulk cargo, and access panels
- **Emergency systems:** Evacuation slides, rafts, and arming mechanisms
- **Structural elements:** Hinges, latches, seals, actuators, and blowout panels
- **Safety systems:** Lightning strike protection, pressure integrity, and emergency evacuation compliance

## Regulatory Compliance

- FAA Part 25.783 (Doors)
- FAA Part 25.807 (Emergency Exits)
- FAA Part 25.809 (Emergency Exit Arrangement)
- CS-25.783, CS-25.807, CS-25.809 (EASA equivalents)
- FAA AC 25.783-1 (Door Design and Test Criteria)

## Cross-References

- **ATA 20:** Standard Practices — Airframe (torque, fasteners, sealant application)
- **ATA 51:** Standard Practices and Structures — General (composite/metallic repairs)
- **ATA 21:** Air Conditioning and Pressurization (seal pressure testing)
- **ATA 24:** Electrical Power (powered door systems)
- **ATA 26:** Fire Protection (cargo door fire suppression)
- **ATA 50:** Cargo and Accessory Compartments (integration)
- **ATA 53:** Fuselage (structural attachment and load paths)

## Directory Structure

```
/ATA_52-DOORS
├── 00_README.md (this file)
├── INDEX.meta.yaml
├── ci/validate_ata52.sh
├── schemas/
│   ├── repair-record.schema.json
│   ├── damage-classification.schema.json
│   └── door-spec.schema.json
├── 01-GENERAL/
├── 02-INSPECTION_AND_TEST/
├── 03-DOOR_REMOVAL_AND_INSTALLATION/
├── 04-HINGES_LATCHES_AND_MECHANISMS/
├── 05-SEALED_SYSTEMS_AND_PRESSURE_INTEGRITY/
├── 06-POWERED_SYSTEMS_AND_ELECTRICAL/
├── 07-EMERGENCY_EVACUATION/
├── 08-CARGO_DOORS_AND_BLOWOUT_PANELS/
├── 09-LIGHTNING_STRIKE_PROTECTION/
├── 10-REPAIR_GUIDELINES/
├── 11-QUALIFICATION_AND_TEST_PLANS/
├── 12-MATERIALS_M_AND_P_TRACEABILITY/
├── 13-NONCONFORMANCE_AND-DEVIATION/
├── 14-DIAGRAMS_AND_REFERENCE_DATA/
├── 15-SIDE-CAR_META/templates/
└── 16-EXAMPLES_AND_RECORDS/
```

## Document Naming Convention

All technical documents follow the naming pattern:

```
{TYPE}_{ATA}-{SECTION}-{SEQ}_{Title-In-Kebab-Case}_rev{MAJOR}.{MINOR}.{PATCH}_{YYYYMMDD}.{EXT}
```

Where:
- **TYPE:** PROC (Procedure), DATA (Data File), DESC (Description), INSP (Inspection), TESTPLAN, DIAG (Diagram), EXAMPLE
- **ATA:** 52
- **SECTION:** Two-digit section number (01-16)
- **SEQ:** Two-digit sequence number
- **Title:** Descriptive title in kebab-case
- **Revision:** Semantic versioning (e.g., rev1.0.0)
- **Date:** Effective date in YYYYMMDD format
- **EXT:** File extension (.md, .csv, .json, .pdf, .dwg, .dxf)

## Metadata Requirements

Every PROC, DATA, DESC, INSP, TESTPLAN, and DIAG file **must** have a corresponding `.meta.yaml` sidecar containing:

- Schema version
- Document ID, type, title, revision, and effective date
- Effectivity range (MSN, configuration, serial ranges)
- Safety criticality and hazards
- Approval authorities and dates
- Source documents and cross-references
- Integrity checksum (SHA-256)

Templates are provided in `/15-SIDE-CAR_META/templates/`.

## Validation

Run the CI validation script to ensure compliance:

```bash
./ci/validate_ata52.sh
```

This script verifies:
- Filename compliance with naming conventions
- Presence of required `.meta.yaml` sidecars
- JSON schema validity
- Cross-reference integrity

## Revision History

| Revision | Date       | Author              | Description                      |
|----------|------------|---------------------|----------------------------------|
| 1.0.0    | 2028-10-27 | Structures Engineering | Initial release for ATA 52      |

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 A-AIRFRAME](../README.md) | [🏠 Repository Root](../../../../README.md)
