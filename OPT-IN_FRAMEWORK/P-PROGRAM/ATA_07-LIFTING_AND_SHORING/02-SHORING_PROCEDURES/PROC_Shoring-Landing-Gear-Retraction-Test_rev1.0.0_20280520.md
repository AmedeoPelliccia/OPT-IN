# Landing Gear Retraction Test Shoring Procedure
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Document ID:** PROC_Shoring-Landing-Gear-Retraction-Test_rev1.0.0_20280520

## Purpose
This procedure defines the shoring requirements and steps for conducting landing gear retraction tests with the aircraft jacked.

## Scope
Applicable to all AMPEL360 aircraft (MSN: ALL) during landing gear system functional testing, rigging verification, or following landing gear system maintenance.

## Critical Safety Warnings

⚠️ **DANGER:**
- Moving landing gear components can cause severe injury
- Hydraulic system pressure: 3000 psi - potential for component rupture
- Retracting landing gear removes aircraft stability - proper shoring is MANDATORY

⚠️ **WARNING:**
- Ensure all personnel clear of gear bay areas during retraction/extension cycles
- Emergency landing gear extension may be explosive - maintain clear zones

## Prerequisites

### Personnel Requirements
- **Test Director:** 1 (certified for systems testing)
- **Hydraulic Systems Technician:** 1
- **Electrical Systems Technician:** 1
- **Safety Observer:** 1 minimum

### Aircraft Configuration
- Aircraft jacked per PROC_Jacking-Full-Aircraft-Level_rev1.2.0_20280510.md
- Fuel: ≤10%
- H₂ system: Inerted
- Hydraulic system: Serviced and pressure-checked
- Electrical system: Ground power connected

### Ground Support Equipment
- Safety shoring stands (AP360-SHORE-001): 4 units minimum
- Hydraulic test panel
- Landing gear safety pins and flags
- Protective barriers for gear bay access

## Shoring Configuration

### Primary Shoring Points

**Forward Fuselage (Station 45)**
- Location: Forward pressure bulkhead support frame
- Shoring Stand: AP360-SHORE-001
- Load Rating: 15,000 kg
- Mat Required: Type B per DATA_Shoring-Floor-Load-Mats_rev1.0.0_20280518.md

**Aft Fuselage Port (Station 112)**
- Location: Aft pressure bulkhead attachment
- Shoring Stand: AP360-SHORE-001
- Load Rating: 15,000 kg
- Mat Required: Type B

**Aft Fuselage Starboard (Station 112)**
- Location: Aft pressure bulkhead attachment
- Shoring Stand: AP360-SHORE-001
- Load Rating: 15,000 kg
- Mat Required: Type B

**Tail Support (Station 145)**
- Location: Tail cone structural frame
- Shoring Stand: AP360-SHORE-001 (light duty acceptable)
- Load Rating: 5,000 kg
- Mat Required: Type C

### Shoring Installation Sequence

**Step 1: Verify Aircraft Jacked**
- [ ] Confirm aircraft on jacks per jacking procedure
- [ ] All landing gear clear of ground
- [ ] Aircraft attitude level (±0.1°)

**Step 2: Position Primary Shoring**
- [ ] Install forward fuselage shoring stand
  - Position at Station 45
  - Adjust height to 25mm below contact point
  - Verify floor mat properly positioned
- [ ] Install aft fuselage port shoring stand
  - Position at Station 112 (port side)
  - Adjust height to 25mm below contact point
  - Verify floor mat properly positioned
- [ ] Install aft fuselage starboard shoring stand
  - Position at Station 112 (starboard side)
  - Adjust height to 25mm below contact point
  - Verify floor mat properly positioned

**Step 3: Position Tail Support**
- [ ] Install tail support shoring stand
  - Position at Station 145
  - Adjust height to contact (no preload)
  - Verify floor mat properly positioned

**Step 4: Verify Shoring Stability**
- [ ] Check all shoring stands vertical (±2°)
- [ ] Verify no gaps between shoring and structure
- [ ] Install locking pins on all adjustable stands
- [ ] Mark shoring positions on floor for reference

## Landing Gear Retraction Test Procedure

### Phase 1: Pre-Test Preparation

**Step 1.1 - Safety Verification**
- [ ] Verify all shoring stands installed per above
- [ ] Install protective barriers around gear bays
- [ ] Clear all personnel from gear bay areas
- [ ] Post "LANDING GEAR TEST IN PROGRESS" signs
- [ ] Brief all personnel on emergency procedures

**Step 1.2 - System Checks**
- [ ] Hydraulic system pressure: ___ psi (target: 3000 psi)
- [ ] Electrical system: Ground power ON, voltage within limits
- [ ] Landing gear position indicators: All three green (extended)
- [ ] Remove landing gear safety pins
- [ ] Store pins with red flags visible

### Phase 2: Retraction Test

⚠️ **CAUTION:** Monitor aircraft attitude continuously during gear retraction. Any significant shift indicates shoring inadequacy - ABORT TEST.

**Step 2.1 - Nose Gear Retraction**
- [ ] Test Director: Clear all personnel from nose area
- [ ] Safety Observer: Confirm clear zone
- [ ] Pilot/Operator: Select nose gear UP
- [ ] Monitor retraction sequence:
  - Doors open: ☐
  - Gear retracts: ☐
  - Gear locked up: ☐
  - Doors close: ☐
- [ ] Verify nose gear position indicator: Red light (retracted)
- [ ] Check aircraft attitude: No change >0.2°

**Step 2.2 - Main Gear Retraction (Simultaneous)**
- [ ] Test Director: Clear all personnel from main gear areas
- [ ] Safety Observer: Confirm clear zones both sides
- [ ] Pilot/Operator: Select main gear UP
- [ ] Monitor retraction sequence:
  - Doors open: ☐
  - Gears retract: ☐
  - Gears locked up: ☐
  - Doors close: ☐
- [ ] Verify main gear position indicators: Both red (retracted)
- [ ] Check aircraft attitude: No change >0.2°
- [ ] Verify shoring stands maintaining position (no load shift)

### Phase 3: Extension Test

**Step 3.1 - Normal Extension**
- [ ] Pilot/Operator: Select landing gear DOWN
- [ ] Monitor extension sequence (all three gears):
  - Doors open: ☐
  - Gears extend: ☐
  - Gears locked down: ☐
  - Doors close: ☐
- [ ] Verify all three gear position indicators: Green (extended and locked)
- [ ] Visual verification: All gear down locks engaged

**Step 3.2 - Emergency Extension Test (if required)**
- [ ] Retract landing gear per Step 2.1 and 2.2
- [ ] Pilot/Operator: Initiate emergency landing gear extension
  - Method: [Specify: pneumatic/free-fall/manual]
- [ ] Monitor emergency extension sequence
- [ ] Verify all gear extended and locked
- [ ] Check for any damage or anomalies

### Phase 4: Post-Test

**Step 4.1 - System Shutdown**
- [ ] Verify all landing gear extended and locked
- [ ] Install landing gear safety pins (all three gears)
- [ ] Display red flags on all pins
- [ ] Hydraulic system: Depressurize or secure per SOP
- [ ] Electrical system: Can remain on for subsequent tests

**Step 4.2 - Shoring Removal (if lowering aircraft)**
- [ ] Verify landing gear weight-bearing capability
- [ ] Remove tail support stand
- [ ] Remove aft fuselage stands (port and starboard)
- [ ] Remove forward fuselage stand
- [ ] Verify aircraft stable on jacks only
- [ ] Proceed with lowering per jacking procedure

**Step 4.3 - Documentation**
- [ ] Record all retraction/extension times
- [ ] Document any anomalies or discrepancies
- [ ] Photograph gear position indicators (for record)
- [ ] Complete test data sheet
- [ ] Sign off test completion

## Quality Checkpoints

| Checkpoint | Inspector Required | Sign-off |
| :--- | :--- | :--- |
| Shoring installation verified | Yes | |
| Hydraulic system pressure check | Yes | |
| Gear position indicators function | Yes | |
| Emergency extension successful | Yes | |
| No structural deformation observed | Yes | |

## Acceptance Criteria

**Retraction Test Passes if:**
- All landing gear retract and extend smoothly
- Position indicators function correctly
- No hydraulic leaks observed
- No unusual noises or vibrations
- Aircraft attitude remains stable throughout
- All gear locks engage properly

**Test Fails if:**
- Any gear fails to retract or extend fully
- Position indicators malfunction
- Hydraulic leaks detected
- Excessive noise or vibration
- Aircraft attitude shifts >0.2°
- Any gear lock fails to engage

## Emergency Procedures

**If aircraft becomes unstable during test:**
1. Test Director: STOP ALL OPERATIONS immediately
2. Extend all landing gear immediately (emergency if needed)
3. Do NOT remove shoring
4. Assess aircraft attitude and shoring integrity
5. Contact Structural Engineering before proceeding
6. If unsafe to continue, prepare for emergency aircraft lowering

**If hydraulic leak occurs:**
1. Depressurize hydraulic system immediately
2. Evacuate personnel from leak area
3. Contain fluid spillage
4. Do NOT attempt gear cycling until leak repaired

## References
- PROC_Jacking-Full-Aircraft-Level_rev1.2.0_20280510.md
- DATA_Shoring-Floor-Load-Mats_rev1.0.0_20280518.md
- AMM Chapter 32 - Landing Gear
- FIG_Jacking-And-Shoring-Points_rev2.0.0_20280430.dxf

## Approval

| Authority | Status | Date |
| :--- | :--- | :--- |
| Systems Engineering | Released | 2025-10-27 |
| Structural Engineering | Released | 2025-10-27 |
| Quality Assurance | Released | 2025-10-27 |

---
*This is a controlled document. Unauthorized modifications are prohibited.*
