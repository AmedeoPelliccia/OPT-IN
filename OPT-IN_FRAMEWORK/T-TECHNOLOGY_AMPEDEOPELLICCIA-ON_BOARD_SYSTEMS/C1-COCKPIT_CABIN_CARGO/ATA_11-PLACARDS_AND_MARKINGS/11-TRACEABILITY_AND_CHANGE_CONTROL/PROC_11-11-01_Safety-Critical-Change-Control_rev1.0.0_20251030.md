# PROC_11-11-01: Safety-Critical Placard Change Control

## Document Information
- **Document ID**: PROC_11-11-01
- **Title**: Safety-Critical Placard Change Control Procedure
- **Revision**: 1.0.0
- **Effective Date**: 2025-10-30
- **Procedure Category**: Change_Control
- **Skill Level**: Specialist
- **Estimated Duration**: 2-4 weeks (full approval cycle)
- **Personnel Required**: Multiple (engineering, safety, airworthiness)

## 1. Scope and Purpose

### 1.1 Purpose
This procedure establishes the mandatory change control process for safety-critical placards (Class 1 Critical and Class 2 Major) to ensure that all changes affecting safety-critical text, symbols, placement, or materials are properly reviewed, approved, and documented before implementation.

### 1.2 Applicability
**Mandatory for:**
- Emergency exit placards (operation instructions, identification)
- Oxygen system placards (location, operation)
- Fire suppression equipment placards
- Flight control limitation placards
- Weight and balance limitation placards
- Emergency evacuation route markings
- All placards with safety-critical wording or symbols

**Changes requiring this procedure:**
- Text or symbol wording changes
- Translation changes for safety-critical content
- Color or contrast changes affecting recognition
- Material changes affecting durability or flammability
- Location changes for safety-critical placards
- Font size changes affecting legibility

## 2. Change Classification

### 2.1 Safety Impact Assessment
Every proposed change must be classified:

**Level 1 - Critical Safety Impact**
- Changes to emergency instructions or warnings
- Symbol changes for hazard identification
- Color changes affecting emergency recognition
- Removal of safety-critical information
- **Required approvals**: Engineering + Safety + Airworthiness + Regulatory (if applicable)

**Level 2 - Major Safety Impact**
- Clarification of existing safety instructions (no substantive change)
- Translation updates maintaining equivalent meaning
- Material upgrade with improved properties
- Minor repositioning maintaining visibility
- **Required approvals**: Engineering + Safety + Airworthiness

**Level 3 - Minor Safety Impact**
- Cosmetic improvements (no content change)
- Artwork revision (same content, different file version)
- Material substitution with equivalent properties
- **Required approvals**: Engineering + Quality

## 3. Change Initiation

### 3.1 Engineering Change Request (ECR)
All changes initiated through formal ECR including:
- **ECR number**: Unique identifier
- **Placard ID(s) affected**: List all affected placards
- **Reason for change**: Safety issue, regulatory update, improvement, obsolescence
- **Proposed change description**: Detailed description with before/after comparison
- **Safety impact assessment**: Level 1, 2, or 3 classification
- **Effectivity**: MSN range, configuration, incorporation date
- **Estimated cost**: Material, labor, downtime
- **Requesting authority**: Name, department, date

### 3.2 Supporting Documentation
Attach to ECR:
- Current placard specification (placard.schema.json)
- Proposed new specification
- Current artwork file (with SHA-256)
- Proposed new artwork file (with SHA-256)
- Photographs or renderings
- Regulatory reference (if change driven by regulation)
- Safety assessment (if Level 1 or Level 2)

## 4. Review and Approval Workflow

### 4.1 Engineering Review (5-10 business days)
**Responsible**: Cabin Systems Engineering

**Review criteria**:
- Technical feasibility
- Compatibility with aircraft systems and interfaces
- Material specifications and availability
- Installation method and procedures
- Effectivity determination
- Cost and schedule impact

**Deliverables**:
- Engineering assessment report
- Updated placard specification (if approved)
- Installation drawing revisions (if required)
- Procedure updates (if required)

**Decision**: Approve, Reject, or Request Modification

### 4.2 Safety Assessment (10-15 business days, Level 1 and 2 only)
**Responsible**: Safety Engineering

**Assessment includes**:
- Hazard identification and analysis
- Risk assessment (likelihood and severity)
- Comparison with existing design (before/after)
- Human factors evaluation (legibility, recognition, comprehension)
- Failure modes and effects analysis (FMEA) if material or design change
- Compliance with safety regulations (FAA, EASA)

**Deliverables**:
- Safety assessment report (SAR)
- Hazard analysis
- Recommended mitigations or conditions (if any)
- Safety sign-off

**Decision**: Safety Acceptable, Conditionally Acceptable, or Not Acceptable

### 4.3 Airworthiness Review (5-10 business days, Level 1 and 2)
**Responsible**: Airworthiness Engineering

**Review criteria**:
- Compliance with certification basis (FAA 14 CFR Part 25, EASA CS-25)
- Impact on Type Certificate (TC) or Supplemental Type Certificate (STC)
- Need for regulatory approval or notification
- Certification test requirements (if any)
- Airworthiness limitation items (ALI) impact

**Deliverables**:
- Airworthiness assessment
- Regulatory submission (if required)
- Certification plan (if testing required)
- Airworthiness approval signature

**Decision**: Airworthy, Conditionally Airworthy (with restrictions), or Not Airworthy

### 4.4 Quality Release (2-5 business days, all levels)
**Responsible**: Quality Assurance

**Final verification**:
- All required approvals obtained
- Documentation complete and accurate
- Procedures updated and released
- Training requirements identified
- Production readiness confirmed

**Deliverables**:
- Production release authorization
- Effectivity assignment (MSN, date)
- Work order package
- Quality control plan

## 5. Implementation

### 5.1 Documentation Updates
Before implementation, update all affected documents:
- Placard specification (JSON schema)
- Installation procedures (if changed)
- Inspection procedures (if criteria changed)
- Location table (if placement changed)
- Regulatory compliance matrix (if applicable)
- Sidecar metadata (new revision, approval dates, SHA-256)

### 5.2 Artwork Production
1. Create new artwork per approved specification
2. Generate SHA-256 hash of new artwork file
3. Version control: Assign new version number (e.g., rev 2.0)
4. Archive old artwork with supersession reference
5. Quality check: Verify artwork matches approved specification

### 5.3 Production and Installation
1. Produce placards per approved specification and materials
2. Obtain Certificate of Conformance (CofC) from supplier
3. Install per PROC_11-03-01
4. Complete installation record (EXAMPLE_11-12-01)
5. RII inspection for Class 1 and Class 2 placards
6. Functional test (if applicable)
7. Final acceptance by Quality Assurance

### 5.4 Effectivity Tracking
- Record incorporation by aircraft MSN
- Update aircraft records and logbooks
- Track compliance for entire fleet or affected MSN range
- Report completion to regulatory authority (if required)

## 6. Emergency Changes

### 6.1 Emergency Change Procedure
For urgent safety issues requiring immediate action:

1. **Verbal Approval**: Obtain verbal approval from Airworthiness authority (document in writing within 24 hours)
2. **Temporary Placard**: Install temporary placard per PROC_11-06-01 (max 30 days)
3. **Expedited Review**: Accelerate normal approval workflow (target 5 business days)
4. **Regulatory Notification**: Notify FAA/EASA within 24 hours if airworthiness impact
5. **Permanent Placard**: Install permanent placard within 30 days
6. **Post-Implementation Review**: Conduct lessons-learned review after implementation

### 6.2 Emergency Change Documentation
- Emergency Change Request (ECR-E) with justification
- Verbal approval documentation (name, time, date, approval statement)
- Temporary placard tracking (installation date, removal deadline)
- Expedited safety assessment (abbreviated FMEA acceptable)
- Regulatory notification (copy of correspondence)

## 7. Traceability and Audit Trail

### 7.1 Change Record Requirements
Every approved change must maintain:
- **ECR package**: Complete ECR with all approvals
- **Safety assessment report**: For Level 1 and Level 2 changes
- **Airworthiness approval**: Signed approval letter or stamp
- **Artwork files**: Old and new versions with SHA-256 hashes
- **Supersession chain**: Old placard_id → new placard_id
- **Installation records**: All aircraft affected, installation dates
- **Regulatory correspondence**: If FAA/EASA approval or notification required

### 7.2 Audit Compliance
Change control records must be available for:
- Internal quality audits
- External regulatory audits (FAA, EASA)
- Customer audits
- Certification reviews
- Post-incident investigations

Retain records for minimum 10 years or aircraft life + 5 years, whichever is longer.

## 8. Training and Competency
Personnel involved in safety-critical placard changes must complete:
- ATA 11 Governance and Change Control training
- Safety Assessment Process training (Safety Engineering)
- Airworthiness Regulations training (Airworthiness Engineering)
- Human Factors in Labeling training (for design changes)

---
**END OF PROCEDURE**
