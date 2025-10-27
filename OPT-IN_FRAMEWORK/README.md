# OPT-IN FRAMEWORK 

## Purpose

This repository implements the **AMPEL360 OPT-IN ATA Chapter Mapping** framework.
It contains certifiable, audit-ready engineering artifacts, procedures, and schemas for aircraft systems organized by ATA chapter.

## Scope

All domain content under `T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS`, `O-ORGANIZATION`, `P-PROGRAM`, `I-INFRASTRUCTURES`, and `N-NEURAL_NETWORKS_USERS_TRACEABILITY` must follow the conventions and metadata rules below.

---

## Quick start

* Read this file.
* Validate repository structure: `ci/validate_optin.sh` (root).
* Per-chapter validation: `ATA_xx/ci/validate_ataXX.sh`.

---

## Mandatory directory conventions

Every `ATA_xx-<NAME>` directory **must** contain:

* `00_README.md` — chapter summary and navigation.
* `ci/validate_ataXX.sh` — chapter CI checks.
* `INDEX.meta.yaml` — chapter index metadata (required fields below).
* `schemas/` — JSON schemas used by the chapter.
* `01-GENERAL/` — governance, philosophy, effectivity, damage limits.
* `15-SIDE-CAR_META/templates/` — document sidecar templates.
* `16-EXAMPLES_AND_RECORDS/` — audit examples and record samples.

Files are grouped under numbered subfolders (02, 03 ...). All procedural files use the naming convention `PROC_ATA-XX-YY_Title.md`. Data tables use `DATA_ATA-XX-YY_*.csv`. Tests use `TESTPLAN_ATA-XX-YY_*.md`.

---

## Required metadata (`INDEX.meta.yaml` minimal)

Each chapter `INDEX.meta.yaml` must include:

```yaml
schema_version: "1.1"
id: "ATA_XX_INDEX"
chapter: "ATA XX - <TITLE>"
governance:
  owner_role: "<Responsible Group>"
  review_board: ["Airworthiness","Materials & Process","NDT Engineering"]
effectivity:
  msn: "ALL"
  cfg: "ALL"            # optional: production option codes or serial ranges
traceability:
  crossrefs: ["ATA 20","ATA 51"]
integrity:
  checksum_algorithm: "sha256"
```

All documents must have corresponding `.meta.yaml` sidecars and follow the sidecar templates in `/templates` or `15-SIDE-CAR_META/templates/`.

---

## Sidecar and document rules

Each document sidecar must contain:

* `id`, `document.type` (`PROC`, `DATA`, `DESC`, `TESTPLAN`, `DIAG`), `title`, `revision`, `effective_date` (ISO 8601).
* `effectivity` (msn/config), `safety.hazards`, `safety.criticality` (`Informational|Maintenance|Flight-Critical`), `training_required`, `approvals` (authority, status, date).
* `integrity.checksum` with `sha256` for binaries.

Templates are available in `/templates/document.meta.yaml` and `/templates/proc_sidecar_template.meta.yaml`.

---

## Data formats and hygiene

* Dates: ISO 8601 (`YYYY-MM-DD`).
* Checksums: SHA-256 for binary attachments and final sidecar `integrity.checksum.value`.
* CSVs: include header row, units, and defined enumerations where applicable.
* JSON schemas: required for `repair-record`, `damage-classification` and any domain-specific records. Use `schema_version` and `id` fields.

---

## Naming, effectivity and traceability

* Use canonical file IDs: `PROC_XX-YY_Title.md`, `DATA_XX-YY_*.csv`, `DIAG_XX-YY_*.pdf`.
* Every procedure must reference governing ATA chapters (e.g., ATA-20, ATA-51).
* Effectivity must be explicit by MSN, production block, and configuration options where applicable.

---

## CI, validation and release

* Root CI script: `ci/validate_optin.sh`.
* Chapter CI scripts must check presence of required files, valid sidecars, schema conformance, and checksum integrity.
* Releases require `INDEX.meta.yaml` revision bump and approval entries in affected sidecars.

---

## Contribution workflow

* Branch name: `ata/XX/<short-description>`.
* Commit message: `ATA XX: <short title>`.
* Open PR against `main`.
* Include automated validation results.
* Document approvals and test evidence in sidecars before merge.

---

## Security and approvals

* Only approved roles may modify `INDEX.meta.yaml` governance fields.
* Flight-critical changes require Structural/Materials/NDT approvals documented in sidecar `approvals`.
* All process logs and repair records must be tamper-evident and traceable.

---

## Contacts & ownership

* Framework owner: **Structural Repair Engineering** (or designated governance in each chapter).
* For repository issues and access raise PR or contact repository admin: `amedeo.pelliccia@gmail.com`.

---

## License

Specify SPDX identifier in root `LICENSE` file. Use a permissive or organization policy license.

---

## Reference templates

See `/templates/document.meta.yaml` and `/templates/proc_sidecar_template.meta.yaml` for ready sidecars. Use those templates for every new document.

---

Minimal. Auditable. Enforceable.
