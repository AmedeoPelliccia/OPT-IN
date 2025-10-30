# PROC_31-06-01 — Nonconformance Handling and NCR Template

**Document ID:** PROC_31-06-01  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Chapter:** ATA 31 - Indicating & Recording Systems (Recording Function)

## 1.0 Purpose

This procedure defines the process for identifying, documenting, and resolving nonconformances related to FDR/CVR recording systems, downloads, and data management.

## 2.0 Nonconformance Definition

A nonconformance is any deviation from:
- Regulatory requirements (ICAO, FAA, EASA, TSO)
- Technical specifications (ARINC 717, ED-112, DO-160, DO-178C)
- Internal procedures (PROC documents)
- Qualification standards
- Data integrity requirements

## 3.0 Nonconformance Categories

### 3.1 Critical Nonconformances

Immediate action required, operations may be suspended:
- Loss of recording capability (FDR or CVR not recording)
- Data corruption detected (checksum mismatch)
- Crash survivability test failure
- Mandatory parameter not recorded
- Chain-of-custody breach
- Unauthorized CVR audio disclosure

### 3.2 Major Nonconformances

Prompt action required, may impact certification:
- Parameter accuracy out of tolerance
- Audio quality below specification
- Environmental qualification test failure
- Software deviation from DO-178C requirements
- Missing documentation or approvals
- Incomplete download manifest

### 3.3 Minor Nonconformances

Corrective action required, no immediate impact:
- Naming convention deviation
- Missing sidecar metadata
- Documentation formatting errors
- Non-critical procedure deviations

## 4.0 Nonconformance Reporting

### 4.1 Identification

Anyone may identify and report a nonconformance:
- Technicians
- Engineers
- Quality inspectors
- Auditors
- Investigators
- Operators

### 4.2 Reporting Process

1. **Immediate Notification:**
   - Critical: Notify supervisor and Data Systems Engineering immediately (phone/radio)
   - Major: Notify within 4 hours
   - Minor: Notify within 24 hours

2. **NCR Initiation:**
   - Complete NCR form (see Section 10)
   - Assign unique NCR number: NCR-31-YYYYMMDD-XXX
   - Attach evidence (photos, data files, logs, manifests)

3. **Submission:**
   - Submit NCR to Data Systems Engineering
   - Copy to Quality Assurance
   - For critical NCRs, also notify Safety Department and Airworthiness Engineering

## 5.0 Nonconformance Investigation

### 5.1 Initial Assessment

Within 24 hours of NCR submission:
1. Verify nonconformance (confirm deviation occurred)
2. Assess severity (critical, major, minor)
3. Determine immediate containment actions
4. Assign investigation lead

### 5.2 Root Cause Analysis

Investigation lead performs:
1. **Data Collection:**
   - Interview personnel involved
   - Review procedures and specifications
   - Analyze data files, logs, test results
   - Examine hardware/software if applicable

2. **Root Cause Determination:**
   - Use 5-Why analysis or fishbone diagram
   - Identify contributing factors
   - Distinguish root cause from symptoms

3. **Impact Assessment:**
   - Determine extent of affected data/downloads
   - Identify other aircraft or units potentially affected
   - Assess certification impact
   - Evaluate safety implications

### 5.3 Investigation Timeline

- Critical NCR: Complete within 48 hours
- Major NCR: Complete within 10 days
- Minor NCR: Complete within 30 days

## 6.0 Disposition

### 6.1 Disposition Options

**Use As-Is:**
- Nonconformance has no functional or safety impact
- Engineering analysis demonstrates acceptability
- Requires engineering justification and approval

**Rework:**
- Correct the nonconformance to meet requirements
- Re-test or re-verify after rework
- Document rework actions

**Repair:**
- Restore functionality using alternative method
- Engineering evaluation required
- May require re-qualification

**Scrap:**
- Discard nonconforming item
- Secure deletion for data nonconformances
- Document disposal method

**Return to Supplier:**
- For hardware nonconformances
- Supplier investigates and provides corrective action

### 6.2 Approval Authority

| Nonconformance Category | Disposition | Approval Authority |
|------------------------|-------------|-------------------|
| Critical | Any | Airworthiness Engineering + Safety Engineering |
| Major | Use As-Is / Repair | Data Systems Engineering + Quality Assurance |
| Major | Rework / Scrap | Data Systems Engineering |
| Minor | Any | Data Systems Engineering |

## 7.0 Corrective Action

### 7.1 Corrective Action Plan

For major and critical NCRs:
1. **Immediate Corrective Action:**
   - Address the specific nonconformance
   - Prevent recurrence in short term

2. **Long-term Corrective Action:**
   - Address root cause
   - Implement systemic improvements
   - Update procedures, training, or tooling

3. **Preventive Action:**
   - Identify similar potential issues
   - Implement controls to prevent

### 7.2 Implementation

1. Document corrective actions in NCR
2. Assign responsibilities and due dates
3. Track implementation status
4. Verify effectiveness after implementation

## 8.0 Verification of Corrective Action

### 8.1 Verification Methods

- Re-test or re-inspect corrected item
- Audit procedure compliance
- Review records over time period
- Statistical analysis of subsequent data

### 8.2 Verification Timeline

- Critical NCR: Verify within 7 days of implementation
- Major NCR: Verify within 30 days
- Minor NCR: Verify within 90 days

### 8.3 Effectiveness Monitoring

- Monitor for 6 months (major/critical) or 3 months (minor)
- Track recurrence rate
- If recurrence occurs, re-open NCR and escalate

## 9.0 Closure

NCR may be closed when:
1. Investigation complete
2. Disposition approved
3. Corrective action implemented
4. Verification complete
5. All documentation finalized

Closure approval:
- Critical: Airworthiness Engineering + Safety Engineering
- Major: Data Systems Engineering + Quality Assurance
- Minor: Data Systems Engineering

## 10.0 NCR Template

```
==============================================================================
                     NONCONFORMANCE REPORT (NCR)
                           ATA Chapter 31
                  Flight Data / Cockpit Voice Recorder
==============================================================================

NCR Number: NCR-31-YYYYMMDD-XXX
Date Opened: YYYY-MM-DD
Status: [ ] Open  [ ] Under Investigation  [ ] Closed

------------------------------------------------------------------------------
1. NONCONFORMANCE IDENTIFICATION
------------------------------------------------------------------------------
Reported By: [Name]                    Date/Time: YYYY-MM-DD HH:MM
Department: [Department]               Contact: [Phone/Email]
Aircraft MSN: [MSN or N/A]             Recording Unit SN: [SN or N/A]

Category: [ ] Critical  [ ] Major  [ ] Minor

Description:
[Detailed description of the nonconformance - what was expected vs. what was observed]

Evidence:
[ ] Photos attached
[ ] Data files attached
[ ] Log files attached
[ ] Manifest attached
[ ] Test results attached
[ ] Other: __________

Affected Items:
[ ] FDR Unit
[ ] CVR Unit
[ ] Download Tool
[ ] Procedure
[ ] Documentation
[ ] Data Files
[ ] Other: __________

------------------------------------------------------------------------------
2. REQUIREMENTS REFERENCE
------------------------------------------------------------------------------
Applicable Requirements:
[ ] ICAO Annex 6
[ ] FAA 14 CFR Part ____
[ ] TSO-C124a (FDR)
[ ] TSO-C123a (CVR)
[ ] ARINC 717
[ ] ED-112
[ ] DO-160 Section ____
[ ] DO-178C
[ ] Internal Procedure: ________________
[ ] Other: __________

Specific Requirement Violated:
[Quote or reference specific requirement text]

------------------------------------------------------------------------------
3. IMMEDIATE CONTAINMENT ACTION
------------------------------------------------------------------------------
Action Taken: [Description of immediate actions to contain the issue]

Containment Date: YYYY-MM-DD
Containment By: [Name]

Additional Aircraft/Units Affected:
[ ] None
[ ] Other aircraft: [List MSNs]
[ ] Other units: [List SNs]

------------------------------------------------------------------------------
4. INVESTIGATION
------------------------------------------------------------------------------
Investigation Lead: [Name]             Start Date: YYYY-MM-DD
Target Completion: YYYY-MM-DD

Root Cause Analysis:
[Detailed analysis - 5-Why, fishbone, or other method]

Contributing Factors:
1. [Factor 1]
2. [Factor 2]
3. [Factor 3]

Impact Assessment:
Safety Impact: [ ] None  [ ] Minor  [ ] Major  [ ] Catastrophic
Certification Impact: [ ] None  [ ] Documentation  [ ] Re-test Required  [ ] Re-certification
Data Integrity: [ ] Not Affected  [ ] Partially Affected  [ ] Fully Compromised

------------------------------------------------------------------------------
5. DISPOSITION
------------------------------------------------------------------------------
Disposition: [ ] Use As-Is  [ ] Rework  [ ] Repair  [ ] Scrap  [ ] Return to Supplier

Justification:
[Engineering justification for disposition]

Disposition Approved By: [Name]        Date: YYYY-MM-DD

------------------------------------------------------------------------------
6. CORRECTIVE ACTION
------------------------------------------------------------------------------
Immediate Corrective Action:
[Actions to correct this specific instance]

Long-term Corrective Action:
[Actions to address root cause and prevent recurrence]

Preventive Action:
[Actions to prevent similar issues]

Responsible Party: [Name]              Due Date: YYYY-MM-DD

------------------------------------------------------------------------------
7. VERIFICATION
------------------------------------------------------------------------------
Verification Method:
[ ] Re-test
[ ] Re-inspection
[ ] Audit
[ ] Data analysis
[ ] Other: __________

Verification Result: [ ] Pass  [ ] Fail

Verification By: [Name]                Date: YYYY-MM-DD

Effectiveness Monitoring:
Monitor for ____ months starting YYYY-MM-DD

------------------------------------------------------------------------------
8. CLOSURE
------------------------------------------------------------------------------
NCR Closed By: [Name]                  Date: YYYY-MM-DD
Closure Approved By: [Name]            Date: YYYY-MM-DD

Lessons Learned:
[Summary of lessons learned for knowledge sharing]

Documentation Updates Required:
[ ] Procedures updated
[ ] Training materials updated
[ ] Specifications revised
[ ] Software/firmware updated
[ ] Other: __________

==============================================================================
                            APPROVAL SIGNATURES
==============================================================================

Investigation Lead: ___________________  Date: __________

Data Systems Engineering: _____________  Date: __________

Quality Assurance: ____________________  Date: __________

Airworthiness Engineering (if required): _______________  Date: __________

Safety Engineering (if required): ___________________  Date: __________

==============================================================================
```

## 11.0 Records Retention

NCR records retained permanently in DPP repository:
- Original NCR form
- Evidence (photos, data files, logs)
- Investigation report
- Corrective action documentation
- Verification results

## 12.0 Trend Analysis

Quality Assurance performs quarterly NCR trend analysis:
- Identify recurring issues
- Assess effectiveness of corrective actions
- Recommend systemic improvements
- Report trends to management

---

**Approval History:**

| Authority | Status | Date | Signature |
|-----------|--------|------|-----------|
| Data Systems Engineering | Released | 2025-10-30 | [Digital Signature] |
| Quality Assurance | Approved | 2025-10-30 | [Digital Signature] |

---

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
