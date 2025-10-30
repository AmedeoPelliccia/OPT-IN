# ATA 35 — OXYGEN

**CRITICAL SAFETY WARNING:** This chapter contains procedures and limits essential for flight safety and crew/passenger survival. Oxygen systems are safety-critical systems; any cylinder failure, regulator malfunction, contamination, or improper handling can have catastrophic consequences. Adherence to all limits, procedures, inspection intervals, and oxygen handling safety requirements is mandatory.

## Scope

This chapter covers the complete oxygen system for crew and passengers, including gaseous oxygen (GOX) cylinders, chemical oxygen generators (if fitted), portable oxygen bottles, regulators, valves, distribution systems, pressure relief devices, oxygen masks, deployment systems, and all associated hardware. It defines maintenance procedures, inspection requirements, pressure vessel qualification, oxygen purity verification, safety protocols, and traceability requirements for the AMPEL360 oxygen systems.

## BWB-Specific Considerations

- **DISTRIBUTED OXYGEN STORAGE:** The BWB configuration may require distributed oxygen storage locations to optimize weight and balance. Cylinder mounting, routing, and access must be coordinated with structural design.
- **CABIN ALTITUDE SCENARIOS:** Oxygen system capacity and deployment timing are critical for safe passenger evacuation in rapid decompression scenarios. System design must account for BWB cabin volume and occupant distribution.
- **FIRE SAFETY:** Oxygen enrichment creates fire hazards. All materials in contact with high-pressure oxygen must be oxygen-compatible. Storage locations require fire detection and suppression integration.
- **PRESSURE VESSEL INTEGRITY:** Oxygen cylinders are pressure vessels subject to cyclic loading. Inspection intervals, hydrostatic test requirements, and damage tolerance must be strictly followed.
- **CHEMICAL OXYGEN GENERATOR SAFETY:** If chemical generators are used, personnel must be trained in handling, activation hazards, and thermal management.

## Governance

- **Limits:** All cylinder service pressures, test pressures, regulator setpoints, leak rates, oxygen purity thresholds, flow rates, deployment times, corrosion limits, and inspection intervals are mandatory limits and cannot be exceeded without engineering disposition and airworthiness approval.
- **Cross-Chapter Dependencies:**
  - **[ATA-04](../../A-AIRFRAME/ATA_04-AIRWORTHINESS_LIMITATIONS/):** Airworthiness Limitations (oxygen system inspection intervals and life limits).
  - **[ATA-20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/):** Standard Practices (torque values, sealants, fasteners for oxygen fittings).
  - **[ATA-21](../../E1-ENVIRONMENT/ATA_21-AIR_CONDITIONING/):** Air Conditioning & Pressurization (cabin altitude monitoring, automatic deployment triggers).
  - **[ATA-24](../../E2-ENERGY/ATA_24-ELECTRICAL_POWER/):** Electrical Power (oxygen sensor power, deployment solenoid power).
  - **[ATA-25](./ATA_25-EQUIPMENT_FURNISHINGS/):** Equipment/Furnishings (mask stowage, PSU integration).
  - **[ATA-26](../../E1-ENVIRONMENT/ATA_26-FIRE_PROTECTION/):** Fire Protection (oxygen storage area fire detection and suppression).
  - **[ATA-31](../../D-DATA/ATA_31-INDICATING_RECORDING_SYSTEMS_RECORDING_FUNCTION/):** Indicating/Recording Systems (oxygen pressure indication, mask deployment annunciation).
  - **[ATA-44](./ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/):** Cabin Systems (passenger service unit integration, crew oxygen controls).
  - **[ATA-95](../../O-OPERATING_SYSTEMS/ATA_95-DIGITAL_PRODUCT_PASSPORT/):** Digital Product Passport (cylinder serial traceability, CoC, refill records).
- **Traceability:** All repairs, modifications, cylinder refills, pressure tests, and inspections must be recorded with full traceability to Materials & Processes (M&P) certifications, NDT reports, cylinder Certificates of Conformance (CoC), hydrostatic test certificates, oxygen purity analysis, and Digital Product Passport (DPP) entries per ATA-95.
- **Data Integrity:** All changes are validated by the CI script `ci/validate_ata35.sh`, which enforces schemas, naming conventions, and metadata sidecar requirements.

## Directory Structure

```
/ATA_35-OXYGEN
├── 00_README.md                    ← This file
├── INDEX.meta.yaml                 ← Cross-references and governance metadata
├── ci/
│   └── validate_ata35.sh           ← CI validation script
├── schemas/
│   ├── oxygen-system.schema.json   ← Oxygen system specification schema
│   ├── repair-record.schema.json   ← Repair record schema with oxygen-specific fields
│   ├── damage-classification.schema.json
│   └── inspection.schema.json      ← Inspection interval and acceptance criteria schema
├── 01-GENERAL/                     ← Scope, governance, definitions, taxonomy, regulatory compliance
├── 02-OXYGEN_SYSTEM_DESIGN/        ← System types, architectures, pressure vessel requirements
├── 03-CYLINDERS_AND_STORAGE/       ← Cylinder handling, storage, traceability, refill, CoC
├── 04-SERVICE_AND_INSPECTION/      ← Inspection, service, deployment tests, pressure tests
├── 05-REGULATORY_AND_SAFETY/       ← Regulatory references, fire safety, oxygen handling
├── 06-MATERIALS_M_AND_P/           ← Approved materials, compatibility, traceability, CoC
├── 07-ELECTRO-MECH_INTERFACES_AND_VALVING/ ← Regulator/valve removal, sensor calibration, setpoints
├── 08-NDT_AND_INSPECTION_RECORDS/  ← NDT for pressure vessels and fittings, intervals, acceptance
├── 09-REPAIR_GUIDELINES/           ← Metallic repair, welding limits, composite/non-metallic repair
├── 10-QUALIFICATION_AND_TEST_PLANS/ ← Cylinder qualification, test plans, test matrix
├── 11-NONCONFORMANCE_AND_DEVIATION/ ← NCR handling, engineering disposition, NCR template
├── 12-DIAGRAMS_AND_REFERENCE_DATA/  ← Oxygen system block diagram, cylinder mounting, reference tables
├── 13-SIDE-CAR_META/               ← Metadata templates for sidecars
│   └── templates/
│       ├── document.meta.yaml
│       └── proc_sidecar_template.meta.yaml
└── 14-EXAMPLES_AND_RECORDS/        ← Example repair records, pressure test logs, deployment reports
```

## Key Requirements

### Repair Records (Schema: [`repair-record.schema.json`](schemas/repair-record.schema.json))

All oxygen system repairs must include the following specific fields:
- **Component ID:** Cylinder serial, part number, regulator serial, valve serial
- **Location:** Aircraft station, compartment, installation position
- **Cylinder Data:** Manufacturer, service pressure, test pressure, last hydro test date, next due date
- **CoC References:** Cylinder CoC number, oxygen lot number, purity certificate
- **Materials:** Part numbers, lot numbers, material certifications for oxygen compatibility
- **NDT File Hashes:** SHA-256 hashes of all NDT reports (ultrasonic, dye penetrant, X-ray)
- **Pressure Test Results:** Test pressure, leak rate, duration, result (Pass/Fail)
- **Functional Test Results:** Regulator output pressure, flow rate, deployment time
- **Effectivity:** Manufacturer Serial Number (MSN) and configuration applicability

### Numeric Acceptance Criteria

The following numeric limits are defined in the DATA files and must be strictly enforced:
- **Cylinder Service Pressure:** Nominal service pressure (bar or psi) per manufacturer specification
- **Hydrostatic Test Pressure:** 1.5x service pressure or per manufacturer/regulatory requirement
- **Cylinder Inspection Interval:** Hydrostatic test interval (months), typically 60 months
- **Regulator Output Pressure:** Crew supply (200-400 kPa ±10 kPa), passenger flow (2-4 L/min)
- **Leak Rate Acceptance:** Maximum allowable leak rate (mbar·L/s) at specified test pressure
- **Oxygen Purity Threshold:** Minimum 99.5% O₂ (or per specification) measured at refill
- **Mask Deployment Time:** Maximum 5 seconds from trigger to first mask available
- **Cylinder Corrosion Limits:** Maximum pit depth (mm), surface finish requirements
- **Relief Valve Setpoint:** Opening pressure (bar) and flow capacity (L/min)
- **Bearing/Seal Wear:** Maximum wear depth (mm) for regulators and valves

### Pressure Vessel Requirements

All oxygen cylinders and pressure vessels must:
1. Maintain full traceability with Certificates of Conformance (CoC)
2. Be hydrostatically tested at intervals not exceeding manufacturer or regulatory requirements
3. Undergo visual and NDT inspections per defined intervals
4. Have documented service pressure, test pressure, and volumetric expansion limits
5. Be marked with serial number, manufacturing date, test dates, and service pressure
6. Be stored in controlled environments (temperature, humidity) per manufacturer specifications
7. Be handled only by trained and qualified personnel

### Oxygen Purity and Contamination Control

All oxygen systems must:
1. Use only aviation-grade oxygen meeting purity specifications (≥99.5% O₂)
2. Maintain contamination control during refill operations (no oil, grease, hydrocarbons)
3. Use only oxygen-compatible materials and lubricants
4. Document oxygen lot numbers and purity analysis for each refill
5. Perform system flushing and purging per procedures before refill
6. Verify compatibility of all materials in contact with high-pressure oxygen

### Fire and Hazard Safety

All oxygen handling and storage must:
1. Follow strict no-smoking, no-flame, no-spark protocols in oxygen-enriched areas
2. Use only oxygen-safe tools and equipment (non-sparking, clean, oil-free)
3. Integrate fire detection and suppression in oxygen storage compartments
4. Maintain separation from fuel, hydraulic fluid, and other flammable materials
5. Provide adequate ventilation in storage and service areas
6. Train personnel in oxygen fire hazards and emergency response

## Cross-References

### Related ATA Chapters

- **[ATA-04](../../A-AIRFRAME/ATA_04-AIRWORTHINESS_LIMITATIONS/):** Airworthiness Limitations (inspection intervals, life limits)
- **[ATA-05](../../A-AIRFRAME/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/):** Time Limits & Maintenance Checks (scheduled inspections)
- **[ATA-20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/):** Standard Practices - Airframe (torque, fasteners, bonding, sealing)
- **[ATA-21](../../E1-ENVIRONMENT/ATA_21-AIR_CONDITIONING/):** Air Conditioning & Pressurization (cabin altitude monitoring, deployment triggers)
- **[ATA-24](../../E2-ENERGY/ATA_24-ELECTRICAL_POWER/):** Electrical Power (sensor power, deployment solenoid power, indications)
- **[ATA-25](./ATA_25-EQUIPMENT_FURNISHINGS/):** Equipment/Furnishings (mask stowage, PSU integration, crew stations)
- **[ATA-26](../../E1-ENVIRONMENT/ATA_26-FIRE_PROTECTION/):** Fire Protection (oxygen storage area fire detection and suppression)
- **[ATA-31](../../D-DATA/ATA_31-INDICATING_RECORDING_SYSTEMS_RECORDING_FUNCTION/):** Indicating/Recording Systems (pressure indication, deployment annunciation)
- **[ATA-44](./ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/):** Cabin Systems (PSU integration, crew oxygen controls, attendant oxygen)
- **[ATA-51](../../A-AIRFRAME/ATA_51-STANDARD_PRACTICES_AND_STRUCTURES-GENERAL/):** Standard Practices and Structures - General (structural repairs)
- **[ATA-95](../../O-OPERATING_SYSTEMS/ATA_95-DIGITAL_PRODUCT_PASSPORT/):** Digital Product Passport (traceability, CoC, refill records, maintenance history)

### Internal Document References

#### Procedures
- [PROC_35-03-01](03-CYLINDERS_AND_STORAGE/PROC_35-03-01_Cylinder-Handling-Storage-And-Traceability.md) - Cylinder Handling, Storage and Traceability
- [PROC_35-04-01](04-SERVICE_AND_INSPECTION/PROC_35-04-01_Oxygen-System-Inspection-And-Service.md) - Oxygen System Inspection and Service
- [PROC_35-08-01](08-NDT_AND_INSPECTION_RECORDS/PROC_35-08-01_NDT-For-Pressure-Vessels-And-Fittings.md) - NDT for Pressure Vessels and Fittings

#### Descriptions
- [DESC_35-01-01](01-GENERAL/DESC_35-01-01_Scope-Governance-And-Effectivity.md) - Scope, Governance and Effectivity
- [DESC_35-05-01](05-REGULATORY_AND_SAFETY/DESC_35-05-01_Regulatory-References-And-Compliance.md) - Regulatory References and Compliance

#### Data Tables
- [DATA_35-02-03](02-OXYGEN_SYSTEM_DESIGN/DATA_35-02-03_Oxygen-System-Limits-And-Parameters.csv) - Oxygen System Limits and Parameters
- [DATA_35-04-04](04-SERVICE_AND_INSPECTION/DATA_35-04-04_Inspection-Intervals-And-Acceptance.csv) - Inspection Intervals and Acceptance
- [DATA_35-06-01](06-MATERIALS_M_AND_P/DATA_35-06-01_Approved-Materials-And-Compatibility.csv) - Approved Materials and Compatibility

#### Schemas
- [oxygen-system.schema.json](schemas/oxygen-system.schema.json) - Oxygen system specification
- [repair-record.schema.json](schemas/repair-record.schema.json) - Repair record with oxygen-specific fields
- [inspection.schema.json](schemas/inspection.schema.json) - Inspection interval and acceptance criteria
- [damage-classification.schema.json](schemas/damage-classification.schema.json) - Damage assessment and classification

#### Examples
- [EXAMPLE_35-14-01](14-EXAMPLES_AND_RECORDS/EXAMPLE_35-14-01_Repair-Record-Example.json) - Repair Record Example
- [EXAMPLE_35-14-02](14-EXAMPLES_AND_RECORDS/EXAMPLE_35-14-02_Pressure-Test-Log.csv) - Pressure Test Log

### External Standards and Regulations

#### FAA Regulations
- [14 CFR Part 25.1441](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR14d23180bde74c3/section-25.1441) - Oxygen equipment and supply
- [14 CFR Part 25.1443](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR14d23180bde74c3/section-25.1443) - Minimum mass flow of supplemental oxygen
- [14 CFR Part 25.1445](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR14d23180bde74c3/section-25.1445) - Equipment standards for oxygen dispensing units
- [14 CFR Part 25.1447](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR14d23180bde74c3/section-25.1447) - Equipment standards for oxygen dispensing units (crew)
- [14 CFR Part 25.1449](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR14d23180bde74c3/section-25.1449) - Means for determining use of oxygen
- [14 CFR Part 25.1450](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR14d23180bde74c3/section-25.1450) - Chemical oxygen generators
- [14 CFR Part 25.1453](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR14d23180bde74c3/section-25.1453) - Protection of oxygen equipment from rupture

#### EASA Regulations
- [EASA CS-25](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-large-aeroplanes) - Certification Specifications for Large Aeroplanes (CS-25.1441 through CS-25.1453)

#### International Standards
- [RTCA DO-160](https://www.rtca.org/) - Environmental Conditions and Test Procedures for Airborne Equipment
- [MIL-PRF-27210](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) - Oxygen, Aviator's Breathing, Liquid and Gas
- [DOT CFR 49 Part 173](https://www.ecfr.gov/current/title-49/subtitle-B/chapter-I/subchapter-C/part-173) - Shippers - General Requirements for Shipments and Packagings
- [ISO 11118](https://www.iso.org/standard/19077.html) - Transportable gas cylinders

#### Material and Testing Standards
- [AMS Specifications](https://www.sae.org/standards/content/ams/) - Aerospace Material Specifications (SAE)
- [ASTM E1444](https://www.astm.org/e1444-16.html) - Magnetic Particle Testing
- [ASTM E1417](https://www.astm.org/e1417_e1417m-21.html) - Liquid Penetrant Testing
- [ASTM E1742](https://www.astm.org/e1742-21.html) - Radiographic Examination
- [ASTM E2375](https://www.astm.org/e2375-21.html) - Ultrasonic Testing of Wrought Products

#### Industry Guidelines
- [CGA (Compressed Gas Association)](https://www.cganet.com/) - Gas handling and safety guidelines
- CGA G-4.4 - Industrial Practices for Gaseous Oxygen Transmission and Distribution Piping Systems
- CGA P-2.5 - Transfilling of High Pressure Gaseous Oxygen
- CGA V-1 - Compressed Gas Cylinder Valve Outlet and Inlet Connections

## Inspection Intervals

Refer to [`DATA_35-04-04_Inspection-Intervals-And-Acceptance.csv`](04-SERVICE_AND_INSPECTION/DATA_35-04-04_Inspection-Intervals-And-Acceptance.csv) for the complete inspection schedule. Key intervals include:
- **General Visual Inspection (GVI):** 12 months or 1000 flight hours
- **Detailed Inspection (DVI):** 36 months
- **Cylinder Hydrostatic Test:** 60 months (or per manufacturer/regulatory requirement)
- **Pressure Test (After Repair):** After any repair to pressure boundary
- **Regulator Functional Test:** 12 months
- **Mask Deployment Test:** 24 months
- **NDT (Pressure Vessels):** Per cylinder life cycle and after any damage or repair

## Safety and Compliance

- **Regulatory Basis:** Complies with [FAA 14 CFR Part 25.1441-1453](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR14d23180bde74c3/section-25.1441), and [EASA CS-25](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-large-aeroplanes) equivalents. See [DESC_35-05-01](05-REGULATORY_AND_SAFETY/DESC_35-05-01_Regulatory-References-And-Compliance.md) for complete regulatory mapping.
- **Pressure Vessel Standards:** [DOT CFR 49 Part 173](https://www.ecfr.gov/current/title-49/subtitle-B/chapter-I/subchapter-C/part-173) (Department of Transportation cylinder specifications), [ISO 11118](https://www.iso.org/standard/19077.html) (transportable gas cylinders).
- **Environmental Qualification:** [RTCA DO-160](https://www.rtca.org/) (environmental conditions and test procedures for airborne equipment).
- **Material Standards:** MMPDS (Metallic Materials Properties Development and Standardization), [AMS (Aerospace Material Specifications)](https://www.sae.org/standards/content/ams/).
- **NDT Standards:** [ASTM E1444](https://www.astm.org/e1444-16.html) (ultrasonic), [ASTM E1417](https://www.astm.org/e1417_e1417m-21.html) (penetrant), [ASTM E1742](https://www.astm.org/e1742-21.html) (radiographic).
- **Oxygen Standards:** [CGA (Compressed Gas Association)](https://www.cganet.com/) guidelines, [MIL-PRF-27210](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) (oxygen, aviator's breathing, liquid and gas).
- **Airworthiness Limitations:** All items in this chapter that are classified as Airworthiness Limitation Items (ALIs) are cross-referenced in [ATA-04](../../A-AIRFRAME/ATA_04-AIRWORTHINESS_LIMITATIONS/) and are non-deferrable.

## Digital Product Passport Integration

All maintenance actions on oxygen system components must be logged to the [Digital Product Passport (ATA-95)](../../O-OPERATING_SYSTEMS/ATA_95-DIGITAL_PRODUCT_PASSPORT/) including:
- Cylinder serial numbers and part numbers
- Installation/removal dates and flight hours
- Hydrostatic test dates and results
- Inspection results and NDT report references
- Refill dates, oxygen lot numbers, and purity certificates
- Repair records with material lot numbers and CoC references
- Regulator functional test results and calibration data
- Pressure test results with leak rate data
- Mask deployment test results

## Revision History

| Revision | Date       | Author                     | Description                          |
|----------|------------|----------------------------|--------------------------------------|
| 1.0.0    | 2025-10-30 | Cabin Systems / Oxygen     | Initial release - Audit-ready structure |

---

**Document Control:**
- **Owner:** Cabin Systems / Oxygen
- **Review Board:** Airworthiness, Safety, Cabin Systems, Materials & Processes, NDT
- **Next Review:** 2026-10-30

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../../../README.md)
