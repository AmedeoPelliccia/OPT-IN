# ATA 33 — LIGHTS
## Aircraft Lighting Systems: Interior, Exterior, Emergency & Photometric Compliance

---

### Document Control
- **Chapter:** ATA 33 — LIGHTS
- **Effective Date:** 2025-10-28
- **Owner:** Lighting Systems Engineering
- **Review Board:** Airworthiness, Certification, Human Factors
- **Classification:** Controlled Technical Data
- **Status:** Active

---

## 1. Scope & Purpose

This chapter establishes **audit-ready, certifiable** procedures, specifications, and data for all aircraft lighting systems, including:

- **Interior Lighting**: Reading, aisle, galley, lavatory, cabin illumination
- **Exterior Lighting**: Position, navigation, anti-collision, landing, taxi, logo lights
- **Emergency & Exit Lighting**: Escape path marking, emergency signs, battery-powered systems
- **Photometric Testing**: Calibrated measurement, illuminance limits, color rendering
- **LED Drivers & Power Supplies**: Constant-current regulation, thermal management, ripple control
- **EMC & Lightning Strike Protection (LSP)**: [DO-160](https://www.rtca.org/content/standards-guidance-materials) compliance, bonding, shielding
- **Materials & Processes**: Lens materials, LED qualification, supplier traceability
- **Inspection & Repair**: NDT, optic restoration, module changeout

---

## 2. Regulatory Compliance

All lighting systems, procedures, and test records comply with:

| Regulation / Standard | Applicability |
|----------------------|---------------|
| **[FAA 14 CFR Part 25.1381](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFRe4c59b5f5506932/section-25.1381)** | Interior lighting requirements |
| **[FAA 14 CFR Part 25.1383](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFRe4c59b5f5506932/section-25.1383)** | Landing lights |
| **[FAA 14 CFR Part 25.1385](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFRe4c59b5f5506932/section-25.1385)** | Position light system |
| **[FAA 14 CFR Part 25.1389](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFRe4c59b5f5506932/section-25.1389)** | Position light distribution and intensities |
| **[FAA 14 CFR Part 25.1401](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFRe4c59b5f5506932/section-25.1401)** | Anti-collision light system |
| **[EASA CS-25.1381-1401](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27)** | European equivalent regulations |
| **[RTCA DO-160G](https://www.rtca.org/content/standards-guidance-materials)** | Environmental conditions and test procedures (Section 22: Lightning) |
| **[SAE AS8037](https://www.sae.org/standards/content/as8037d/)** | Minimum performance standards for aircraft exterior lighting |
| **[SAE AS8038](https://www.sae.org/standards/content/as8038/)** | Aircraft interior lighting |
| **[ICAO Annex 6](https://www.icao.int/safety/airnavigation/Operations/Pages/Annex-6.aspx)** | International standards for aircraft operation |
| **[FAA AC 25.1309-1A](https://www.faa.gov/regulations_policies/advisory_circulars/index.cfm/go/document.information/documentID/22531)** | System safety assessment for lighting |
| **[MIL-STD-810](https://www.atec.army.mil/publications/mil-std-810h/)** | Environmental engineering (where applicable) |

---

## 3. Chapter Organization

```
ATA_33-LIGHTS/
├── 00_README.md (this file)
├── INDEX.meta.yaml (governance, effectivity, cross-references)
├── ci/validate_ata33.sh (automated validation)
├── schemas/*.schema.json (JSON schemas for data validation)
├── 01-GENERAL/ (scope, terminology, compliance matrix)
├── 02-INTERIOR_LIGHTING/ (cabin, cockpit, aisle lights)
├── 03-EXTERIOR_LIGHTING/ (position, nav, landing, logo)
├── 04-EMERGENCY_AND_EXIT_LIGHTING/ (escape path, battery systems)
├── 05-DRIVERS_AND_POWER_SUPPLIES/ (LED drivers, CCR, power specs)
├── 06-PHOTOMETRIC_TESTING/ (test procedures, calibration, reports)
├── 07-EMC_LSP_AND_BONDING/ ([DO-160](https://www.rtca.org/content/standards-guidance-materials), bonding, LSP restoration)
├── 08-INSPECTION_AND_NDT/ (GVI, NDT, acceptance criteria)
├── 09-REPAIR_GUIDELINES/ (optic repair, LED module changeout)
├── 10-QUALIFICATION_AND_TEST_PLANS/ (environmental, life testing)
├── 11-MATERIALS_M_AND_P_TRACEABILITY/ (suppliers, CoC, M&P)
├── 12-NONCONFORMANCE_AND-DEVIATION/ (NCR handling, disposition)
├── 13-DIAGRAMS_AND_REFERENCE_DATA/ (exploded views, tables)
├── 14-SIDE-CAR_META/templates/ (metadata templates)
└── 15-EXAMPLES_AND_RECORDS/ (sample test reports, logs)
```

---

## 4. Cross-References to Other ATA Chapters

| ATA Chapter | Interface |
|-------------|-----------|
| **[ATA-11](../ATA_11-PLACARDS_AND_MARKINGS/README.md)** | Placards & Markings (emergency exit signs) |
| **[ATA-20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/README.md)** | Standard Practices (Workmanship, torque, potting) |
| **[ATA-24](../../E2-ENERGY/ATA_24-ELECTRICAL_POWER_INCL_24-45-XX_EWIS_MONITORING/README.md)** | Electrical Power (28VDC supply, circuit protection) |
| **[ATA-44](../ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/README.md)** | Cabin Systems (IFE integration, dimming control) |
| **[ATA-51](../../A-AIRFRAME/ATA_51-STANDARD_PRACTICES_AND_STRUCTURES-GENERAL/README.md)** | Composite Structures (repairs near lighting assemblies) |
| **[ATA-53](../../A-AIRFRAME/ATA_53-FUSELAGE/README.md)** | Fuselage (LSP bonding, mounting provisions) |
| **[ATA-57](../../A-AIRFRAME/ATA_57-WINGS/README.md)** | Wings (position light mounting, wing-tip lights) |

---

## 5. Critical Validation Requirements

All lighting deliverables **must** pass the following checks before release:

### 5.1 Photometric Validation
- Illuminance measurements include **instrument calibration ID** and **measurement uncertainty**
- Test rig calibration traceable to **NIST or equivalent**
- Photometric limits: min/max lux, uniformity ratio, color temperature (CCT), CRI
- Emergency lighting: **minimum 0.05 lux** floor-level illuminance for 10 minutes

### 5.2 EMC & LSP Compliance
- All EMC tests reference **[DO-160G Section 22](https://www.rtca.org/content/standards-guidance-materials)** (Lightning Indirect Effects)
- Test evidence attached with **SHA-256 integrity hash**
- LSP continuity: **4-wire Kelvin measurement ≤ 2.5 mΩ** for conductive trims
- Bonding jumpers: **AWG sizing per [ATA-20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/README.md), torque per OEM spec**

### 5.3 LED & Driver Qualification
- LED modules: **L70 lifetime ≥ 50,000 hours** at rated temperature
- Driver specs: **output ripple ≤ 5%, inrush current ≤ 10A**, thermal derating curve
- Supplier traceability: **Certificate of Conformance (CoC)** with lot/date codes

### 5.4 Safety & Airworthiness
- Changes to safety-critical optics or LSP require **engineering disposition**
- Airworthiness approval recorded in `.meta.yaml` sidecar
- Effective date ≤ today (no future-dated release without waiver)

---

## 6. Document Naming Convention

| Prefix | Type | Example |
|--------|------|---------|
| **DESC** | Description / Specification | `DESC_33-02-01_Cabin-Interior-Lighting-Types.md` |
| **PROC** | Procedure | `PROC_33-04-01_Emergency-Light-Test-And-Service.md` |
| **DATA** | Data Table (CSV/JSON) | `DATA_33-02-03_Interior-Illuminance-And-Color-Limits.csv` |
| **TESTPLAN** | Test Plan | `TESTPLAN_33-10-01_Lighting-Qualification-And-Environmental-Plan.md` |
| **DIAG** | Diagram | `DIAG_33-13-01_Lighting-Exploded-Views.pdf` |
| **EXAMPLE** | Example Record | `EXAMPLE_33-15-01_Photometric-Test-Report.csv` |

---

## 7. Sidecar Metadata

Every document includes a `.meta.yaml` sidecar with:

```yaml
document:
  id: "DESC_33-02-01"
  title: "Cabin Interior Lighting Types"
  effective_date: "2025-10-28"
  revision: "A"
  owner: "Lighting Systems"
  classification: "Technical"

effectivity:
  msn_range: "ALL"
  config: "ALL"

safety:
  safety_critical: true
  hazard_level: "CAT_III"

approvals:
  - role: "Lead Engineer"
    name: "Jane Doe"
    date: "2025-10-28"
  - role: "Airworthiness"
    name: "John Smith"
    date: "2025-10-29"

integrity:
  sha256: "placeholder"
  tool: "sha256sum"
```

---

## 8. Validation Workflow

1. **Author creates/updates** lighting document or data file
2. **Populate sidecar** `.meta.yaml` with metadata, effectivity, approvals
3. **Run validation**: `bash ci/validate_ata33.sh`
4. **Fix errors** identified by validator (dates, units, hashes, calibration IDs)
5. **Code review** by engineering and airworthiness
6. **Merge to main** after CI passes and approvals obtained

---

## 9. Contacts & Support

| Role | Contact |
|------|---------|
| **Chapter Owner** | Lighting Systems Engineering |
| **Airworthiness Authority** | Certification Authority |
| **Human Factors** | Cabin Systems Team |
| **Photometric Lab** | Test & Qualification Engineering |
| **EMC Lab** | EMC & LSP Team |
| **Materials & Processes** | M&P Engineering |

For questions or clarifications, open an issue in the repository or contact the chapter owner.

---

## 10. Change Log

| Date | Revision | Author | Description |
|------|----------|--------|-------------|
| 2025-10-28 | Initial | ATA-33 Agent | Created comprehensive ATA 33 structure |

---

**END OF DOCUMENT**

---

**Approvals:**
- **Prepared by:** ATA-33 Agent, Lighting Systems
- **Reviewed by:** (Pending)
- **Approved by:** (Pending Airworthiness Authority)

---

*This document is part of the AMPEL360 OPT-IN Framework and is subject to configuration control.*
