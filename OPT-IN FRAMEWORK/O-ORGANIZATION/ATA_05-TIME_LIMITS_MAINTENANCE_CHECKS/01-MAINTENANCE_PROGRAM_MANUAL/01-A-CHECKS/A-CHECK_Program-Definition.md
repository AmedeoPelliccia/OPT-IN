# A-Check Program Definition

**Revision:** 1.0.0  
**Effective Date:** 2028-07-15  
**Document ID:** A-CHECK_Program-Definition

---

## 1.0 Overview

### 1.1 Purpose
A-Checks are the lightest and most frequent scheduled maintenance checks in the AMPEL360 maintenance program. They focus on operational verification, visual inspections, and routine servicing.

### 1.2 Philosophy
A-Checks are designed to:
- Maintain aircraft airworthiness between heavier checks
- Identify developing issues early
- Minimize aircraft downtime
- Be performed at line maintenance facilities

### 1.3 Interval Strategy
A-Checks follow a staggered interval pattern:
- **A01:** Every 1000 FH
- **A02:** Every 2000 FH (incorporates A01)

---

## 2.0 Check Characteristics

### 2.1 Duration
- **A01:** Approximately 12 hours
- **A02:** Approximately 16 hours

### 2.2 Location Requirements
- Line maintenance facility
- Access to standard GSE
- Basic tooling and consumables
- Qualified line maintenance personnel

### 2.3 Aircraft Configuration
- Can be performed overnight
- Minimal disassembly required
- No major access panels removal
- Systems can remain installed

---

## 3.0 Task Categories

### 3.1 Visual Inspections
- External walk-around inspection
- Landing gear visual inspection
- Control surface inspection
- Engine external inspection
- Fluid leak checks

### 3.2 Operational Checks
- Flight control system operation
- Electrical system functionality
- Hydraulic system operation
- Environmental control system
- Avionics systems BIT tests

### 3.3 Servicing
- Engine oil servicing
- Hydraulic fluid level check
- Potable water servicing
- Waste tank servicing
- Oxygen system servicing

### 3.4 Lubrication
- Flight control surface actuators
- Landing gear components
- Door hinges and mechanisms
- Access panel hinges

---

## 4.0 Work Packages

### 4.1 Available Packages

| Package | Interval | Description |
| :--- | :--- | :--- |
| [A-CHECK_Work-Package-A01](A-CHECK_Work-Package-A01.md) | 1000 FH | Basic A-Check |
| [A-CHECK_Work-Package-A02](A-CHECK_Work-Package-A02.md) | 2000 FH | Extended A-Check |

### 4.2 Package Hierarchy
- A02 incorporates all A01 tasks plus additional items
- When A02 is due, A01 is not separately performed

---

## 5.0 Prerequisites

### 5.1 Aircraft Requirements
- Aircraft must be in designated maintenance location
- All required maintenance access available
- Aircraft systems de-energized per AMM

### 5.2 Facility Requirements
- Adequate lighting
- Environmental conditions per AMM limits
- GSE availability verified
- Tool control program in place

### 5.3 Personnel Requirements
- Licensed aircraft maintenance technicians
- Type-rated on AMPEL360
- Current training records
- Adequate staffing per labor hour estimates

---

## 6.0 Execution Process

### 6.1 Pre-Check
1. Review aircraft maintenance records
2. Verify interval compliance
3. Order required parts and consumables
4. Schedule personnel and GSE
5. Coordinate with flight operations

### 6.2 During Check
1. Perform tasks per work package sequence
2. Document findings in aircraft technical log
3. Order additional parts if defects found
4. Coordinate with maintenance control
5. Update maintenance tracking system

### 6.3 Post-Check
1. Complete all sign-offs
2. Resolve or defer all findings per MEL
3. Update aircraft technical log
4. Update maintenance tracking system
5. Release aircraft to service

---

## 7.0 Quality Assurance

### 7.1 Independent Inspection
Selected critical tasks require independent inspection per AMM.

### 7.2 Duplicate Inspection
Dual inspection required for:
- Flight control rigging
- Safety-wired items
- Critical fastener installations

### 7.3 Records
All completed tasks must be documented with:
- Task ID
- Completion date
- Mechanic name and certificate number
- Inspector name and certificate number (if required)

---

## 8.0 Traceability

### 8.1 Source Tasks
All A-Check tasks originate from:
- [ATA 01 - MAINTENANCE POLICY INFORMATION](../../../../O-ORGANIZATION/ATA%2001%20-%20MAINTENANCE%20POLICY%20INFORMATION/README.md): Maintenance Planning Document (MPD)
- Selected ALS items requiring frequent inspection

### 8.2 Traceability Matrix
Task-to-source mapping maintained in:
`../../02-TRACEABILITY_AND_COMPLIANCE/TRACE_Matrix-MPD-ALS-to-Checks.csv`

---

## 9.0 References

- MPM_Master-Document_rev1.0.0_20280701.md
- [ATA 01 - MAINTENANCE POLICY INFORMATION](../../../../O-ORGANIZATION/ATA%2001%20-%20MAINTENANCE%20POLICY%20INFORMATION/README.md): Maintenance Planning Document
- [ATA 04 - AIRWORTHINESS LIMITATIONS](../../../../O-ORGANIZATION/ATA%2004%20-%20AIRWORTHINESS%20LIMITATIONS/README.md): Airworthiness Limitations Section
- [ATA 12 - SERVICING](../../../../P-PROGRAM/ATA%2012%20-%20SERVICING/README.md): Servicing procedures
- AMM (Aircraft Maintenance Manual)

---

*Part of the AMPEL360 Maintenance Program - ATA 05*
