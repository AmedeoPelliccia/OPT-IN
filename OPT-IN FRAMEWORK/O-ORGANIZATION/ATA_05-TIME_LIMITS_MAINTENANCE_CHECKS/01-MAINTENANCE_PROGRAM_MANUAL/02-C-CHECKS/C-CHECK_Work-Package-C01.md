# C-Check: Work Package C01
**Revision:** 1.0.0  
**Interval:** Every 4000 Flight Hours (FH) or 18 Months

---

## 1.0 General Information

### 1.1 Description
Comprehensive heavy maintenance check including all A-Check tasks plus detailed inspections, major component replacements, and system overhauls.

### 1.2 Applicability
All AMPEL360 aircraft.

### 1.3 Estimated Ground Time
10 days (240 work hours).

### 1.4 Interval
- **Basis:** Flight Hours (FH) or Calendar
- **Value:** 4000 FH OR 18 months (whichever comes first)
- **Tolerance:** +400 FH / -0 FH OR +30 days / -0 days

---

## 2.0 Prerequisites

### 2.1 Location
Heavy maintenance facility with:
- Climate-controlled hangar
- Multiple work stands and platforms
- NDT equipment available
- Component test benches
- Engineering support

### 2.2 Equipment
- Complete aircraft tooling set
- Specialized GSE (engine hoists, gear jacks, etc.)
- NDT equipment (ultrasonic, eddy current, X-ray)
- Calibrated torque wrenches and measuring tools
- Component test equipment
- Rigging and weighing equipment

### 2.3 Planning
- Long-lead parts ordered (minimum 90 days advance)
- All AD/SB compliance status verified
- Facility and personnel scheduled
- Detailed work plan prepared

---

## 3.0 Task List Summary

### 3.1 Incorporated Checks
This C-Check incorporates all tasks from:
- A-CHECK_Work-Package-A01 (1000 FH tasks)
- A-CHECK_Work-Package-A02 (2000 FH tasks)

### 3.2 Major C-Check Tasks

| Task ID | Description | Source | AMM Reference | Duration |
| :--- | :--- | :--- | :--- | :--- |
| C01-28-60-01 | Cryo Tank Insulation Detailed Inspection | MPD_TASK_28-60-01 | 28-60-00 | 8h |
| C01-32-10-01 | Landing Gear Overhaul and Detailed Inspection | MPD_TASK_32-10-01 | 32-10-00 | 24h |
| C01-53-00-01 | Fuselage Structural Inspection | ALS_INSP_53-00-01 | 53-00-00 | 16h |
| C01-27-20-01 | Flight Control System Rigging Check | MPD_TASK_27-20-01 | 27-20-00 | 12h |
| C01-24-45-01 | EWIS (Electrical Wiring) Detailed Inspection | ALS_INSP_24-45-01 | 24-45-00 | 20h |
| C01-29-20-01 | Hydraulic System Detailed Inspection | MPD_TASK_29-20-01 | 29-20-00 | 16h |
| C01-71-10-01 | Engine Detailed Inspection (On-Wing) | MPD_TASK_71-10-01 | 71-00-00 | 32h |
| C01-57-10-01 | Wing Structural Inspection (BWB) | ALS_INSP_57-10-01 | 57-10-00 | 24h |
| C01-22-10-01 | Autoflight System Functional Test | MPD_TASK_22-10-01 | 22-10-00 | 8h |
| C01-34-10-01 | Navigation System Calibration | MPD_TASK_34-10-01 | 34-10-00 | 6h |

---

## 4.0 Detailed Inspection Tasks

### 4.1 Task C01-28-60-01: Cryogenic Tank Inspection

**Objective:** Verify integrity of LH2 cryogenic storage system.

**Procedure:**
1. Depressurize and purge LH2 tank system
2. Remove insulation access panels
3. Perform visual inspection of vacuum jacket
4. Verify vacuum pressure: <10^-4 torr
5. Ultrasonic inspection of tank walls (thickness measurement)
6. Pressure test at 1.5x operating pressure
7. Leak test with helium mass spectrometer
8. Inspect all fittings and connections
9. Verify PRV calibration dates
10. Close access and restore system

**Safety Requirements:**
- H2 safety procedures in effect
- Area gas monitoring active
- Fire suppression systems ready
- Qualified cryogenic technicians only

**Acceptance Criteria:**
- Tank wall thickness >95% of original
- Vacuum pressure maintained <10^-4 torr
- No leaks detected at test pressure
- All PRVs within calibration date

**Estimated Duration:** 8 hours

---

### 4.2 Task C01-32-10-01: Landing Gear Overhaul

**Objective:** Detailed inspection and servicing of landing gear.

**Procedure:**
1. Jack aircraft per AMM procedures
2. Remove main landing gear wheels and brakes
3. Disassemble brake assemblies
4. Inspect brake discs for wear and cracks
5. NDT inspection of landing gear structural components
6. Replace all hydraulic seals
7. Lubricate all bearing surfaces
8. Check shock strut servicing (nitrogen and oil)
9. Inspect gear doors and actuators
10. Reassemble and perform operational check
11. Lower aircraft and perform final checks

**Special Tools:**
- Aircraft jacks (3x, 50-ton capacity)
- Brake disc measuring tools
- NDT equipment (magnetic particle)
- Nitrogen servicing cart
- Hydraulic servicing equipment

**Acceptance Criteria:**
- Brake disc thickness >minimum per AMM
- No cracks detected in gear structure
- Shock strut extension within limits
- All actuators operate smoothly
- Hydraulic system holds pressure

**Estimated Duration:** 24 hours

---

### 4.3 Task C01-53-00-01: Fuselage Structural Inspection

**Objective:** ALS-required inspection of fuselage primary structure.

**Procedure:**
1. Remove interior panels in inspection areas
2. Clean inspection areas
3. Visual inspection for cracks and corrosion
4. Eddy current inspection of fastener holes
5. Ultrasonic inspection of bond lines (composite areas)
6. Detailed inspection of door frames
7. Inspection of pressure bulkhead
8. Document all findings with photographs
9. Engineering review of any discrepancies
10. Restore interior panels

**Critical Areas:**
- Wing-to-fuselage attachment points
- Door frame corners
- Pressure bulkhead center
- Floor beam attachments

**NDT Methods:**
- Visual inspection (100% of accessible area)
- Eddy current (100% of critical fastener holes)
- Ultrasonic (bond lines and thickness)

**Acceptance Criteria:**
- No cracks >0.5mm in primary structure
- Corrosion level within allowable limits
- All fasteners tight and undamaged
- Bond lines show no delamination

**Estimated Duration:** 16 hours

---

### 4.4 Task C01-27-20-01: Flight Control Rigging

**Objective:** Verify and adjust flight control system rigging.

**Procedure:**
1. Remove control surface fairings
2. Disconnect flight control rods
3. Measure and record neutral positions
4. Check cable tensions
5. Verify actuator travel limits
6. Adjust rigging per AMM specifications
7. Perform control surface deflection checks
8. Verify no binding or interference
9. Reconnect all systems
10. Perform ground operational check
11. Perform duplicate inspection

**Measurement Points:**
- Aileron: ±25° deflection
- Elevator: +20° / -15° deflection
- Rudder: ±30° deflection
- Spoilers: 0° to 60° deflection

**Acceptance Criteria:**
- All control surfaces deflect to specified angles ±0.5°
- Cable tensions within AMM limits
- No binding throughout full travel
- Control forces within limits

**Quality:** Requires duplicate inspection

**Estimated Duration:** 12 hours

---

## 5.0 Component Replacements

### 5.1 Time-Limited Components (TLC)

| Component | Location | Interval | Part Number |
| :--- | :--- | :--- | :--- |
| Emergency Battery | ATA 24 | 4000 FH | 24-4000-001 |
| Oxygen Cylinder Hydro Test | ATA 35 | 18 months | N/A (test only) |
| Fire Extinguisher (Handheld) | ATA 26 | 18 months | 26-1800-001 |
| ELT Battery | ATA 23 | 18 months | 23-1800-005 |

### 5.2 Life-Limited Parts (LLP)

Review all LLPs for remaining life. Replace if due within next interval.

---

## 6.0 System Functional Tests

### 6.1 Flight Control System Test
1. Power up aircraft
2. Move all controls through full range
3. Verify computer self-tests pass
4. Check control law modes
5. Verify no fault messages

### 6.2 Electrical System Test
1. Power up all electrical buses
2. Verify voltage and frequency
3. Test generator load sharing
4. Test emergency power switching
5. Verify no electrical faults

### 6.3 Hydraulic System Test
1. Power up hydraulic systems
2. Verify system pressures
3. Operate all hydraulic actuators
4. Check for leaks
5. Verify fluid quantities

---

## 7.0 Special Requirements

### 7.1 Environmental Conditions
- Hangar temperature: 18°C to 25°C
- Humidity: 40% to 60% RH
- Dust-free environment for open systems
- Proper ventilation for all work

### 7.2 Safety Precautions
- Aircraft properly supported on jacks when required
- Lock-out/tag-out procedures for all systems
- FOD prevention program strictly enforced
- H2 safety procedures for cryogenic work
- High voltage safety procedures for electrical work

### 7.3 Quality Requirements
- All NDT performed by Level II or III certified inspectors
- All structural work inspected by licensed inspector
- All flight control work requires duplicate inspection
- All rigging requires functional test before close-up
- Final walk-around inspection before release

---

## 8.0 Completion Criteria

### 8.1 Task Completion
- [ ] All incorporated A-Check tasks completed
- [ ] All C-Check specific tasks completed
- [ ] All NDT inspections completed with reports
- [ ] All component replacements documented
- [ ] All system functional tests passed
- [ ] All discrepancies resolved or properly deferred
- [ ] All access panels closed and secured
- [ ] FOD walk completed

### 8.2 Documentation
- [ ] Maintenance tracking system updated
- [ ] All work orders closed
- [ ] NDT reports filed
- [ ] Component installation records updated
- [ ] Aircraft configuration updated
- [ ] Aircraft technical log entries completed
- [ ] AD/SB compliance status updated

### 8.3 Final Inspections
- [ ] Final walk-around inspection completed
- [ ] All systems operational
- [ ] All required tests completed
- [ ] Weight and balance current
- [ ] Aircraft cleaned (interior and exterior)

### 8.4 Release to Service
- [ ] Test flight completed (if required)
- [ ] All sign-offs completed
- [ ] Aircraft released back to operator

---

## 9.0 Sign-offs

### 9.1 Lead Mechanic
**Name:** ___________________  
**Certificate Number:** ___________________  
**Date:** ___________________  
**Signature:** ___________________

### 9.2 Structural Inspector
**Name:** ___________________  
**Certificate Number:** ___________________  
**Date:** ___________________  
**Signature:** ___________________

### 9.3 Avionics Technician
**Name:** ___________________  
**Certificate Number:** ___________________  
**Date:** ___________________  
**Signature:** ___________________

### 9.4 NDT Inspector
**Name:** ___________________  
**Level II/III Number:** ___________________  
**Date:** ___________________  
**Signature:** ___________________

### 9.5 Quality Assurance
**Name:** ___________________  
**Date:** ___________________  
**Signature:** ___________________

### 9.6 Release to Service
**Authorized Inspector:**  
**Name:** ___________________  
**Certificate Number:** ___________________  
**Date:** ___________________  
**Signature:** ___________________

---

*Refs: ATA 01 (MPD), ATA 04 (ALS), ATA 12 (Servicing), AMM, SRM*
