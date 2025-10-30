---
# PROC_15-04-01_HFE_Process.meta.yaml
schema_version: "1.1"
id: "PROC_15-04-01_HFE_Process_rev1.0.0_20251030"
document:
  type: "PROC"
  title: "15-04-01: HFE Process"
  revision: "1.0.0"
  effective_date: "2025-10-30"
effectivity:
  msn: "ALL"
safety:
  hazards:
    - "Human performance degradation"
    - "Acoustic hazards during tests"
    - "Operational risk during integrated tests"
  criticality: "Safety-Critical"
training_required:
  - "HFE-LEAD"
  - "HFE-TESTER"
approvals:
  - authority: "Human Factors Engineering"
    status: "Released"
    date: "2025-10-30"
  - authority: "Airworthiness Engineering"
    status: "Released"
    date: "2025-10-30"
integrity:
  checksum:
    algorithm: "sha256"
    value: ""
traceability:
  crossrefs:
    - "DESC_15-02-01"
    - "PROC_15-03-01"
    - "ARP4754A"
    - "ARP4761"
---

# PROC_15-04-01 — Human Factors Engineering (HFE) Process
**Revision:** 1.0.0  
**Effective date:** 2025-10-30  
**Owner:** Human Factors & Aircrew Systems Engineering  
**Skill level:** Senior HFE / Cross-discipline team  
**Estimated duration:** Program-dependent (phased across concept → sustainment)

---

## 1.0 Purpose
Define the Human Factors Engineering (HFE) process for AMPEL360 aircrew and maintenance interfaces. Establish mandatory methods, acceptance criteria, verification activities and traceability required for certification and operational readiness.

---

## 2.0 Scope
Applies to crew and maintenance human-machine interfaces (displays, controls, annunciation, procedures, checklists, documentation, support tools and training aids) across flight, cabin and maintenance domains. Covers formative and summative HFE activities from concept through sustainment. Does not replace system-level SW/HW design but prescribes how human factors evidence is produced and recorded.

---

## 3.0 Normative References
- ARP4754A / ARP4761 — System development and safety assessment  
- DO-178C, DO-254 — SW/HW assurance (where HFE interacts with safety-critical software/hardware)  
- SAE ARP4761 — Safety Assessment guidance  
- FAA/EASA Human Factors guidance (ACs and certification memos)  
- ISO 9241 series — Ergonomics of human-system interaction  
- MIL-STD/RTCA/DO-160 subsets — environmental considerations for human interface devices  
- IEC/ISO usability test standards and NASA-TLX guidance for workload assessment

---

## 4.0 Definitions
- **Formative HFE:** Iterative evaluation used to shape design (heuristic evaluation, rapid prototyping, usability testing).  
- **Summative HFE:** Validation-level evidence demonstrating compliance with acceptance criteria in a representative environment.  
- **DPP:** Digital Product Passport.  
- **HMI:** Human-Machine Interface.

---

## 5.0 HFE Process Overview (phased)
Each project shall implement the HFE process as a lifecycle of linked work products and gated reviews:

1. **Program Initiation & Planning**  
   - Appoint HFE lead and cross-discipline HFE team.  
   - Produce `HFE Plan` with scope, milestones, required evidence, effectivity and resources. Include regulatory mapping and acceptance criteria.  
   - Define DPP fields required for HFE artifacts.

2. **Requirements Capture & Allocation**  
   - Derive HFE requirements from system requirements and regulatory constraints. Capture tasks, crew roles, environmental contexts and human performance limits.  
   - Allocate functions between human and automation. Record rationales.

3. **Task & Context Analysis**  
   - Perform task analysis (Hierarchical Task Analysis, GOMS or similar).  
   - Conduct workload and situation awareness analysis. Use NASA-TLX, cognitive task analysis where needed.  
   - Define critical tasks, timing, tolerances, and failure modes.

4. **Concept Design & Functional Prototypes**  
   - Create low-/mid-fidelity prototypes of displays, controls, symbology, procedures and alerts.  
   - Apply human-factors heuristics and accessibility rules (touch targets, legibility, auditory requirements).

5. **Formative Evaluation**  
   - Run iterative evaluations: heuristic reviews, cognitive walkthroughs, formative usability tests with representative users.  
   - Capture metrics: task time, error rates, subjective usability (SUS), workload (NASA-TLX), and observational logs.  
   - Record corrective actions and design iterations in HFE log.

6. **System Integration & Verification**  
   - Integrate HMI into avionics and perform bench and HIL tests verifying timing, latency, aural/visual pairing, and failure modes.  
   - Verify LSP continuity, EMC and environmental robustness for devices in LSP zones per ATA-51/DO-160.

7. **Summative Validation**  
   - Execute summative validation in representative environment (simulator or flight test depending on criticality). Use representative crew and mission scenarios.  
   - Demonstrate acceptance criteria: error rate below threshold, task completion time & tolerances met, SNR/STI requirements for audio, and usability thresholds (SUS > pass score or per agreed threshold).  
   - Produce final HFE Validation Report capturing raw data, analysis, mitigations and signoffs.

8. **Sustainment & Revalidation**  
   - Revalidate HFE after SW/HW changes, major maintenance, or significant procedural change. Define revalidation triggers (e.g., change to symbology, new automation mode).

---

## 6.0 Deliverables (minimum, per HFE Plan)
- HFE Plan (scope, milestones, acceptance criteria).  
- Task Analysis artifacts (HTA, operator workflows).  
- HMI Design Specifications (display layouts, symbology, colors, annunciator rules).  
- Prototype artifacts and change log.  
- Formative test reports (raw data, logs, video where permitted).  
- HFE Validation Report (summative evidence).  
- DPP/Human Factors entries linking UI modules: PN/SN, SW baseline hash, FAT report hash, HFE validation hash.  
- Training and procedures assessment (training effectiveness study).  
- Sidecar `.meta.yaml` for each PROC/DESC/DATA.

---

## 7.0 HFE Methods and Tools (required)
- **Task analysis methods:** HTA, CTA, GOMS.  
- **Usability metrics:** SUS, NASA-TLX, error rates, task completion times, keystroke/touch counts.  
- **Perceptual tests:** Contrast, luminance, color blindness checks, audibility (SPL, STI/SII).  
- **Cognitive measures:** workload, situation awareness (SART or SAGAT where applicable).  
- **Recording:** video, screen capture, logging, and timestamp synchronization.  
- **Analysis tools:** statistical methods, time-series analysis and thematic coding for qualitative data.

---

## 8.0 Acceptance Criteria (examples)
Project-specific acceptance criteria shall be defined in HFE Plan. Examples:

- **Critical tasks:** ≥ 95% success rate under nominal and degraded conditions.  
- **Error rates:** ≤ 1% for safety-critical inputs.  
- **Response time:** operator action within allocated time window for critical alerts (e.g., ≤ 5 s).  
- **SUS:** Summative SUS score ≥ 68 (or bespoke threshold agreed with certification authority).  
- **NASA-TLX:** Workload not exceeding defined percentile compared to baseline (project-defined).  
- **Audibility:** STI ≥ 0.60 for speech-critical alerts; SNR targets per PROC_15-03-01.  
- **Visual legibility:** meet display/annunciator thresholds per DESC_15-02-01.

Noncompliance requires documented justification, mitigation and revalidation.

---

## 9.0 Validation Test Types & Procedures
- **Formative Usability Test:** small sample (5–12) iterative with corrective actions logged.  
- **Summative Validation Test:** larger representative sample (N determined by program) in simulator/flight-like conditions with pre-defined scenarios and pass/fail criteria.  
- **Operational Suitability Assessment:** combine summative HFE data with operational trials to assess training and procedures.  
- **Training Effectiveness Study:** validate that training achieves required performance using retention tests.

Test reports must include raw data files, instrument calibration IDs, participant demographics and consent forms where required. Attach raw data with `sha256` in the report.

---

## 10.0 Safety Assessment & Integration
- Integrate HFE findings into system FMEA/FHA. Quantify human error contributions and residual risks.  
- For any safety-critical residual risk, require mitigation and revalidation and include in Airworthiness submission.

---

## 11.0 Documentation, DPP and Traceability
- Create DPP entries for HMI hardware and software. Link HFE artifacts and validation hashes.  
- Sidecars must reference HFE artifacts and approval stamps.  
- Ensure bidirectional traceability: requirements ↔ design ↔ validation evidence ↔ training ↔ DPP.

---

## 12.0 Roles & Responsibilities
- **HFE Lead:** responsible for HFE Plan, execution, and reporting.  
- **Design Owner:** implements HMI changes and addresses HFE findings.  
- **Test Lead:** organizes formative/summative tests and ensures data integrity.  
- **Airworthiness:** reviews HFE Validation Report and signs off on acceptance.  
- **Training Lead:** assesses training effectiveness and maintains records.

---

## 13.0 Safety Warnings
- Formative/summative tests involving flight deck must be conducted in safe simulation environments. Protect participant hearing during audibility tests. Ensure appropriate PPE for physical tasks in maintenance trials.

---

## 14.0 Records & Retention
- Retain HFE raw data and reports per program retention policy: raw data 24 months; final validation artifacts and DPP entries indefinite or per certification requirement. Include sha256 hashes in records.

---

## 15.0 Revision history
- **1.0.0 — 2025-10-30** Initial issue

---

*End of procedure.*
