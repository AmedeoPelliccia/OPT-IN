# DESC_56-01-01: Scope, Governance, and Effectivity

**Document ID:** DESC_56-01-01  
**Revision:** 1.0.0  
**Effective Date:** 2028-10-27  
**ATA Chapter:** 56 — WINDOWS

## 1. Scope

This document defines the scope, governance framework, and effectivity for all ATA 56 — WINDOWS documentation, procedures, and specifications applicable to the AMPEL360 aircraft family.

### 1.1 Coverage

This chapter encompasses all transparent enclosures and associated systems on the aircraft, including:

- **Cockpit Windows:** Windshields (forward and side), direct vision windows
- **Cabin Windows:** Fixed passenger windows, emergency exit windows
- **Door Windows:** Vision panels on passenger doors, service doors, cargo doors
- **Inspection Windows:** Small access panels for visual inspection of systems
- **Associated Systems:**
  - Window frames and mounting hardware
  - Environmental seals and gaskets
  - Heating and anti-ice systems
  - Lightning strike protection systems
  - Optical coatings and treatments

### 1.2 Out of Scope

The following items are **not** covered by ATA 56:
- Cabin interior decorative panels (ATA 25 — Equipment/Furnishings)
- Cargo door mechanisms (ATA 52 — Doors)
- Structural fuselage components beyond window cutout reinforcement (ATA 53 — Fuselage)

## 2. Governance

### 2.1 Ownership and Responsibility

| Role | Responsibility |
|------|----------------|
| **Structures Engineering** | Primary owner; structural integrity, load path, attachment design |
| **Materials & Processes** | Material selection, qualification, traceability, repair materials |
| **Systems Integration** | Heating system integration, electrical interfaces, LSP coordination |
| **Certification** | Regulatory compliance, test planning, certification evidence |
| **Quality Assurance** | Inspection procedures, acceptance criteria, audit compliance |
| **Flight Test** | Optical quality validation, operational testing, crew feedback |

### 2.2 Review and Approval

All ATA 56 procedures, specifications, and changes require:

1. **Technical Review:** Structures Engineering + relevant specialty (Materials, Systems, etc.)
2. **Safety Review:** If flight-critical or safety-related
3. **Certification Review:** If regulatory compliance impact
4. **QA Approval:** All procedures and acceptance criteria
5. **Configuration Control:** Engineering Change Order (ECO) for design changes

### 2.3 Regulatory Authority

All work under ATA 56 must comply with:

- **FAA Part 25.773** — Pilot Compartment View
- **FAA Part 25.775** — Windshields and Windows
- **FAA Part 25.783** — Fuselage Doors (window integration)
- **SAE AS25936** — Transparent Enclosures for Aircraft
- **RTCA DO-160** — Environmental Conditions and Test Procedures

Deviations require Engineering Disposition and regulatory approval where applicable.

## 3. Effectivity

### 3.1 Aircraft Applicability

| Configuration | Applicability | Notes |
|---------------|---------------|-------|
| **BWB-360-PAX** | All sections apply | Blended Wing Body passenger configuration |
| **BWB-360-CARGO** | Sections 01-14 apply | Cargo configuration; reduced cabin windows |
| **CONV-360-PAX** | All sections apply | Conventional configuration passenger |
| **CONV-360-CARGO** | Sections 01-14 apply | Conventional configuration cargo |

### 3.2 MSN Effectivity

Unless otherwise specified in individual documents:

- **Default Effectivity:** ALL (all manufactured serial numbers)
- **Specific Effectivity:** Noted in document `.meta.yaml` sidecar and in document header

### 3.3 Modification Tracking

Window design changes are tracked via:

- **Service Bulletins (SB):** Field modifications
- **Engineering Change Orders (ECO):** Design changes
- **Airworthiness Directives (AD):** Regulatory-mandated changes

Each modification receives a unique identifier (e.g., `MOD-56-001`) and effectivity is documented in:
- `INDEX.meta.yaml`
- Individual document `.meta.yaml` sidecars
- Configuration management system

## 4. Document Hierarchy

### 4.1 Document Types

| Prefix | Type | Purpose | Approval Required |
|--------|------|---------|-------------------|
| **DESC** | Description | Technical description, theory of operation | Technical review |
| **PROC** | Procedure | Step-by-step maintenance or repair procedure | QA + Technical |
| **INSP** | Inspection | Inspection procedure and criteria | QA + Technical |
| **DATA** | Data | Tables, limits, specifications | Technical + Certification |
| **TESTPLAN** | Test Plan | Qualification and certification test plans | Certification |
| **DIAG** | Diagram | Drawings, schematics, exploded views | Technical |
| **EXAMPLE** | Example | Sample records and templates | QA |

### 4.2 Naming Convention

All documents follow the convention:

```
{PREFIX}_56-{SECTION}-{NUMBER}_{Title}_rev{X.Y.Z}_{YYYYMMDD}.{ext}
```

Example: `PROC_56-02-02_Pane-Removal-And-Replacement_rev1.0.0_20281027.md`

### 4.3 Metadata Sidecars

Every technical document (PROC, DESC, DATA, INSP, TESTPLAN) must have a `.meta.yaml` sidecar containing:

- Schema version
- Document ID and revision
- Effectivity (MSN, configuration)
- Approval history
- Traceability (source documents, cross-references)
- Integrity (SHA-256 checksum)

Templates are provided in section 15-SIDE-CAR_META.

## 5. Version Control and Change Management

### 5.1 Revision Numbering

Document revisions follow semantic versioning: `MAJOR.MINOR.PATCH`

- **MAJOR:** Significant technical change affecting procedure or limits
- **MINOR:** Clarification, additional detail, non-technical improvement
- **PATCH:** Editorial correction, typo fix

### 5.2 Change History

Each document maintains a revision history table showing:
- Revision number
- Effective date
- Author
- Description of changes
- Approval authority

### 5.3 Supersession

When a document is superseded:
1. New revision is created with updated effective date
2. Old revision is archived
3. `INDEX.meta.yaml` is updated with new checksum
4. Configuration management system is updated

## 6. Traceability

All ATA 56 documentation maintains bidirectional traceability:

### 6.1 Upstream Traceability
- **Requirements:** Design requirements, certification requirements
- **Regulations:** FAR Part 25, SAE standards
- **Analysis:** Structural analysis, thermal analysis, optical analysis

### 6.2 Downstream Traceability
- **Procedures:** Maintenance procedures reference specifications
- **Work Orders:** Work orders reference procedures
- **Records:** Repair records reference procedures and acceptance criteria

### 6.3 Cross-Chapter References

ATA 56 integrates with:
- **ATA 20** — Standard torque values, fastener specs, general practices
- **ATA 51** — Composite repair methods, structural FEA
- **ATA 52** — Door window integration
- **ATA 53** — Fuselage cutout reinforcement, skin interface
- **ATA 30** — Anti-ice system coordination
- **ATA 24** — Electrical power for heating elements

## 7. Quality and Audit Requirements

### 7.1 Audit Readiness

All ATA 56 documentation is maintained in audit-ready state:
- ✅ Complete metadata sidecars
- ✅ Checksums for integrity verification
- ✅ Approval signatures and dates
- ✅ Effectivity clearly stated
- ✅ Cross-references validated
- ✅ Revision history complete

### 7.2 CI/CD Validation

Continuous Integration validates:
- Filename conventions
- Sidecar presence
- Schema conformance
- Cross-reference completeness
- JSON validity
- Directory structure integrity

Validation script: `ci/validate_ata56.sh`

## 8. Continuous Improvement

This governance framework is subject to periodic review and improvement:

- **Annual Review:** Structures Engineering reviews scope and governance
- **Post-Audit Review:** Updates based on audit findings
- **Regulatory Updates:** Incorporation of new regulatory requirements
- **Lessons Learned:** Integration of operational feedback

---

**Prepared by:** Structures Engineering  
**Approved by:** Chief Engineer — Airframe  
**Effective Date:** 2028-10-27  
**Next Review:** 2029-10-27
