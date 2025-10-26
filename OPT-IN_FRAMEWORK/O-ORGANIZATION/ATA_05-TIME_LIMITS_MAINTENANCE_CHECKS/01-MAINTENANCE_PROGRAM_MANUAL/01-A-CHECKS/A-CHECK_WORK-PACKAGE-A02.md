# A-Check: Work Package A02
**Revision:** 1.0.0  
**Interval:** Every 2000 Flight Hours (FH)

---

## 1.0 General Information

### 1.1 Description
Second check in the A-Check cycle. Incorporates all A01 tasks plus additional detailed inspections and system checks.

### 1.2 Applicability
All AMPEL360 aircraft.

### 1.3 Estimated Ground Time
16 hours.

### 1.4 Interval
- **Basis:** Flight Hours (FH)
- **Value:** 2000 FH
- **Tolerance:** +200 FH / -0 FH

---

## 2.0 Prerequisites

### 2.1 Location
Aircraft is in a designated maintenance location with adequate space and lighting.

### 2.2 Equipment
All required GSE is available per the task requirements:
- Standard hand tools
- Torque wrenches (calibrated)
- Oil servicing equipment
- Hydraulic servicing equipment
- Borescope for internal inspections
- Multimeter for electrical checks
- Pressure test equipment

### 2.3 Documentation
- [Aircraft Maintenance Manual (AMM)](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/README.md)
- Illustrated Parts Catalog (IPC)
- Aircraft technical log
- Previous A01 work package records
- Maintenance tracking system access

---

## 3.0 Task List

### 3.1 Tasks from A01 (Incorporated)
All tasks from A-CHECK_Work-Package-A01 are included. Refer to A01 task list.

### 3.2 Additional A02 Tasks

| Task ID | Description | Source (MPD/ALS) | AMM Reference | Sign-off (Name/Date) |
| :--- | :--- | :--- | :--- | :--- |
| A02-28-01 | Fuel System Leak Check and Filter Inspection | MPD_TASK_28-10-02 | [28-10-00](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/C2-CIRCULAR_CRYOGENIC_SYSTEMS/ATA_28-FUEL/README.md) | |
| A02-28-60-01 | LH2 Cryogenic System Visual Inspection | MPD_TASK_28-60-01 | [28-60-00](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/C2-CIRCULAR_CRYOGENIC_SYSTEMS/ATA_28-60-00_Prov-CRYOGENIC_H2_STORAGE_AND_DISTRIBUTION/README.md) | |
| A02-36-01 | Pneumatic System Pressure Check | MPD_TASK_36-10-01 | [36-10-00](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/E1-ENVIRONMENT/ATA_36-PNEUMATIC/README.md) | |
| A02-49-01 | APU Operational Check and Inspection | MPD_TASK_49-00-01 | [49-00-00](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/E2-ENERGY/ATA_49-AIRBORNE_AUXILIARY_POWER/README.md) | |
| A02-71-01 | Engine Compressor Borescope Inspection | MPD_TASK_71-00-01 | [71-00-00](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/P-PROPULSION/ATA_71-POWER_PLANT/README.md) | |
| A02-34-01 | Navigation System Self-Test | MPD_TASK_34-00-01 | [34-00-00](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/E3-ELECTRONICS/ATA_34-NAVIGATION/README.md) | |
| A02-22-01 | Autoflight System Operational Check | MPD_TASK_22-00-01 | [22-00-00](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/L1-LOGICS/ATA_22-AUTOFLIGHT/README.md) | |
| A02-35-01 | Oxygen System Pressure Check | MPD_TASK_35-00-01 | [35-00-00](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_35-OXYGEN/README.md) | |
| A02-38-01 | Water/Waste System Inspection | MPD_TASK_38-00-01 | [38-00-00](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/E1-ENVIRONMENT/ATA_38-WATER_WASTE/README.md) | |

---

## 4.0 Detailed Task Descriptions (A02 Specific)

### 4.1 Task A02-28-01: Fuel System Check
**Procedure:**
1. Visually inspect all fuel tanks for leaks  
2. Check fuel filter differential pressure  
3. Replace fuel filters if differential exceeds limits  
4. Drain fuel sump and check for contamination  
5. Document findings in technical log

**Acceptance Criteria:**
- No fuel leaks detected  
- Filter differential pressure < 15 psi  
- No water or contamination in sump sample

### 4.2 Task A02-28-60-01: LH2 Cryogenic System Inspection
**Procedure:**
1. Visually inspect cryogenic tank insulation  
2. Check vacuum jacket integrity indicators  
3. Inspect all LH2 line connections for frost/leaks  
4. Verify pressure relief valve operation  
5. Check boil-off rate against limits

**Safety Requirements:**
- Hydrogen safety training current  
- H2 detector active  
- Fire suppression system ready  
- Proper ventilation confirmed

**Acceptance Criteria:**
- Tank vacuum: < 1e-4 torr  
- No external frost  
- Boil-off rate: < 2% per day  
- All PRVs operational

### 4.3 Task A02-71-01: Engine Borescope Inspection
**Procedure:**
1. Remove borescope access plugs per Engine Manual  
2. Inspect compressor blades for FOD damage  
3. Inspect turbine blades for cracks or erosion  
4. Document findings with photographs  
5. Reinstall and torque access plugs

**Inspection Criteria:**
- No blade cracks > 1 mm  
- No missing blade material  
- Erosion within Engine Manual limits  
- No carbon buildup on combustor

---

## 5.0 Special Requirements

### 5.1 Environmental Conditions
- Temperature: 10°C to 35°C  
- Humidity: < 85% RH  
- Well-ventilated area for cryogenic work  
- H2 detection system active

### 5.2 Safety Precautions
- Aircraft properly chocked and grounded  
- Main battery disconnected for electrical work  
- "Maintenance in Progress" placards installed  
- FOD prevention measures in place  
- LH2 safety zone established (10 m radius)  
- Fire extinguishers positioned (Class D for H2)

### 5.3 Quality Requirements
- All torque values per [AMM](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/README.md) specifications  
- Calibrated tools used where specified  
- Independent inspection for safety-critical items  
- Duplicate inspection for flight controls and fuel system  
- Borescope inspection by engine-rated technician

---

## 6.0 Completion Criteria

### 6.1 Task Completion
- [ ] All A01 tasks completed and signed off  
- [ ] All A02-specific tasks completed and signed off  
- [ ] All findings documented in aircraft technical log  
- [ ] All deferred items properly documented per MEL  
- [ ] All tools and GSE accounted for (FOD check)  
- [ ] Borescope inspection photos uploaded to maintenance system

### 6.2 Documentation
- [ ] Maintenance tracking system updated  
- [ ] Work package sign-off completed  
- [ ] Aircraft technical log entry completed  
- [ ] Oil, fuel, and fluid quantities recorded  
- [ ] LH2 system parameters recorded

### 6.3 Release to Service
- [ ] Aircraft is serviceable or properly placarded  
- [ ] All access panels closed and secured  
- [ ] All borescope ports torqued and safety-wired  
- [ ] Aircraft exterior cleaned  
- [ ] LH2 safety zone cleared  
- [ ] Aircraft released back to service

---

## 7.0 Findings and Corrective Actions

### 7.1 Discrepancy Recording
Record all discrepancies in the aircraft technical log with:
- Description of discrepancy  
- ATA chapter reference  
- Part numbers (if applicable)  
- Corrective action taken or deferred  
- Borescope findings with photo references

### 7.2 Critical Findings
Immediate corrective action required for:
- Engine blade cracks  
- LH2 system leaks  
- Fuel system leaks  
- Hydraulic system leaks affecting flight controls

---

## 8.0 Sign-offs

### 8.1 Mechanic Certification
**Completed by:**
- Name: ___________________  
- Certificate Number: ___________________  
- Date: ___________________  
- Signature: ___________________

### 8.2 Engine Technician Certification (Borescope)
**Borescope inspection by:**
- Name: ___________________  
- Certificate Number: ___________________  
- Date: ___________________  
- Signature: ___________________

### 8.3 Inspector Certification
**Inspected by:**
- Name: ___________________  
- Certificate Number: ___________________  
- Date: ___________________  
- Signature: ___________________

### 8.4 Release to Service
**Released by:**
- Name: ___________________  
- Certificate Number: ___________________  
- Date: ___________________  
- Signature: ___________________

---

*Refs: [ATA_01-MAINTENANCE_POLICY_INFORMATION](../../../../O-ORGANIZATION/ATA_01-MAINTENANCE_POLICY_INFORMATION/README.md) (MPD), [ATA_04-AIRWORTHINESS_LIMITATIONS](../../../../O-ORGANIZATION/ATA_04-AIRWORTHINESS_LIMITATIONS/README.md) (ALS), [ATA_12-SERVICING](../../../../P-PROGRAM/ATA_12-SERVICING/README.md) (Servicing), [ATA_28-60_Prov](../../../../../T-TECHNOLOGY_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/C2-CIRCULAR_CRYOGENIC_SYSTEMS/ATA_28-60-00_Prov-CRYOGENIC_H2_STORAGE_AND_DISTRIBUTION/README.md) (LH2 Systems)*

