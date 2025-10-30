# PROC_16-02-02 — Implementation and Configuration Control

**Document ID:** PROC_16-02-02  
**Revision:** 1.0.0  
**Date:** 2025-10-30  
**ATA Chapter:** 16 — Change of Role

## Purpose

This procedure defines the process for implementing approved role changes, including test execution, documentation, and configuration control.

## Scope

Applies to all approved change requests (ECR/NCR) requiring physical implementation, testing, and configuration updates.

## Prerequisites

- Approved change request (from PROC_16-02-01)
- Safety assessment completed and approved
- Test plans developed
- Required materials and resources available

## Procedure

### Step 1: Implementation Planning

**Performer:** Implementation Lead

1.1. Review approved change request and all associated documents

1.2. Develop implementation plan:
   - Schedule and milestones
   - Resource allocation
   - Material requirements
   - Tooling requirements
   - Test facility reservations
   - MSN/aircraft allocation

1.3. Identify prerequisites:
   - Engineering drawings complete
   - Manufacturing procedures ready
   - Test procedures approved
   - Inspection criteria defined
   - Safety mitigations in place

1.4. Obtain Configuration Control approval for implementation plan

**Output:** Approved implementation plan

---

### Step 2: Design and Documentation

**Performer:** Engineering Team

2.1. Create or update engineering artifacts:
   - Design drawings
   - Installation procedures
   - Inspection procedures
   - Test procedures
   - Maintenance procedures
   - Operational procedures

2.2. Generate `.meta.yaml` sidecars for all artifacts:
   - Include SHA-256 checksums
   - Document effectivity
   - Reference change request ID
   - Record approvals

2.3. Update affected technical publications:
   - Aircraft Maintenance Manual (AMM)
   - Illustrated Parts Catalog (IPC)
   - Wiring Diagram Manual (WDM)
   - Flight Crew Operating Manual (FCOM)
   - Component Maintenance Manual (CMM)

2.4. Submit for engineering approval

2.5. Configuration Control verifies document integrity and effectivity

**Output:** Approved engineering documentation with sidecars

---

### Step 3: Test Execution

**Performer:** Test Team

3.1. Review test plan (TESTPLAN_16-03-01_Functional-Regression-Test-Plan.md)

3.2. Verify test setup:
   - Test article configuration correct
   - Equipment calibrated
   - Personnel qualified
   - Safety precautions in place

3.3. Execute tests per approved test plan:
   - Functional tests
   - Integration tests
   - Regression tests
   - Qualification tests (if required)

3.4. Record test data:
   - Raw data files
   - Test observations
   - Anomalies
   - Deviations from test plan

3.5. Compare results to acceptance criteria:
   - Check numeric values against thresholds in DATA_16-03-02_Test-Results.csv
   - Document pass/fail for each test objective
   - Justify any conditional passes

3.6. Generate SHA-256 checksums for all raw data files

3.7. Create test report (TR-YYYY-NNNN) per test-report.schema.json

3.8. Submit test report for approval

**Output:** Approved test report with raw data checksums

---

### Step 4: Anomaly and Deviation Management

**Performer:** Test Team / Engineering

4.1. **If test failures or anomalies occur:**

   4.1.1. Document each anomaly:
   - Anomaly ID
   - Description
   - Severity (Critical / High / Medium / Low)
   - Affected test objectives
   
   4.1.2. Perform root cause analysis
   
   4.1.3. Determine disposition:
   - **Accept as-is** — Justification required, may need engineering disposition
   - **Rework and retest** — Corrective action taken, test repeated
   - **Design change** — Return to engineering for modification
   - **NCR** — Raise non-conformance if acceptance criteria not met
   
   4.1.4. **If NCR raised:**
   - Create NCR-YYYY-NNNN
   - Obtain engineering disposition
   - Document corrective action
   - Verify effectiveness with retest

4.2. Update test report with anomaly resolutions

4.3. Obtain approval for any accepted deviations from:
   - Test Engineer
   - Configuration Control
   - Airworthiness (if safety-critical)

**Output:** Anomaly resolution records, NCRs (if applicable)

---

### Step 5: Configuration Control Update

**Performer:** Configuration Control

5.1. Verify implementation completeness:
   - All required tests passed
   - All documents approved and released
   - All sidecars present with correct checksums
   - Effectivity correctly specified

5.2. Update configuration baseline:
   - Part numbers (if changed)
   - Drawing revisions
   - Procedure revisions
   - LOPA version (if applicable)

5.3. Update effectivity records:
   - MSN applicability
   - Modification status
   - Embodiment status

5.4. Create configuration status report

5.5. Notify stakeholders:
   - Manufacturing
   - Quality Assurance
   - Maintenance
   - Flight Operations
   - Certification Authority (if required)

**Output:** Updated configuration baseline and status report

---

### Step 6: Production/Retrofit Implementation

**Performer:** Manufacturing / MRO

6.1. **For production aircraft:**
   - Incorporate change at specified MSN
   - Verify effectivity before implementation
   - Perform inspection per approved criteria
   - Record implementation in aircraft records

6.2. **For retrofit (in-service aircraft):**
   - Schedule downtime per implementation plan
   - Perform work per approved procedures
   - Conduct functional testing
   - Update aircraft logbook and records

6.3. Quality Assurance inspection:
   - Verify work performed correctly
   - Check all fasteners, torques, and measurements
   - Verify cleanliness and FOD control
   - Stamp off inspection records

6.4. Functional verification:
   - Perform operational checks
   - Verify system functionality
   - Confirm no adverse effects on other systems

6.5. Document implementation:
   - Record date implemented
   - Record implementing technician(s)
   - Record QA inspector
   - Record test results

**Output:** Implemented change with signed-off records

---

### Step 7: Final Approval and Closure

**Performer:** Configuration Control

7.1. Verify all closure criteria met:
   - Implementation complete per plan
   - Tests passed
   - Anomalies resolved
   - Documentation approved
   - Records complete
   - Approvals obtained

7.2. Obtain final approvals:
   - **Configuration Control** — Baseline update
   - **Airworthiness** — Certification compliance (if required)
   - **Quality Assurance** — Implementation quality
   - **Safety Engineering** — Mitigation verification (if safety-critical)

7.3. Update change request status: "Closed - Implemented"

7.4. Archive all records:
   - Change request
   - Safety assessment
   - Test reports
   - Implementation records
   - Approval records
   - Sidecars and checksums

7.5. Create closure summary document

7.6. Final audit log entry

7.7. Coordinate with Certification Authority if required:
   - Submit compliance data
   - Obtain authority approval
   - Update TCDS or STC (if applicable)

**Output:** Closed change request with complete audit trail

---

## Key Records

- Implementation Plan
- Engineering Documentation with Sidecars
- Test Reports (TR-YYYY-NNNN)
- Test Data Files with SHA-256 Checksums
- Anomaly Reports and NCRs
- Configuration Status Report
- Implementation Records
- Final Approval Records
- Closure Summary

## Quality Checks

- All artifacts have `.meta.yaml` sidecars
- All checksums are SHA-256 and verified
- All dates are ISO 8601 format
- All numeric data includes units
- All approvals have timestamps and reviewer IDs
- Effectivity is unambiguous
- Traceability to change request maintained

## References

- PROC_16-02-01: Request and Assessment
- TESTPLAN_16-03-01: Functional Regression Test Plan
- DATA_16-03-02: Test Results
- PROC_16-02-03: Operational Changes and LOPA Updates

## Revision History

| Revision | Date | Author | Description |
|----------|------|--------|-------------|
| 1.0.0 | 2025-10-30 | Configuration Control | Initial release |

---

*Procedure controlled under ATA 16 Change of Role governance framework*
