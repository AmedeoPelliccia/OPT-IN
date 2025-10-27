# ATA 55-01-01: Scope, Governance, and Effectivity

## Document Information
- **Document Type:** Description
- **ATA Chapter:** 55 (Stabilizers)
- **Section:** 01 (General)
- **Subsection:** 01 (Scope, Governance, and Effectivity)
- **Revision:** 1.0.0
- **Effective Date:** 2028-11-01

## Scope

This document defines the scope, governance framework, and effectivity rules for all ATA 55 Stabilizers documentation, procedures, and data.

### Coverage

ATA 55 encompasses:
- Horizontal stabilizer structure and systems
- Vertical stabilizer structure and systems
- Elevator control surfaces (left and right)
- Rudder control surface
- Trim tabs and balance tabs
- Hinges, bearings, and control surface actuators
- Attachment fittings and load transfer interfaces
- Lightning strike protection and bonding systems

### Exclusions

The following are **NOT** covered under ATA 55:
- Flight control computers and software (ATA 27 - Flight Controls)
- Hydraulic power generation and distribution (ATA 29 - Hydraulic Power)
- Autopilot systems (ATA 22 - Autoflight)
- Primary flight control rigging and calibration procedures (ATA 27)

## Governance Framework

### Regulatory Basis

All ATA 55 stabilizer systems and maintenance procedures comply with:
- **FAA Part 25.491:** Horizontal and vertical stabilizer structure
- **FAA Part 25.561:** Emergency landing conditions (structural loads)
- **FAA Part 25.571:** Damage tolerance and fatigue evaluation
- **FAA Part 25.619:** Special factors for control surfaces
- **EASA CS-25:** Equivalent European Aviation Safety Agency certification specifications

### Document Hierarchy

1. **Level 1 - Regulatory Requirements:** FAA/EASA certification basis
2. **Level 2 - Type Design:** Type Certificate Data Sheet (TCDS) and Type Design
3. **Level 3 - Engineering Standards:** Company engineering specifications and standards
4. **Level 4 - ATA 55 Chapter Documentation:** This chapter (procedures, data, specifications)
5. **Level 5 - Work Instructions:** Shop-floor work cards derived from ATA 55 procedures

### Ownership and Review

| Role | Responsibility |
|------|----------------|
| **Structures Engineering** | Primary technical owner for stabilizer structural design and analysis |
| **Flight Controls Engineering** | Owner for control surface actuators, rigging, and functional requirements |
| **Airworthiness Engineering** | Ensures compliance with regulatory requirements and certification basis |
| **Safety Engineering** | Reviews all safety-critical procedures and structural repair limits |
| **Materials & Processes** | Approves all material specifications and repair processes |
| **Quality Assurance** | Validates inspection procedures and acceptance criteria |

### Review Cycle

- **Annual Review:** All ATA 55 documentation must be reviewed annually for currency and accuracy
- **Triggered Reviews:** Required for:
  - Service bulletin incorporation
  - Airworthiness directive (AD) compliance
  - Fleet-wide incidents or findings
  - Engineering change orders affecting stabilizers
  - Updates to regulatory requirements

## Effectivity

### Aircraft Serial Number (MSN) Effectivity

Unless otherwise specified in individual documents:
- **Default Effectivity:** ALL AMPEL360 BWB aircraft
- **MSN-Specific Documents:** Identified by effectivity notation in document metadata and filename

### Configuration Effectivity

Some procedures or data may apply only to specific aircraft configurations:
- **Standard Configuration:** Baseline AMPEL360 BWB
- **ETOPS Configuration:** Extended range operations modifications
- **Cargo Configuration:** Freighter variant modifications

### Modification Effectivity

Procedures and data introduced via modification or service bulletin are effective only on aircraft that have incorporated the modification. Effectivity is tracked through:
- Modification number reference in document metadata
- Digital Product Passport (ATA 95) configuration tracking
- Aircraft configuration control database

## Document Naming and Versioning

### Naming Convention

All ATA 55 documents follow the standard naming convention:

```
<TYPE>_<ATA>-<SECTION>-<SUBSECTION>_<Title-With-Dashes>_rev<X.Y.Z>_<YYYYMMDD>.<ext>
```

Where:
- **TYPE:** Document type (DESC, PROC, DATA, DIAG, TESTPLAN, INSP, EXAMPLE)
- **ATA:** Always "55" for this chapter
- **SECTION:** Two-digit section number (01-16)
- **SUBSECTION:** Two-digit subsection number (01-99)
- **Title-With-Dashes:** Descriptive title using hyphens instead of spaces
- **X.Y.Z:** Semantic version (Major.Minor.Patch)
- **YYYYMMDD:** Effective date in ISO 8601 format
- **ext:** File extension (md, csv, pdf, dwg, etc.)

**Example:**
```
PROC_55-02-02_HStab-Removal-And-Installation_rev1.2.0_20281015.md
```

### Semantic Versioning

- **Major (X):** Incompatible changes, complete rewrites, or safety-critical updates
- **Minor (Y):** Backward-compatible additions or significant clarifications
- **Patch (Z):** Backward-compatible bug fixes, typos, or minor clarifications

## Metadata Sidecar Requirements

Every document (except README files and templates) must have a companion `.meta.yaml` sidecar file containing:

- **schema_version:** Metadata schema version (currently "1.1")
- **id:** Unique document identifier matching the filename
- **document:** Type, title, revision, effective date
- **effectivity:** MSN range and configuration applicability
- **safety:** Hazards and criticality level (if applicable)
- **approvals:** Engineering authority approvals with dates
- **traceability:** Source documents and cross-references
- **integrity:** SHA-256 checksum for tamper detection

Templates are provided in `15-SIDE-CAR_META/templates/`.

## Cross-References to Other ATA Chapters

ATA 55 has mandatory cross-references to the following chapters:

| ATA Chapter | Cross-Reference Purpose |
|-------------|-------------------------|
| **ATA 20** | Standard practices for torque values, fasteners, bonding, sealing, and general airframe practices |
| **ATA 27** | Flight control rigging, actuator interface requirements, and control law interaction |
| **ATA 51** | Composite repair methods, scarf ratios, FEA requirements, and structural repair standards |
| **ATA 52** | Actuator interface standards and door control system compatibility |
| **ATA 53** | Fuselage attachment fittings, load transfer verification, and structural interfaces |
| **ATA 05** | Scheduled maintenance intervals and inspection task integration |
| **ATA 95** | Digital Product Passport for traceability and configuration management |

## Airworthiness Limitation Items (ALIs)

The following stabilizer components and inspections are designated as Airworthiness Limitation Items and are **non-deferrable**:

1. Horizontal stabilizer attachment fittings - structural inspection every 12,000 FH
2. Vertical stabilizer spar caps - fatigue inspection every 18,000 FH
3. Elevator hinge fittings - wear inspection every 6,000 FH
4. Rudder hinge fittings - wear inspection every 6,000 FH
5. Control surface actuator mounts - crack inspection every 9,000 FH

These items are cross-referenced in **ATA 04 - Airworthiness Limitations** and must be performed at the specified intervals without extension.

## Critical Design Configuration Control Items (CDCCIs)

The following stabilizer components are designated as Critical Design Configuration Control Items:

- Horizontal stabilizer spar (upper and lower)
- Vertical stabilizer spar
- Elevator hinge fittings (all positions)
- Rudder hinge fittings (all positions)
- Stabilizer-to-fuselage attachment fittings

Any repair, modification, or replacement of CDCCIs requires:
- Engineering disposition and approval
- Updated stress analysis or FEA
- Quality Assurance verification
- Configuration control database update
- Digital Product Passport entry

## Compliance and Enforcement

Non-compliance with ATA 55 procedures, limits, or governance requirements may result in:
- Grounding of affected aircraft
- Airworthiness certificate suspension
- Regulatory enforcement action
- Safety investigation

All personnel working with stabilizer systems must be trained and certified on applicable ATA 55 procedures.

---

**Approved By:**
- Structures Engineering: 2028-10-25
- Flight Controls Engineering: 2028-10-25
- Airworthiness Engineering: 2028-10-28

**Next Review:** 2029-11-01
