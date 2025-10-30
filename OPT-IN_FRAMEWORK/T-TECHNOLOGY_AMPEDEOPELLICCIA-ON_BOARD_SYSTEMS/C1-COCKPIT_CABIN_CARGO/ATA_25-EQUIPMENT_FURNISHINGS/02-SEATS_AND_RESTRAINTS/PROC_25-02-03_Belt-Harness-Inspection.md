# PROC 25-02-03 — Belt / Harness Inspection

## Purpose
Inspection procedure for passenger and crew restraint belts and harnesses to ensure compliance with 14 CFR 25.785 and continued airworthiness.

## Safety
- No special safety precautions beyond general cabin safety
- Ensure belt buckles are not under tension during inspection

## Prerequisites

### Tools and Equipment
- Flashlight or inspection lamp
- Measuring tape or ruler
- Belt tension gauge (if available)
- Camera for documenting discrepancies

### Reference Documents
- Seat manufacturer's maintenance manual
- Belt manufacturer's inspection criteria

### Personnel Qualifications
- Certified aircraft technician
- Cabin safety equipment training

## Effectivity
- **MSN**: ALL
- **Seats**: All passenger and crew seats
- **Interval**: GVI every A-check; DVI every C-check

## Inspection Criteria

### Visual Inspection — All Belts

#### Webbing Condition
- **Pass**: No cuts, tears, fraying, or excessive wear
- **Fail**: Any cut > 1/8 inch (3 mm), fraying extending > 1/4 inch (6 mm) into webbing, burn marks, chemical contamination

#### Stitching Condition
- **Pass**: All stitching intact, no loose or missing stitches
- **Fail**: Any broken stitch lines, loose stitching at load-bearing points

#### Color and Fading
- **Advisory**: Excessive fading may indicate UV degradation or age
- **Action**: If severe fading noted, consider replacement at next major check

#### Contamination
- **Pass**: Minor dirt or dust
- **Fail**: Oil, grease, hydraulic fluid, or chemical contamination
- **Action**: Clean per manufacturer procedures; replace if contamination cannot be removed

### Buckle Inspection

#### Buckle Operation
- **Pass**: Buckle releases with single action, smooth engagement and release
- **Fail**: Binding, difficult release, requires two-handed operation

#### Buckle Condition
- **Pass**: No cracks, deformation, or corrosion
- **Fail**: Any cracks in load-bearing areas, severe corrosion affecting operation

#### Latch Mechanism
- **Pass**: Latch engages positively with audible/tactile click
- **Fail**: Latch does not engage fully, can be opened without pressing release button

### Anchor Point Inspection

#### Anchor Bolt Condition
- **Pass**: Bolt secure, no looseness, no corrosion
- **Fail**: Bolt loose, corrosion affecting threads, signs of fretting

#### Anchor Fitting Condition
- **Pass**: No cracks, deformation, or elongation of bolt holes
- **Fail**: Cracks in fitting, elongated holes, bent or deformed fitting

#### Torque Verification (DVI only)
- Apply torque per `DATA_25-02-04_Seat-Rail-Torque-And-Limits.csv`
- **Pass**: Torque within specified range
- **Fail**: Torque below minimum or bolt cannot reach specified torque

### Belt Routing

#### Routing Path
- **Pass**: Belt routed per seat manufacturer's diagram, no twists
- **Fail**: Belt twisted, improper routing through seat structure

#### Belt Length and Adjustment
- **Pass**: Belt adjusts smoothly, adequate length for range of occupants
- **Fail**: Belt too short to accommodate 95th percentile male, adjuster jammed

### Shoulder Harness (if installed)

#### Inertia Reel Function (if applicable)
- **Pass**: Reel locks under sudden deceleration, extends smoothly under normal movement
- **Fail**: Reel does not lock, jams, or does not retract

#### Shoulder Strap Routing
- **Pass**: Strap routes over shoulder without rubbing on sharp edges
- **Fail**: Strap rubs on seat structure, shows signs of abrasion

## Inspection Procedure

### Step 1: Pre-Inspection
1. Review inspection interval and previous inspection findings
2. Gather tools and documentation
3. Identify seats to be inspected per work order

### Step 2: Visual Inspection (GVI)
For each seat:
1. Extend belt to full length
2. Inspect webbing for cuts, tears, fraying
3. Inspect stitching at all attachment points
4. Check for contamination or staining
5. Operate buckle — verify smooth operation and positive latch
6. Inspect buckle for cracks or deformation
7. Check belt routing — verify no twists
8. Record findings on inspection sheet

### Step 3: Detailed Inspection (DVI — C-check interval)
In addition to GVI items:
1. Remove seat cushion to access anchor points (if required)
2. Inspect anchor bolts and fittings:
   - Check torque per `DATA_25-02-04_Seat-Rail-Torque-And-Limits.csv`
   - Inspect for corrosion or fretting
   - Check for cracks in fittings (use magnifier if needed)
3. Inspect inertia reel (if installed):
   - Test locking function with sharp tug
   - Test retraction with slow pull
4. Measure webbing width at multiple points (acceptance: ≥ 2.0 inches / 50.8 mm)
5. Record all measurements and findings

### Step 4: Documentation
1. Complete inspection record per `schemas/inspection.schema.json`
2. Photograph any discrepancies
3. Tag unserviceable belts with "UNSERVICEABLE" tag
4. Update aircraft maintenance records

## Acceptance Criteria

### Serviceable
- All inspection criteria pass
- No cuts, tears, or excessive fraying
- Buckle operates smoothly with single action
- Stitching intact at all load-bearing points
- Anchor bolts torqued and secure
- No corrosion affecting structural integrity

### Conditional
- Minor contamination that can be cleaned
- Minor fraying < 1/4 inch (6 mm) into webbing, not at load-bearing attachment
- Webbing fading but no structural degradation

### Unserviceable
- Any failure criterion met
- Belt must be replaced before next flight

## Replacement Criteria
Replace belt/harness if:
- Any cut > 1/8 inch (3 mm)
- Fraying > 1/4 inch (6 mm) or at attachment point
- Buckle does not operate properly
- Anchor fitting cracked or deformed
- Contamination cannot be removed
- Belt age exceeds manufacturer's recommended service life (if specified)

## Discrepancy Handling
If belt fails inspection:
1. Tag with "UNSERVICEABLE" tag
2. Remove from service immediately
3. Initiate work order for replacement
4. Document in aircraft maintenance log
5. For critical findings affecting multiple seats, initiate NCR per `09-NONCONFORMANCE_AND-DEVIATION/PROC_25-09-01_NCR-And-Engineering-Disposition.md`

## Cleaning and Maintenance
If belt is contaminated but serviceable:
1. Clean with mild soap and water
2. Do not use solvents or harsh chemicals
3. Air dry completely before returning to service
4. Do not use heat to accelerate drying
5. Document cleaning action in maintenance log

## Cross-References
- **14 CFR 25.785**: Seats, berths, safety belts, and harnesses
- `DATA_25-02-04_Seat-Rail-Torque-And-Limits.csv` (anchor bolt torque)
- `08-INSPECTION_AND_MAINTENANCE/DATA_25-08-02_Inspection-Intervals-And-Acceptance.csv`
- Seat manufacturer's maintenance manual

## Revision History

| Revision | Date       | Author                     | Description                    |
|----------|------------|----------------------------|--------------------------------|
| 1.0.0    | 2025-10-30 | Cabin Interiors Engineering | Initial release                |

---

**Document Control:**
- **Owner:** Cabin Interiors Engineering
- **Training Required**: Yes — Cabin safety equipment inspection
- **Next Review:** 2026-10-30
