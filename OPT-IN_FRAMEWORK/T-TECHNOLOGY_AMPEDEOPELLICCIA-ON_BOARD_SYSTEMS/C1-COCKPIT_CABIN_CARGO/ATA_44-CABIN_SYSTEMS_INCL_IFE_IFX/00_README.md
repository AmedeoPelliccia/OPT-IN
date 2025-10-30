# ATA 44: Cabin Systems (Including IFE / IFX)

**CRITICAL SAFETY WARNING:** This chapter contains procedures and limits essential for passenger safety and cabin environmental control. Cabin systems including oxygen, fire suppression, IFE/IFX, and environmental controls are critical for passenger comfort and emergency preparedness. Adherence to all limits, procedures, and inspection intervals is mandatory.

## Scope

This chapter covers cabin management systems, in-flight entertainment (IFE), in-flight connectivity (IFX), passenger service systems, emergency oxygen, fire detection/suppression, galley systems, cabin environmental controls, seating, furnishings, and all associated hardware and software. It defines maintenance procedures, inspection requirements, software load procedures, qualification/test protocols, and compliance with aviation regulations for the AMPEL360 BWB cabin systems.

## BWB-Specific Considerations

- **CABIN LAYOUT:** The BWB configuration enables novel cabin layouts with enhanced passenger space and natural light. All cabin furnishing installations must preserve structural integrity and certified load paths.
- **IFE/IFX INTEGRATION:** Advanced IFE/IFX systems require compliance with DO-178C (software), DO-254 (hardware), and cyber security isolation between passenger networks and aircraft critical systems.
- **ENVIRONMENTAL CONTROL:** The large cabin volume in BWB requires careful management of air distribution, temperature control, and pressurization effects on cabin fittings.
- **FIRE SAFETY:** Extended cabin zones require strategic fire detection/suppression placement and rapid crew response capability. All materials must meet FAA 14 CFR Part 25.853 flammability requirements.
- **EMERGENCY OXYGEN:** Passenger oxygen systems must be sized for BWB cabin volume and passenger load. Deployment tests and serviceability checks are critical.

## Governance

- **Limits:** All dimensional tolerances, oxygen pressure limits, fire suppression agent specs, IFE/IFX baselines, seat attachment loads, material flammability limits, and environmental parameters are mandatory limits and cannot be exceeded without engineering disposition.
- **Cross-Chapter Dependencies:**
  - **ATA-20:** Standard practices for torque, fasteners, sealants, and bonding.
  - **ATA-21:** Air conditioning (environmental control systems interface).
  - **ATA-25:** Equipment/furnishings (cabin interior design and installation).
  - **ATA-33:** Lights (cabin lighting systems).
  - **ATA-35:** Oxygen (crew oxygen system interface).
  - **ATA-46:** Information systems (IFE/IFX data integration).
  - **ATA-51:** Standard practices for composite repair methods and FEA.
  - **ATA-53:** Fuselage (attachment interfaces and load transfer).
- **Traceability:** All repairs, modifications, IFE/IFX software loads, and inspections must be recorded with full traceability to Materials & Processes (M&P) certifications, NDT reports, DO-178C/DO-254 evidence, and Digital Product Passport (DPP) entries per ATA-95.
- **Data Integrity:** All changes are validated by the CI script `ci/validate_ata44.sh`, which enforces schemas, naming conventions, and metadata sidecar requirements.

## Regulatory Compliance

This chapter ensures compliance with:
- **FAA 14 CFR Part 25:**
  - 25.853: Compartment interiors (flammability)
  - 25.855: Cargo and baggage compartments (fire protection)
  - 25.856: Thermal/acoustic insulation materials
  - 25.857: Cargo compartment classification and fire detection/suppression
  - 25.1439: Protective breathing equipment
  - 25.1447: Equipment standards for oxygen dispensing units
  - 25.1450: Chemical oxygen generators
- **EASA CS-25:** Equivalent European regulations
- **DO-160:** Environmental Conditions and Test Procedures for Airborne Equipment
- **DO-178C:** Software Considerations in Airborne Systems and Equipment Certification (IFE/IFX software)
- **DO-254:** Design Assurance Guidance for Airborne Electronic Hardware (IFE/IFX hardware)
- **DO-326A / ED-202A:** Airworthiness Security Process Specification (cyber security for IFE/IFX)
- **ARP4754A:** Guidelines for Development of Civil Aircraft and Systems
- **ARP4761:** Guidelines and Methods for Conducting the Safety Assessment Process on Civil Airborne Systems and Equipment
- **ARINC 628:** Specification for AEEC aviation data communication standards (IFE/IFX)

## Directory Structure

```
/ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX
├── 00_README.md                    ← This file
├── INDEX.meta.yaml                 ← Cross-references and governance metadata
├── ci/
│   └── validate_ata44.sh           ← CI validation script
├── schemas/
│   ├── cabin-system.schema.json    ← Cabin system component schema
│   ├── ife-ifx.schema.json         ← IFE/IFX system schema with DO-178C/DO-254 fields
│   ├── repair-record.schema.json   ← Repair record schema with cabin-specific fields
│   ├── damage-classification.schema.json
│   └── inspection.schema.json
├── 01-GENERAL/                     ← Scope, governance, definitions, taxonomy, regulatory matrix
├── 02-CABIN_LAYOUT_AND_FURNISHINGS/ ← Cabin layouts, seating, furnishings, load limits
├── 03-CABIN_ENVIRONMENTAL_AND_PRESSURIZATION/ ← Air distribution, temperature, HEPA specs
├── 04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT/ ← Oxygen inspection, deployment tests, module specs
├── 05-FIRE_DETECTION_AND_SUPPRESSION/ ← Fire detection, galley suppression, flammability limits
├── 06-GALLEY_AND_SERVICE_SYSTEMS/  ← Galley installation, electrical service, power specs
├── 07-IFE_IFX_AND_CABIN_CONNECTIVITY/ ← IFE/IFX overview, SW load, HIL test, baselines
├── 08-CABIN_CONTROLS_AND_INDICATIONS/ ← Control panels, indicators, annunciators
├── 09-WIRING_HARNESSES_AND_CONNECTIVITY/ ← Wiring inspection, EMC checks, cable specs
├── 10-NDT_AND_INSPECTION/          ← GVI, NDT for interior structures, inspection intervals
├── 11-QUALIFICATION_AND_TEST_PLANS/ ← Cabin system qualification plan, test matrix
├── 12-MATERIALS_M_AND_P_TRACEABILITY/ ← Material specs, CofC, M&P traceability
├── 13-NONCONFORMANCE_AND-DEVIATION/ ← NCR handling, engineering disposition, NCR template
├── 14-LIGHTNING_STRIKE_PROTECTION_AND_BONDING/ ← LSP for cabin elements, resistance limits
├── 15-SIDE-CAR_META/               ← Metadata templates for sidecars
│   └── templates/
│       ├── document.meta.yaml
│       └── proc_sidecar_template.meta.yaml
├── 16-DIAGRAMS_AND_REFERENCE_DATA/  ← Exploded views, IFE block diagrams, reference tables
└── 17-EXAMPLES_AND_RECORDS/        ← Example repair records, IFE SW baseline, test logs
```

## Key Requirements

### Repair Records (Schema: `repair-record.schema.json`)

All cabin system repairs must include the following cabin-specific fields:
- **Cabin Zone:** Zone identifier (e.g., forward, mid, aft, galley, lavatory)
- **Seat Row/Position:** For seating repairs (row number, seat position)
- **IFE/IFX Component IDs:** For IFE/IFX repairs (part numbers, serials, SW/HW baselines)
- **Fire Detection/Suppression Zone:** For fire system repairs
- **Oxygen Module IDs:** For oxygen system repairs (module P/N, S/N, pressure readings)
- **Material Flammability Certification:** For interior material replacements (test evidence per 25.853)
- **NDT File Hashes:** SHA-256 hashes of all NDT reports
- **Effectivity:** Manufacturer Serial Number (MSN) and cabin configuration applicability

### IFE/IFX Specific Requirements (Schema: `ife-ifx.schema.json`)

All IFE/IFX systems must document:
- **Software Baseline:** SW version, DO-178C design assurance level (DAL), certification evidence
- **Hardware Baseline:** HW version, DO-254 design assurance level (if applicable), qualification test evidence
- **Cyber Security Notes:** Isolation from aircraft critical systems, security assessment per DO-326A
- **HIL Test Plans:** Hardware-in-the-loop functional test procedures and acceptance criteria
- **COTS Acceptance:** For commercial-off-the-shelf components, documented acceptance rationale
- **Software Load Procedures:** Step-by-step SW installation and verification procedures
- **Rollback Procedures:** SW rollback procedures in case of load failure

### Materials & Processes (M&P) Requirements

All cabin interior materials must include:
- **Flammability Class:** Per FAA 14 CFR Part 25.853 (heat release, smoke density, toxicity)
- **Test Evidence:** Reference to flammability test reports (FAR 25 Appendix F)
- **Certificate of Conformance (CofC):** For all materials and adhesives
- **Lot/Batch Traceability:** Lot numbers for upholstery, composites, adhesives
- **Shelf Life:** For time-sensitive materials (adhesives, sealants, oxygen generators)
- **Cure Logs:** For composite repairs (temperature, pressure, dwell time)
- **Thermocouple Traces:** For bonded repairs requiring heat cure

### Fire & Safety Requirements

- **Fire Detection Zones:** Defined per cabin layout with sensor placement and coverage
- **Suppression Agent Specs:** Agent type, quantity, pressure, and expiry dates for galley suppression
- **Smoke Detection Acceptance:** Sensitivity thresholds and functional test procedures
- **Escape Path Lighting:** Functional test and photometric requirements
- **Emergency Slide/Raft Tests:** Deployment functional tests and service intervals

### Seating and Furnishings Requirements

- **Seat Attachment Loads:** Design limit loads and ultimate loads for seat tracks and fittings
- **Restraint Certification:** Reference to dynamic test evidence for seats and restraints (16g crash test)
- **Torque Retention:** Torque values for seat attachment bolts with retention verification
- **Fastener Substitution Table:** Approved fastener substitutions with torque adjustments

### Environmental & Cabin Air Requirements

- **HEPA Filter Spec:** Filtration efficiency, pressure drop, and replacement intervals
- **Ventilation Rates:** Air changes per hour (ACH) and fresh air flow rates
- **Air Quality Limits:** CO2, humidity, temperature limits, and monitoring requirements
- **Cabin Pressurization Effects:** Pressure differential effects on seals, doors, and fittings

### Wiring, EMC, and LSP Requirements

- **Wiring Separation Rules:** Minimum separation between power, signal, and IFE/IFX cables
- **Harness Routing:** Approved routing paths and support intervals
- **Connector Specs:** Connector types, mating cycles, and contact resistance limits
- **EMI/EMC Testing:** Per DO-160 for IFE/IFX equipment
- **Lightning Bonding Continuity:** DC resistance limits for conductive trims and IFE racks

### Inspection & NDT Requirements

- **NDT Methods:** Visual, ultrasonic, eddy current for interior composites and metallic fittings
- **Inspection Intervals:** Per maintenance program (A-check, C-check, S-check)
- **Numeric Acceptance Criteria:**
  - Delamination limits (area and depth)
  - Corrosion pit depth
  - Hinge play and bearing wear
  - Fire detector sensitivity
  - Oxygen pressure and leak rates

### Human Factors & Accessibility

- **Crew Interface Ergonomics:** Reach distances, operating forces, and visual cues
- **Passenger Reach/Forces:** Accessibility requirements for controls and stowage
- **Safety Signage and Placarding:** Location, size, and illumination requirements

### Data & Records

- **Repair Record Schema:** Must capture IFE SW/HW baselines, NDT file hashes, thermocouple logs, CofC, test evidence, and approvals
- **Sidecars:** Must include safety criticality, required approvers, and effectivity
- **Digital Product Passport (DPP):** All maintenance actions logged to DPP per ATA-95

### Nonconformance & Change Control

- **Engineering Disposition:** Required for life-support, fire, and pressurization interface changes
- **Flight-Critical Changes:** Require safety assessment and Airworthiness approval
- **NCR Process:** Documented nonconformance handling with root cause and corrective action

## Metadata Sidecar Requirements

Every PROC (procedure), DATA (data file), and DESC (description) file must have a corresponding `.meta.yaml` sidecar file containing:
- `schema_version`: "1.1"
- `id`: Unique document identifier
- `document`: Type, title, revision, effective_date
- `effectivity`: MSN range or "ALL"
- `safety`: Hazards and criticality level (if applicable)
- `approvals`: Engineering authority, status, date
- `traceability`: Source documents and cross-references
- `integrity`: SHA-256 checksum

Templates are provided in `15-SIDE-CAR_META/templates/`.

## Cross-References

- **ATA-20:** Standard Practices - Airframe (torque, fasteners, bonding, sealing)
- **ATA-21:** Air Conditioning (environmental control interface)
- **ATA-25:** Equipment/Furnishings (cabin interior design)
- **ATA-33:** Lights (cabin lighting systems)
- **ATA-35:** Oxygen (crew oxygen interface)
- **ATA-46:** Information Systems (IFE/IFX data integration)
- **ATA-51:** Standard Practices and Structures - General (composite repair methods)
- **ATA-53:** Fuselage (attachment interfaces)
- **ATA-05:** Time Limits & Maintenance Checks (inspection intervals)
- **ATA-95:** Digital Product Passport (traceability and data archival)

## Inspection Intervals

Refer to `10-NDT_AND_INSPECTION/DATA_44-10-03_Inspection-Intervals-And-Acceptance.csv` for the complete inspection schedule. Key intervals include:
- **General Visual Inspection (GVI):** Per A-check (typically 500-750 FH)
- **Detailed Inspection (DET):** Per C-check (typically 3000-4500 FH)
- **Fire Detector Functional Test:** Every 1000 FH or 12 months
- **Oxygen System Service:** Every 1200 FH or 12 months
- **IFE/IFX Software Integrity Check:** Per SW maintenance bulletin or 6000 FH
- **Seat Attachment Torque Check:** Every C-check (3000-4500 FH)
- **HEPA Filter Replacement:** Per manufacturer recommendation or 3000 FH

## Safety and Compliance

- **Regulatory Basis:** Complies with FAA Part 25.853 (flammability), 25.1439/1447/1450 (oxygen), and EASA CS-25 equivalents.
- **Material Standards:** MMPDS (Metallic Materials Properties Development and Standardization), AMS (Aerospace Material Specifications), BMS (Boeing Material Specifications), flammability per FAR 25 Appendix F.
- **IFE/IFX Software:** DO-178C design assurance with appropriate Design Assurance Level (DAL).
- **IFE/IFX Hardware:** DO-254 design assurance with appropriate assurance level.
- **Cyber Security:** DO-326A / ED-202A compliance for IFE/IFX network isolation.
- **NDT Standards:** ASTM E1444 (ultrasonic), ASTM E1417 (penetrant), AMS 2644 (magnetic particle).
- **Airworthiness Limitations:** All items classified as Airworthiness Limitation Items (ALIs) are cross-referenced in ATA-04 and are non-deferrable.

## Digital Product Passport Integration

All maintenance actions on cabin system components must be logged to the Digital Product Passport (ATA-95) including:
- IFE/IFX component serial numbers, SW/HW baselines
- Seat serial numbers, installation dates, and torque readings
- Oxygen module serial numbers, pressure readings, and service dates
- Fire detector serial numbers, sensitivity calibration data
- Material lot numbers, CofC references, and flammability certifications
- NDT report references and file hashes

## Revision History

| Revision | Date       | Author                     | Description                          |
|----------|------------|----------------------------|--------------------------------------|
| 1.0.0    | 2025-10-30 | Cabin Systems Engineering  | Initial release - Audit-ready structure |

---

**Document Control:**
- **Owner:** Cabin Systems Engineering
- **Review Board:** Airworthiness, Safety, Materials & Processes, IFE/IFX Engineering
- **Next Review:** 2026-10-30

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../../../README.md)
