# PROC_30-08-01 — Nonconformance Handling and Engineering Disposition
Revision: 1.0.0
Effective date: 2025-10-30
Owner: Quality Assurance / Ice & Rain Engineering

## Purpose

Define the process for identifying, documenting, evaluating, and dispositioning nonconformances related to ice and rain protection systems.

## Scope

All nonconformances affecting ice and rain protection systems including:
- Material defects or out-of-specification conditions
- Installation errors or deviations from procedures
- Inspection findings exceeding acceptance criteria
- Functional test failures
- Damage discovered during maintenance

## Nonconformance Severity Levels

### Level 1: Critical (Flight Safety Impact)
- Complete loss of ice protection capability
- Thermal system overtemperature risk
- De-ice boot detachment or major delamination
- Windshield heating failure in icing conditions
- Requires immediate grounding until resolved

### Level 2: Major (Reduced Safety Margin)
- Partial loss of ice protection capability
- Boot damage approaching limits
- Thermal system non-uniformity exceeding tolerance
- Sensor heating intermittent
- Requires resolution before next flight or within specified interval

### Level 3: Minor (No Immediate Safety Impact)
- Cosmetic damage only
- Minor deviations from specification with no functional impact
- Material substitution within approved equivalents
- Can be deferred per MEL (Minimum Equipment List)

### Level 4: Negligible
- Documentation errors
- Non-critical cosmetic issues
- No functional or safety impact

## Nonconformance Handling Process

### 1. Identification and Documentation
- Technician identifies nonconformance during inspection, installation, or test
- Immediately tag affected component "HOLD - NCR Initiated"
- Initiate Nonconformance Report (NCR) per DATA_30-08-02 template
- Document with photographs, measurements, test data
- Compute SHA-256 hash of supporting evidence files

### 2. Initial Assessment
- Quality Assurance reviews NCR for completeness
- Assigns severity level (1-4)
- Notifies affected departments (Engineering, Airworthiness, Maintenance)
- For Level 1: Immediate notification to Chief Engineer and Airworthiness Authority

### 3. Engineering Evaluation
- Ice & Rain Engineering evaluates root cause
- Determines impact on safety, performance, certification basis
- Consults with OEM, supplier, or regulatory authority as needed
- Reviews similar occurrences in fleet (trend analysis)

### 4. Disposition Options

**Use As-Is:**
- Nonconformance has no functional or safety impact
- Component meets design intent despite deviation
- Requires engineering justification and airworthiness approval

**Rework:**
- Component can be repaired to meet original specification
- Define rework procedure and acceptance criteria
- Verify rework with inspection or test
- Update repair record with rework details

**Repair:**
- Component can be repaired to alternate approved standard
- May require design change or STC (Supplemental Type Certificate)
- Requires engineering disposition and airworthiness approval
- Update repair record and DPP

**Scrap:**
- Component cannot be repaired or does not meet safety requirements
- Remove from service and dispose per regulations
- Investigate root cause and implement corrective action
- Update fleet records if recurring issue

**Return to Supplier:**
- Material or component defect attributable to supplier
- Return for credit, replacement, or failure analysis
- Document supplier response and corrective action

### 5. Corrective and Preventive Action
- Identify root cause (material, process, procedure, training, tooling)
- Implement corrective action to prevent recurrence
- Update procedures, training, or specifications as needed
- Communicate lessons learned to fleet

### 6. Closure and Documentation
- Verify disposition completed and accepted
- Update NCR with final disposition and approvals
- Close NCR in tracking system
- Archive NCR and supporting evidence with SHA-256 hashes
- Update Digital Product Passport (ATA-95)

## Approval Authority

- **Level 1 (Critical):** Chief Engineer + Airworthiness Authority + Regulatory Authority (if required)
- **Level 2 (Major):** Ice & Rain Engineering Manager + Airworthiness Authority
- **Level 3 (Minor):** Ice & Rain Engineering + Quality Assurance
- **Level 4 (Negligible):** Quality Assurance

## Training Required

- Quality Control and Inspection
- Ice & Rain Protection Systems
- Nonconformance Reporting Procedures

## References

- DATA_30-08-02: NCR Template
- ATA-95: Digital Product Passport
- Quality Management System Procedures

## Revision History

| Revision | Date       | Author                      | Description             |
|----------|------------|-----------------------------|-------------------------|
| 1.0.0    | 2025-10-30 | Quality Assurance / Ice & Rain Engineering | Initial release |
