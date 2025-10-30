# DESC_33-01-01: Scope, Governance, and Effectivity
## ATA 33 — LIGHTS: Comprehensive Chapter Scope

---

### Document Control
- **Document ID:** DESC_33-01-01
- **Title:** Scope, Governance, and Effectivity
- **Revision:** A
- **Effective Date:** 2025-10-30
- **Owner:** Lighting Systems Engineering
- **Classification:** Technical

---

## 1. Purpose

This document defines the **scope, governance structure, and effectivity** for ATA Chapter 33 — LIGHTS, establishing comprehensive coverage of all aircraft lighting systems from design through maintenance, repair, and certification.

---

## 2. Scope of ATA 33 — LIGHTS

### 2.1 Systems Covered

ATA 33 encompasses all aircraft lighting systems:

#### **Interior Lighting**
- Reading lights (passenger seats, crew stations)
- Aisle and floor path lighting
- Galley and lavatory lighting
- Cabin general illumination
- Cockpit instrument and panel lighting
- Cargo bay lighting

#### **Exterior Lighting**
- Position lights (navigation lights)
- Anti-collision lights (rotating beacon, strobe)
- Landing lights
- Taxi lights
- Runway turnoff lights
- Logo and wing lights
- Ice inspection lights

#### **Emergency & Exit Lighting**
- Emergency floor path marking
- Exit signs and emergency lights
- Photoluminescent marking systems
- Battery-powered emergency systems

#### **Specialized Lighting**
- Inspection and maintenance lights
- Formation lighting (military)
- Refueling lights

---

### 2.2 Technical Disciplines

This chapter integrates:

- **Photometry**: Illuminance, luminance, color, uniformity
- **Electrical Engineering**: Power supply, drivers, EMC
- **Human Factors**: Ergonomics, color rendering, glare control
- **Materials & Processes**: Lens materials, LED qualification, finishes
- **Structural Integration**: Mounting, LSP bonding, sealing
- **Certification**: FAA/EASA compliance, test evidence, traceability

---

### 2.3 Excluded from ATA 33

The following are **NOT** covered in this chapter:

- **Fire detection/suppression lights**: Covered in ATA 26
- **Warning/caution/advisory lights (cockpit annunciators)**: Covered in ATA 31
- **IFE display backlighting**: Covered in ATA 44 (Cabin Systems)

---

## 3. Governance

### 3.1 Organizational Roles

| Role | Responsibility |
|------|----------------|
| **Chapter Owner** | Lighting Systems Engineering |
| **Technical Authority** | Chief Engineer – Systems |
| **Airworthiness Authority** | Certification Authority |
| **Review Board** | Airworthiness, Human Factors, EMC, Photometric Lab |
| **Configuration Control** | Engineering Change Control Board (ECCB) |

### 3.2 Review and Approval Workflow

1. **Author** creates/updates document
2. **Technical review** by SMEs (photometrics, EMC, materials)
3. **Safety review** if safety-critical
4. **Airworthiness approval** for procedures affecting flight operations
5. **Release** by chapter owner after CI validation passes

### 3.3 Document Classification

| Classification | Definition | Access |
|----------------|------------|--------|
| **Public** | General information | Unrestricted |
| **Technical** | Maintenance procedures, specs | Authorized maintenance personnel |
| **Controlled** | Design data, test evidence | Engineering, certification |
| **Confidential** | Supplier proprietary data | Restricted by NDA |

---

## 4. Effectivity

### 4.1 General Effectivity

Unless otherwise specified in individual document sidecars:

- **Aircraft Type:** ALL
- **MSN Range:** ALL
- **Configuration:** ALL
- **Date:** 2025-10-30 and later

### 4.2 Part-Specific Effectivity

Individual procedures and data files include `.meta.yaml` sidecars specifying:

- MSN range (e.g., "MSN 5001-5050")
- Configuration block (e.g., "CFG-A", "CFG-B")
- Retrofit applicability
- Service Bulletin cross-reference

### 4.3 Revision Control

- **Revision Letters:** A, B, C... (major changes)
- **Minor Updates:** Revision date tracking
- **Supersession:** Explicit supersession chain in change log

---

## 5. Compliance Framework

### 5.1 Regulatory Standards

All ATA 33 deliverables comply with:

| Regulation | Applicability | Verification |
|------------|---------------|--------------|
| **[FAA 14 CFR Part 25.1381-1401](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFRe4c59b5f5506932)** | Lighting requirements | Test reports, certification basis |
| **[EASA CS-25.1381-1401](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27)** | European equivalent | EASA approval documentation |
| **[RTCA DO-160G](https://www.rtca.org/content/standards-guidance-materials)** | Environmental qualification | Test lab reports with SHA-256 |
| **[SAE AS8037](https://www.sae.org/standards/content/as8037d/), [AS8038](https://www.sae.org/standards/content/as8038/)** | Performance standards | Supplier certifications |

### 5.2 Internal Standards

- **[ATA-20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/README.md):** Workmanship (torque, sealing, potting)
- **[ATA-11](../ATA_11-PLACARDS_AND_MARKINGS/README.md):** Placards & markings (emergency signs)
- **Company Quality Manual:** Inspection, NDT, traceability

---

## 6. Configuration Management

### 6.1 Version Control

- All documents tracked in Git repository
- Branching: `ata/33/<feature-or-issue>`
- Pull requests require review + CI validation pass

### 6.2 Change Control

- **Minor changes** (typos, clarifications): Direct update with peer review
- **Major changes** (new procedures, spec changes): ECCB approval required
- **Safety-critical changes**: Engineering disposition + airworthiness approval

### 6.3 Traceability

- Each document has unique ID (e.g., DESC_33-01-01)
- Sidecars record approvals, effectivity, change history
- Cross-references to AMM, SRM, IPC maintained

---

## 7. Data Integrity

### 7.1 SHA-256 Hashing

All test evidence, supplier data, and photometric reports include SHA-256 hash for integrity verification.

### 7.2 Calibration Traceability

Photometric instruments and test equipment must be:
- Calibrated by NIST-traceable lab
- Calibration certificate ID recorded
- Within calibration due date at time of test

### 7.3 Audit Trail

- Git commit history provides complete audit trail
- CI validation logs retained
- Approval signatures in sidecars

---

## 8. Training and Qualification

### 8.1 Personnel Requirements

| Task | Qualification Required |
|------|------------------------|
| **Photometric testing** | Trained in photometric procedures, calibrated instruments |
| **LSP bonding restoration** | Certified in bonding/grounding per [ATA-20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/README.md) |
| **LED module replacement** | Authorized maintenance personnel |
| **NDT inspection** | Level II or III NDT certification (as applicable) |
| **Airworthiness release** | Licensed inspector (A&P, EASA Part-66, etc.) |

---

## 9. Supplier and M&P Control

### 9.1 Approved Suppliers

Only approved suppliers listed in [`DATA_33-11-01_Approved-Lens-And-LED-Suppliers.csv`](../11-MATERIALS_M_AND_P_TRACEABILITY/DATA_33-11-01_Approved-Lens-And-LED-Suppliers.csv) may be used.

### 9.2 Certificate of Conformance (CoC)

CoC required for:
- LED modules
- LED drivers
- Lens materials
- Sealants and potting compounds (where flight-critical)

---

## 10. Continuous Improvement

### 10.1 Feedback Loop

- Maintenance feedback reviewed quarterly
- Service difficulty reports (SDRs) analyzed
- Lessons learned incorporated into procedures

### 10.2 Document Review Cycle

- Annual review of all procedures
- Update as needed for regulatory changes, new technology, field experience

---

## 11. Contact Information

| Role | Contact |
|------|---------|
| **Chapter Owner** | lighting-systems@ampel360.com |
| **Airworthiness Authority** | airworthiness@ampel360.com |
| **Technical Support** | ata-support@ampel360.com |

---

**END OF DOCUMENT**

---

**Approvals:**
- **Prepared by:** ATA-33 Agent, Lighting Systems
- **Reviewed by:** (Pending)
- **Approved by:** (Pending Airworthiness Authority)

---

**Change Log:**

| Date | Revision | Author | Description |
|------|----------|--------|-------------|
| 2025-10-30 | A | ATA-33 Agent | Initial release |

---

*This document is part of the AMPEL360 OPT-IN Framework and is subject to configuration control.*
