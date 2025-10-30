# ATA 15 — Aircrew Information

Scope: flight-deck and crew information hardware and software.  
Includes flightcrew displays, indicators, placards, annunciators, audio alerts, SOP/briefing material, crew interface design, and human-factors evidence that affect airworthiness or crew procedures.

## Purpose
Provide governance, evidence and traceability for all artifacts that convey information to flightcrew or cabin-crew. Ensure that displays, alerts and procedures meet safety, usability and certification requirements and that changes are auditable.

## Cross-references
- <a>ATA 05 — Time Limits & Maintenance Checks</a>  
- <a>ATA 11 — Placards and Markings</a>  
- <a>ATA 21 — ECS / Environmental Control Interfaces</a>  
- <a>ATA 25 — Equipment / Furnishings</a>  
- <a>ATA 33 — Lights</a>  
- <a>ATA 44 — Cabin Systems (incl. IFE/IFX)</a>  
- <a>ATA 51 — Structures / Standard Practices</a>

## Regulatory & Certification
Capture applicable regulatory material and means of compliance. Typical refs and evidence:
- CS / 14 CFR Part 25 requirements that touch flight-deck displays, crew interfaces, alerts and operational procedures.  
- Human factors guidance and means of compliance used for certification.  
- Software and avionics standards where applicable (DO-178, DO-254, ARINC, EUROCAE guidance).

## Mandatory evidence
- **Design artifacts**: display specifications, annunciator logic, audio cue definitions, wiring/connector refs.  
- **Human factors**: HFE reports, formative/summative usability tests, time-to-action studies, distraction analyses.  
- **Operational procedures**: SOPs, briefings, checklists, abnormal/emergency flows and LOPA impacts.  
- **Software evidence**: verification reports, requirements traceability, test logs for avionics/IFIS/EFIS.  
- **Performance data**: latency, update rate, frame-rate, refresh, annunciator thresholds, audio SPL and intelligibility.  
- **Acceptance**: acceptance criteria, pass/fail results and engineering dispositions for deviations.  
- **Traceability**: sidecars with SHA-256 checksums, drawing refs, and links to ECR/NCRs and LOPA IDs.

## Numeric requirements & examples
Record and verify all numeric thresholds in `DATA_*.csv` files. Typical numeric checks:
- Display luminance and contrast ratios.  
- Minimum readable text size and legibility distances.  
- Audio alert SPL (dBA) and SNR.  
- Annunciator response time and debounce/priority rules.  
- Latency between sensor input and display update (ms).  
- Alert priority timing and suppression windows.

## Effectivity
All artifacts that claim certification or operational coverage must include:
- `msn` (manufacturer serial/aircraft effectivity)  
- `cfg` (configuration identifier)  
- `lopa` (LOPA version)  

## Repository layout (recommended)
- `00_README.md` (this file)  
- `ci/`  
  - `validate_ata15.sh` (CI entrypoint for aircrew-information validations)  
- `INDEX.meta.yaml` (owner, review board, effectivity, traceability)  
- `schemas/`  
  - `display-spec.schema.json`  
  - `annunciator.schema.json`  
  - `audio-alert.schema.json`  
  - `hfe-report.schema.json`  
  - `procedure.schema.json`  
- `01-GENERAL/`  
  - `DESC_15-01-01_Scope-Governance-And-Effectivity.md`  
  - `DATA_15-01-02_Regulatory-Compliance-Matrix.csv`  
- `02-DISPLAYS_AND_ANNUNCIATORS/`  
  - `DESC_15-02-01_Display-Standards.md`  
  - `DATA_15-02-02_Display-Luminance-And-Limits.csv`  
- `03-AUDIO_ALERTS/`  
  - `PROC_15-03-01_Audio-Alert-Design-And-Test.md`  
  - `DATA_15-03-02_Audio-Level-Limits.csv`  
- `04-HUMAN_FACTORS/`  
  - `PROC_15-04-01_HFE_Process.md`  
  - `DATA_15-04-02_HFE-Test-Protocol.csv`  
- `05-PROCEDURES/`  
  - `PROC_15-05-01_SOPs_Checklists_And_LOPA_Updates.md`  
- `06-SOFTWARE_AND_AVIONICS/`  
  - `PROC_15-06-01_Software-Verification-And-Trace.md`  
- `07-RECORDS_AND_SIDECARS/`  
  - `11-SIDE-CAR_META/` (templates + executed sidecars)  
- `08-EXAMPLES_AND_RECORDS/`  
  - `12-EXAMPLES_AND_RECORDS/` (hfe reports, test logs, sample displays)

## Core CI / agent checks
1. **Schema validation** for display specs, annunciator config, audio definitions, HFE and procedure artifacts.  
2. **Numeric verification** against `DATA_*.csv`. Flag out-of-range values.  
3. **Human factors completeness**. Ensure HFE reports attach raw data and executive summary.  
4. **Procedure trace**. SOPs must reference affected displays, alerts and LOPA changes.  
5. **Software traceability**. Requirements must trace to tests and verification artifacts.  
6. **Effectivity**. `msn`, `cfg`, `lopa` present and consistent across sidecars.  
7. **Checksums**. SHA-256 for binaries and reports recorded in sidecars.  
8. **CI pass**. `ci/validate_ata15.sh` must exit 0 before merge.

## Approvals & governance
Owner role: `Flight Deck Systems` or `Crew Interface Engineering`.  
Review board: `Airworthiness`, `Human Factors`, `Flight Operations`, `Materials & Process` (if hardware changes).  
Required approvals: at least one Airworthiness and one Human Factors approval for changes affecting crew displays, alerts or procedures. Record approvals in sidecar with reviewer ID and ISO8601 timestamp.

## Sidecar minimum fields
- `id` (UUID)  
- `artifact_path`  
- `artifact_sha256`  
- `schema_id` / `schema_version`  
- `effectivity: { msn, cfg, lopa }`  
- `regulatory_refs: []`  
- `numeric_checks` (luminance, latency, SPL, etc.)  
- `hfe_summary_ref` (HFE report id)  
- `approvals: [{role, reviewer_id, timestamp, comment}]`  
- `audit_log: [{event, actor, timestamp, detail}]`

## PR checklist for Aircrew Information changes
- [ ] Sidecars present for all changed artifacts.  
- [ ] HFE evidence attached or engineering disposition provided.  
- [ ] Numeric thresholds verified against `DATA_*.csv`.  
- [ ] Software verification evidence attached for avionics/UI code.  
- [ ] SOPs updated if procedures or crew actions changed.  
- [ ] Effectivity recorded (MSN, cfg, LOPA).  
- [ ] CI (`ci/validate_ata15.sh`) green.  
- [ ] Required approvals recorded in sidecars and PR.

## Security & data handling
- Record only SHA-256 for artifact integrity. Avoid storing secrets or PII in sidecars.  
- External artifacts must be HTTPS and require authentication.  
- Sidecars and artifacts inherit repository ACLs.

## Notes
- Keep numeric thresholds in `DATA_*.csv`. Do not hardcode limits in CI tools.  
- When display or alert changes affect cabin crew or passengers (e.g., cabin call, safety brief), cross-reference ATA 44 and ATA 25 artifacts and include cabin impact analysis.

## Contact
Owner: `Flight Deck Systems` / `Crew Interface Engineering`. For certification-impact questions escalate to `Airworthiness` and `Human Factors`.
