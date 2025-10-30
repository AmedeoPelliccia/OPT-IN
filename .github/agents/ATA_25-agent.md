# ATA 25 — Equipment / Furnishings

Scope: seats, monuments, galleys, lavatories, stowage, interior panels, restraints, safety-equipment stowage.

## Purpose
Provide governance, evidence requirements and auditable artifacts for cabin furnishings and equipment. This chapter contains procedures, records, test dossiers and sidecar metadata required for airworthiness and certification.

## Cross-references
- [ATA 11 — Placards and Markings](../ATA_11-PLACARDS_AND_MARKINGS/00_README.md)  
- [ATA 21 — ECS / Environmental Control Interfaces](../ATA_21-ECS_INTERFACES/00_README.md)  
- [ATA 33 — Lights](../ATA_33-LIGHTS/00_README.md)  
- [ATA 35 — Oxygen](../ATA_35-OXYGEN/00_README.md)  
- [ATA 44 — Cabin Systems (incl. IFE/IFX)](../ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/00_README.md)  
- [ATA 51 — Structures / Standard Practices](../../A-AIRFRAME/ATA_51-STANDARD_PRACTICES_AND_STRUCTURES-GENERAL/00_README.md)

## Compliance
Track CS / 14 CFR Part 25 compliance in:
[`01-GENERAL/DATA_25-01-03_Regulatory-Compliance-Matrix.csv`](01-GENERAL/DATA_25-01-03_Regulatory-Compliance-Matrix.csv)

Key regulatory refs: 14 CFR/CS-25 (§25.561, §25.562 seats, §25.601, §25.603, §25.853 flammability, §25.785 seating).

## Mandatory items
- **Regulations**: Capture all applicable CS/14 CFR Part 25 clauses for the artifact.  
- **Evidence**: Dynamic test results (25.562), flammability reports (25.853), material Certificates of Conformity, torque logs, bonding/grounding records.  
- **Effectivity**: Record MSN, cabin configuration and LOPA version for every artifact.  
- **Numerics**: Seat rail torques, allowable free-play, restraint inspection limits, bin deflection and attach loads, bonding resistance limits.  
- **Traceability**: Sidecars with approvals, SHA-256 checksums for test artifacts, drawing references and LOPA IDs.

## Repository layout (top level)
See folders and representative files:
- `00_README.md` (this file)  
- `ci/validate_ata25.sh` (CI validation entrypoint)  
- `INDEX.meta.yaml` (chapter metadata, owner, traceability)  
- `schemas/` (JSON schemas for artifacts)  
  - `equipment-spec.schema.json`  
  - `installation-record.schema.json`  
  - `inspection.schema.json`  
  - `flammability-test.schema.json`  
  - `dynamic-seat-test.schema.json`  
- `01-GENERAL/` (scope, taxonomy, regulatory matrix)  
- `02-SEATS_AND_RESTRAINTS/` (seat standards, torque tables, procedures)  
- `03-MONUMENTS_GALLEYS_LAVATORIES/` (galley and lavatory procedures)  
- `04-STOWAGE_BINS_AND_PANELS/` (bin install, panel removal)  
- `05-SAFETY_EQUIPMENT_STOWAGE/` (safety stowage maps and intervals)  
- `06-FLAMMABILITY_AND_MATERIALS/` (flammability packaging and test results)  
- `07-DYNAMIC_AND_HIC_TESTS/` (dynamic seat test plans and data)  
- `08-INSPECTION_AND_MAINTENANCE/` (GVI/DVI and inspection intervals)  
- `09-NONCONFORMANCE_AND-DEVIATION/` (NCR workflow and templates)  
- `10-DIAGRAMS_AND_REFERENCE_DATA/` (cabin layout and reference tables)  
- `11-SIDE-CAR_META/` (sidecar templates and document meta)  
- `12-EXAMPLES_AND_RECORDS/` (installation records, inspection logs, dossiers)

## Quick operational notes
- **Validate** artifacts against schemas in `schemas/`.  
- **Compute** SHA-256 for every binary and text artifact. Store in sidecar.  
- **Effectivity** fields (msn, cfg, lopa) are mandatory for records that claim certification or test coverage.  
- **Numeric checks** must reference corresponding CSVs (e.g., `DATA_25-02-04_Seat-Rail-Torque-And-Limits.csv`).  
- **CI**: `ci/validate_ata25.sh` should be run by maintainers and CI for every PR touching ATA 25 paths. The PR must pass CI before merging.

## Governance
Owner role: `Cabin Interiors Engineering`.  
Review board: `Airworthiness`, `Human Factors`, `Materials & Process`, `Structures`.  
Required approvals: at least one Airworthiness plus one Materials & Process approval for material/flammability changes. Record approvals in sidecar with ISO8601 timestamps and reviewer IDs.

## Sidecars & traceability
- Sidecars live in `11-SIDE-CAR_META/` or adjacent to artifacts.  
- Sidecar must include: artifact SHA-256, schema id/version, effectivity, regulatory refs, numeric checks, approvals and an audit log.  
- Keep numeric thresholds in `DATA_*.csv` files. Do not hardcode numeric limits in code.

## Contribution & PR checklist
When opening a PR that modifies ATA 25:
1. Add or update sidecars for every changed artifact.  
2. Include SHA-256 fingerprints for attached artifacts.  
3. Attach required evidence for any regulatory claim.  
4. Run `ci/validate_ata25.sh` locally or rely on CI.  
5. In PR description include effectivity (msn, cfg, lopa) and LOPA version.  
6. Request reviewers from the review board. Ensure required approvals are recorded before merge.

## Notes
- The ATA 21 link uses the directory `ATA_21-ECS_INTERFACES`. Adjust if your ATA-21 folder differs.  
- `INDEX.meta.yaml` contains chapter metadata and ATA traceability. Harmonize URLs across files if you rename chapters or move directories.

## Contact
Owner: `Cabin Interiors Engineering`. For governance questions open an issue or tag the owner in the PR.

