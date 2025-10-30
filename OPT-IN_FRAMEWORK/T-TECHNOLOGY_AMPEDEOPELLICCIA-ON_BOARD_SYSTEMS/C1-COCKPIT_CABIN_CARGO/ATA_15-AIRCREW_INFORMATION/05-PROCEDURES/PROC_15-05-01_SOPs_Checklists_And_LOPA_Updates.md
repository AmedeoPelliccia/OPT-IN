---
# PROC_15-05-01_SOPs_Checklists_And_LOPA_Updates.meta.yaml
schema_version: "1.1"
id: "PROC_15-05-01_SOPs_Checklists_And_LOPA_Updates_rev1.0.0_20251030"
document:
  type: "PROC"
  title: "15-05-01: SOPs, Checklists and LOPA Updates"
  revision: "1.0.0"
  effective_date: "2025-10-30"
effectivity:
  msn: "ALL"
safety:
  hazards:
    - "Operational risk from procedural change"
    - "Evacuation / egress impact"
  criticality: "Flight-Critical"
training_required:
  - "SOP-AUTHOR"
  - "HFE-LEAD"
approvals:
  - authority: "Aircrew Systems Engineering"
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
    - "PROC_15-04-01"
    - "PROC_15-03-01"
    - "ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS"
---

# PROC_15-05-01 — SOPs, Checklists and LOPA Updates
**Revision:** 1.0.0  
**Effective date:** 2025-10-30  
**Owner:** Aircrew Systems / Flight Operations Engineering  
**Skill level:** Senior procedure author / Human Factors  
**Estimated duration:** Program dependent (typically 2–6 days per major SOP update)  
**Personnel required:** Procedure Author, HFE lead, Airworthiness, Training Lead

---

## 1.0 Purpose
Define mandatory process to create, review, validate and release Standard Operating Procedures (SOPs), crew and maintenance checklists, and updates to the LOPA (Layout of Passenger Accommodations) that affect operational procedures or safety-critical equipment.

---

## 2.0 Scope
Applies to all SOPs and checklists that affect flightcrew, cabin crew, and maintenance operations and any LOPA change impacting evacuation, egress paths, or safety equipment placement. Includes change control, human-factors validation, training update, DPP entry, and airworthiness approvals.

---

## 3.0 Safety Warnings
- Changes affecting evacuation, slides, exits, oxygen, fire suppression or life-support are flight-critical. Do not implement without Airworthiness approval.  
- Do not deploy procedures in live operations before training and validation complete.  
- Ensure any physical LOPA change is coordinated with structures, LSP and systems engineering.

---

## 4.0 Normative References
- ATA-15 (Aircrew Information)  
- ARP4754A / ARP4761 (Safety and system development)  
- HFE process PROC_15-04-01  
- Training standards and operator SOP policy

---

## 5.0 Roles & Responsibilities
- **Procedure Author:** drafts SOP/checklist and change rationale.  
- **HFE Lead:** performs human-factors analysis and validation.  
- **Airworthiness:** reviews safety impacts; issues release for operational use.  
- **Training Lead:** prepares training materials and validates skills transfer.  
- **Cabin/Flight Operations SMEs:** subject-matter review and operational acceptability.  
- **Safety/Compliance:** final conformity and regulatory mapping.

---

## 6.0 Change Categories (quick)
- **Minor editorial:** wording, typos, non-operational clarifications — no HFE revalidation.  
- **Moderate:** procedure timing changes, non-structural checklist reorder — HFE formative review and training update.  
- **Major (Flight-Critical):** changes to evacuation, egress, life-support, or LOPA geometry — full HFE summative validation, flightcrew/cabin trials, Airworthiness signoff, FMEA/FHA update.

---

## 7.0 Process Overview (stepwise)

### 7.1 Initiation & Justification
1. Create Change Request (CR) with: scope, reason, affected SOPs/checklists/LOPA, safety impact, and target effectivity (MSN/cfg).  
2. Attach supporting evidence: incident report, regulatory driver, or engineering disposition.

### 7.2 Drafting
1. Procedure Author drafts new SOP or checklist using the standard template and names file per naming convention. Include change summary and change-tag.  
2. Draft must include `00-SUMMARY`, `APPLICABILITY`, `STEPS`, `ACCEPTANCE`, `TRAINING_IMPACT`, and `DPP_ACTIONS`.

### 7.3 Human Factors Review
1. HFE lead performs task analysis and identifies risk. For moderate/major changes perform formative tests. Document metrics (task time, error rate, NASA-TLX).  
2. HFE issues corrective actions. Implement and record iteration.

### 7.4 Systems & Safety Assessment
1. Update FHA/FMEA with human error modes and residual risk. Quantify risk change.  
2. If change impacts structural, electrical or systems, obtain discipline approvals (Structures, Electrical, Avionics, Materials & Process). Record dispositions.

### 7.5 LOPA Update (if applicable)
1. For LOPA geometry or equipment location changes, update LOPA drawing and `DATA_LOPA_Table.csv` with: seat blocks affected, new equipment locations, evacuation path deltas, and evacuation analysis summary.  
2. Run evacuation and egress analysis; produce acceptance report. Include passenger count scenarios and exit utilization models.

### 7.6 Training & Simulation
1. Training Lead defines syllabus update and training hours. Perform simulator/HIL trials for flightcrew if SOP affects flight operations.  
2. Validate crew competency via assessment (pass/fail criteria). Record training evidence in DPP.

### 7.7 Summative Validation (for moderate/major)
1. Plan and execute summative HFE validation in representative environment. Record raw data and produce HFE Validation Report.  
2. Verify checklist usability and procedure timing under degraded modes.

### 7.8 Approval & Release
1. Prepare Release Package: SOP/checklist final, HFE report, FHA/FMEA update, training record, LOPA revision (if any), and DPP entries.  
2. Airworthiness authority signs approvals in sidecar `approvals` field with ISO date. Flight-critical changes cannot be released without all required approvals.

### 7.9 Publication & Effectivity
1. Commit final files to ATA tree and update `INDEX.meta.yaml` effectivity.  
2. Publish change note and notify operators, training and maintenance. Update digital procedures in systems and DPP.  
3. Monitor post-deployment for 90 days and collect feedback; record in change log.

---

## 8.0 Checklist Template (example)

| Item | Procedure Step | Acceptable Criteria | Verification |
|------|----------------|---------------------|--------------|
| Preflight power | Verify power on and test lamps | All lamps illuminate | Author / HFE witness |
| Cabin secure | Verify doors/locks per LOPA | Locks engaged, placards present | Checklist signed |
| Evacuation brief | Conduct passenger brief | All actions stated | Flight crew sign-off |

> Save checklist as `CHECK_15-05-01_<SOP_SHORTNAME>_revX_Y.md` or CSV for data ingestion.

---

## 9.0 LOPA Update Template (example CSV)
```

LOPA_Change_ID,Date,Author,Affected_Block,Seat_Range,Old_Equipment,New_Equipment,Delta_Egress_m,Evac_Analysis_Report,Approval_Status
CR-2025-001,2025-10-30,author.name,FWD-1,1-10,LifeVestRack-A,LifeVestRack-B,0.4,REPORT_2025-10-29.pdf,Pending

```

---

## 10.0 Acceptance Criteria
- SOPs: Clear steps, HFE evidence for human-critical items, acceptance tests defined.  
- Checklists: Concise, single-action items, measurable verification and traceability.  
- LOPA: Evacuation delta ≤ program thresholds, no reduction in exit capability, Airworthiness approval.

---

## 11.0 Documentation & Traceability
- Every SOP/checklist/LOPA change must have a `.meta.yaml` sidecar with `id`, `title`, `revision`, `effective_date`, `effectivity`, `safety.hazards`, `training_required`, `approvals`, and `integrity.checksum.value` (sha256).  
- DPP entries updated for affected equipment and training artifacts.  
- Change log: include CR number, reviewer names, disposition and links to evidence.

---

## 12.0 Escalation & Nonconformance
- If a change fails validation or creates unacceptable risk, stop release. File NCR and escalate to Airworthiness and Program Director. Develop mitigation and revalidate.

---

## 13.0 Training & Competency
- Training Lead must certify completion and competency for all crew affected by the change. Record training evidence in DPP and sidecar.

---

## 14.0 Revision History
- **1.0.0 — 2025-10-30** Initial issue.

---

*End of procedure.*

