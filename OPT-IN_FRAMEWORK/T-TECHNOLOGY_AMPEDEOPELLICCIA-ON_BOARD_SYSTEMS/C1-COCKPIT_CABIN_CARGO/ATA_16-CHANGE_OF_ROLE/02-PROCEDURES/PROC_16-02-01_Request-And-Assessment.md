# PROC_16-02-01 — Request and Assessment

**Document ID:** PROC_16-02-01  
**Revision:** 1.0.0  
**Date:** 2025-10-30  
**ATA Chapter:** 16 — Change of Role

## Purpose

This procedure defines the process for initiating, documenting, and assessing change requests for role changes affecting aircraft systems, equipment, or operational capability.

## Scope

This procedure applies to all Engineering Change Requests (ECR) and Non-Conformance Reports (NCR) that involve role changes as defined in ATA 16.

## Prerequisites

- Familiarity with ATA 16 scope and governance (DESC_16-01-01)
- Access to change management system
- Understanding of safety assessment requirements (SAE ARP4761)

## Roles and Responsibilities

| Role | Responsibility |
|------|----------------|
| **Requestor** | Initiates change request, provides rationale and impact assessment |
| **Configuration Control** | Reviews request for completeness, assigns unique ID, manages workflow |
| **Safety Engineering** | Conducts safety assessment, classifies hazards, defines mitigations |
| **Airworthiness** | Reviews certification impact, determines regulatory compliance path |
| **Discipline Engineers** | Assess technical feasibility, provide numeric criteria |
| **Human Factors** | Evaluates crew/passenger interface impacts |

## Procedure

### Step 1: Initiate Change Request

**Performer:** Requestor

1.1. Access the change management system

1.2. Create new change request and select type:
   - Engineering Change Request (ECR) for proactive changes
   - Non-Conformance Report (NCR) for reactive changes

1.3. Complete mandatory fields:
   - **Title** — Clear, concise description (10-200 characters)
   - **Description** — Detailed explanation including:
     - Current state
     - Desired future state
     - Rationale for change
     - Expected benefits
     - Potential risks
   - **Change Type** — Select from:
     - Equipment_Role_Change
     - System_Function_Change
     - Crew_Role_Assignment
     - Observer_Role_Assignment
     - LOPA_Configuration_Change
     - System_Ownership_Change
     - Operational_Capability_Change
     - Certification_Impact_Change

1.4. Specify **Effectivity**:
   - MSN range (e.g., ALL, 001-050, 025)
   - Configuration (e.g., ALL, BUSINESS, ECONOMY)
   - LOPA version (e.g., LOPA-v1.2)
   - Effective date (ISO 8601: YYYY-MM-DD)
   - Production block (optional)

1.5. Identify **Impacted Systems**:
   - ATA chapter(s)
   - System name(s)
   - Old role/function
   - New role/function
   - Impact description

1.6. Submit request to Configuration Control

**Output:** Draft change request with system-generated ID (pending Configuration Control review)

---

### Step 2: Configuration Control Review

**Performer:** Configuration Control

2.1. Review request for completeness within 2 business days

2.2. Verify:
   - All mandatory fields completed
   - Effectivity is valid and unambiguous
   - Change type is appropriate
   - No duplicate requests exist

2.3. **If incomplete:**
   - Return to requestor with feedback
   - Requestor addresses issues and resubmits
   - Go to Step 2.1

2.4. **If complete:**
   - Assign unique ID:
     - ECR: `ECR-YYYY-NNNN` (e.g., ECR-2025-0001)
     - NCR: `NCR-YYYY-NNNN` (e.g., NCR-2025-0042)
   - Classify change:
     - Safety criticality (Critical / Major / Minor / Administrative)
     - Certification impact (None / Minor / Major / TCDS_Amendment)
   - Route to appropriate reviewers based on classification

2.5. Create change request record with audit log entry

**Output:** Change request assigned unique ID and routed for assessment

---

### Step 3: Safety Assessment

**Performer:** Safety Engineering

3.1. Review change request within 5 business days

3.2. Determine if safety assessment is required:
   - **Critical changes** — Full FHA/PSSA/SSA required
   - **Major changes** — FMEA or simplified assessment
   - **Minor changes** — Safety impact statement
   - **Administrative changes** — No safety assessment

3.3. **If safety assessment required:**

   3.3.1. Create safety assessment document (SA-YYYY-NNNN)
   
   3.3.2. Conduct Functional Hazard Assessment (FHA):
   - Identify failure conditions
   - Classify hazards (Catastrophic / Hazardous / Major / Minor / No Safety Effect)
   - Determine probability (Extremely Improbable to Frequent)
   - Assign Design Assurance Level (DAL: A through E)
   
   3.3.3. Perform detailed analysis if required:
   - Fault Tree Analysis (FTA) for critical hazards
   - Failure Modes and Effects Analysis (FMEA) for systematic failures
   - Common Cause Analysis (CCA) for redundant systems
   
   3.3.4. Develop mitigation strategy:
   - Design changes
   - Procedural controls
   - Training requirements
   - Monitoring systems
   - Warning/alerting systems
   - Inspection/maintenance actions
   
   3.3.5. Assess residual risk:
   - Acceptable
   - Acceptable with conditions
   - Unacceptable (change cannot proceed without further mitigation)
   
   3.3.6. Document assumptions and validate

3.4. **If no safety assessment required:**
   - Document safety impact statement (justification for no assessment)

3.5. Link safety assessment to change request

3.6. Update change request status: "Safety Assessment Complete"

**Output:** Safety assessment document (SA-YYYY-NNNN) linked to change request

---

### Step 4: Airworthiness Review

**Performer:** Airworthiness Engineering

4.1. Review change request and safety assessment within 5 business days

4.2. Determine regulatory impact:
   - Identify applicable regulations (CS-25, 14 CFR Part 25, etc.)
   - Determine affected clauses (reference DATA_16-01-02_Regulatory-Impact-Matrix.csv)
   - Classify certification impact:
     - No Impact — Internal approval only
     - Minor Impact — Compliance by similarity/analysis
     - Major Impact — New compliance demonstration required
     - TCDS Amendment — Type Certificate modification

4.3. Define compliance method:
   - Analysis
   - Test
   - Inspection
   - Demonstration
   - Similarity
   - Service experience

4.4. Determine authority coordination requirements:
   - None (internal approval only)
   - Notification (inform authority of change)
   - Pre-approval (authority review before implementation)
   - Formal application (STC, TCDS amendment)

4.5. Document regulatory compliance plan in change request

4.6. Update change request status: "Airworthiness Review Complete"

**Output:** Regulatory compliance plan documented in change request

---

### Step 5: Discipline Engineering Assessment

**Performer:** Relevant Discipline Engineers (Structures, Human Factors, Materials & Process, etc.)

5.1. Review change request within 5 business days

5.2. Assess technical feasibility:
   - Design changes required
   - Material/process requirements
   - Manufacturing considerations
   - Tooling requirements

5.3. Define numeric acceptance criteria:
   - Thresholds (min/max values)
   - Tolerances
   - Pass/fail criteria
   - Reference to applicable standards

5.4. Identify test requirements:
   - Functional tests
   - Integration tests
   - Qualification tests
   - Regression tests

5.5. Estimate implementation effort:
   - Engineering hours
   - Manufacturing hours
   - Test hours
   - Downtime (if retrofit)

5.6. Document findings in change request

5.7. Update change request status: "Technical Assessment Complete"

**Output:** Technical feasibility assessment and numeric criteria documented

---

### Step 6: Human Factors Review

**Performer:** Human Factors Engineering (if applicable)

6.1. Review change request if it involves:
   - Crew interface changes
   - Passenger interface changes
   - Procedural changes
   - Training implications

6.2. Assess human factors impact:
   - Crew workload
   - Situational awareness
   - Error likelihood
   - Training requirements
   - Operating procedure changes

6.3. Recommend mitigations:
   - Design improvements
   - Procedural guidance
   - Training enhancements
   - Alerting/warnings

6.4. Document findings in change request

6.5. Update change request status: "Human Factors Review Complete"

**Output:** Human factors assessment (if applicable)

---

### Step 7: Assessment Summary and Disposition

**Performer:** Configuration Control

7.1. Verify all required assessments are complete

7.2. Review assessment findings:
   - Safety assessment results
   - Regulatory compliance plan
   - Technical feasibility
   - Human factors impact

7.3. Determine disposition:
   - **Approve for Implementation** — All assessments favorable, proceed to implementation
   - **Conditional Approval** — Minor issues to be resolved during implementation
   - **Return for Rework** — Significant issues require requestor action
   - **Reject** — Change not feasible or acceptable

7.4. **If Approve or Conditional Approval:**
   - Assign to implementation team
   - Proceed to PROC_16-02-02 (Implementation and Configuration Control)

7.5. **If Return for Rework:**
   - Provide feedback to requestor
   - Requestor addresses issues
   - Return to applicable assessment step

7.6. **If Reject:**
   - Document rejection rationale
   - Close change request
   - Notify stakeholders

7.7. Create assessment summary document

7.8. Update audit log

**Output:** Change request approved for implementation or closed with rationale

---

## Key Records

- Change Request (ECR-YYYY-NNNN or NCR-YYYY-NNNN)
- Safety Assessment (SA-YYYY-NNNN)
- Regulatory Compliance Plan
- Technical Assessment Report
- Human Factors Assessment (if applicable)
- Assessment Summary

## References

- DESC_16-01-01: Scope, Governance, and Effectivity
- DATA_16-01-02: Regulatory Impact Matrix
- SAE ARP4761: Guidelines and Methods for Safety Assessment
- PROC_16-02-02: Implementation and Configuration Control

## Revision History

| Revision | Date | Author | Description |
|----------|------|--------|-------------|
| 1.0.0 | 2025-10-30 | Configuration Control | Initial release |

---

*Procedure controlled under ATA 16 Change of Role governance framework*
