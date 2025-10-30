# ATA 30: Ice and Rain Protection

**CRITICAL SAFETY WARNING:** This chapter contains procedures and limits essential for flight safety. Ice and rain protection systems are safety-critical systems; any failure in de-icing, thermal protection, or rain removal can lead to ice accretion, loss of lift, control surface jamming, or sensor malfunction with potentially catastrophic consequences. Adherence to all limits, procedures, inspection intervals, and qualification requirements is mandatory.

## Scope

This chapter covers the complete ice and rain protection systems, including pneumatic/bleed hot-air ice protection, electrothermal leading edge and windshield heat, inflatable de-ice boots, weep/bleed systems, electro-optic sensor heat, rain removal (wipers/wet-paper/AFM), and water management for sump/weep. It defines maintenance procedures, inspection requirements, thermal system qualification, de-ice boot repair, material traceability, test protocols, and NDT requirements for the AMPEL360 BWB ice and rain protection systems.

## BWB-Specific Considerations

- **DISTRIBUTED LEADING EDGE:** The BWB configuration has extensive leading edge surfaces requiring ice protection across the entire span. Thermal management, power distribution, and zone control are critical for uniform protection.
- **BLEED AIR LIMITATIONS:** Bleed air availability may be limited in advanced propulsion configurations. Electric/electrothermal systems may be required, increasing electrical power demands.
- **LSP INTEGRATION:** Conductive mesh for lightning strike protection (LSP) may be integrated with thermal heating elements. Any repair affecting thermal zones must restore LSP continuity per ATA-51.
- **COMPOSITE STRUCTURES:** De-ice boot bonding to composite leading edges requires strict surface preparation, adhesive selection, and cure cycle control to prevent delamination.
- **THERMAL EXPANSION:** Differential thermal expansion between heating elements, structural composites, and protective coatings must be accommodated in design and repair procedures.
- **SENSOR HEATING:** Ice accretion on air data sensors (pitot, static, AoA) can cause erroneous flight control inputs. Sensor heating systems are flight-critical.

## Governance

- **Limits:** All de-ice boot inflation pressures, thermal element temperatures, heater power limits, leak rates, cycle life limits, sensor heat setpoints, and material specifications are mandatory limits and cannot be exceeded without engineering disposition and airworthiness approval.
- **Cross-Chapter Dependencies:**
  - **ATA-20:** Standard practices for bonding, sealing, and surface preparation.
  - **ATA-21:** Air Conditioning and Pressurization (bleed air supply for pneumatic ice protection).
  - **ATA-24:** Electrical Power (power supply for electrothermal systems, heater control units).
  - **ATA-27:** Flight Controls (control surface integration, ice shedding effects on aeroelasticity).
  - **ATA-31:** Indicating/Recording Systems (ice detection sensors, crew alerting).
  - **ATA-34:** Navigation (air data sensor heating, pitot-static systems).
  - **ATA-36:** Pneumatic (bleed air distribution, pressure regulation).
  - **ATA-51:** Standard Practices and Structures - General (composite repair, LSP restoration).
- **Traceability:** All repairs, material applications, thermal system tests, and de-ice boot replacements must be recorded with full traceability to Materials & Processes (M&P) certifications, NDT reports, calibration certificates, raw test data files, and Digital Product Passport (DPP) entries per ATA-95.
- **Data Integrity:** All changes are validated by the CI script `ci/validate_ata30.sh`, which enforces schemas, naming conventions, and metadata sidecar requirements.

## Directory Structure

```
/ATA_30-ICE_AND_RAIN_PROTECTION
├── 00_README.md                    ← This file
├── INDEX.meta.yaml                 ← Cross-references and governance metadata
├── ci/
│   └── validate_ata30.sh           ← CI validation script
├── schemas/
│   ├── ice-system.schema.json      ← Ice protection system specification
│   ├── deice-boot.schema.json      ← De-ice boot specification
│   └── repair-record.schema.json   ← Repair record schema with ice & rain-specific fields
├── 01-GENERAL/                     ← Scope, governance, definitions, regulatory compliance
├── 02-DE-ICE_AND_DEFOG_SYSTEMS/    ← De-ice boot procedures and limits
├── 03-THERMAL_AND_WEPT/HEATERS/    ← Leading edge thermal system tests and limits
├── 04-WINDOW_AND_SENSOR_HEAT/      ← Windshield and sensor heating procedures
├── 05-RUNWAY_RAIN_AND_WATER_MANAGEMENT/ ← Rain removal and qualification
├── 06-MATERIALS_M_AND_P/           ← Approved materials and traceability
├── 07-INSPECTION_NDT_AND_QUAL/     ← NDT procedures and acceptance criteria
├── 08-NONCONFORMANCE_AND-DEVIATION/ ← NCR handling and engineering disposition
├── 09-SIDE-CAR_META/               ← Metadata templates for sidecars
│   └── templates/
│       └── document.meta.yaml
└── 10-EXAMPLES_AND_RECORDS/        ← Example repair records, test reports
```

## Key Requirements

### Repair Records (Schema: `repair-record.schema.json`)

All ice and rain protection system repairs must include the following specific fields:
- **Component ID:** De-ice boot part number, serial, installation date, cycles
- **System Type:** DeiceBoot, ElectrothermalLeadingEdge, WindshieldHeat, WeepSystem, RainRemoval
- **Location:** Wing station, fuselage station, or component location
- **Thermal System ID:** Heater element part number, serial, power rating, control logic
- **Materials Used:** Adhesive lot numbers, boot material batch, seal compounds with CofC
- **NDT Reports:** Ultrasonic bond inspection, thermography results with SHA-256 hashes
- **Functional Test Results:** Inflation pressure hold test, thermal profile, leak rate
- **LSP Verification:** Continuity measurement if conductive mesh affected
- **Effectivity:** Manufacturer Serial Number (MSN) and configuration applicability

### Numeric Acceptance Criteria

The following numeric limits are defined in the DATA files and must be strictly enforced:
- **De-ice Boot Inflation Pressure:** Maximum service pressure (kPa), pressure hold tolerance (% decay per minute)
- **Boot Leak Rate:** Maximum allowable leak rate (mbar·L/s)
- **Thermal Element Temperature:** Setpoint temperature (°C) ± tolerance
- **Temperature Uniformity:** Maximum temperature variation across active area (%)
- **Heater Insulation Resistance:** Minimum insulation resistance (MΩ) at operating temperature
- **LSP Continuity:** Maximum 4-wire resistance (mΩ) for conductive mesh
- **Boot Cycle Life:** Expected cycles, replacement criteria
- **Heater Element Life:** Operating hours, thermal cycles
- **Surface Bond Strength:** Minimum peel strength (N/mm) for boot adhesion
- **Windshield Heat Power:** Nominal power (W/cm²), maximum current
- **Sensor Heat Response:** Time to operating temperature (seconds)

### De-ice Boot Qualification Requirements

All de-ice boots must:
1. Complete qualification test plan per `07-INSPECTION_NDT_AND_QUAL/`
2. Demonstrate endurance life (minimum 20,000 cycles typical) without delamination
3. Pass inflation/deflation cycle testing at temperature extremes
4. Validate bond strength per ASTM standards
5. Document Material & Processes (M&P) certification for rubber compounds and adhesives
6. Perform post-installation ultrasonic bond inspection with archived results

### Thermal System Validation Requirements

All electrothermal systems must:
1. Complete thermal qualification per `03-THERMAL_AND_WEPT/HEATERS/`
2. Demonstrate temperature control accuracy and uniformity
3. Pass thermal cycling and environmental qualification per DO-160
4. Validate control logic, overtemp protection, and fault detection
5. Verify LSP continuity if conductive heating elements used
6. Document calibration certificates for temperature sensors and control units

### Materials and M&P Requirements

All materials must:
1. Be approved per `06-MATERIALS_M_AND_P/DATA_30-06-01`
2. Include Certificate of Conformance (CofC) with batch/lot traceability
3. Be stored per environmental requirements (temperature, humidity, shelf life)
4. Include safety data sheets (SDS) for hazardous materials
5. Reference applicable material standards (AMS, BMS, MIL-SPEC)

### NDT and Inspection Requirements

All inspections must:
1. Follow procedures in `07-INSPECTION_NDT_AND_QUAL/`
2. Include visual inspection (GVI/DVI) for cracks, delamination, discoloration
3. Perform ultrasonic inspection for bond line integrity
4. Use thermography for thermal system functional checks
5. Document inspection intervals and acceptance criteria
6. Archive NDT raw files with SHA-256 checksums

## Metadata Sidecar Requirements

Every PROC (procedure), DATA (data file), and DESC (description) file must have a corresponding `.meta.yaml` sidecar file containing:
- `schema_version`: "1.1"
- `id`: Unique document identifier
- `document`: Type, title, revision, effective_date
- `effectivity`: MSN range or "ALL"
- `safety`: Hazards and criticality level (if applicable)
- `approvals`: Engineering authority, status, date
- `traceability`: Source documents and cross-references
- `integrity`: SHA-256 checksum (placeholder or actual value)
- `training_required`: Personnel qualification requirements for safety-critical tasks

Templates are provided in `09-SIDE-CAR_META/templates/`.

## Cross-References

- **ATA-20:** Standard Practices - Airframe (bonding, sealing, surface preparation)
- **ATA-21:** Air Conditioning and Pressurization (bleed air supply)
- **ATA-24:** Electrical Power (power supply for electrothermal systems)
- **ATA-27:** Flight Controls (control surface integration, ice effects)
- **ATA-31:** Indicating/Recording Systems (ice detection, crew alerting)
- **ATA-34:** Navigation (air data sensor heating)
- **ATA-36:** Pneumatic (bleed air distribution)
- **ATA-51:** Standard Practices and Structures - General (composite repair, LSP restoration)
- **ATA-05:** Time Limits & Maintenance Checks (scheduled inspection intervals)
- **ATA-95:** Digital Product Passport (traceability and data archival)

## Inspection Intervals

Refer to `07-INSPECTION_NDT_AND_QUAL/DATA_30-07-02_Inspection-Intervals-And-Acceptance.csv` for the complete inspection schedule. Key intervals include:
- **General Visual Inspection (GVI):** Per A-check (typically 500-750 FH)
- **Detailed Inspection (DET):** Per C-check (typically 3000-4500 FH)
- **De-ice Boot Functional Test:** Every 2,000 FH or 12 months, whichever is sooner
- **Thermal System Calibration:** Every 3,000 FH or 12 months
- **Windshield Heat Test:** Every 1,000 FH or 6 months
- **Sensor Heat Verification:** Every 1,000 FH or 6 months
- **Ultrasonic Bond Inspection:** After any boot repair or every 5,000 FH

## Safety and Compliance

- **Regulatory Basis:** Complies with FAA Part 25.1419 (Ice Protection), FAA Part 25.1093 (Induction System Icing Protection), EASA CS-25 equivalents, SAE ARP5905 (Ice Protection System Design), and related regulations.
- **Environmental Qualification:** DO-160 (environmental conditions and test procedures).
- **System Safety:** ARP4754A (development process), ARP4761 (safety assessment).
- **Material Standards:** SAE AMS specifications for adhesives and sealants, ASTM standards for rubber compounds.
- **NDT Standards:** ASTM E1444 (ultrasonic), ASTM E1933 (thermography), ASTM E2533 (bond testing).
- **Airworthiness Limitations:** All items in this chapter that are classified as Airworthiness Limitation Items (ALIs) are cross-referenced in ATA-04 and are non-deferrable.

## Digital Product Passport Integration

All maintenance actions on ice and rain protection system components must be logged to the Digital Product Passport (ATA-95) including:
- Component serial numbers and part numbers (de-ice boots, heaters, controllers)
- Installation/removal dates and flight hours/cycles
- Inspection results and NDT report references with SHA-256 hashes
- Repair records with material lot numbers and CofC references
- Functional test results and calibration data
- Thermal system performance logs
- Environmental qualification test results

## Revision History

| Revision | Date       | Author                   | Description                          |
|----------|------------|--------------------------|--------------------------------------|
| 1.0.0    | 2025-10-30 | Ice & Rain Engineering   | Initial release - Audit-ready structure |

---

**Document Control:**
- **Owner:** Ice & Rain Engineering / Environmental Systems
- **Review Board:** Airworthiness, Materials & Process, NDT, Aerodynamics
- **Next Review:** 2026-10-30

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../../../README.md)
