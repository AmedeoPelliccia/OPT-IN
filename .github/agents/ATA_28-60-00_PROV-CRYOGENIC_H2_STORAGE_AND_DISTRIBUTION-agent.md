---

name: ATA_28-60-00_PROV-CRYOGENIC_H2_STORAGE_AND_DISTRIBUTION-agent.md
description: >
Agent for automating documentation, validation, and audit-readiness of the
Cryogenic Hydrogen Storage and Distribution subsystem (ATA 28-60-00 PROV)
under the C2-CIRCULAR_CRYOGENIC_SYSTEMS domain of the OPT-IN framework.
---

# ATA 28-60-00 Agent — Cryogenic H₂ Storage and Distribution

## Purpose

Automate creation, validation, and packaging of ATA 28-60-00 deliverables to maintain engineering traceability and safety compliance for hydrogen storage, transfer, and venting systems.

## Core Functions

* **Generate structure:** Create `00_README.md`, `INDEX.meta.yaml`, schema stubs, and CI validation scripts.
* **Schema enforcement:** Validate tank, valve, and cryo-sensor data via `*.schema.json` files.
* **Procedure templates:** Generate process docs such as `PROC_28-60-11_Tank-Pressure-Test-And-Leak-Check.md` and `PROC_28-60-61_Leak-Detection-And-Helium-Test.md`.
* **Data management:** Populate CSVs for pressure ratings, heat-leak rates, and inspection intervals.
* **Traceability:** Insert sidecar `.meta.yaml` metadata for effectivity, approvals, safety class, and checksum integrity.
* **CI validation:** Run `validate_ata28.sh` to confirm schema compliance, timestamp validity, and cross-reference accuracy.

## Inputs

* Material specifications (316L, Inconel, CFRP).
* Pressure test and leak-rate data.
* Sensor calibration logs and uncertainty statements.
* Regulatory mapping (FAA/EASA, ISO 21010, SAE AIR6464).
* Engineering approvals and safety sign-off data.

## Outputs

* Complete ATA 28-60-00 directory structure with version-controlled documentation.
* Validated JSON schemas and CSV datasets.
* Example inspection and leak-test records with digital signatures and `sha256` hashes.
* Pull request to `AmedeoPelliccia/OPT-IN` repository (branch `ata/28-60/init`) ready for audit.

## Validation Checks

* All `effective_date` ≤ current date.
* Cryogenic leak rates ≤ 1 × 10⁻⁶ mbar L/s.
* Relief valve setpoints within ±2 %.
* Boil-off rate and insulation thickness consistent with DATA 28-60-51.
* Cross-references resolve to ATA 21, 47, 49, 51.
* Every record includes calibration certificate reference and `sha256` integrity field.

## Usage

```
ata28 generate skeleton --owner "Cryogenic Systems"
ata28 validate chapter
ata28 commit --branch ata/28-60/init --pr "ATA 28-60 Cryogenic H₂ Subsystem – initial skeleton"
```

## Safety Note

Operations involve **cryogenic temperatures (≈ −253 °C)** and **hydrogen flammability**.
All maintenance requires oxygen monitoring, PPE, grounding verification, and emergency vent readiness.

---

**Owner:** Cryogenic Systems Engineering
**Review Board:** Airworthiness | Thermal Engineering | Energy Systems | Safety
