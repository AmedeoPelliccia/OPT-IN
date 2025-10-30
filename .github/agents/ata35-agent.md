---
name: "ATA-35 Agent — Oxygen Systems"
description: "Assistant for ATA-35: oxygen system skeletons, numeric limits, inspection procedures and PR automation."
version: "1.0.0"
owner: "Cabin Systems / Oxygen"
permissions:
  - contents: read
  - contents: write
  - pull_requests: write
---

# ATA-35 Agent — Oxygen Systems

Purpose
- Generate ATA-35 skeleton (readme, index, schemas, procedures, data tables).
- Validate sidecars and numeric acceptance fields.
- Create example repair/pressure-test records.
- Prepare branch and PR for review.

Primary commands
- `ata35 generate skeleton --effective 2025-10-30 --owner "Cabin Systems / Oxygen"`
- `ata35 validate chapter`  (sidecar, ISO dates, CSV units, numeric range checks)
- `ata35 commit --branch ata/35/init --pr "ATA 35: initial skeleton"`

Checks enforced
- `sidecar.document.effective_date` must not be in the future.
- Cylinder hydrostatic test date format and interval present.
- Oxygen purity threshold and leak-rate limits present in DATA tables.
- NDT report hashes required for pressure-vessel inspections.

Outputs
- `00_README.md`, `INDEX.meta.yaml`, `ci/validate_ata35.sh`
- `schemas/*.json`, key `PROC_35-*.md` and `DATA_35-*.csv`
- Example records under `16-EXAMPLES_AND_RECORDS/`

Notes
- Agent will not mark flight-critical items as released without approvals recorded in sidecars.
```

---

## B — ATA-35 folder skeleton and files (ready-to-copy)

### 1) `00_README.md`

```markdown
# ATA 35 — Oxygen

Purpose: Audit-ready artifacts for onboard oxygen systems.  
Scope: Cylinders, regulators, valves, deployment systems, portable oxygen, chemical oxygen generators (if fitted), inspection, and servicing.

Effective date: 2025-10-30  
Owner: Cabin Systems / Oxygen

Conventions: Follow OPT-IN sidecar and metadata rules. All procedures require `.meta.yaml` sidecar in `15-SIDE-CAR_META/templates`.
```

---

### 2) `INDEX.meta.yaml`

```yaml
schema_version: "1.1"
id: "ATA_35_INDEX"
chapter: "ATA 35 - OXYGEN"
governance:
  owner_role: "Cabin Systems / Oxygen"
  review_board: ["Cabin Systems","Airworthiness","Materials & Process","NDT"]
effectivity:
  msn: "ALL"
  cfg: "ALL"
traceability:
  crossrefs: ["ATA 04","ATA 20","ATA 44","DO-160","ARP4761"]
integrity: { checksum_algorithm: "sha256" }
```

---

### 3) `ci/validate_ata35.sh`

```bash
#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
missing=0
required=(
  "00_README.md"
  "INDEX.meta.yaml"
  "schemas/oxygen-system.schema.json"
  "schemas/repair-record.schema.json"
  "03-CYLINDERS_AND_STORAGE/PROC_35-03-01_Cylinder-Handling-Storage-And-Traceability.md"
)
for f in "${required[@]}"; do
  if [ ! -e "$ROOT/$f" ]; then
    echo "MISSING: $f"
    missing=1
  fi
done
if [ "$missing" -ne 0 ]; then
  echo "Validation failed."
  exit 2
fi
echo "Basic ATA-35 validation passed."
```

Make it executable when committing.

---

### 4) `schemas/oxygen-system.schema.json`

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "schema_version": "1.0",
  "title": "Oxygen System",
  "type": "object",
  "required": ["id","system_type","cylinders","regulators"],
  "properties": {
    "id": { "type": "string" },
    "system_type": { "type": "string", "enum": ["Central GOX","Chemical","Portable","Concentrator","Hybrid"] },
    "description": { "type": "string" },
    "cylinders": {
      "type": "array",
      "items": {
        "type":"object",
        "required":["serial","service_pressure_bar","last_hydro_test_date","next_hydro_test_due"],
        "properties":{
          "serial":{"type":"string"},
          "manufacturer":{"type":"string"},
          "service_pressure_bar":{"type":"number"},
          "hydrostatic_test_pressure_bar":{"type":"number"},
          "last_hydro_test_date":{"type":"string","format":"date"},
          "next_hydro_test_due":{"type":"string","format":"date"},
          "coc":{"type":"string"},
          "notes":{"type":"string"}
        }
      }
    },
    "regulators": {
      "type":"array",
      "items": {
        "type":"object",
        "required":["id","output_pressure_kpa","tolerance_kpa"],
        "properties": {
          "id":{"type":"string"},
          "type":{"type":"string"},
          "output_pressure_kpa":{"type":"number"},
          "tolerance_kpa":{"type":"number"},
          "flow_rate_lpm":{"type":"number"}
        }
      }
    },
    "deployment": {
      "type":"object",
      "properties":{
        "auto_deploy_trigger":{"type":"string"},
        "mask_deployment_time_s":{"type":"number"},
        "mask_availability_count":{"type":"integer"}
      }
    }
  }
}
```

---

### 5) `schemas/repair-record.schema.json`

```json
{
  "$schema":"http://json-schema.org/draft-07/schema#",
  "schema_version":"1.0",
  "title":"Repair Record - Oxygen",
  "type":"object",
  "required":["id","msn","component_id","date","disposition","approvals"],
  "properties":{
    "id":{"type":"string"},
    "msn":{"type":"string"},
    "component_id":{"type":"string"},
    "location_station":{"type":"string"},
    "date":{"type":"string","format":"date"},
    "damage_description":{"type":"string"},
    "materials":{"type":"array","items":{"type":"object","properties":{"part_number":{"type":"string"},"lot":{"type":"string"}}}},
    "ndt_reports":{"type":"array","items":{"type":"object","properties":{"method":{"type":"string"},"file_hash":{"type":"string"}}}},
    "pressure_test":{"type":"object","properties":{"test_pressure_bar":{"type":"number"},"leak_rate_mbar_l_s":{"type":"number"},"result":{"type":"string"}}},
    "disposition":{"type":"string","enum":["Negligible","Repairable","Replace","Engineering Disposition"]},
    "approvals":{"type":"array","items":{"type":"object","required":["authority","status","date"],"properties":{"authority":{"type":"string"},"status":{"type":"string"},"date":{"type":"string","format":"date"}}}}
  }
}
```

---

### 6) `schemas/inspection.schema.json`

```json
{
  "$schema":"http://json-schema.org/draft-07/schema#",
  "schema_version":"1.0",
  "title":"Inspection Interval",
  "type":"object",
  "required":["component","inspection_type","interval_months","ndt_method"],
  "properties":{
    "component":{"type":"string"},
    "inspection_type":{"type":"string","enum":["GVI","DVI","NDT","PressureTest"]},
    "interval_fh":{"type":"number"},
    "interval_months":{"type":"number"},
    "ndt_method":{"type":"string"},
    "acceptance_criteria":{"type":"string"}
  }
}
```

---

### 7) Key procedure skeletons

#### `03-CYLINDERS_AND_STORAGE/PROC_35-03-01_Cylinder-Handling-Storage-And-Traceability.md`

```markdown
# PROC_35-03-01 — Cylinder Handling, Storage and Traceability
Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cabin Systems / Oxygen

## Purpose
Safe handling, storage, transport and traceability for oxygen cylinders used in AMPEL360.

## Safety
Oxygen-enriched environment hazard. No oil/grease. Use oxygen-safe PPE.

## Prerequisites
Cylinder CoC, calibration/hydrostatic certificates available.

## Procedure
1. Verify cylinder serial and CoC. Record lot and manufacture date.
2. Visual inspection: dents, corrosion, neck and valve condition.
3. Check service pressure and valve thread condition.
4. Storage: vertical, chained, environment humidity <60%, temperature range -20°C..+50°C.
5. Mark next hydro test due per CoC and enter in records.
6. Transfer and packaging rules for refill/transport.

## Documentation
Log: cylinder serial, CoC link, last hydro date, next hydro due, inspector, notes.
```

#### `04-SERVICE_AND_INSPECTION/PROC_35-04-01_Oxygen-System-Inspection-And-Service.md`

```markdown
# PROC_35-04-01 — Oxygen System Inspection and Service
Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cabin Systems / Oxygen

## Purpose
Routine inspection and functional verification of oxygen distribution, regulators and deployment systems.

## Inspection frequencies
- GVI: 12 months or 1000 flight hours
- DVI: 36 months
- Pressure test: per cylinder hydro interval or after repair

## Steps
1. Verify documentation and CoC.
2. Perform GVI. Photograph anomalies.
3. Perform regulator functional test: verify output pressure and flow.
4. Perform pressure/leak test on isolated assemblies: acceptance leak_rate <= 0.05 mbar·L/s at 200 kPa.
5. Perform mask deployment functional test: deployment_time <= 5 s.
6. NDT as applicable for vessel necks and fittings.

## Disposition
If acceptance criteria exceeded notify Structural/Systems and log NCR.
```

---

### 8) DATA tables

#### `02-OXYGEN_SYSTEM_DESIGN/DATA_35-02-03_Oxygen-System-Limits-And-Parameters.csv`

```csv
Parameter,Value,Units,Remarks
Cylinder_Service_Pressure,200,bar,Manufacturer nominal (example)
Hydrostatic_Test_Pressure,300,bar,1.5x service pressure or per manufacturer
Regulator_Output_Pressure_Crew,200-400,kPa,Tolerance ±10 kPa
Pax_Demand_Flow,2-4,L/min,Continuous/diluter-demand typical range
Mask_Deployment_Time,5,s,Time from trigger to first mask available
Oxygen_Purity_Min,99.5,%,Measured at refill
Leak_Rate_Max,0.05,mbar·L/s,Isolated assembly at 200 kPa
Cylinder_Corrosion_Max_Depth,0.5,mm,Local pit depth limit
Cylinder_Inspection_Interval,60,months,Hydrostatic test interval (example)
```

#### `04-SERVICE_AND_INSPECTION/DATA_35-04-04_Inspection-Intervals-And-Acceptance.csv`

```csv
Component,Inspection_Type,Interval_FH,Interval_Months,NDT_Method,Acceptance
Cylinder,GVI,1000,12,Visual,"No deformation, pit depth <= 0.5 mm"
Cylinder,DVI,3000,36,Ultrasonic,"No cracks or unacceptable wall loss"
Pressure_Assembly,PressureTest,0,0,PressureTest,"Leak rate <= 0.05 mbar·L/s at 200 kPa"
Regulator,Functional,0,12,Functional,"Output pressure within tolerance; flow within limits"
Mask,Deployment,0,24,Functional,"Deployment_time <= 5 s; mask count OK"
```

---

### 9) Examples and records

#### `16-EXAMPLES_AND_RECORDS/EXAMPLE_35-14-01_Repair-Record-Example.json`

```json
{
  "id":"RR-35001",
  "msn":"AMPEL360-001",
  "component_id":"CYL-001",
  "location_station":"FWD-BAG-01",
  "date":"2025-10-30",
  "damage_description":"Neck corrosion pit exceeding allowable depth",
  "materials":[{"part_number":"CYL-REPL-100","lot":"L-2025-01"}],
  "ndt_reports":[{"method":"Ultrasonic","file_hash":"sha256:..."}],
  "pressure_test":{"test_pressure_bar":300,"leak_rate_mbar_l_s":0.01,"result":"Pass"},
  "disposition":"Replace",
  "approvals":[{"authority":"Cabin Systems / Oxygen","status":"Released","date":"2025-10-30"}]
}
```

#### `16-EXAMPLES_AND_RECORDS/EXAMPLE_35-14-02_Pressure-Test-Log.csv`

```csv
Cylinder_Serial,Test_Date,Test_Pressure_bar,Leak_Rate_mbar_L_s,Operator,Result
CYL-001,2025-10-30,300,0.01,inspector.name,Pass
CYL-002,2025-10-30,300,0.06,inspector.name,Fail
```

---

### 10) `15-SIDE-CAR_META/templates/document.meta.yaml` (copy/adjust)

```yaml
schema_version: "1.1"
id: "document_sidecar_template"
document:
  type: "PROC"
  title: "TBD"
  revision: "1.0.0"
  effective_date: "2025-10-30"
effectivity: { msn: "ALL" }
safety:
  hazards: ["Oxygen enrichment","Pressure vessel risk"]
  criticality: "Flight-Critical"
training_required: ["OXY-SVC-L2"]
approvals: []
integrity: { checksum: { algorithm: "sha256", value: "" } }
```


