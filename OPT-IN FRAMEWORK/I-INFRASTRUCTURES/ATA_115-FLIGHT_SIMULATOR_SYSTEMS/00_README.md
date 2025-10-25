# ATA 115: Flight Simulator Systems

This directory contains the complete technical, operational, and certification data for the AMPEL360 Full Flight Simulator (FFS). The structure is designed for audit automation and rigorous configuration management.

### Governance & Certification Note

The AMPEL360 FFS has a Development Assurance Level (DAL) of D as training infrastructure. However, achieving and maintaining **EASA CS-FSTD(A) Level D qualification** mandates traceable linkage to the source aircraft data. Therefore, all Qualification Test Guides (QTGs) and certification plans within this repository must maintain explicit, version-controlled cross-references to the following critical on-board systems:
*   **ATA 42:** Integrated Modular Avionics (especially the QIS scheduler)
*   **ATA 27:** Flight Control Laws (for BWB handling qualities)
*   **ATA 28 / ATA 26:** Cryogenic H₂ System & associated safety/detection logic

### Index

- **[01-QUALIFICATION_AND_CERTIFICATION](./01-QUALIFICATION_AND_CERTIFICATION/):** Master Qualification Test Guide (QTG) and regulatory certificates.
- **[02-AIRCRAFT_DATA_PACKAGE_OEM](./02-AIRCRAFT_DATA_PACKAGE_OEM/):** The signed, version-controlled "source of truth" from the aircraft program.
- **[03-SIMULATOR_SYSTEMS_ARCHITECTURE](./03-SIMULATOR_SYSTEMS_ARCHITECTURE/):** Hardware, software, and interface specifications for the simulator itself.
- **[04-OPERATIONS_AND_MAINTENANCE](./04-OPERATIONS_AND_MAINTENANCE/):** Manuals for instructors (SOM) and maintenance technicians (SMM).
- **[05-DATABASES](./05-DATABASES/):** Visual and navigation databases.
- **[06-CONFIGURATION_AND_SOFTWARE](./06-CONFIGURATION_AND_SOFTWARE/):** Version-controlled software binaries, release notes, and SBOMs.
- **[07-REGISTRY_AND_LOGS](./07-REGISTRY_AND_LOGS/):** In-service status, defect tracking, and utilization logs.

---

### **Final Audit-Ready Directory Structure for ATA 115**

```
/I-INFRASTRUCTURES
└── /ATA_115-FLIGHT_SIMULATOR_SYSTEMS
    ├── .github/workflows/ata115-structure-check.yml
    ├── 00_README.md
    ├── INDEX.meta.yaml
    ├── /01-QUALIFICATION_AND_CERTIFICATION
    │   ├── /01-CERTIFICATION_PLAN
    │   │   └── PLAN_Master-Certification-Strategy_rev1.0.0_20280115.md
    │   ├── /02-QUALIFICATION_TEST_GUIDE_QTG
    │   │   ├── QTG_Master-Document_rev2.1.0_20290310.md
    │   │   └── /01-OBJECTIVE_TESTS
    │   │       ├── QTG-TEST_2.A.4b_Handling-Qualities-BWB-Ground-Effect.md
    │   │       └── QTG-TEST_3.B.2_Systems-H2-Fuel-Cell-Failure.md
    │   └── /03-CERTIFICATES
    │       └── CERT_EASA-Level-D_ID-EU-1234_rev2.0.0_20290420.pdf
    ├── /02-AIRCRAFT_DATA_PACKAGE_OEM
    │   ├── MANIFEST_Data-Package-v3.2.0.md
    │   ├── MANIFEST_Data-Package-v3.2.0.sig
    │   ├── /01-AERO_MODEL
    │   │   └── AERO_BWB-Flight-Model_v3.2.0.dat
    │   ├── /02-PROPULSION_MODEL
    │   │   └── PROP_Hybrid-Powertrain-Model_v3.1.5.xml
    │   └── /03-AVIONICS_LOGIC
    │       └── AVNX_IMA-QIS-Interface-Spec_v2.8.0.xml
    ├── /03-SIMULATOR_SYSTEMS_ARCHITECTURE
    │   ├── /01-HARDWARE_SPECIFICATIONS
    │   ├── /02-SOFTWARE_ARCHITECTURE
    │   └── /03-INTERFACE_CONTROL_DOCUMENTS
    ├── /04-OPERATIONS_AND_MAINTENANCE
    │   ├── /01-SIMULATOR_OPERATIONS_MANUAL_SOM
    │   ├── /02-SIMULATOR_MAINTENANCE_MANUAL_SMM
    │   └── /03-ILLUSTRATED_PARTS_CATALOG_IPC
    ├── /05-DATABASES
    │   ├── /01-VISUAL_DATABASES
    │   └── /02-NAVIGATION_DATABASES
    ├── /06-CONFIGURATION_AND_SOFTWARE
    │   ├── /01-HOST_SIMULATOR_SW
    │   └── /02-IMAGE_GENERATOR_SW
    └── /07-REGISTRY_AND_LOGS
        ├── status.json
        ├── defects.csv
        └── utilization_log.csv
```

---

### **Validation and Control Artifacts**

#### **Updated QTG Test Template with Cross-References**
*(File: `.../01-OBJECTIVE_TESTS/QTG-TEST_2.A.4b_Handling-Qualities-BWB-Ground-Effect.md`)*

```markdown
# QTG Test: 2.A.4b - Handling Qualities - BWB Ground Effect
**Revision:** 1.2.0

---
### 1. Objective
To validate that the simulator accurately models the unique aerodynamic ground effect characteristics of the Blended Wing Body during flare and landing.

### 2. Source Data Reference
- **Aircraft Data Package:** v3.2.0
- **Source File:** `../../02-AIRCRAFT_DATA_PACKAGE_OEM/01-AERO_MODEL/AERO_BWB-Flight-Model_v3.2.0.dat`
- **Flight Test Report:** FTR-AE-360-778, Section 4.5 "Landing Flare Characteristics"

### 3. Procedure
...

### 4. Expected Result (with Tolerances)
...

### 5. Sign-off
- **Test Pilot:** _______________
- **Regulatory Witness:** _______________

---
*Refs: ATA 27 (Flight Control Laws), ATA 42 (IMA software)*
```

#### **CI Validation Rule**
*(File: `.github/workflows/ata115-structure-check.yml`)*

```yaml
# .github/workflows/ata115-structure-check.yml
name: ATA115 Structure Validation
on:
  push:
    paths: ["OPT-IN FRAMEWORK/I-INFRASTRUCTURES/ATA_115-FLIGHT_SIMULATOR_SYSTEMS/**"]
  pull_request:
    paths: ["OPT-IN FRAMEWORK/I-INFRASTRUCTURES/ATA_115-FLIGHT_SIMULATOR_SYSTEMS/**"]
jobs:
  verify:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Verify top-level folder numeration
        run: |
          find "OPT-IN FRAMEWORK/I-INFRASTRUCTURES/ATA_115-FLIGHT_SIMULATOR_SYSTEMS" -maxdepth 1 -type d | sed '1d' | \
            grep -vE '/\d{2}-' && echo "❌ Missing or incorrect numeric prefix in top-level folders." && exit 1 || echo "✅ Top-level numeration OK."
      - name: # Add steps for sidecar validation, checksums, etc.
```
