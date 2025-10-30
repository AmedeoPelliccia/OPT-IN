# ATA 28-40-XX — SAF Conditioning & Quality Management (Cryogenic H₂)

**Purpose:** Procedures and data for conditioning, quality control, testing and traceability of SAF and cryogenic H₂ storage/distribution systems.

**Scope:** Tanks, vacuum jackets, lines, valves, sensors, relief systems, purge/inerting, NDT, and DPP traceability.

**Effective date:** 2025-10-30  
**Owner:** Cryogenic Systems Engineering

**Mandatory:** All records and attachments must include SHA-256. Sidecars required for every document (see [sidecar template](11-SIDE-CAR_META/templates/document.meta.yaml)).

---

## 📑 Quick Navigation

### Governance & Standards
- [DESC_28-40-01: Scope, Governance and Effectivity](01-GENERAL/DESC_28-40-01_Scope-Governance-And-Effectivity.md)
- [DESC_28-40-02: Terms and Definitions](01-GENERAL/DESC_28-40-02_Terms-And-Definitions.md)
- [DATA_28-40-03: Regulatory Compliance Matrix](01-GENERAL/DATA_28-40-03_Regulatory-Compliance-Matrix.csv)

### SAF Conditioning & Quality
- [DESC_28-40-10: SAF Conditioning Philosophy](02-SAF_CONDITIONING_AND_QUALITY_MGMT/DESC_28-40-10_SAF-Conditioning-Philosophy.md)
- [PROC_28-40-11: SAF Conditioning Procedure](02-SAF_CONDITIONING_AND_QUALITY_MGMT/PROC_28-40-11_SAF-Conditioning-Procedure.md)
- [PROC_28-40-12: SAF Quality Acceptance Test](02-SAF_CONDITIONING_AND_QUALITY_MGMT/PROC_28-40-12_SAF-Quality-Acceptance-Test.md)
- [DATA_28-40-13: SAF Quality Limits](02-SAF_CONDITIONING_AND_QUALITY_MGMT/DATA_28-40-13_SAF-Quality-Limits.csv)

### Tanks & Storage
- [DESC_28-40-20: Storage Interface and CoC](03-TANKS_AND_STORAGE/DESC_28-40-20_Storage-Interface-And-CofC.md)
- [PROC_28-40-21: Tank Pressure Test and Hydro](03-TANKS_AND_STORAGE/PROC_28-40-21_Tank-Pressure-Test-And-Hydro.md)
- [DATA_28-40-22: Tank Capacity and Limits](03-TANKS_AND_STORAGE/DATA_28-40-22_Tank-Capacity-And-Limits.csv)

### Distribution & Valves
- [PROC_28-40-30: Line Purge and Inerting](04-DISTRIBUTION_AND_VALVES/PROC_28-40-30_Line-Purge-And-Inerting.md)
- [DATA_28-40-31: Line Materials and Pressure Ratings](04-DISTRIBUTION_AND_VALVES/DATA_28-40-31_Line-Materials-And-Pressure-Ratings.csv)

### Sensors, Controls & Calibration
- [PROC_28-40-40: Sensor Calibration and Traceability](05-SENSORS_CONTROLS_AND_CALIBRATION/PROC_28-40-40_Sensor-Calibration-And-Traceability.md)
- [DATA_28-40-41: Sensor Specs and Calibration Intervals](05-SENSORS_CONTROLS_AND_CALIBRATION/DATA_28-40-41_Sensor-Specs-And-Calibration-Intervals.csv)

### Testing, NDT & Leak Detection
- [PROC_28-40-50: Helium Leak Test and Report](06-TESTING_NDT_AND_LEAK_DETECTION/PROC_28-40-50_Helium-Leak-Test-And-Report.md)
- [DATA_28-40-51: Leak Rate Acceptance](06-TESTING_NDT_AND_LEAK_DETECTION/DATA_28-40-51_Leak-Rate-Acceptance.csv)

### Safety, Relief & Emergency
- [PROC_28-40-60: Relief Valve Setpoint and Test](07-SAFETY_RELIEF_AND_EMERGENCY/PROC_28-40-60_Relief-Valve-Setpoint-And-Test.md)
- [DESC_28-40-61: Emergency Venting and SDS](07-SAFETY_RELIEF_AND_EMERGENCY/DESC_28-40-61_Emergency-Venting-And-SDS.md)

### Materials & Processes
- [DATA_28-40-70: Approved Materials and CoC](08-MATERIALS_M_AND_P/DATA_28-40-70_Approved-Materials-And-CoC.csv)
- [PROC_28-40-71: M&P Traceability and Storage](08-MATERIALS_M_AND_P/PROC_28-40-71_M&P-Traceability-And-Storage.md)

### Traceability & DPP
- [PROC_28-40-80: DPP Entry and Record](09-TRACEABILITY_AND_DPP/PROC_28-40-80_DPP-Entry-And-Record.md)
- [DATA_28-40-81: Record Template](09-TRACEABILITY_AND_DPP/DATA_28-40-81_Record-Template.csv)

### Nonconformance & Deviation
- [PROC_28-40-90: Nonconformance Handling](10-NONCONFORMANCE_AND_DEVIATION/PROC_28-40-90_Nonconformance-Handling-And-Engineering-Disposition.md)
- [DATA_28-40-91: NCR Template](10-NONCONFORMANCE_AND_DEVIATION/DATA_28-40-91_NCR-Template.csv)

### Technical Resources
- [JSON Schemas](schemas/) - Tank specs, valves, sensors, tests
- [Example Records](12-EXAMPLES_AND_RECORDS/) - Pressure tests, leak tests, DPP records
- [CI Validation](ci/validate_ata28-40.sh) - Automated structure validation

---

## 🔗 External Standards & Regulations

- **[FAA Part 25.951](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.951)** - Fuel system design requirements
- **[EASA CS-25](https://www.easa.europa.eu/document-library/certification-specifications/cs-25-amendment-27)** - Certification Specifications for Large Aeroplanes
- **[SAE AIR6464](https://www.sae.org/standards/content/air6464/)** - Cryogenic System Design Guide
- **[ISO 21010](https://www.iso.org/standard/69653.html)** - Cryogenic vessels — Gas/materials compatibility
- **[ISO 13985](https://www.iso.org/standard/69997.html)** - Liquid hydrogen — Land vehicle fuel containers
- **[ASTM D7566](https://www.astm.org/d7566-24.html)** - Aviation Turbine Fuel Containing Synthesized Hydrocarbons
- **[ASME BPVC Section VIII](https://www.asme.org/codes-standards/find-codes-standards/bpvc-viii-1-bpvc-section-viii-rules-construction-pressure-vessels-division-1)** - Pressure Vessel Code

---

## 📊 Metadata & Governance

- [INDEX.meta.yaml](INDEX.meta.yaml) - Chapter governance and crossrefs
- Sidecar template: [document.meta.yaml](11-SIDE-CAR_META/templates/document.meta.yaml)
