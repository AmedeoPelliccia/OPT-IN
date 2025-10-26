# Program Deviation Request Procedure

**Revision:** 1.0.0  
**Effective Date:** 2028-07-01  
**Document ID:** PROC_Program-Deviation-Request

---

## 1.0 Purpose

This procedure defines the process for requesting and approving deviations from the approved Maintenance Program Manual (MPM) for AMPEL360 aircraft.

---

## 2.0 Scope

### 2.1 Applicable Deviations
This procedure applies to requests for:
- Task interval adjustments
- Task content modifications
- Addition or deletion of tasks
- Substitution of inspection methods
- Changes to check package composition

### 2.2 Non-Applicable Items
This procedure does NOT apply to:
- Airworthiness Limitations Section (ALS) tasks (these are NON-NEGOTIABLE)
- Airworthiness Directives (ADs) (these are MANDATORY)
- Type Certificate requirements
- Emergency modifications

**Note:** ALS tasks cannot be deferred, escalated, or modified without Type Certificate holder involvement and NAA approval through a formal amendment process.

---

## 3.0 Definitions

**Deviation:** Any change to the approved maintenance program that differs from the MPM.

**NAA:** National Aviation Authority - the regulatory body with oversight authority (e.g., FAA, EASA).

**Operator:** The air carrier or organization operating the aircraft.

**MPM:** Maintenance Program Manual - the approved maintenance program document.

**Engineering Authority:** The design approval holder or delegated engineering organization.

---

## 4.0 Deviation Categories

### 4.1 Category A - Minor Deviations
**Definition:** Low-risk changes that do not affect safety-critical systems or intervals.

**Examples:**
- Interval adjustment within ±10% for non-critical tasks
- Substitution of equivalent inspection methods
- Changes to documentation requirements

**Approval Authority:** Operator's Continuing Airworthiness Manager

**NAA Notification:** Not required

### 4.2 Category B - Major Deviations
**Definition:** Changes that affect safety-related tasks or significant interval modifications.

**Examples:**
- Interval adjustment >10% for any task
- Changes to critical system inspection procedures
- Addition or deletion of MPD-required tasks
- Changes affecting multiple aircraft systems

**Approval Authority:** NAA

**NAA Notification:** Required before implementation

### 4.3 Category C - ALS-Related
**Definition:** Any proposed change to ALS tasks or intervals.

**Examples:**
- Changes to ALS inspection intervals
- Modifications to ALS inspection procedures
- Alternative compliance methods for ALS items

**Approval Authority:** NAA + Type Certificate Holder

**NAA Notification:** Formal amendment process required

**Note:** These are extremely rare and require extensive justification and analysis.

---

## 5.0 Deviation Request Process

### 5.1 Initiation

**Step 1: Identify Need**
- Maintenance planning identifies need for deviation
- Document specific reason for deviation
- Determine deviation category (A, B, or C)

**Step 2: Prepare Request**
Complete Deviation Request Form with:
- Aircraft registration or MSN
- Affected task(s) - Task ID from MPM
- Current requirement (interval, procedure, etc.)
- Proposed change
- Justification for change
- Risk assessment
- Proposed implementation date
- Expected duration (temporary or permanent)

### 5.2 Technical Review

**Engineering Analysis:**
- Review by Maintenance Engineering
- Assessment of technical feasibility
- Safety impact analysis
- Reliability impact analysis
- Cost-benefit analysis

**Supporting Documentation:**
May include:
- Manufacturer service information
- Industry practice data
- Operational data from aircraft
- Reliability statistics
- Engineering analysis reports

### 5.3 Approval Process

**Category A Deviations:**
1. Submit to Continuing Airworthiness Manager
2. Technical review by Maintenance Engineering
3. Approval decision within 5 business days
4. Update MPM with approved deviation
5. Log in deviation tracking system

**Category B Deviations:**
1. Internal technical review and approval
2. Prepare formal submission to NAA
3. Submit to NAA with supporting data
4. NAA review period (typically 30-60 days)
5. If approved, update MPM
6. Log in deviation tracking system
7. Communicate to all affected personnel

**Category C Deviations (ALS):**
1. Internal technical review
2. Coordination with Type Certificate Holder
3. Joint engineering analysis
4. Preparation of formal amendment request
5. Submission to NAA with full technical package
6. NAA review and comment period (60-90 days)
7. Possible NAA technical meeting
8. If approved, formal MPM amendment issued
9. Log in deviation tracking system
10. Fleet-wide communication

---

## 6.0 Deviation Request Form

```
=================================================================
MAINTENANCE PROGRAM DEVIATION REQUEST
=================================================================

Request Number: DEV-____-_____ (auto-generated)
Date Submitted: ________________
Submitted By: ________________ (Name/Title)

-----------------------------------------------------------------
AIRCRAFT INFORMATION
-----------------------------------------------------------------
Aircraft Registration: ________________
MSN (Manufacturer Serial Number): ________________
Aircraft Model: AMPEL360

-----------------------------------------------------------------
DEVIATION DETAILS
-----------------------------------------------------------------
Deviation Category: [ ] A - Minor  [ ] B - Major  [ ] C - ALS-Related

Affected Task ID: ________________
Source Document: [ ] MPD  [ ] ALS  [ ] Other: ________________

Current Requirement:
___________________________________________________________________
___________________________________________________________________

Proposed Change:
___________________________________________________________________
___________________________________________________________________

Justification (explain why deviation is needed):
___________________________________________________________________
___________________________________________________________________
___________________________________________________________________

Duration: [ ] Temporary until: __________  [ ] Permanent

-----------------------------------------------------------------
RISK ASSESSMENT
-----------------------------------------------------------------
Safety Impact: [ ] None  [ ] Low  [ ] Medium  [ ] High
Explain: __________________________________________________________

Reliability Impact: [ ] None  [ ] Low  [ ] Medium  [ ] High
Explain: __________________________________________________________

Operational Impact: [ ] None  [ ] Low  [ ] Medium  [ ] High
Explain: __________________________________________________________

-----------------------------------------------------------------
SUPPORTING DOCUMENTATION
-----------------------------------------------------------------
Attached Documents (check all that apply):
[ ] Engineering analysis
[ ] Service Bulletin reference
[ ] Industry practice data
[ ] Reliability data
[ ] Manufacturer correspondence
[ ] Other: ________________

-----------------------------------------------------------------
APPROVALS
-----------------------------------------------------------------

Maintenance Engineering:
Name: ________________  Signature: __________ Date: __________

Continuing Airworthiness Manager (Category A):
Name: ________________  Signature: __________ Date: __________

NAA Approval Reference (Category B/C):
Reference Number: ________________  Date: __________

-----------------------------------------------------------------
IMPLEMENTATION
-----------------------------------------------------------------
Effective Date: ________________
Notification to: [ ] All maintenance personnel  [ ] Flight Operations
                [ ] Quality Assurance  [ ] Other: ________________

-----------------------------------------------------------------
TRACKING
-----------------------------------------------------------------
Logged in System: [ ] Yes  Entry ID: ________________
MPM Updated: [ ] Yes  Date: ________________
Training Conducted: [ ] Yes  [ ] N/A  Date: ________________

=================================================================
```

---

## 7.0 Implementation

### 7.1 Communication
Once approved:
1. Update MPM with approved deviation
2. Issue bulletin to all maintenance facilities
3. Update maintenance tracking system
4. Conduct training if required
5. Update work cards and procedures

### 7.2 Tracking
All approved deviations are logged in:
`LOG_Approved-Deviations.csv`

### 7.3 Review
- Category A deviations: Review annually
- Category B deviations: Review every 2 years
- Category C deviations: Review every 5 years or per NAA requirement

---

## 8.0 Temporary Deviations

### 8.1 One-Time Deviation
For a single instance (one aircraft, one check):
- Must be approved per category requirements
- Must have expiration date
- Must revert to standard program after expiration
- Logged separately as temporary deviation

### 8.2 Emergency Deviation
In case of operational necessity:
- May be approved by Continuing Airworthiness Manager
- Must be reported to NAA within 24 hours (Category B/C)
- Must be formalized or reverted within 30 days
- Comprehensive documentation required

---

## 9.0 Deviation Reversal

If a deviation is no longer needed:
1. Submit reversal request
2. Technical review
3. Approval by original approval authority
4. Update MPM
5. Update deviation log with closure date
6. Communicate to all affected personnel

---

## 10.0 Records

### 10.1 Retention
- Deviation requests: Retain for life of aircraft + 10 years
- Approval documentation: Retain permanently
- NAA correspondence: Retain permanently

### 10.2 Accessibility
All deviation records must be:
- Readily accessible for audit
- Available to NAA upon request
- Included in aircraft records transfer

---

## 11.0 Responsibilities

### 11.1 Maintenance Planning
- Identify need for deviations
- Prepare deviation requests
- Coordinate with engineering

### 11.2 Maintenance Engineering
- Technical review of all requests
- Engineering analysis
- Risk assessment
- Recommendation to approval authority

### 11.3 Continuing Airworthiness Manager
- Approval authority for Category A
- Submission coordination for Category B/C
- Interface with NAA

### 11.4 Quality Assurance
- Audit compliance with this procedure
- Verify proper documentation
- Monitor deviation effectiveness

---

## 12.0 References

- MPM_Master-Document_rev1.0.0_20280701.md
- ATA 01: Maintenance Planning Document
- ATA 04: Airworthiness Limitations Section
- FAA AC 120-16
- EASA Part-M

---

*Part of the AMPEL360 Maintenance Program - ATA 05*
