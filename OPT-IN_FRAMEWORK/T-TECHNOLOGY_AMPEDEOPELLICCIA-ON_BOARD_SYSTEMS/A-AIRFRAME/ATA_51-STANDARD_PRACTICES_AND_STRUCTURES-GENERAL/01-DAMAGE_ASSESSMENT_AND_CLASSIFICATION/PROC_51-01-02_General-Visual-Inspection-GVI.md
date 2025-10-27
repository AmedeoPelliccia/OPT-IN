# Procedure: 51-01-02 - General Visual Inspection (GVI)
**Revision:** 1.0.0

## 1. Purpose
This procedure defines the standard methodology for visual inspection of aircraft structure to detect, assess, and classify damage. GVI is the foundation of all structural damage assessment.

## 2. Applicability
- Routine maintenance inspections
- Pre- and post-flight inspections
- Damage discovery and assessment
- Post-repair verification

## 3. Prerequisites
- **Personnel:** Minimum Level 1 certification per `STD_51-00-03`
- **Lighting:** Minimum 500 lux at inspection surface
- **Cleanliness:** Surface must be clean and free of contaminants

## 4. Tools and Equipment
- Flashlight (minimum 1000 lumens)
- Magnifying glass (5× to 10× magnification)
- Measuring tools (calibrated ruler, calipers, depth gauge)
- Borescope (for internal inspection)
- Camera for documentation
- Damage assessment form or digital inspection tool

## 5. Inspection Methodology

### 5.1 Pre-Inspection Preparation
1. Review aircraft maintenance records for known damage history
2. Review applicable structural diagrams (from ATA 53-57) to understand component locations
3. Ensure adequate access to inspection area
4. Clean inspection surface using approved cleaning agents per ATA 20

### 5.2 Visual Inspection Process
1. **Systematic Scan:**
   - Inspect in a methodical pattern (e.g., top-to-bottom, left-to-right)
   - Use direct and oblique lighting to reveal surface discontinuities
   - Pay special attention to high-stress areas (fastener holes, panel edges, joints)

2. **Damage Detection:**
   - Look for: cracks, dents, scratches, corrosion, delamination, missing fasteners, fluid leaks
   - Note any paint blistering, discoloration, or abnormal wear patterns
   - Check for proper sealing at joints and penetrations

3. **Detailed Examination:**
   - When damage is found, increase magnification and lighting
   - Measure all dimensions accurately:
     - Length (longest dimension)
     - Width (perpendicular to length)
     - Depth (using depth gauge for dents/corrosion)
   - Document location precisely using aircraft coordinate system (station, buttline, waterline)

### 5.3 Damage Classification
1. Compare measured dimensions to limits in `DATA_51-01-01_Damage-Classification-Limits.csv`
2. Classify damage as:
   - **Negligible:** Within allowable limits; can be blended out or accepted as-is
   - **Repairable:** Exceeds negligible limits but within standard repair limits
   - **Requires Disposition:** Exceeds standard repair limits; requires engineering evaluation

3. Special considerations:
   - **Multiple damages:** If damages are within 2× the largest damage dimension of each other, treat as a single damage and sum dimensions
   - **Proximity to critical features:** Damage within 25mm of a fastener hole, edge, or cutout may require disposition even if within normal limits
   - **Composite damage:** Always perform tap test or thermography if impact damage is suspected

## 6. Documentation Requirements
For each damage found, record:
- Damage ID (unique identifier)
- Aircraft MSN and component part number
- Precise location (zone, station, buttline, waterline)
- Damage type (per classification list)
- Dimensions (length, width, depth in mm)
- Classification (Negligible/Repairable/Requires Disposition)
- Inspector ID and date
- Photographs (minimum 2: overview and close-up with scale reference)

## 7. Reporting
- **Negligible damage:** Record in aircraft logbook; no further action if blend-out performed
- **Repairable damage:** Generate work order for standard repair; reference applicable SRM procedure
- **Requires Disposition:** Raise Nonconformance Report per `PROC_51-00-02`

## 8. Quality Assurance
- Inspectors shall periodically undergo vision testing (annually)
- Inspection effectiveness shall be audited through sampling (10% of inspections)
- Missed damage found by subsequent inspections shall trigger inspector retraining

## 9. Limitations of Visual Inspection
GVI can only detect surface or near-surface damage. The following require specialized NDT:
- Internal delamination in composites (use C-Scan per `PROC_51-02-01`)
- Sub-surface corrosion in metallic structure
- Cracks in inaccessible areas
- Fatigue cracks in early stages

## 10. Cross-References
- `DATA_51-01-01`: Damage Classification Limits
- `PROC_51-00-02`: Nonconformance and Disposition Workflow
- `PROC_51-02-01`: Ultrasonic Inspection (for follow-up NDT)
- ATA 20: Standard Practices (cleaning, blending)
- ATA 53-57: Component-specific inspection requirements

---
**Document Control:**
- **Owner:** Structural Repair Engineering
- **Approved By:** Chief Inspector, Quality Assurance
- **Effective Date:** 2025-10-27
- **Next Review:** 2027-10-27
