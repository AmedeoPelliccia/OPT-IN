# PROC 25-02-02 — Seat Removal / Installation and Torque

## Purpose
Procedure for safe removal and installation of passenger and crew seats with proper torque application and verification.

## Safety

### Hazards
- **Pinch points**: Between seat and structure during movement
- **Tip hazard**: Seat can tip if not properly supported
- **Electrical shock**: If seat power not isolated
- **Sharp edges**: On seat rails and fittings
- **Heavy lift**: Seats can weigh 30-70 kg

### Precautions
- Isolate seat power and IFE cables before removal
- Use lifting aids for seats heavier than 23 kg (50 lbs)
- Wear cut-resistant gloves when handling seat rails
- Use proper lockout/tagout for electrical systems
- Support seat during removal to prevent tipping

## Prerequisites

### Tools and Equipment
- Torque wrench (calibrated within 6 months)
- Socket set (metric and SAE)
- Allen key set
- Bonding resistance tester (100A DC)
- Lifting straps or seat removal cart
- Safety glasses
- Cut-resistant gloves
- Anti-static wrist strap (for IFE connections)

### Reference Documents
- `DATA_25-02-04_Seat-Rail-Torque-And-Limits.csv` (torque specifications)
- Seat manufacturer's installation manual
- Aircraft LOPA drawing
- Seat wiring diagram (if applicable)

### Personnel Qualifications
- Certified aircraft technician
- Seat installation training completed
- Electrical systems safety training (if seat has power/IFE)

## Effectivity
- **MSN**: ALL
- **Configuration**: ALL
- **LOPA**: Verify specific LOPA version in work order

## Procedure — Seat Removal

### Step 1: Preparation
1. Verify work order and seat location (row, position)
2. Review LOPA to confirm seat type and configuration
3. Gather tools and equipment
4. Don safety glasses and gloves

### Step 2: Electrical Isolation
1. De-energize seat power bus per aircraft electrical procedures
2. Disconnect IFE cable (if applicable):
   - Wear anti-static wrist strap
   - Note cable routing for reinstallation
   - Cap or protect connectors
3. Disconnect seat power outlet cables (110V AC, USB, 12V DC)
4. Verify no voltage present with multimeter

### Step 3: Remove Covers and Panels
1. Remove seat cover panels to access fasteners
2. Remove tray table (if separate from seat back)
3. Remove literature pocket (if obscuring fasteners)
4. Stow or secure loose items

### Step 4: Remove Seat Fasteners
1. Identify all seat attachment points (typically 4-6 fittings)
2. Loosen fasteners in cross pattern (do not remove fully yet)
3. Support seat with lifting strap or cart
4. Remove all fasteners
5. **Retain all hardware**: Place in labeled bag with seat serial number

### Step 5: Lift and Remove Seat
1. With assistant or lifting aid, carefully lift seat vertically
2. Clear seat from rail fittings
3. Place on seat cart or protected surface
4. Tag seat with removal date, location, and reason for removal

### Step 6: Inspect Rails and Structure
1. Inspect seat rails for:
   - Corrosion or fretting
   - Damage to track lips or locking features
   - Foreign object debris (FOD)
2. Clean seat rails with approved cleaner
3. Inspect bonding straps for damage or corrosion
4. Document any discrepancies in work order

## Procedure — Seat Installation

### Step 1: Pre-Installation Inspection
1. Verify seat part number matches LOPA
2. Inspect seat for:
   - Structural damage
   - Missing hardware
   - Cushion condition
   - Restraint belt condition
3. Verify seat serial number and log in aircraft records

### Step 2: Position Seat
1. Align seat datum marks with LOPA dimensions
2. With assistant or lifting aid, position seat over rails
3. Align seat fittings with rail attach points
4. Lower seat onto rails

### Step 3: Install Fasteners (Hand-Start)
1. Insert fasteners at all attach points
2. Hand-start all fasteners (do not torque yet)
3. Verify seat is properly aligned:
   - Check datum marks
   - Verify fore/aft position
   - Check lateral alignment
4. Adjust as necessary before torquing

### Step 4: Torque Fasteners
1. Retrieve torque specifications from `DATA_25-02-04_Seat-Rail-Torque-And-Limits.csv`
2. Apply torque in cross pattern:
   - Start at one corner
   - Move to opposite corner
   - Continue in cross pattern
3. Torque each fastener to specified value ± tolerance
4. Mark each fastened location with torque seal or witness mark
5. Record torque values in installation record

### Step 5: Verify Bonding Resistance
1. Connect bonding resistance tester between seat and structure
2. Apply 100A DC current
3. Measure resistance: **Must be ≤ 2.5 mΩ**
4. If bonding resistance exceeds limit:
   - Inspect bonding straps for damage or corrosion
   - Clean bonding surfaces
   - Re-torque fasteners
   - Re-test
5. Record bonding resistance in installation record

### Step 6: Electrical Reconnection
1. Route IFE cable per routing diagram
2. Connect IFE cable:
   - Align connector pins carefully
   - Push until fully seated
   - Verify locking clip engaged
3. Connect seat power cables
4. Secure cables with cable ties (do not over-tighten)

### Step 7: Operational Checks
1. Re-energize seat power bus
2. Test recline mechanism:
   - Verify smooth operation
   - Check locking positions
   - Verify return to upright
3. Test tray table:
   - Verify deployment and stowage
   - Check locking in both positions
4. Test restraint belt:
   - Verify buckle operation
   - Check belt routing
   - Verify no twists or snags
5. Test IFE (if applicable):
   - Power on screen
   - Verify video and audio
   - Test touch screen response
6. Test power outlets:
   - Verify 110V AC with voltage tester
   - Test USB ports with test device

### Step 8: Final Inspection and Documentation
1. Install covers and panels
2. Verify no tools or hardware left in seat area
3. Clean seat and surrounding area
4. Complete installation record (see `12-EXAMPLES_AND_RECORDS/EXAMPLE_25-12-01_Installation-Record.json`)
5. Obtain inspector signature

## Acceptance Criteria

### Torque
- All fasteners torqued within specified tolerance (typically ±10%)
- Torque values recorded
- Torque seals or witness marks applied

### Bonding
- Bonding resistance ≤ 2.5 mΩ
- Bonding measurement recorded

### Functional Tests
- Recline mechanism operates smoothly with no binding
- Tray table deploys and stows correctly
- Restraint belt buckle operates properly
- IFE powers on and responds (if applicable)
- Power outlets provide correct voltage (if applicable)

### Visual
- No fretting, scoring, or damage to seat rails
- All fasteners properly installed and torqued
- Cables routed and secured per diagram
- No foreign objects or debris
- Seat aligned per LOPA

## Discrepancy Handling
If any acceptance criterion is not met:
1. Document discrepancy in work order
2. Do not release seat for service
3. Notify lead technician or inspector
4. Initiate NCR per `09-NONCONFORMANCE_AND-DEVIATION/PROC_25-09-01_NCR-And-Engineering-Disposition.md`

## Cross-References
- [`DATA_25-02-04_Seat-Rail-Torque-And-Limits.csv`](DATA_25-02-04_Seat-Rail-Torque-And-Limits.csv) (torque specifications)
- [`PROC_25-02-03_Belt-Harness-Inspection.md`](PROC_25-02-03_Belt-Harness-Inspection.md) (restraint inspection)
- [`../12-EXAMPLES_AND_RECORDS/EXAMPLE_25-12-01_Installation-Record.json`](../12-EXAMPLES_AND_RECORDS/EXAMPLE_25-12-01_Installation-Record.json) (installation record template)
- **ATA 24**: Electrical power system isolation procedures
- **[ATA 44](../../ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/00_README.md)**: IFE cable routing and connection procedures

## Revision History

| Revision | Date       | Author                     | Description                    |
|----------|------------|----------------------------|--------------------------------|
| 1.0.0    | 2025-10-30 | Cabin Interiors Engineering | Initial release                |

---

**Document Control:**
- **Owner:** Cabin Interiors Engineering
- **Training Required**: Yes — Seat installation certification
- **Next Review:** 2026-10-30
