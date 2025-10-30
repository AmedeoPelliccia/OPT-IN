---
traceability:
  ata_refs:
    - id: "ATA_05"
      title: "ATA 05 - TIME LIMITS & MAINTENANCE CHECKS"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/00_README.md"
    - id: "ATA_21"
      title: "ATA 21 - ECS / ENVIRONMENTAL CONTROL INTERFACES"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/E1-ENVIRONMENT/ATA_21-AIR_CONDITIONING_AND_PRESSURIZATION/00_README.md"
    - id: "ATA_25"
      title: "ATA 25 - EQUIPMENT / FURNISHINGS"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_25-EQUIPMENT_FURNISHINGS/00_README.md"
    - id: "ATA_33"
      title: "ATA 33 - LIGHTS"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_33-LIGHTS/00_README.md"
    - id: "ATA_51"
      title: "ATA 51 - STRUCTURES / STANDARD PRACTICES"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/A-AIRFRAME/ATA_51-STANDARD_PRACTICES_AND_STRUCTURES-GENERAL/00_README.md"

---

# ATA 16 — Change of Role

## Description
Comprehensive governance for procedures, records and evidence for role changes that affect aircraft systems, equipment, or operational capability. Covers functional role changes to equipment, crew/observer role assignments that impact certification, and any configuration or LOPA changes that reassign responsibilities or system ownership.

## Purpose
Define governance, evidence and traceability needed when a system, equipment or operational role is changed in a way that affects airworthiness, safety, or certification. Provide audit-ready artifacts and sidecar metadata that record the decision, test evidence, numeric limits, approvals and effectivity.

## Scope
This chapter contains audit-ready governance, procedures, data and acceptance criteria for:
- Change request management: formal engineering change requests (ECR) or non-conformance reports (NCR) with unique identifiers
- Effectivity tracking: MSN, configuration, and LOPA version scope for changes
- Safety assessment: hazard log entries, assessment summaries, mitigation plans
- Test evidence: functional tests, integration tests and regression tests demonstrating safe operation after role change
- Numeric evidence: thresholds, tolerances, test pass/fail values and references to DATA_*.csv tables
- Approvals: sidecar entries for required approvals (Airworthiness, Human Factors, Structures, Materials & Process)
- Traceability: all artifacts with sidecars including SHA-256, drawing refs, and links to related change records
- Configuration control: LOPA updates, system ownership reassignment, operational documentation changes

## Cross-references
- [ATA 05 — Time Limits & Maintenance Checks](../../../../O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/00_README.md)  
- [ATA 21 — ECS / Environmental Control Interfaces](../../E1-ENVIRONMENT/ATA_21-AIR_CONDITIONING_AND_PRESSURIZATION/00_README.md)  
- [ATA 25 — Equipment / Furnishings (cabins & stowage)](../ATA_25-EQUIPMENT_FURNISHINGS/00_README.md)  
- [ATA 33 — Lights](../ATA_33-LIGHTS/00_README.md)  
- [ATA 51 — Structures / Standard Practices](../../A-AIRFRAME/ATA_51-STANDARD_PRACTICES_AND_STRUCTURES-GENERAL/00_README.md)  

## Key regulatory references
- **[CS/14 CFR Part 25](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25)** - Airworthiness Standards: Transport Category Airplanes (clauses affected by role change)
- **[EASA Part-21](https://www.easa.europa.eu/en/document-library/regulations/easa-part-21-regulation)** - Certification procedures for changes and modifications
- **[FAA Order 8110.4C](https://www.faa.gov/regulations_policies/orders_notices/index.cfm/go/document.information/documentID/1027630)** - Type Certification
- **[EASA AMC 20-115](https://www.easa.europa.eu/en/document-library/acceptable-means-of-compliance-and-guidance-materials)** - Airborne Software Development Assurance
- **[SAE ARP4754A](https://www.sae.org/standards/content/arp4754a/)** - Guidelines for Development of Civil Aircraft and Systems
- **[SAE ARP4761](https://www.sae.org/standards/content/arp4761/)** - Guidelines and Methods for Conducting the Safety Assessment Process

See [Regulatory Impact Matrix](./01-GENERAL/DATA_16-01-02_Regulatory-Impact-Matrix.csv) for detailed mapping.

## Governance & Owners
- **Governance owner**: Configuration & Change Control (or Cabin Interiors Engineering depending on scope)
- **Review board**: [Airworthiness, Human Factors, Materials & Process, Structures]
- **Approval authorities**: Airworthiness Engineering (for changes affecting certification), Configuration Control Board

## Effectivity
Default: AMPEL360 baseline (MSN: ALL, CONFIG: ALL). Specific effectivity by MSN, production block, configuration variant, LOPA version, or modification must be recorded in `INDEX.meta.yaml` and per-document sidecars.

## Mandatory chapter conventions
- All documents MUST include a `.meta.yaml` sidecar following the OPT-IN template in `04-APPROVALS_AND_SIDECARS/11-SIDE-CAR_META/templates`.
- Use ISO 8601 dates (`YYYY-MM-DD`) in sidecars and records.
- All change requests must have unique identifiers following pattern: `ECR-YYYY-NNNN` or `NCR-YYYY-NNNN`.
- Test evidence files must include SHA-256 file hash in sidecar metadata.
- Numeric test criteria are MANDATORY: threshold values, tolerances, pass/fail limits with units.
- CSV data files MUST include units in column headers (e.g., `Torque_Nm`, `Deflection_mm`, `Threshold_units`).
- Safety assessments must reference hazard analysis (FMV/FTA/FMEA) and include mitigation plan.
- Any change affecting certification REQUIRES Airworthiness approval with timestamp and reviewer ID.
- Effectivity fields required: MSN range, configuration ID, LOPA version.

## Regulatory & Certification
Record regulatory clauses and rationale for role change. Typical items to capture:
- Applicable regulations and standards (e.g., CS/14 CFR Part 25 clauses affected by role change)
- Safety assessment reference (FMV/FTA/FMEA)
- Certification impact statement and any required re-test or re-qualification
- Type Certificate Data Sheet (TCDS) amendment requirements
- Supplemental Type Certificate (STC) applicability

## Mandatory items (per change)
- **Change request**: formal engineering change request (ECR) or NCR with unique ID
- **Effectivity**: MSN, configuration, and LOPA version scope for the change
- **Safety assessment**: hazard log entries, assessment summary, mitigation plan
- **Test evidence**: any functional tests, integration tests and regression tests demonstrating safe operation after role change. Include raw data and final reports
- **Numeric evidence**: thresholds, tolerances, test pass/fail values and references to `DATA_*.csv` tables where appropriate
- **Approvals**: sidecar entries for required approvals (Airworthiness, Human Factors, Structures, Materials & Process)
- **Traceability**: all artifacts must have sidecars with SHA-256, drawing refs, and links to related change records

## Repository layout (recommended)
- `00_README.md` (this file)  
- `ci/`  
  - `validate_ata16.sh` (CI entrypoint for change validation)  
- `INDEX.meta.yaml` (metadata, owner, review board, effectivity)  
- `schemas/`  
  - `change-request.schema.json`  
  - `safety-assessment.schema.json`  
  - `test-report.schema.json`  
- `01-GENERAL/`  
  - `DESC_16-01-01_Scope-Governance-And-Effectivity.md`  
  - `DATA_16-01-02_Regulatory-Impact-Matrix.csv`  
- `02-PROCEDURES/`  
  - `PROC_16-02-01_Request-And-Assessment.md`  
  - `PROC_16-02-02_Implementation-And-Configuration-Control.md`  
  - `PROC_16-02-03_Operational-Changes-And-LOPA-Updates.md`  
- `03-TESTS_AND_EVIDENCE/`  
  - `TESTPLAN_16-03-01_Functional-Regression-Test-Plan.md`  
  - `DATA_16-03-02_Test-Results.csv`  
- `04-APPROVALS_AND_SIDECARS/`  
  - `11-SIDE-CAR_META/` (templates + executed sidecars)  
- `05-RECORDS/`  
  - `12-EXAMPLES_AND_RECORDS/` (ECRs, Safety Assessments, Test Reports)

## Core checks (CI / agent)
1. **Schema validation**: validate change request, safety assessment and test-report artifacts against JSON schemas
2. **Effectivity check**: confirm MSN, cfg, and LOPA fields present and correct
3. **Safety closure**: hazard mitigations must be present or an engineering disposition attached
4. **Test evidence**: all claimed test passes must have raw data accessible and SHA-256 recorded
5. **Numeric verification**: compare measured values to limits in `DATA_*.csv`. Flag deviations
6. **Approvals**: required reviewers must be recorded with timestamps and roles
7. **Traceability**: ensure sidecars include drawing refs, related ECR/NCR ids and artifact checksums
8. **CI pass**: `ci/validate_ata16.sh` must return success prior to merge

## Approvals & governance
Owner role: `Configuration & Change Control` or `Cabin Interiors Engineering` depending on scope.  
Review board: `Airworthiness`, `Human Factors`, `Materials & Process`, `Structures`.  
PR must include explicit approvals, with at least one Airworthiness sign-off for changes affecting certification. Record approvals in sidecar including reviewer ID and ISO8601 timestamp.

## Sidecar minimum fields
- `id` (UUID)  
- `artifact_path`  
- `artifact_sha256`  
- `schema_id` / `schema_version`  
- `effectivity: { msn, cfg, lopa }`  
- `change_request_id`  
- `regulatory_refs: []`  
- `safety_assessment_ref`  
- `numeric_checks` (torque, deflection, thresholds as applicable)  
- `approvals: [{role, reviewer_id, timestamp, comment}]`  
- `audit_log: [{event, actor, timestamp, detail}]`

## PR checklist for a Change-of-Role
- [ ] Change request attached and referenced
- [ ] Safety assessment included and mitigations defined
- [ ] Test evidence attached with SHA-256 checksums
- [ ] Effectivity recorded (MSN, cfg, LOPA)
- [ ] Sidecars present for all new/modified artifacts
- [ ] CI (`ci/validate_ata16.sh`) green
- [ ] Required approvals recorded in sidecars and PR

## CI & tooling
- Provide `ci/validate_ata16.sh` that runs schema validation, checksum generation, numeric checks and safety-assessment presence checks
- Keep numeric thresholds in `DATA_*.csv` files. The agent should not hardcode limits

## Security & data handling
- Record SHA-256 only. Avoid storing secrets and PII inside sidecars
- External links must be HTTPS and require authenticated access
- Sidecars inherit repository ACLs

## Contact & escalation
Owner: `Configuration & Change Control` (or `Cabin Interiors Engineering` when applicable). For ambiguous certification impact, escalate to `Airworthiness` and open an engineering disposition before merge.

---

## Navigation

[↑ C1-COCKPIT.CABIN,CARGO](../README.md)

### Related Sections

- [ATA 11 - PLACARDS AND MARKINGS](../ATA_11-PLACARDS_AND_MARKINGS/00_README.md)
- [ATA 15 - AIRCREW INFORMATION](../ATA_15-AIRCREW_INFORMATION/README.md)
- [ATA 25 - EQUIPMENT FURNISHINGS](../ATA_25-EQUIPMENT_FURNISHINGS/README.md)
- [ATA 33 - LIGHTS](../ATA_33-LIGHTS/README.md)
- [ATA 35 - OXYGEN](../ATA_35-OXYGEN/00_README.md)
- [ATA 44 - CABIN SYSTEMS (INCL. IFE IFX)](../ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/00_README.md)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../../../README.md)
