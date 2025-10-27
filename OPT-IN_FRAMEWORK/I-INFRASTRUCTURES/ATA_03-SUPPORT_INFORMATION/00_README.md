# ATA 03 - SUPPORT INFORMATION (GROUND SUPPORT EQUIPMENT - GSE)

## Master Directory for AMPEL360 Ground Support Equipment

This directory contains the master support information for all Ground Support Equipment (GSE) for the AMPEL360. The structure and its contents are governed by the following principles to ensure safety, compliance, and traceability:

*   **Automated Governance:** All changes are validated via a CI guardrail (`.github/workflows/gse-guard.yml`) which checks file naming, metadata schema compliance, checksums, and digital signatures.
*   **Controlled Metadata:** Every artifact is accompanied by a `v1.1` `.meta.yaml` sidecar file, validated against a formal JSON schema.
*   **Lifecycle Management:** Each GSE item is tracked from interface definition (`/01-INTERFACES`) and acceptance (`/04-ACCEPTANCE_AND_CERTIFICATION`) through in-service use (`/09-REGISTRY`).
*   **Markdown First:** All technical documents are maintained as plain-text Markdown (`.md`) for maximum traceability.

---

## Directory Structure

```
/I-INFRASTRUCTURES
└── /ATA_03-SUPPORT_INFORMATION
    ├── .github/workflows/gse-guard.yml
    ├── 00_README.md
    ├── INDEX.meta.yaml
    ├── SHA256SUMS.txt
    ├── /schemas
    │   └── meta_v1_1.json
    ├── /01-INTERFACES
    │   ├── INDEX.meta.yaml
    │   └── ICD_AP360-S001_LH2-Coupling_rev3.0.0_20280901.md
    ├── /02-GSE_MANUALS
    │   ├── INDEX.meta.yaml
    │   └── /AP360-S001_LH2_Cryogenic_Refueler
    │       ├── GOM_AP360-S001_LH2-Refueler_rev2.0.0_20281101.md
    │       └── GOM_AP360-S001_LH2-Refueler_rev2.0.0_20281101.meta.yaml
    ├── /03-SOFTWARE_FIRMWARE
    │   └── INDEX.meta.yaml
    ├── /04-ACCEPTANCE_AND_CERTIFICATION
    │   └── INDEX.meta.yaml
    ├── /05-SAFETY
    │   └── INDEX.meta.yaml
    ├── /06-TRAINING
    │   ├── INDEX.meta.yaml
    │   └── training_records.csv
    ├── /07-MAINTENANCE_AND_CALIBRATION
    │   ├── INDEX.meta.yaml
    │   └── /calibration
    │       ├── INDEX.meta.yaml
    │       └── schedule.csv
    ├── /08-SPARES
    │   └── INDEX.meta.yaml
    └── /09-REGISTRY
        ├── INDEX.meta.yaml
        ├── status.json
        └── defects.csv
```

---

## Governance & Control

### Folder Index Metadata (`INDEX.meta.yaml`)

Each folder contains an `INDEX.meta.yaml` file that defines:
- Schema version and folder purpose
- Document owners and approvers
- Naming conventions and allowed file formats
- Integrity and signature requirements
- Links to related ATA chapters

**Example:**
```yaml
schema_version: "1.1"
folder: "ATA_03-SUPPORT_INFORMATION/02-GSE_MANUALS"
purpose: "Operational and maintenance manuals for AMPEL360 GSE"
owners: ["Ground Ops", "Quality", "Safety"]
approvers:
  - role: "Quality Manager"
    name: "TBD"
  - role: "Safety Officer"
    name: "TBD"
effective_date: "2025-10-27"
doc_policy:
  naming: "<DOC>_<GSE-ID>_<Subject>_rev<SEMVER>_<YYYYMMDD>.<ext>"
  formats: ["md","xml","csv","json","cdx","bin","sig","dxf"]
  sidecar_required: true
integrity:
  checksum_manifest: "../SHA256SUMS.txt"
  signature_required: ["md","xml","json","bin","cdx"]
refs:
  ata_links: ["28-60","26-40","24","21-50","42","46-40"]
```

### Checksum Manifest (`SHA256SUMS.txt`)

The checksum manifest ensures integrity of all controlled documents:

```
# SHA256SUMS for ATA-03 controlled documents. Run `sha256sum --check SHA256SUMS.txt` to validate.
<sha256>  02-GSE_MANUALS/AP360-S001_LH2_Cryogenic_Refueler/GOM_AP360-S001_LH2-Refueler_rev2.0.0_20281101.md
<sha256>  03-SOFTWARE_FIRMWARE/AP360-T003_FC-Diag-Unit/FW_AP360-T003_v2.5.1.bin
```

### CI Guardrail (`.github/workflows/gse-guard.yml`)

Automated validation workflow:
```yaml
name: GSE Docs Guard
on:
  pull_request:
    paths: ["I-INFRASTRUCTURES/ATA_03-SUPPORT_INFORMATION/**"]
jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Validate filenames against convention
        run: # python ci/validate_naming.py I-INFRASTRUCTURES/ATA_03-SUPPORT_INFORMATION
      - name: Validate sidecars against schema
        run: # python ci/validate_meta.py --schema schemas/meta_v1_1.json I-INFRASTRUCTURES/ATA_03-SUPPORT_INFORMATION
      - name: Verify checksum manifest integrity
        run: sha256sum --check --strict I-INFRASTRUCTURES/ATA_03-SUPPORT_INFORMATION/SHA256SUMS.txt
      - name: Verify digital signatures
        run: # python ci/verify_sigs.py I-INFRASTRUCTURES/ATA_03-SUPPORT_INFORMATION
```

### JSON Schema for Sidecars (`schemas/meta_v1_1.json`)

All `.meta.yaml` sidecar files are validated against:
```json
{
  "type":"object",
  "required":["schema_version","id","document","effectivity","integrity"],
  "properties":{
    "schema_version":{"const":"1.1"},
    "id":{"type":"string"},
    "gse":{"type":"object"},
    "document":{"type":"object","required":["type","title","revision","effective_date"]},
    "effectivity":{"type":"object"},
    "compliance":{"type":"object"},
    "maintenance":{"type":"object"},
    "training":{"type":"object"},
    "approvals":{"type":"array"},
    "integrity":{"type":"object","required":["checksum"]},
    "traceability":{"type":"object"},
    "audit":{"type":"object"},
    "signing":{"type":"object"},
    "build":{"type":"object"}
  }
}
```

---

## Data Registries

### Registry Status (`09-REGISTRY/status.json`)

Live status of all GSE fleet items:
```json
{
  "generated_utc": "2025-10-27T00:00:00Z",
  "fleet": [
    {"gse_id":"AP360-S001","serial":"S001-017","availability":"IN_SERVICE","next_pm":"2025-10-27","hours":812,"open_defects":["DEF-2028-145"]},
    {"gse_id":"AP360-T003","serial":"T003-044","availability":"AOG","next_pm":"2025-10-27","hours":233,"open_defects":["DEF-2028-219","DEF-2028-223"]}
  ]
}
```

### CSV Data Files

**Training Records** (`06-training/training_records.csv`):
- Headers: `record_id,gse_id,course_id,employee_id,employee_name,attempt_date,result,expiry_date,assessor,notes`

**Calibration Schedule** (`07-maintenance_and_calibration/calibration/schedule.csv`):
- Headers: `instrument_id,model,serial,last_date,due_date,location,uncertainty,traceability_std,assigned_to`

**Defects Log** (`09-registry/defects.csv`):
- Headers: `id,gse_id,serial,opened_utc,severity,effect,containment,root_cause,status,closed_utc,linked_docs`

---

## Document Templates

### Acceptance Test Procedure (ATP)

```markdown
# ATP_GSE-ID_Subject_revX.Y.Z_YYYYMMDD.md
## 1 Scope
## 2 Preconditions & Safety
- Zones: H₂ Zone 2; O₂/H₂ monitors active
- PPE: as per SDS references
## 3 Instruments
| id | model | cal_due | uncertainty |
|:---|:---|:---|:---|
| CAL-P-015 | Wika CPG1500 | 2025-10-27 | +/- 0.1% |
## 4 Tests
| TC | Description | Spec | Method | Result |
|:---|:---|:---|:---|:---|
| 4.1 | E-Stop Circuit | < 500ms | Manual activation | |
## 5 Data Capture
CSV @ 1 Hz, UTC timestamps; attach checksum.
## 6 Pass/Fail & Sign-off

---
*Refs: ATA 28-60 (LH2), ATA 26-40 (H₂ leak/fire), ATA 24 (HV)*
```

### Interface Control Document (ICD)

```markdown
# ICD_GSE-ID_Interface_revX.Y.Z_YYYYMMDD.md
## 1. Mechanical
- Coupling: ISO 21013 profile, DN25
## 2. Electrical
- HV: 800 Vdc, IEC 62196-x variant, pinout table
## 3. Comms
- CAN FD 2.0, 500 kbit/s; heartbeat 1 Hz; message map
## 4. Safety
- E-stop loop, bonding path, ESD spec

---
*Refs: ATA 28-60 (LH2), ATA 26-40 (H₂ leak/fire), ATA 24 (HV)*
```

### IPC XML Skeleton

```xml
<!-- IPC_GSE-ID_Illustrated-Parts-Catalog_revX.Y.Z_YYYYMMDD.xml -->
<ipc xmlns="http://www.s1000d.org/S1000D_5-0/xml_schema_ipd.xsd">
  <catalogSeqNumber>AP360-S001</catalogSeqNumber>
  <item>
    <partNumber>AP360-S001-0001</partNumber>
    <name>LH2 Coupling Seal</name>
    <qtyPerAssy>2</qtyPerAssy>
    <remarks>Use cryo-rated grease per SDS</remarks>
  </item>
</ipc>
```

---

## Navigation

[↑ I-INFRASTRUCTURES](../README.md)

### Related ATA Chapters

- ATA 28-60: Cryogenic H₂ Storage & Distribution
- ATA 26-40: H₂ Leak/Fire Detection
- ATA 24: Electrical Power (HV)
- ATA 21-50: Power Electronics Cooling
- ATA 42: Integrated Modular Avionics
- ATA 46-40: Data Loading & Configuration

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
