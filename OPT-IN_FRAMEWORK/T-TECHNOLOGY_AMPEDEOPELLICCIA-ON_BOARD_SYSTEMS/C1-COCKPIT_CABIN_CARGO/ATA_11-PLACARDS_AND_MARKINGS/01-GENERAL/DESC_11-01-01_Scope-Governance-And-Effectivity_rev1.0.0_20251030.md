# DESC_11-01-01: Scope, Governance, and Effectivity

## Document Information
- **Document ID**: DESC_11-01-01
- **Title**: Scope, Governance, and Effectivity for ATA 11 - Placards and Markings
- **Revision**: 1.0.0
- **Effective Date**: 2025-10-30
- **Classification**: Governance Document

## 1. Scope

### 1.1 Purpose
This document establishes the scope, governance structure, and effectivity criteria for all aircraft placards and markings documentation under ATA Chapter 11. It defines responsibilities, approval authorities, and applicability rules for placard and marking specifications, installation procedures, inspection requirements, and change control processes.

### 1.2 Applicability
This governance applies to all AMPEL360 Blended Wing Body (BWB) aircraft configurations, covering:
- Safety-critical placards (emergency exits, oxygen, fire suppression)
- Operational placards (weight and balance, fuel, hydraulic systems)
- Regulatory placards (certification, data plates, operating limitations)
- Informational markings (equipment identification, cable routing, zone markings)
- Temporary placards (maintenance, ferry permits, operational restrictions)
- Cabin interior placards (passenger safety instructions, equipment usage)
- Flight deck placards (flight controls, system panels, warning lights)
- Exterior markings (registration, nationality, safety zones)

### 1.3 Exclusions
The following are explicitly excluded from this chapter:
- Aircraft livery and external paint schemes (covered under ATA 51)
- Electronic displays and dynamic signage (covered under ATA 46 Information Systems)
- Structural identification markings applied during manufacturing (covered under ATA 51)
- Component data plates permanently attached by OEM (covered under component ATA chapters)

## 2. Governance Structure

### 2.1 Ownership
**Primary Owner**: Cabin Systems Engineering
- Responsible for placard design specifications
- Maintains artwork library and version control
- Coordinates with regulatory authorities
- Approves non-safety-critical changes

### 2.2 Review Board Composition
The ATA 11 Review Board consists of:
1. **Cabin Systems Engineering** - Chair
2. **Airworthiness Engineering** - Safety-critical approvals
3. **Human Factors Engineering** - Legibility and usability validation
4. **Materials & Processes** - Material specifications and qualification
5. **Safety Engineering** - Hazard analysis and risk assessment
6. **Quality Assurance** - Production release and audit compliance
7. **Regulatory Affairs** - Compliance verification (advisory member)

### 2.3 Approval Authority Matrix

| Change Type | Engineering Review | Airworthiness Approval | Quality Release |
|-------------|-------------------|----------------------|-----------------|
| Safety-critical text or symbol change | Required | **Required** | Required |
| Translation of safety-critical content | Required | **Required** | Required |
| Material specification change | Required | **Required** | Required |
| Location change (safety-critical placard) | Required | **Required** | Required |
| Non-critical informational content | Required | Not Required | Required |
| Artwork revision (no content change) | Required | Not Required | Required |
| Temporary placard (>90 days service) | Required | **Required** | Required |

### 2.4 Safety Classification
Placards are classified by safety criticality:

**Class 1 - Critical Safety Items**
- Emergency exit identification and operation instructions
- Oxygen system operation and location
- Fire suppression equipment identification
- Emergency evacuation routes and procedures
- Hazardous cargo identification
- Flight control limitations and warnings
- All changes require Airworthiness approval and safety assessment

**Class 2 - Major Safety Items**
- Passenger safety briefing instructions
- Emergency equipment location (life vests, flashlights)
- Cabin crew operating procedures
- Equipment weight and balance placards
- Fuel and fluid system warnings
- Changes require engineering disposition and safety review

**Class 3 - Minor Safety Items**
- General operational information
- Equipment identification labels
- Maintenance access instructions
- Cable routing and identification
- Changes require engineering approval only

**Class 4 - Non-Safety Items**
- Decorative or branding elements
- General information labels
- Non-critical identification markings
- Changes require quality control verification only

## 3. Effectivity Management

### 3.1 Effectivity Rules
All placard specifications and installation records must include:
- **MSN (Manufacturer Serial Number)**: Specific aircraft or range (e.g., "001-050", "ALL")
- **Configuration**: Cabin layout variant (e.g., "BUSINESS", "ECONOMY", "CARGO")
- **Effective Date**: ISO 8601 format (YYYY-MM-DD)
- **Modification Reference**: If placard is added/changed by mod (e.g., "MOD-11-001")
- **Supersession**: Reference to previous placard_id if replacing

### 3.2 Effectivity Recording
Effectivity must be recorded in three locations:
1. **INDEX.meta.yaml** - Chapter-level default effectivity
2. **Document sidecars** - File-level effectivity (.meta.yaml)
3. **Placard specifications** - Individual placard effectivity (JSON schema)

### 3.3 Effectivity Hierarchy
When effectivities conflict, the following precedence applies:
1. Individual placard specification (most specific)
2. Document sidecar effectivity
3. INDEX.meta.yaml default effectivity (least specific)

### 3.4 Retrofit and Modification Tracking
Retrofits and modifications affecting placards must:
- Create new placard_id with modification reference
- Document supersession chain (old_id → new_id)
- Record incorporation status by aircraft MSN
- Maintain audit trail of all changes

## 4. Regulatory Basis

### 4.1 Primary Regulations
- **[FAA 14 CFR Part 25.1541-1581](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-G/subject-group-ECFR3dd9c1826fd5be1)** - Aircraft markings, placards, and operating limitations
- **[EASA CS-25](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-large-aeroplanes)** - European equivalent regulations
- **[ICAO Annex 8](https://www.icao.int/safety/airnavigation/NationalityMarks/annexes_booklet_en.pdf)** - Airworthiness of Aircraft (international standards)

For detailed regulation-to-document mapping, see [Regulatory Compliance Matrix](./DATA_11-01-03_Regulatory-Compliance-Matrix_rev1.0.0_20251030.csv).

### 4.2 Industry Standards
- **[SAE AS5942](https://www.sae.org/standards/content/as5942/)** - Aeronautical Labeling Requirements
- **[SAE ARP6143](https://www.sae.org/standards/content/arp6143/)** - Human Factors Guidelines for Cockpit and Cabin Labeling
- **[ISO 3864](https://www.iso.org/standard/72196.html)** - Graphical symbols - Safety colours and safety signs
- **[RTCA DO-160](https://www.rtca.org/content/standards-guidance-materials)** - Environmental Conditions and Test Procedures (durability)

### 4.3 Quality Management
- **[ISO 9001](https://www.iso.org/standard/62085.html)** - Quality management systems (traceability requirements)
- **[AS9100](https://www.sae.org/standards/content/as9100d/)** - Aerospace Quality Management Systems

## 5. Document Structure and Conventions

### 5.1 Document Naming Convention
Format: `[TYPE]_11-[section]-[number]_[Title]_rev[X.Y.Z]_[YYYYMMDD].[ext]`

Examples:
- `DESC_11-01-01_Scope-Governance-And-Effectivity_rev1.0.0_20251030.md`
- `PROC_11-03-01_Placard-Removal-And-Installation_rev1.0.0_20251030.md`
- `DATA_11-02-02_Font-Sizes-And-Contrast-Limits_rev1.0.0_20251030.csv`

### 5.2 Sidecar Metadata
Every document MUST have a `.meta.yaml` sidecar containing:
- Schema version
- Document ID and revision
- Effectivity (MSN, config, dates)
- Safety classification and hazards
- Approvals (authority, status, date, signature)
- Traceability (source documents, cross-references)
- Integrity (SHA-256 checksum)
- Revision history

### 5.3 Mandatory Data Elements
All placard specifications must include:
- **Legibility criteria**: Font size (mm), contrast ratio, viewing distance (m), stroke width (mm)
- **Materials**: Substrate spec (AMS/BMS), ink/adhesive spec, supplier part numbers
- **Placement**: Coordinates (FS, BL, WL in mm), zone, tolerance
- **Languages**: Primary and translations with approval dates
- **Artwork**: File path, SHA-256 hash, version
- **Effectivity**: MSN, config, effective date, supersedes

### 5.4 Units Convention
- All CSV files MUST include units in column headers
- Standard units: mm (millimeters), m (meters), deg (degrees), N (Newtons), Pa (Pascals), hrs (hours)
- Unitless quantities: contrast_ratio_unitless, pct (percent)

## 6. Change Control Process

### 6.1 Change Initiation
Changes to placards are initiated through:
- Engineering Change Request (ECR)
- Service Bulletin (SB) incorporation
- Airworthiness Directive (AD) compliance
- Regulatory amendment
- Safety investigation finding

### 6.2 Change Classification
Every change is classified by:
- **Impact level**: Critical, Major, Minor, Trivial
- **Safety implication**: Safety-critical, Non-safety
- **Scope**: Content, Material, Location, Artwork only

### 6.3 Approval Workflow
1. **Engineering Review** - Technical assessment, impact analysis
2. **Safety Assessment** - For safety-critical changes only
3. **Airworthiness Review** - For Class 1 and Class 2 items
4. **Quality Release** - Production authorization
5. **Documentation Update** - Revise specifications, procedures, records
6. **Effectivity Assignment** - Determine MSN applicability

### 6.4 Emergency Changes
Emergency changes (urgent safety issues) follow expedited process:
- Verbal approval from Airworthiness (documented)
- Temporary placard authorization (max 30 days)
- Formal approval and permanent placard within 30 days
- Mandatory reporting to regulatory authority

## 7. Audit and Compliance

### 7.1 Audit Trail Requirements
Every placard installation or change must maintain:
- **Who**: Installer name, certification number, inspector name
- **What**: Placard ID, artwork version, materials used (part numbers, lots)
- **When**: Installation date/time, effective date
- **Where**: Location coordinates (FS, BL, WL), zone, drawing reference
- **Why**: Reason (scheduled, damage, modification, regulatory)
- **How**: Procedure followed, quality checks performed

### 7.2 Validation and Verification
Automated validation (`ci/validate_ata11.sh`) checks:
- Sidecar presence for all documents
- Schema conformance for JSON files
- CSV units in headers
- Numeric legibility criteria completeness
- SHA-256 hashes for artwork
- ISO 8601 date format
- Effective dates not in future
- Safety-critical change approvals present

### 7.3 Periodic Review
- **Annual Review**: Review board assesses chapter for updates
- **Regulatory Review**: Track regulatory changes, update within 90 days
- **Post-Incident Review**: After safety events involving placards
- **Audit Findings**: Incorporate corrective actions within 30 days

## 8. Training and Competency

### 8.1 Required Training
Personnel performing placard work must complete:
- ATA 11 Governance and Procedures (this chapter)
- Human Factors in Labeling Design
- Materials and Processes for Placard Production
- Quality Control and Inspection Techniques
- Regulatory Compliance Awareness

### 8.2 Certification Requirements
- **Placard Installer**: Company-certified mechanic, demonstrated competency
- **Inspector**: Quality Inspector certification, RII stamp (for safety-critical)
- **Designer**: Human Factors training, regulatory awareness
- **Approver**: Engineering authorization, airworthiness delegation (for Class 1/2)

## 9. Interface with Other ATA Chapters
- **ATA 05** - Inspection intervals for placards
- **ATA 15** - Flight deck placard coordination
- **ATA 20** - Adhesive application standards, torque values
- **ATA 25** - Cabin furnishing placard integration
- **ATA 51** - Composite substrate repair, LSP restoration
- **ATA 95** - Digital traceability and product passport

## 10. Document Control
- **Document Owner**: Cabin Systems Engineering
- **Next Review Date**: 2026-10-30
- **Revision History**: See sidecar .meta.yaml
- **Approval Status**: Approved for Release

## 11. References
- INDEX.meta.yaml - ATA 11 Chapter Index and Governance
- 00_README.md - ATA 11 Chapter Overview
- ci/validate_ata11.sh - Validation script
- schemas/ - JSON schemas for placards, markings, repair records
