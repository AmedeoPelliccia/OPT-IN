# Procedure: 51-04-02 - Composite Scarf Repair (Hot Bonder)
**Revision:** 1.0.0

## 1. Critical Safety & Process Controls
- **Personnel:** Must be certified to `COMP-REPAIR-L3`.
- **Environment:** Clean room conditions required per `PROC_51-04-01`. Humidity < 60%.
- **Materials:** Verify all materials (plies, adhesive) are within shelf life from `DATA_51-06-01` and lot numbers are recorded.

## 2. Applicability
Repair of through-thickness damage and deep delaminations in carbon fiber composite structure using hot-bonded scarf technique.

## 3. Limitations
- Maximum repair area: 300 mm × 300 mm (larger requires engineering disposition)
- Minimum parent laminate thickness: 2 mm
- Not applicable to sandwich structures with honeycomb core (use separate procedure)

## 4. Materials and Equipment
- **Prepreg plies:** Per `DATA_51-06-01` (CFRP-PLY-01 or equivalent), same fiber orientation as parent
- **Film adhesive:** Per `DATA_51-06-01` (ADH-FILM-01), -18°C storage
- **Release film:** Perforated PTFE or equivalent
- **Breather/bleeder:** Airweave or equivalent
- **Vacuum bagging materials:** Nylon bag, sealant tape
- **Hot bonder:** Calibrated, with verified heating blankets and thermocouples
- **Vacuum pump:** Capable of maintaining 0.9-1.0 bar (27-30" Hg)

## 5. Procedure Steps

### 5.1 Damage Assessment and Removal
1. Perform pre-repair C-Scan per `PROC_51-02-01` to define damage extent
2. Prepare scarf per `PROC_51-04-01`:
   - Scarf taper ratio: 30:1 minimum (per ply thickness)
   - Remove damaged plies in sequence
   - Verify complete damage removal with C-Scan

### 5.2 Ply Layup
**Critical:** Work in clean room. Wear nitrile gloves. Complete layup within 4 hours of surface prep.

1. **Ply Preparation:**
   - Remove prepreg from freezer; allow to warm in sealed bag (1 hour per 25mm thickness)
   - Cut plies to template dimensions (each ply slightly larger than the one below)
   - Record material batch numbers on repair log

2. **Film Adhesive Layer (Base):**
   - Cut film adhesive to fit scarf perimeter
   - Place in scarf cavity, smooth out air bubbles with roller

3. **Ply Installation:**
   - Install plies in reverse order of removal (deepest ply first)
   - For each ply:
     - Position with correct fiber orientation (reference witness marks on parent)
     - Debulk with roller or squeegee (remove trapped air)
     - Verify ply alignment before adding next ply
   - Total ply count must equal parent laminate (±0 plies)

4. **Surface Ply:**
   - Final ply slightly oversized (trim after cure)
   - Apply thin coat of film adhesive over final ply (fay seal)

### 5.3 Vacuum Bagging
1. **Bagging Stack (from part surface outward):**
   - Repair plies (already in place)
   - Perforated release film (extends 50 mm beyond repair edge)
   - Breather cloth (2-3 layers, extends to bag edge)
   - Vacuum bag (sealed with tacky tape)

2. **Vacuum Port:**
   - Install vacuum port fitting through bag
   - Connect to vacuum pump via trap and gauge

3. **Initial Vacuum:**
   - Apply vacuum slowly to 0.9 bar (27" Hg)
   - Inspect for leaks (bag should collapse uniformly)
   - If leak found, mark area, release vacuum, repair, and re-apply

### 5.4 Hot Bonder Cure Cycle
1. **Thermocouple Placement:**
   - Install minimum 3 thermocouples:
     - TC1: Center of repair
     - TC2: Edge of repair
     - TC3: Hot bonder heating blanket (for control)
   - Route thermocouple wires under vacuum bag edge (seal with tape)

2. **Hot Bonder Setup:**
   - Position heating blanket over repair area
   - Install insulation blankets around repair (to minimize heat loss)
   - Connect thermocouples to hot bonder controller
   - Program cure cycle per material specification (typically):
     - **Ramp:** 2-5°C/min to 177°C
     - **Hold:** 90 minutes at 177±5°C
     - **Cool:** Natural cool-down to <60°C before bag removal
   - Verify vacuum holds at 0.9 bar minimum throughout cure

3. **Cure Execution:**
   - Start cure cycle; monitor continuously
   - **Critical Parameters:**
     - Vacuum must remain >0.85 bar (if drops below, abort and investigate)
     - Temperature uniformity: All TCs within ±10°C during hold
     - No exotherm >200°C (indicates runaway reaction; abort)
   - Data log: Record temperature and vacuum every 5 minutes (automatic via hot bonder)
   - Export cure cycle log file (CSV or TXT) for repair record

4. **Post-Cure:**
   - Allow repair to cool to <60°C before removing bag
   - Remove bagging materials carefully (do not damage repair surface)
   - Trim excess material from repair edges with rotary tool
   - Lightly sand repair surface (220 grit) to blend with parent

## 6. Post-Repair Inspection & Acceptance
1. **Visual Inspection:**
   - No voids or wrinkles visible on surface
   - Repair flush with parent surface (±0.5 mm)
   - Proper fiber orientation (compare to parent)

2. **NDT - C-Scan per `PROC_51-02-01`:**
   - Perform post-repair C-Scan of entire repair area plus 50 mm margin

3. **Acceptance Criteria (from `DATA_51-06-03`):**
   - Max single void size: ≤ 3.0 mm diameter
   - Total void area: ≤ 2% of the repair area
   - No voids permitted in the first (scrim) or last ply
   - No delamination at repair edges

4. **LSP Restoration:**
   - Restore LSP mesh continuity per `PROC_51-05-01`
   - Verify resistance ≤ 10 mΩ across the repair

5. **Protective Finish:**
   - Apply primer and paint per aircraft paint scheme

## 7. Required Documentation (for Repair Record)
- Completed Damage Map with coordinates
- Material batch/lot numbers and expiry dates
- Hot Bonder cure cycle log (CSV/TXT file)
- Pre- and post-repair NDT scan files (e.g., `.cpa` files)
- Photos of each stage of the repair (minimum: damage, scarf, layup, post-cure, final)
- Inspector sign-off

## 8. Troubleshooting

| Issue | Cause | Corrective Action |
|-------|-------|-------------------|
| Vacuum loss during cure | Bag leak or seal failure | Abort cure; allow cool-down; repair bag and restart |
| Non-uniform heating | Poor blanket contact | Add insulation; reposition blanket |
| Voids in post-cure C-Scan | Trapped air or low vacuum | If exceeds limits, remove repair and re-apply |

## 9. Cross-References
- `PROC_51-04-01`: Clean Room and Surface Preparation
- `PROC_51-02-01`: C-Scan Inspection
- `PROC_51-05-01`: Lightning Strike Protection Restoration
- `DATA_51-06-01`: Material Specifications
- `DATA_51-06-03`: Acceptance Criteria

---
**Document Control:**
- **Owner:** Composite Repair Engineering
- **Approved By:** Chief Engineer
- **Effective Date:** 2025-10-27
- **Next Review:** 2027-10-27
