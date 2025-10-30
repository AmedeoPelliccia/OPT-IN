# ATA 27: Flight Controls System for Aerodynamic Manipulation

**CRITICAL SAFETY WARNING:** This chapter contains procedures and limits essential for flight safety. Flight control systems are primary safety-critical systems; any software error, actuator malfunction, sensor failure, or improper rigging can have catastrophic consequences. Adherence to all limits, procedures, inspection intervals, and control law validation requirements is mandatory.

## Scope

This chapter covers the complete flight control system for aerodynamic manipulation, including primary and secondary control surfaces, electro-hydraulic and electro-mechanical actuators, fly-by-wire (FBW) systems, flight control computers (FCC), control laws, autopilot functions, sensors and transducers, mechanical linkages, cables, and all associated hardware. It defines maintenance procedures, inspection requirements, actuator qualification, control law validation, software/hardware traceability, and test protocols for the AMPEL360 BWB flight control systems.

## BWB-Specific Considerations

- **DISTRIBUTED CONTROL ARCHITECTURE:** The BWB configuration requires distributed control surfaces across the trailing edge for pitch, roll, and yaw control. Control surface coordination, redundancy management, and graceful degradation are critical for flight safety.
- **FLY-BY-WIRE CRITICALITY:** All primary flight controls are fly-by-wire with no mechanical reversion. Control law integrity, software validation (DO-178C Level A), hardware qualification (DO-254 Level A), and multi-channel redundancy are mandatory.
- **AEROELASTIC COUPLING:** Control surface deflections can induce aeroelastic effects in the blended-wing structure. All structural repairs or modifications affecting stiffness must include aeroelastic analysis and flight control law validation.
- **ACTUATOR LOAD PATH:** Actuator mounts transfer high loads into the wing structure. Any repair or modification to actuator attachment fittings requires FEA validation and load path verification.
- **SENSOR REDUNDANCY:** Flight control sensors (AoA, rate gyros, accelerometers, position feedback) are critical for control law stability. Multi-channel voting, dissimilarity protection, and fault detection are mandatory.

## Governance

- **Limits:** All control surface deflection limits, actuator rate limits, hinge moment limits, sensor accuracy tolerances, rigging tolerances, torque values, control law parameters, and software/hardware baselines are mandatory limits and cannot be exceeded without engineering disposition and airworthiness approval.
- **Cross-Chapter Dependencies:**
  - **ATA-20:** Standard practices for torque, fasteners, sealants, and bonding.
  - **ATA-22:** Auto Flight (autopilot integration, mode control, flight envelope protection).
  - **ATA-24:** Electrical Power (power supply requirements, redundancy, load analysis).
  - **ATA-29:** Hydraulic Power (hydraulic supply, pressure requirements, contamination control).
  - **ATA-31:** Indicating/Recording Systems (cockpit displays, control position indication, fault annunciation).
  - **ATA-42:** Integrated Modular Avionics (computing platform, software integration, partitioning).
  - **ATA-51:** Standard Practices and Structures - General (composite repair methods for control surfaces).
  - **ATA-55:** Stabilizers (control surface interface, rigging coordination).
  - **ATA-57:** Wings (control surface interface, actuator mounting).
- **Traceability:** All repairs, modifications, software loads, and inspections must be recorded with full traceability to Materials & Processes (M&P) certifications, NDT reports, software baselines, hardware configuration items, and Digital Product Passport (DPP) entries per ATA-95.
- **Data Integrity:** All changes are validated by the CI script `ci/validate_ata27.sh`, which enforces schemas, naming conventions, and metadata sidecar requirements.

## Directory Structure

```
/ATA_27-FLIGHT_CONTROLS_SYSTEM_FOR_AERODYNAMIC_MANIPULATION
├── 00_README.md                    ← This file
├── INDEX.meta.yaml                 ← Cross-references and governance metadata
├── ci/
│   └── validate_ata27.sh           ← CI validation script
├── schemas/
│   ├── repair-record.schema.json   ← Repair record schema with flight control-specific fields
│   ├── damage-classification.schema.json
│   ├── flight-control.schema.json
│   ├── actuator.schema.json
│   └── control-law.schema.json
├── 01-GENERAL/                     ← Scope, governance, definitions, taxonomy, regulatory compliance
├── 02-CONTROL_SURFACES/            ← Control surface types, removal/installation, balance, freeplay
├── 03-ACTUATORS_AND_SERVO_SYSTEMS/ ← Actuator types, fail-safe, removal, bench test, specs, life limits
├── 04-CABLES_LINKS_AND_MECHANICAL_INTERFACES/ ← Cable inspection, tensioning, pulley checks, rod ends
├── 05-ELECTRICAL_CONTROLS_AND_FCC/ ← FCC architecture, firmware load, redundancy matrix
├── 06-FLIGHT_CONTROL_LAWS_AND_AUTOPILOT/ ← Control laws, mode descriptions, SIL testing, test matrix
├── 07-SENSORS_AND_TRANSDUCERS/     ← AoA sensor calibration, position sensors, specs, intervals
├── 08-FLIGHT-SAFETY_AND_FAILURE_MODES/ ← Failure modes, FMEA, redundancy, degradation strategy
├── 09-NDT_AND-INSPECTION/          ← GVI, NDT for actuators/linkages, inspection intervals
├── 10-QUALIFICATION_AND_TEST_PLANS/ ← Actuator qualification, control law verification, test matrix
├── 11-LIGHTNING-STRIKE_PROTECTION_AND_BONDING/ ← LSP restoration, continuity testing, materials, resistance
├── 12-MATERIALS_M_AND_P_TRACEABILITY/ ← Actuator materials, CofC, traceability, storage
├── 13-NONCONFORMANCE_AND-DEVIATION/ ← NCR handling, engineering disposition, NCR template
├── 14-DIAGRAMS_AND_REFERENCE_DATA/  ← Control system block diagram, actuator drawings, reference tables
├── 15-SIDE-CAR_META/               ← Metadata templates for sidecars
│   └── templates/
│       ├── document.meta.yaml
│       └── proc_sidecar_template.meta.yaml
└── 16-EXAMPLES_AND_RECORDS/        ← Example repair records, functional test logs, NDT reports
```

## Key Requirements

### Repair Records (Schema: `repair-record.schema.json`)

All flight control system repairs must include the following specific fields:
- **Control Surface ID:** Part number, serial, position (left/right wing, inboard/outboard)
- **Actuator ID:** Part number, serial, installation date, operating hours, cycles
- **Software Baseline:** FCC software version, checksum, DO-178C evidence
- **Hardware Configuration:** FCC hardware part number, serial, DO-254 evidence
- **Rigging Data:** Pre-repair and post-repair control positions, freeplay, balance
- **Hinge/Bearing IDs:** Part numbers, serials, installation dates, wear measurements
- **Sensor Calibration:** Sensor part number, serial, calibration date, accuracy verification
- **NDT File Hashes:** SHA-256 hashes of all NDT reports (UT, EC, PT, X-ray)
- **Functional Test Results:** Actuator step response, rate, hysteresis, stall load
- **Effectivity:** Manufacturer Serial Number (MSN) and configuration applicability

### Numeric Acceptance Criteria

The following numeric limits are defined in the DATA files and must be strictly enforced:
- **Control Surface Freeplay:** Maximum allowable freeplay (degrees) at hinge centerline
- **Control Surface Balance:** Mass balance limits (kg·mm) and inertia limits (kg·mm²)
- **Actuator Torque:** Minimum and maximum stall torque (N·m)
- **Actuator Backlash:** Maximum linear backlash (mm) or rotational backlash (degrees)
- **Actuator Step Response:** Maximum response time (ms) for commanded step input
- **Actuator Hysteresis:** Maximum position error (% of full stroke) during reversal
- **Bearing Wear:** Maximum wear depth (mm) and surface finish (Ra, μm)
- **Cable Tension:** Nominal tension (N) ± tolerance percentage
- **Torque Retention:** Minimum and maximum torque values (N·m) for all fasteners
- **Hydraulic Leakage:** Maximum allowable leakage rate (mL/hr) at operating pressure
- **Sensor Accuracy:** Position sensor accuracy (% FS), AoA sensor accuracy (degrees)
- **Control Law Stability Margins:** Gain margin (dB), phase margin (degrees)

### Software and Hardware Baseline Control

All flight control software and hardware must:
1. Be developed and verified per DO-178C (software) and DO-254 (hardware) to Design Assurance Level A (DAL-A)
2. Maintain full traceability from requirements through code/hardware to verification evidence
3. Include SHA-256 checksums for all loadable software modules
4. Document hardware configuration items (HWCI) with part numbers, serials, and configuration baseline
5. Perform regression testing for any software or hardware change
6. Maintain Software Accomplishment Summary (SAS) and Hardware Accomplishment Summary (HAS)

### Actuator Qualification Requirements

All actuators must:
1. Complete qualification test plan per `10-QUALIFICATION_AND_TEST_PLANS/TESTPLAN_27-10-01`
2. Demonstrate endurance life (minimum cycles) without degradation
3. Pass step response, frequency response, stall load, and thermal tests
4. Validate redundancy and fail-safe modes (jam detection, load limiting)
5. Document Material & Processes (M&P) certification for all materials
6. Perform post-test NDT (X-ray, UT) with archived results

### Control Law Validation Requirements

All control laws must:
1. Complete validation test plan per `10-QUALIFICATION_AND_TEST_PLANS/TESTPLAN_27-10-02`
2. Demonstrate stability margins (gain and phase) across flight envelope
3. Pass Software-in-the-Loop (SIL) and Hardware-in-the-Loop (HIL) testing
4. Validate handling qualities per MIL-STD-1797 or equivalent
5. Demonstrate graceful degradation for all credible failure scenarios
6. Document FMEA and fault tree analysis for all control modes

### Composite Repair Requirements (Control Surfaces)

All composite control surface repairs must:
1. Reference ATA-51 standard practices for scarf ratios, ply orientation, and cure cycles
2. Require Finite Element Analysis (FEA) for any change to the load path or stiffness
3. Validate aeroelastic effects and control law interaction post-repair
4. Include Material & Processes (M&P) certification for all repair materials
5. Document cure cycle parameters (temperature, pressure, vacuum, dwell time)
6. Perform post-repair NDT (ultrasonic C-scan minimum) with archived results

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
- `training_required`: Personnel qualification requirements for safety-critical tasks

Templates are provided in `15-SIDE-CAR_META/templates/`.

## Cross-References

- **ATA-20:** Standard Practices - Airframe (torque values, fastener standards, bonding/sealing)
- **ATA-22:** Auto Flight (autopilot integration, mode control, flight envelope protection)
- **ATA-24:** Electrical Power (power supply requirements, redundancy, load analysis)
- **ATA-29:** Hydraulic Power (hydraulic supply, pressure requirements, contamination control)
- **ATA-31:** Indicating/Recording Systems (cockpit displays, control position indication, fault annunciation)
- **ATA-42:** Integrated Modular Avionics (computing platform, software integration, partitioning)
- **ATA-51:** Standard Practices and Structures - General (composite repair methods for control surfaces)
- **ATA-55:** Stabilizers (control surface interface, rigging coordination)
- **ATA-57:** Wings (control surface interface, actuator mounting)
- **ATA-05:** Time Limits & Maintenance Checks (scheduled inspection intervals)
- **ATA-95:** Digital Product Passport (traceability and data archival)

## Inspection Intervals

Refer to `09-NDT_AND-INSPECTION/DATA_27-09-03_Inspection-Intervals-And-Acceptance.csv` for the complete inspection schedule. Key intervals include:
- **General Visual Inspection (GVI):** Per A-check (typically 500-750 FH)
- **Detailed Inspection (DET):** Per C-check (typically 3000-4500 FH)
- **Actuator Functional Test:** Every 3,000 FH or 12 months, whichever is sooner
- **Hinge/Bearing Inspection:** Per manufacturer recommendations or 12,000 FH, whichever is sooner
- **Cable Tension Check:** Every 6,000 FH or 24 months
- **Control Law Validation:** After any software change or major hardware replacement
- **Sensor Calibration:** Per manufacturer recommendations or 12 months, whichever is sooner

## Safety and Compliance

- **Regulatory Basis:** Complies with FAA Part 25.671, 25.672, 25.675, 25.677, 25.679, 25.683, 25.685, 25.697, 25.703, 25.1309, 25.1351, and EASA CS-25 equivalents.
- **Software Standards:** DO-178C Design Assurance Level A (DAL-A), DO-278A (ground-based systems).
- **Hardware Standards:** DO-254 Design Assurance Level A (DAL-A).
- **System Safety:** ARP4754A (development process), ARP4761 (safety assessment).
- **Environmental Qualification:** DO-160 (environmental conditions and test procedures).
- **Material Standards:** MMPDS (Metallic Materials Properties Development and Standardization), AMS (Aerospace Material Specifications), BMS (Boeing Material Specifications).
- **NDT Standards:** ASTM E1444 (ultrasonic), ASTM E1417 (penetrant), ASTM E1444 (eddy current), AMS 2644 (magnetic particle).
- **Airworthiness Limitations:** All items in this chapter that are classified as Airworthiness Limitation Items (ALIs) are cross-referenced in ATA-04 and are non-deferrable.

## Digital Product Passport Integration

All maintenance actions on flight control system components must be logged to the Digital Product Passport (ATA-95) including:
- Component serial numbers and part numbers (control surfaces, actuators, FCCs, sensors)
- Installation/removal dates and flight hours/cycles
- Inspection results and NDT report references
- Repair records with material lot numbers and CofC references
- Actuator functional test results and calibration data
- Software baseline and checksum for all FCC loads
- Hardware configuration item (HWCI) baseline
- Control law validation test results

## Revision History

| Revision | Date       | Author                     | Description                          |
|----------|------------|----------------------------|--------------------------------------|
| 1.0.0    | 2025-10-30 | Flight Controls Engineering | Initial release - Audit-ready structure |

---

**Document Control:**
- **Owner:** Flight Controls Engineering / Avionics Engineering
- **Review Board:** Airworthiness, Safety, Systems Integration, Software Quality Assurance
- **Next Review:** 2026-10-30

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../../../README.md)
