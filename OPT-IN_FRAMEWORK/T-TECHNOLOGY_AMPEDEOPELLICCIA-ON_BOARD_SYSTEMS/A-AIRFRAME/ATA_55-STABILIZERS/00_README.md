# ATA 55: Stabilizers

**CRITICAL SAFETY WARNING:** This chapter contains procedures and limits essential for flight safety. Stabilizers are primary flight control surfaces; any structural damage, improper repair, or actuator malfunction can have catastrophic consequences. Adherence to all limits, procedures, and inspection intervals is mandatory.

## Scope

This chapter covers the horizontal and vertical stabilizers, including their structural components, control surfaces (elevators, rudder, trim tabs), actuators, control mechanisms, and all associated hardware. It defines maintenance procedures, inspection requirements, structural repair methods, and qualification/test protocols for the AMPEL360 BWB stabilizer systems.

## BWB-Specific Considerations

- **LOAD PATH CRITICALITY:** The BWB configuration places unique loading on the empennage. All structural repairs must preserve the certified load path and require FEA validation for any change to primary structure.
- **CONTROL SURFACE AUTHORITY:** The stabilizer control surfaces are critical for pitch and yaw control in the blended-wing configuration. Actuator performance, hinge wear, and bearing clearances must be maintained within strict tolerances.
- **DAMAGE TOLERANCE:** Composite stabilizer structures follow a damage-tolerance philosophy. All inspections must use approved NDT methods, and repairs must be traceable to approved data per ATA-51.

## Governance

- **Limits:** All dimensional tolerances, hinge/bearing clearances, actuator end-play, torque values, and structural repair limits are mandatory limits and cannot be exceeded without engineering disposition.
- **Cross-Chapter Dependencies:**
  - **ATA-20:** Standard practices for torque, fasteners, sealants, and bonding.
  - **ATA-51:** Composite repair methods, scarf ratios, and material specifications.
  - **ATA-52:** Actuator interface standards and control rigging.
  - **ATA-53:** Fuselage attachment interface and load transfer verification.
- **Traceability:** All repairs, modifications, and inspections must be recorded with full traceability to Materials & Processes (M&P) certifications, NDT reports, and Digital Product Passport (DPP) entries per ATA-95.
- **Data Integrity:** All changes are validated by the CI script `ci/validate_ata55.sh`, which enforces schemas, naming conventions, and metadata sidecar requirements.

## Directory Structure

```
/ATA_55-STABILIZERS
├── 00_README.md                    ← This file
├── INDEX.meta.yaml                 ← Cross-references and governance metadata
├── ci/
│   └── validate_ata55.sh           ← CI validation script
├── schemas/
│   ├── repair-record.schema.json   ← Repair record schema with stabilizer-specific fields
│   ├── damage-classification.schema.json
│   ├── stabilizer-spec.schema.json
│   └── inspection.schema.json
├── 01-GENERAL/                     ← Scope, governance, definitions, taxonomy
├── 02-HORIZONTAL_STABILIZER/       ← H-Stab architecture, removal/installation, inspections
├── 03-VERTICAL_STABILIZER/         ← V-Stab architecture, removal/installation, rudder
├── 04-CONTROL_SURFACES_AND_COMMAND_SYSTEMS/ ← Control surface design, hinge/bearing inspections
├── 05-ACTUATORS_AND_CONTROL_MECHANISMS/     ← Actuator checks, cable routing, tensioning
├── 06-STRUCTURAL_REPAIRS/          ← Metallic and composite repair procedures (ref ATA-51)
├── 07-NDT_AND_INSPECTION/          ← GVI, ultrasonic, eddy current, dye penetrant
├── 08-LIGHTNING_STRIKE_PROTECTION_AND_BONDING/ ← LSP restoration, continuity testing
├── 09-QUALIFICATION_AND_TEST_PLANS/ ← Certification test plans, test matrix
├── 10-MATERIALS_M_AND_P_TRACEABILITY/ ← Material specs, CofC requirements, storage
├── 11-HUMAN_FACTORS_AND_ERGONOMICS/ ← Manual handling limits, access, operation forces
├── 12-NONCONFORMANCE_AND_DEVIATION/ ← NCR handling, engineering disposition
├── 13-ENVIRONMENTAL_AND_OPERATING_LIMITS/ ← Temperature, icing, corrosion limits
├── 14-DIAGRAMS_AND_REFERENCE_DATA/  ← Exploded views, drawings, reference tables
├── 15-SIDE-CAR_META/               ← Metadata templates for sidecars
│   └── templates/
│       ├── document.meta.yaml
│       └── proc_sidecar_template.meta.yaml
└── 16-EXAMPLES_AND_RECORDS/        ← Example repair records, test logs, NDT reports
```

## Key Requirements

### Repair Records (Schema: `repair-record.schema.json`)

All stabilizer repairs must include the following stabilizer-specific fields:
- **Spanwise Location:** Station number, span percentage, or spanwise coordinates
- **Control Surface ID:** Elevator/rudder/trim-tab part number and serial
- **Hinge/Bearing IDs:** Part numbers, serials, installation dates, and operating hours
- **Actuator Serials and Hours:** Actuator P/N, S/N, total hours, cycles
- **Trim-Tab Settings:** Pre-repair and post-repair rigging positions
- **NDT File Hashes:** SHA-256 hashes of all NDT reports (C-scan, UT, EC, PT)
- **Effectivity:** Manufacturer Serial Number (MSN) and configuration applicability

### Numeric Acceptance Criteria

The following numeric limits are defined in the DATA files and must be strictly enforced:
- **Hinge Wear:** Maximum allowable wear depth and surface finish
- **Bearing Clearance:** Radial and axial clearance limits
- **Actuator End-Play:** Linear and rotational end-play tolerances
- **Rivet Pull-Through:** Minimum edge distance and pull-through strength
- **Allowable Delamination/Voids:** Maximum area and depth for composite defects
- **Torque Retention:** Minimum and maximum torque values for all fasteners

### Composite Repair Requirements

All composite repairs must:
1. Reference ATA-51 standard practices for scarf ratios, ply orientation, and cure cycles
2. Require Finite Element Analysis (FEA) for any change to the primary load path
3. Include Material & Processes (M&P) certification for all repair materials
4. Document cure cycle parameters (temperature, pressure, vacuum, dwell time)
5. Perform post-repair NDT (ultrasonic C-scan minimum) with archived results

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

- **ATA-20:** Standard Practices - Airframe (torque values, fastener standards, bonding/sealing)
- **ATA-51:** Standard Practices and Structures - General (composite repair methods, FEA requirements)
- **ATA-52:** Doors (actuator interface standards)
- **ATA-53:** Fuselage (attachment fittings, load transfer verification)
- **ATA-27:** Flight Controls (rigging procedures, control law interaction)
- **ATA-05:** Time Limits & Maintenance Checks (scheduled inspection intervals)
- **ATA-95:** Digital Product Passport (traceability and data archival)

## Inspection Intervals

Refer to `07-NDT_AND_INSPECTION/DATA_55-07-04_Inspection-Intervals-And-Acceptance.csv` for the complete inspection schedule. Key intervals include:
- **General Visual Inspection (GVI):** Per A-check (typically 500-750 FH)
- **Detailed Inspection (DET):** Per C-check (typically 3000-4500 FH)
- **Ultrasonic/C-Scan:** Per S-check or as directed by CPCP (Corrosion Prevention and Control Program)
- **Hinge/Bearing Inspection:** Per manufacturer recommendations or 12,000 FH, whichever is sooner
- **Actuator Functional Test:** Every 6,000 FH or 24 months

## Safety and Compliance

- **Regulatory Basis:** Complies with FAA Part 25.491, 25.561, 25.571 (damage tolerance), and EASA CS-25 equivalents.
- **Material Standards:** MMPDS (Metallic Materials Properties Development and Standardization), AMS (Aerospace Material Specifications), BMS (Boeing Material Specifications).
- **NDT Standards:** ASTM E1444 (ultrasonic), ASTM E1417 (penetrant), ASTM E1444 (eddy current), AMS 2644 (magnetic particle).
- **Airworthiness Limitations:** All items in this chapter that are classified as Airworthiness Limitation Items (ALIs) are cross-referenced in ATA-04 and are non-deferrable.

## Digital Product Passport Integration

All maintenance actions on stabilizer components must be logged to the Digital Product Passport (ATA-95) including:
- Component serial numbers and part numbers
- Installation/removal dates and flight hours/cycles
- Inspection results and NDT report references
- Repair records with material lot numbers and CofC references
- Actuator calibration data and functional test results

## Revision History

| Revision | Date       | Author                     | Description                          |
|----------|------------|----------------------------|--------------------------------------|
| 1.0.0    | 2028-11-01 | Structures Engineering     | Initial release - Audit-ready structure |

---

**Document Control:**
- **Owner:** Structures Engineering / Flight Controls Engineering
- **Review Board:** Airworthiness, Safety, Systems Integration
- **Next Review:** 2029-11-01

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../../../README.md)
