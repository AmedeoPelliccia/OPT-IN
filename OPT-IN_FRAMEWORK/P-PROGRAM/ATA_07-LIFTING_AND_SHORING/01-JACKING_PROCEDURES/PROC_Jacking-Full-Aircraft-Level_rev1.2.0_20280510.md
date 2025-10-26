# Full Aircraft Jacking (Level Attitude)
**Revision:** 1.2.0  
**Effective Date:** 2028-05-10  
**Document ID:** PROC_Jacking-Full-Aircraft-Level_rev1.2.0_20280510

## Purpose
This procedure provides step-by-step instructions for jacking the complete AMPEL360 aircraft to a level attitude for maintenance operations.

## Scope
Applicable to all AMPEL360 aircraft (MSN: ALL) requiring full aircraft jacking for landing gear maintenance, weight and balance operations, or structural inspections.

## Critical Safety Warnings

⚠️ **DANGER:** 
- Improper jacking can result in catastrophic structural failure
- All personnel must maintain clear zones during lifting operations
- Any crew member has stop-work authority - immediate cessation upon call

## Prerequisites

### Personnel Requirements
- **Lead Technician:** 1 (certified for AMPEL360 jacking operations)
- **Jack Operators:** 3 minimum
- **Spotters:** 2 minimum
- **Weight & Balance Officer:** 1

### Environmental Limits
- Wind speed: ≤15 knots
- Temperature: -20°C to +50°C
- No active seismic advisory
- Indoor operations preferred; outdoor only with additional precautions

### Aircraft Configuration
- Fuel level: ≤10% capacity
- H₂ system: Inerted and depressurized
- Ballast: As calculated per DATA_Ballast-Planning-Tables_rev1.0.0_20280512.csv
- CG position: Within envelope per W&B calculation

### Ground Support Equipment
- Jacks (AP360-H003): 2 units, calibration current
- Jack (AP360-H004): 1 unit, calibration current
- Jack adapters and safety collars: As specified
- Floor load distribution mats: Per DATA_Shoring-Floor-Load-Mats_rev1.0.0_20280518.md
- Digital level/inclinometer: ±0.1° accuracy
- Anemometer
- Communication headsets: 1 per operator

## Procedure

### Phase 1: Preparation

**Step 1.1 - Documentation Review**
- [ ] Review CHK_Jacking-PrePost-Checklist_rev1.0.0_20280510.md
- [ ] Verify W&B calculation signed off
- [ ] Review DATA_Max-Jacking-Loads-vs-CG_rev1.1.0_20280428.csv for load limits
- [ ] Confirm all permits approved

**Step 1.2 - Aircraft Preparation**
- [ ] Verify fuel level ≤10%
- [ ] Confirm H₂ system inerted
- [ ] Install ballast as calculated (document positions and masses)
- [ ] Remove gear pins and safety devices
- [ ] Secure all loose items in cabin and cargo areas

**Step 1.3 - GSE Setup**
- [ ] Position floor mats per load calculation
- [ ] Place jacks at designated points (see FIG_Jacking-And-Shoring-Points_rev2.0.0_20280430.dxf)
- [ ] Install jack adapters with safety collars
- [ ] Verify all jack calibration dates (must be ≤30 days old)
- [ ] Test communication system between all operators

**Step 1.4 - Safety Brief**
- [ ] Brief all personnel on stop-work authority
- [ ] Establish clear zones (minimum 3m around aircraft)
- [ ] Review emergency procedures
- [ ] Assign spotter positions
- [ ] Designate emergency assembly point

### Phase 2: Jacking Operation

⚠️ **CAUTION:** All jacks must be raised in unison. Maximum differential: 25mm between any two jacks.

**Step 2.1 - Initial Lift**
- [ ] Lead Technician: Verify all personnel ready
- [ ] Record initial anemometer reading: ___ knots
- [ ] Begin simultaneous jack operation on Lead's command
- [ ] Raise all jacks 50mm
- [ ] STOP - Visual inspection of all jack points
- [ ] Check aircraft attitude: Pitch ___ °, Roll ___ °

**Step 2.2 - Progressive Lift**
- [ ] Continue lifting in 100mm increments
- [ ] After each increment:
  - Check jack loads against limits
  - Verify attitude remains within tolerance (±0.1°)
  - Confirm wind speed ≤15 knots
  - Visual inspection for structural deformation
- [ ] Repeat until landing gear clear of ground by required clearance

**Step 2.3 - Final Positioning**
- [ ] Achieve level attitude:
  - Pitch: 0.0° ±0.1°
  - Roll: 0.0° ±0.1°
- [ ] Fine-tune individual jacks as needed (document all adjustments)
- [ ] Install safety stands if prolonged maintenance required
- [ ] Record final jack heights and loads

**Step 2.4 - Lock and Secure**
- [ ] Engage all jack safety locks
- [ ] Install secondary safety devices
- [ ] Place warning placards at all entrances
- [ ] Establish restricted access zone

### Phase 3: Post-Jacking Verification

**Step 3.1 - Documentation**
- [ ] Record all jack loads (must be within limits from DATA_Max-Jacking-Loads-vs-CG)
- [ ] Document final aircraft attitude
- [ ] Log any deviations or observations
- [ ] Photograph jack setup (4 cardinal points minimum)

**Step 3.2 - Safety Verification**
- [ ] Confirm all safety devices installed
- [ ] Verify clear zones maintained
- [ ] Test communication system
- [ ] Brief maintenance personnel on jacked aircraft restrictions

### Phase 4: Lowering (Reverse Procedure)

**Step 4.1 - Preparation for Lowering**
- [ ] Remove all tools and equipment from aircraft
- [ ] Verify landing gear configuration correct
- [ ] Install gear pins and safety devices
- [ ] Clear all personnel from under aircraft
- [ ] Remove secondary safety stands

**Step 4.2 - Controlled Lowering**
- [ ] Lower all jacks simultaneously in 100mm increments
- [ ] Monitor attitude throughout descent
- [ ] Check for proper gear deployment and seating
- [ ] Continue until full aircraft weight on landing gear

**Step 4.3 - Post-Lowering Inspection**
- [ ] Visual inspection of all jack points for damage
- [ ] Check landing gear alignment and position
- [ ] Remove jacks and adapters
- [ ] Stow all GSE
- [ ] Complete CHK_Jacking-PrePost-Checklist (POST-LIFT section)

## Quality Checkpoints

| Checkpoint | Inspector Required | Sign-off |
| :--- | :--- | :--- |
| W&B calculation | Yes | |
| Pre-lift checklist complete | Yes | |
| Jack calibration current | Yes | |
| Final attitude within tolerance | Yes | |
| Post-lift inspection | Yes | |

## Emergency Procedures

**If aircraft becomes unstable:**
1. Lead Technician issues immediate STOP command
2. All operators freeze controls
3. Assess situation - do NOT attempt to correct without engineering evaluation
4. If safe, slowly lower aircraft to ground
5. Clear all personnel
6. Contact Structural Engineering before proceeding

**Recovery Procedure:** See PROC_Recovery-Off-Jacks_rev1.0.0_20280610.md

## References
- FIG_Jacking-And-Shoring-Points_rev2.0.0_20280430.dxf
- DATA_Max-Jacking-Loads-vs-CG_rev1.1.0_20280428.csv
- DATA_Ballast-Planning-Tables_rev1.0.0_20280512.csv
- CHK_Jacking-PrePost-Checklist_rev1.0.0_20280510.md
- STR-RPT-07-001 (Jacking Load Analysis)

## Approval

| Authority | Status | Date |
| :--- | :--- | :--- |
| Structural Engineering | Released | 2028-05-08 |
| Quality Assurance | Released | 2028-05-08 |
| Chief Engineer | Released | 2028-05-09 |

---
*This is a controlled document. Unauthorized modifications are prohibited.*
