# Main Battery Pack Hoisting Procedure
**Revision:** 1.0.0  
**Effective Date:** 2028-06-05  
**Document ID:** PROC_Hoisting-Main-Battery-Pack_rev1.0.0_20280605

## Purpose
This procedure provides step-by-step instructions for safely removing and installing the main battery pack from the AMPEL360 aircraft.

## Scope
Applicable to all AMPEL360 aircraft (MSN: ALL) during battery pack replacement, maintenance, or testing.

## Critical Safety Warnings

⚠️ **DANGER:**
- Battery pack contains high voltage (up to 800VDC) - risk of electrocution
- Battery pack mass: 3,000 kg - improper rigging can cause crush injuries or death
- Lithium-ion cells present fire and explosion hazard if damaged

⚠️ **WARNING:**
- All electrical systems must be de-energized and locked out before starting
- Battery pack must be discharged to <20% SOC before removal
- Qualified electrical technician must be present throughout operation

## Prerequisites

### Personnel Requirements
- **Hoisting Director:** 1 (certified for battery pack operations)
- **Electrical Systems Technician:** 1 (high-voltage qualified)
- **Crane/Hoist Operator:** 1 (certified)
- **Rigging Personnel:** 2 minimum
- **Safety Observer:** 1

### Aircraft Configuration
- Aircraft: Not required to be jacked (battery access from below)
- Electrical system: De-energized, LOTO tags installed
- Battery pack: Discharged to <20% SOC, verified
- Battery disconnect: Open and locked out
- Fuselage access panels: Removed per AMM

### Ground Support Equipment
- Overhead crane or mobile hoist: 5,000 kg capacity minimum
- Battery transport cart (AP360-BAT-CART-001): Rated for 3,500 kg
- Lifting fixture (AP360-BAT-LIFT-001): Specifically designed for AMPEL360 battery
- Slings: Type WR-2 (two required) per DATA_Sling-Calc-and-WLL_rev1.0.0_20280530.md
- High-voltage PPE: Insulated gloves (Class 2), face shield, arc-rated clothing
- Fire suppression: Class D extinguisher, sand/vermiculite for Li-ion fires

## Battery Pack Specifications

- **Part Number:** AP360-BAT-MAIN-001
- **Mass:** 3,000 kg (±50 kg depending on SOC)
- **Dimensions:** 2,200mm (L) × 1,400mm (W) × 600mm (H)
- **Voltage:** 400-800 VDC (nominal 650 VDC)
- **Capacity:** 500 kWh
- **Chemistry:** Lithium-ion NMC
- **Location:** Fuselage Station 28.0, below cabin floor
- **CG Impact:** Major - see DATA_Ballast-Planning-Tables_rev1.0.0_20280512.csv

## Removal Procedure

### Phase 1: Electrical Isolation

**Step 1.1 - De-energization**
- [ ] Verify battery SOC <20% (check EICAS/MFD)
- [ ] Open main battery disconnect switch
- [ ] Install LOTO tag on disconnect switch: "BATTERY REMOVAL IN PROGRESS"
- [ ] Verify 0 VDC at battery terminals using CAT IV meter
- [ ] Install shorting strap on HV terminals (discharge residual)
- [ ] Wait 5 minutes for capacitor discharge

**Step 1.2 - Disconnect Verification**
- [ ] Test voltage at all HV connection points: ___ VDC (must be 0)
- [ ] Verify cooling system disconnected and drained
- [ ] Disconnect battery management system (BMS) wiring harness
- [ ] Disconnect thermal sensors and monitoring cables
- [ ] Cap all disconnected connectors

### Phase 2: Mechanical Preparation

**Step 2.1 - Access**
- [ ] Remove belly fairing panels per AMM (panels 28A through 28F)
- [ ] Remove thermal insulation blanket
- [ ] Inspect battery mounting brackets for damage
- [ ] Verify lifting attachment points accessible and undamaged

**Step 2.2 - Rigging Preparation**
- [ ] Position overhead crane/hoist centered over battery location
- [ ] Install lifting fixture (AP360-BAT-LIFT-001) on crane hook
- [ ] Verify lifting fixture rated capacity: 5,000 kg (current certification: _______)
- [ ] Attach Type WR-2 slings to lifting fixture (two-point attachment)
- [ ] Verify sling angles will be <30° from vertical

### Phase 3: Battery Pack Removal

**Step 3.1 - Attachment**
- [ ] Guide lifting fixture into battery bay
- [ ] Align lifting fixture with battery lifting lugs (4 points)
- [ ] Insert locking pins through all four lugs
- [ ] Verify pins fully engaged and safety clips installed
- [ ] Visual confirmation: All four attachment points secure

**Step 3.2 - Mounting Hardware Removal**
- [ ] Remove battery mounting bolts (12 total):
  - Forward mounts (4): Torque spec ___ Nm
  - Mid mounts (4): Torque spec ___ Nm
  - Aft mounts (4): Torque spec ___ Nm
- [ ] Store hardware in labeled container
- [ ] Remove anti-vibration isolators (if applicable)
- [ ] Clear all obstructions from lowering path

**Step 3.3 - Initial Lift**
- [ ] Hoisting Director: Verify all personnel clear
- [ ] Safety Observer: Confirm clear zone
- [ ] Hoist Operator: Take up slack in rigging
- [ ] STOP when rigging becomes taut
- [ ] Verify sling angles: Port ___ °, Starboard ___ °
- [ ] Check battery level attitude

**Step 3.4 - Progressive Lowering**
- [ ] Lower battery 50mm
- [ ] STOP - Visual inspection of rigging and battery
- [ ] Continue lowering in 100mm increments
- [ ] Monitor battery attitude (must remain level ±2°)
- [ ] Guide battery clear of fuselage structure
- [ ] Continue lowering until battery 300mm below fuselage

**Step 3.5 - Cart Positioning and Transfer**
- [ ] Position battery transport cart under battery
- [ ] Align cart support pads with battery mounting points
- [ ] Lower battery onto cart
- [ ] Verify battery seated properly on all support points
- [ ] Install cart retention straps (minimum 4)
- [ ] Tighten straps to secure battery
- [ ] Remove lifting fixture and rigging

### Phase 4: Post-Removal

**Step 4.1 - Transport**
- [ ] Move battery cart to designated storage/work area
- [ ] Install "HIGH VOLTAGE - BATTERY PACK" warning signs
- [ ] If storing: Connect to storage/maintenance unit
- [ ] If disposing: Follow hazmat procedures for Li-ion batteries
- [ ] Document battery serial number: __________
- [ ] Document battery cycles: ________, SOH: ______%

**Step 4.2 - Aircraft Securing**
- [ ] Install battery bay cover (temporary if replacement pending)
- [ ] Reinstall thermal insulation
- [ ] Install placards: "BATTERY REMOVED - NO FLIGHT"
- [ ] Update aircraft weight and balance (3,000 kg removed at Station 28.0)
- [ ] Install ballast if required per DATA_Ballast-Planning-Tables

## Installation Procedure (Reverse of Removal)

### Phase 1: Pre-Installation Checks

**Step 1.1 - Battery Inspection**
- [ ] Verify replacement battery:
  - Part number matches: AP360-BAT-MAIN-001
  - Serial number: __________
  - Acceptance test complete: Date ______
  - SOC 20-40% for installation
  - No physical damage
  - Cooling system functional
  - BMS programmed and tested

**Step 1.2 - Aircraft Preparation**
- [ ] Verify battery bay clean and free of debris
- [ ] Inspect mounting brackets for damage
- [ ] Verify all electrical connectors clean and undamaged
- [ ] Have new mounting hardware ready (do not reuse elastic stop nuts)
- [ ] Position overhead hoist

### Phase 2: Battery Hoisting

**Step 2.1 - Rigging**
- [ ] Position battery cart under fuselage opening
- [ ] Attach lifting fixture to battery (4-point attachment)
- [ ] Verify all locking pins and safety clips installed
- [ ] Attach to overhead hoist
- [ ] Remove cart retention straps

**Step 2.2 - Lifting into Bay**
- [ ] Lift battery 50mm off cart
- [ ] STOP - Verify rigging and battery secure
- [ ] Continue lifting in 100mm increments
- [ ] Guide battery into fuselage bay
- [ ] Align battery with mounting brackets
- [ ] Lower onto mounting isolators

**Step 2.3 - Securing**
- [ ] Install mounting bolts (12 total - new hardware):
  - Hand-tighten all bolts first
  - Torque in sequence: forward, mid, aft
  - Forward mounts: Torque to ___ Nm
  - Mid mounts: Torque to ___ Nm
  - Aft mounts: Torque to ___ Nm
- [ ] Verify all bolts torqued and safety-wired (if required)
- [ ] Remove lifting fixture
- [ ] Stow rigging equipment

### Phase 3: Electrical Connection

**Step 3.1 - Connections**
- [ ] Connect BMS wiring harness
- [ ] Connect thermal sensors and monitoring cables
- [ ] Connect cooling system lines (if applicable)
- [ ] Verify all connections per AMM connector tables

**Step 3.2 - HV Connection**
⚠️ **WARNING:** High voltage work - qualified personnel only

- [ ] Verify main battery disconnect still OPEN
- [ ] Remove shorting strap from HV terminals
- [ ] Clean HV terminals and connectors
- [ ] Apply dielectric grease
- [ ] Connect HV positive terminal: Torque to ___ Nm
- [ ] Connect HV negative terminal: Torque to ___ Nm
- [ ] Install HV connector covers

### Phase 4: Testing and Close-Out

**Step 4.1 - Pre-Energization Checks**
- [ ] Verify all electrical connections complete
- [ ] Verify cooling system filled and bled (if applicable)
- [ ] Check BMS communication: Run diagnostic check
- [ ] Megger test: Insulation resistance >500 MΩ @ 500 VDC
- [ ] Visual inspection: No tools or materials in battery bay

**Step 4.2 - Energization**
- [ ] Remove LOTO tag from battery disconnect
- [ ] Close main battery disconnect switch
- [ ] Monitor BMS for faults: Display shows ________
- [ ] Verify battery voltage: ___ VDC (expected ~650 VDC)
- [ ] Check cell balancing: Status ________
- [ ] Perform ground functional test per AMM

**Step 4.3 - Close-Out**
- [ ] Reinstall thermal insulation blanket
- [ ] Reinstall belly fairing panels (28A-28F)
- [ ] Verify all access panels secure and fasteners installed
- [ ] Remove "BATTERY REMOVED" placards
- [ ] Update aircraft weight and balance (3,000 kg added at Station 28.0)
- [ ] Remove ballast if installed
- [ ] Complete maintenance log entry
- [ ] Update battery life tracking records

## Quality Checkpoints

| Checkpoint | Inspector Required | Sign-off |
| :--- | :--- | :--- |
| Electrical isolation verified (0 VDC) | Yes | |
| Lifting fixture inspection | Yes | |
| All mounting bolts torqued | Yes | |
| HV connections torqued | Yes | |
| Insulation resistance test | Yes | |
| Ground functional test | Yes | |

## Emergency Procedures

**If battery thermal runaway/fire occurs:**
1. Evacuate all personnel immediately (minimum 50m)
2. Call emergency services
3. Use Class D extinguisher or sand/vermiculite (NOT WATER)
4. Allow battery to burn out in controlled manner if safe to do so
5. Do NOT attempt to move burning battery
6. Ventilate area after fire extinguished

**If battery dropped during hoisting:**
1. STOP all operations immediately
2. Evacuate personnel from area
3. Do NOT touch or move battery
4. Check for thermal runaway signs (smoke, heat, swelling)
5. Contact Electrical Engineering and Safety
6. Battery must be quarantined and inspected before any further handling

## References
- AMM Chapter 24 - Electrical Power
- DATA_Sling-Calc-and-WLL_rev1.0.0_20280530.md
- DATA_Ballast-Planning-Tables_rev1.0.0_20280512.csv
- SAE J2929 (Electric and Hybrid Vehicle Propulsion Battery System Safety)

## Approval

| Authority | Status | Date |
| :--- | :--- | :--- |
| Electrical Engineering | Released | 2028-06-02 |
| Safety Department | Released | 2028-06-03 |
| Quality Assurance | Released | 2028-06-04 |

---
*This is a controlled document. Unauthorized modifications are prohibited.*
