# PROC 54-09-03: Pylon Fitting Repair and FEA Requirements

**Revision:** 1.0.0  
**Effectivity:** All AMPEL360 aircraft

## Critical Warning
**DANGER:** Pylon fitting repairs affect primary load path. All repairs require:
1. Engineering Disposition (ED) approval BEFORE work begins
2. Finite Element Analysis (FEA) for any dimensional changes
3. Stress analysis for load redistribution
4. Fatigue and damage tolerance evaluation
5. Flight test after major modifications

## Purpose
This procedure defines the process and requirements for pylon fitting repairs, including Engineering involvement and FEA requirements.

## Prohibition
**The following repairs are PROHIBITED without Engineering Disposition:**
- Any repair to engine mount fittings
- Any repair to airframe attach fittings
- Any repair changing fitting dimensions
- Any repair involving welding
- Any repair to cracked fittings

## Engineering Disposition Process

### When ED Required
- ANY damage to primary fittings
- Elongated bolt holes (> 0.1 mm oversize)
- Surface cracks of any size
- Corrosion depth > 0.5 mm
- Fretting damage at bearing surfaces
- Any previous repair requiring re-work

### ED Request Contents
Submit to Engineering with:
1. Detailed damage description with photos
2. Measurements of damage (all dimensions)
3. Part number and serial number of fitting
4. Aircraft MSN and total hours/cycles
5. Proposed repair method (if any)
6. NDT results (all methods used)

### Engineering Response
Engineering will provide:
1. Repair/replace decision
2. If repair approved:
   - Detailed repair procedure
   - Material specifications
   - Inspection requirements
   - FEA analysis results (if applicable)
   - Revised service life limits

## Finite Element Analysis Requirements

### When FEA Required
FEA analysis is mandatory for:
- Any dimensional change to fitting geometry
- Hole enlargement or bushing installation
- Addition of reinforcement material
- Change in load path

### FEA Scope
Analysis must demonstrate:
1. **Static strength:** Ultimate load capability ≥ 1.5 x Limit Load
2. **Fatigue life:** Minimum 50,000 flight hours
3. **Damage tolerance:** 2-lifetime crack growth demonstration
4. **Stress concentration:** Peak stress < material allowable

### FEA Documentation
Engineering must provide:
- Finite element model description
- Load cases analyzed (per DATA 54-01-03)
- Material properties used
- Boundary conditions
- Stress contour plots
- Margin of safety calculations

## Approved Repair Methods

### Bushing Installation (with ED approval)
For elongated holes in secondary fittings only:
1. Drill hole oversize per ED instructions
2. Install precision bushing (interference fit)
3. Final ream bushing to original hole size
4. Verify bushing retention (push-out test)
5. Re-inspect per NDT requirements

### Blend-Out Repairs (with ED approval)
For surface damage < 0.5 mm deep:
1. Blend damage with smooth radius (min R = 25 mm)
2. Verify stress concentration acceptable (per FEA)
3. Apply corrosion protection
4. Re-inspect per NDT requirements
5. Implement reduced inspection intervals per ED

## Replacement vs Repair Decision
Generally, replacement is preferred over repair for:
- Engine mount fittings (typically safe-life items)
- Cracks of any size
- Corrosion > 1.0 mm deep
- Multiple damage sites
- Fittings approaching service life limits

## Documentation
For all fitting repairs:
1. Complete Engineering Disposition package
2. FEA report (if required)
3. Detailed repair record per `/schemas/repair-record.schema.json`
4. Before/after photographs
5. Complete NDT records
6. Update component service life tracking

## Post-Repair Requirements
- Detailed inspection per PROC 54-07-03 (Eddy Current)
- Reduced inspection intervals (per ED)
- Flight test (if required by Engineering)
- Fleet notification (if recurring issue)

## Quality Assurance
- QA Inspector must verify ED approval before work begins
- QA must witness all critical steps
- QA must approve NDT results
- QA must verify dimensional conformity
- Final QA signoff required

## References
- ATA 51: Structural repair philosophy
- DATA 54-03-04: Fitting specifications and load limits
- DATA 54-01-03: Design load cases
- FAA Part 25.571: Damage tolerance requirements

**Rev 1.0.0 (2025-10-27):** Initial release
