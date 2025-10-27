# C-Check Program Definition

**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Document ID:** C-CHECK_Program-Definition

---

## 1.0 Overview

### 1.1 Purpose
C-Checks are heavy maintenance checks that involve detailed inspections, major component replacements, and comprehensive system testing. They are more extensive than A-Checks and require specialized facilities.

### 1.2 Philosophy
C-Checks are designed to:
- Perform detailed inspections not feasible during line maintenance
- Replace time-limited components
- Accomplish major system overhauls
- Verify structural integrity
- Maintain long-term airworthiness

### 1.3 Interval Strategy
C-Checks are performed at intervals of:
- **C01:** Every 4000 FH (or 18 months, whichever comes first)

---

## 2.0 Check Characteristics

### 2.1 Duration
- **C01:** Approximately 10 days (240 hours)

### 2.2 Location Requirements
- Heavy maintenance facility
- Hangar with climate control
- Access to major GSE including lifts and stands
- NDT capability (X-ray, ultrasonic, eddy current)
- Component test benches
- Specialized tooling

### 2.3 Aircraft Configuration
- Requires extended downtime
- Major access panels removed
- Some systems removed for bench testing
- Interior partially removed for access
- Wings and empennage access required

---

## 3.0 Task Categories

### 3.1 Detailed Inspections
- Structural inspections with NDT
- Corrosion inspections
- Fatigue-critical area inspections
- Internal systems inspections
- Wire bundle inspections

### 3.2 Component Replacements
- Time-limited components (TLC)
- Life-limited parts (LLP)
- Components exceeding on-condition limits
- Scheduled replacements per MPD

### 3.3 System Overhauls
- Flight control system rigging
- Landing gear servicing and inspection
- APU detailed inspection
- Environmental system detailed check
- Avionics system calibration

### 3.4 Modifications
- Service Bulletins (SB) accomplishment
- Airworthiness Directives (AD) compliance
- Engineering Change Orders (ECO)
- Optional modifications

---

## 4.0 Work Packages

### 4.1 Available Packages

| Package | Interval | Description |
| :--- | :--- | :--- |
| [C-CHECK_Work-Package-C01](C-CHECK_Work-Package-C01.md) | 4000 FH / 18 months | Heavy maintenance check |

### 4.2 Package Content
C-Check packages contain:
- All applicable A-Check tasks
- Detailed inspection tasks
- Component replacement tasks
- System functional tests
- Structural inspections

---

## 5.0 Prerequisites

### 5.1 Aircraft Requirements
- Aircraft must arrive at heavy maintenance base
- All required AD/SB status known
- Parts availability confirmed (long-lead items ordered)
- Aircraft records complete and available

### 5.2 Facility Requirements
- Climate-controlled hangar
- Multiple work levels/stands available
- NDT equipment calibrated and available
- Component test benches operational
- Parts storage and logistics support
- Engineering support available

### 5.3 Personnel Requirements
- Multiple licensed aircraft maintenance technicians
- Avionics specialists
- NDT Level II or III certified inspectors
- Structural repair specialists
- Sheet metal workers
- Composite repair technicians
- Planning and quality assurance staff

---

## 6.0 Execution Process

### 6.1 Pre-Check (2-3 months before)
1. Review aircraft maintenance history
2. Identify all due ADs and SBs
3. Order long-lead parts and components
4. Schedule facility and personnel
5. Develop detailed work plan
6. Coordinate with operator on timing

### 6.2 Aircraft Arrival
1. Initial walk-around inspection
2. Document pre-existing damage
3. Position aircraft in hangar
4. De-energize systems per [AMM](../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/README.md)
5. Begin access panel removal
6. Set up work platforms

### 6.3 During Check
1. Execute tasks per work package
2. Daily coordination meetings
3. Parts expediting as needed
4. Engineering support for discrepancies
5. Quality inspections at hold points
6. Progress tracking and reporting

### 6.4 Post-Check
1. Functional system tests
2. Flight control rigging verification
3. Ground runs (engine, APU)
4. Close-up all access panels
5. Final walk-around inspection
6. Documentation review
7. Test flight (if required)

---

## 7.0 Quality Assurance

### 7.1 Hold Points
Required inspections before proceeding:
- Structural repairs before close-up
- Flight control rigging before close-up
- Fuel system work before close-up
- Electrical EWIS work before close-up

### 7.2 Independent Inspection
- All structural work
- All flight control work
- All safety-critical installations
- NDT results review

### 7.3 Records
Comprehensive documentation including:
- Work orders for all tasks
- NDT reports with images
- Component removal/installation records
- Test and calibration results
- Engineering disposition of discrepancies
- Final sign-off package

---

## 8.0 Special Considerations

### 8.1 LH2 Cryogenic System
C-Checks include detailed cryogenic tank inspection:
- Vacuum jacket integrity verification
- Insulation condition assessment
- Internal visual inspection (if accessible)
- Pressure test of tank system
- PRV calibration

### 8.2 Composite Structures
BWB (Blended Wing Body) composite structures require:
- Ultrasonic inspection of bond lines
- Moisture ingress checks
- Impact damage survey
- Lightning strike damage inspection

### 8.3 Avionics
- Software version verification
- Database updates
- BIT memory review
- Calibration of key sensors

---

## 9.0 Traceability

### 9.1 Source Tasks
C-Check tasks originate from:
- [ATA_01-MAINTENANCE_POLICY_INFORMATION](../../../../O-ORGANIZATION/ATA_01-MAINTENANCE_POLICY_INFORMATION/README.md): Maintenance Planning Document (MPD)
- [ATA_04-AIRWORTHINESS_LIMITATIONS](../../../../O-ORGANIZATION/ATA_04-AIRWORTHINESS_LIMITATIONS/README.md): Airworthiness Limitations Section (ALS)
- Airworthiness Directives (ADs)
- Service Bulletins (SBs)

### 9.2 Traceability Matrix
Task-to-source mapping maintained in:  
`../../02-TRACEABILITY_AND_COMPLIANCE/TRACE_Matrix-MPD-ALS-to-Checks.csv`

---

## 10.0 References

- MPM_Master-Document_rev1.0.0_20280701.md
- [ATA_01-MAINTENANCE_POLICY_INFORMATION](../../../../O-ORGANIZATION/ATA_01-MAINTENANCE_POLICY_INFORMATION/README.md): Maintenance Planning Document
- [ATA_04-AIRWORTHINESS_LIMITATIONS](../../../../O-ORGANIZATION/ATA_04-AIRWORTHINESS_LIMITATIONS/README.md): Airworthiness Limitations Section
- [ATA_12-SERVICING](../../../../P-PROGRAM/ATA_12-SERVICING/README.md): Servicing procedures
- [AMM (Aircraft Maintenance Manual)](../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/README.md)
- SRM (Structural Repair Manual)
- WDM (Wiring Diagram Manual)

---

*Part of the AMPEL360 Maintenance Program - ATA 05*

