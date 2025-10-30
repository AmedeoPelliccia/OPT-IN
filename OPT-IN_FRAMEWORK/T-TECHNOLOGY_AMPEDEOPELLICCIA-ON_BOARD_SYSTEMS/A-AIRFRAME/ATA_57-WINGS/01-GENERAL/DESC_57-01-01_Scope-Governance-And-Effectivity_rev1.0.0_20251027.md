# DESC 57-01-01: Scope, Governance, and Effectivity

**Revision:** 1.0.0  
**Effective Date:** 2025-10-27

## 1. Scope

This document defines the scope, governance model, and effectivity rules for ATA 57 - Wings documentation for the AMPEL360 BWB aircraft.

### 1.1 Documentation Scope

This chapter covers:
- **Primary Structure:** Wing box, spars, ribs, and skin panels
- **Secondary Structure:** Leading edge, trailing edge, fairings
- **Control Surfaces:** Elevons, flaperons, spoilers, trim surfaces
- **High-Lift Devices:** Slats, flaps, and their actuation systems
- **Integrated Systems:** Fuel tanks, landing gear integration, system routing
- **Structural Repairs:** All approved repair methods and limits
- **Inspection Requirements:** NDT methods, intervals, and acceptance criteria

### 1.2 Regulatory Basis

All content is compliant with:
- FAA Part 25.571 (Damage Tolerance and Fatigue Evaluation)
- FAA Part 25.613 (Material Strength Properties and Design Values)
- FAA Part 25.619 (Special Factors)
- EASA CS-25 equivalent regulations

## 2. Governance

### 2.1 Document Control

- **Owner:** Wing Structures Engineering
- **Review Board:** Airworthiness, Aerodynamics, Flight Controls, Fuel Systems, M&P
- **Approval Authority:** Chief Engineer - Structures

### 2.2 Change Control

All changes to this documentation must:
1. Be reviewed by the appropriate engineering discipline
2. Undergo safety assessment if affecting flight-critical items
3. Be approved by the review board
4. Include updated metadata sidecars with revision history
5. Pass CI validation (`ci/validate_ata57.sh`)

### 2.3 Zero Deviation Policy

All repairs to primary load path elements must follow approved procedures. Any deviation requires:
- Formal Engineering Disposition
- FEA analysis (if structural)
- Test substantiation (as required)
- Approval from Chief Engineer - Structures

### 2.4 Traceability Requirements

Every structural repair must be documented with:
- Complete repair record per `repair-record.schema.json`
- NDT reports with SHA-256 file hashes
- Material traceability (lot numbers, CofC)
- Digital Product Passport entry (ATA-95)

## 3. Effectivity

### 3.1 Aircraft Applicability

**Primary Effectivity:**
- All AMPEL360 BWB configurations
- MSN Range: AMP360-001 to AMP360-050 (Block A)

**Future Configurations:**
- Block B and subsequent configurations will be added via revision control

### 3.2 Document Versioning

All documents follow the naming convention:
```
<TYPE>_57-<SECTION>-<SEQ>_<Title>_rev<X.Y.Z>_<YYYYMMDD>.<ext>
```

Where:
- TYPE: DESC, PROC, DATA, DIAG, TESTPLAN
- SECTION: Two-digit section number (01-20)
- SEQ: Two-digit sequence within section
- X.Y.Z: Semantic version
- YYYYMMDD: Effective date

### 3.3 Metadata Requirements

All technical documents require a `.meta.yaml` sidecar containing:
- Schema version
- Document ID
- Effectivity (MSN, config)
- Safety classification
- Approvals with dates
- Integrity checksum (SHA-256)

## 4. Cross-References

### 4.1 Mandatory Cross-References

- **ATA 20:** Standard Practices - Airframe (torque, bonding, sealing)
- **ATA 27:** Flight Controls (rigging, actuation)
- **ATA 28:** Fuel Systems (tank components)
- **ATA 30:** Ice & Rain Protection (leading edge)
- **ATA 51:** Structural Repair Methods (composite repairs)

### 4.2 Reference Documents

- MMPDS: Metallic Materials Properties Development and Standardization
- CMH-17: Composite Materials Handbook
- Aircraft Structural Design Specification
- Damage Tolerance Substantiation Report

## 5. Safety Classification

All wing structural repairs are classified as:
- **Criticality:** Critical (Class 1)
- **Hazard:** Catastrophic failure potential
- **RII Required:** Yes (Required Inspection Items)

---

**Document Control:**
- **Prepared by:** Wing Structures Engineering
- **Approved by:** Chief Engineer - Structures
- **Approval Date:** 2025-10-26
