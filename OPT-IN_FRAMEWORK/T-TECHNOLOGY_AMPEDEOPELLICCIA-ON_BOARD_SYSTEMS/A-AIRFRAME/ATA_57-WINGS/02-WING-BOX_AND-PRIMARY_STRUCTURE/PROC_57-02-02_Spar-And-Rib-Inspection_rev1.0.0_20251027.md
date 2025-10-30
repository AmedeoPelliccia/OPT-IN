# PROC 57-02-02: Spar and Rib Inspection

**Revision:** 1.0.0  
**Effective Date:** 2025-10-27

## 1. Scope

This procedure defines inspection methods and acceptance criteria for wing box spars and ribs.

## 2. Safety Warnings

- **STRUCTURAL INTEGRITY:** Spars and ribs are primary load-bearing components. Any damage must be properly assessed and repaired.
- **ACCESS HAZARDS:** Wing box entry requires confined space procedures and fuel tank safety protocols.

## 3. Inspection Types and Frequencies

### 3.1 General Visual Inspection (GVI)
- **Frequency:** Every 600 flight hours or 12 months
- **Method:** Visual examination with flashlight
- **Focus:** Obvious damage, corrosion, delamination, loose fasteners

### 3.2 Detailed Visual Inspection (DVI)
- **Frequency:** Every 3,000 flight hours or 36 months
- **Method:** Close visual with magnification (10x)
- **Focus:** Cracks, corrosion pits, paint lifting, skin distortion

### 3.3 Ultrasonic Inspection (UT)
- **Frequency:** Every 6,000 flight hours or as required
- **Method:** Pulse-echo UT per `PROC_57-11-01`
- **Focus:** Internal delaminations, bond integrity, thickness measurement

## 4. Inspection Zones

### 4.1 Spar Caps
- **Critical Zones:** High-stress areas at wing root and mid-span
- **Acceptance:** No cracks, maximum residual thickness per `DATA_57-02-04`

### 4.2 Spar Webs
- **Inspection:** Full web area, especially around fastener holes
- **Acceptance:** No cracks >0.25", no delamination >0.5 in²

### 4.3 Rib Flanges
- **Inspection:** Rib-to-spar attachment points
- **Acceptance:** No cracks, no looseness in fasteners

### 4.4 Rib Webs
- **Inspection:** Visual for buckling or cracks
- **Acceptance:** No cracks, no permanent deformation

## 5. Procedure

### 5.1 Preparation
1. Review aircraft maintenance records for previous damage
2. Defuel wing (if fuel tank access required)
3. Inert fuel tank per AMM 28-21-01
4. Remove access panels per AMM 57-11-00

### 5.2 GVI Steps
1. Enter wing box following confined space procedures
2. Inspect spar caps for visible damage, corrosion
3. Inspect spar webs for cracks, especially around fasteners
4. Inspect ribs for cracks, buckling, loose fasteners
5. Check for moisture, foreign objects, debris
6. Photograph any discrepancies

### 5.3 DVI Steps
1. Clean area to be inspected
2. Use 10x magnifier and strong lighting
3. Inspect for:
   - Fine cracks (use dye penetrant if suspect crack found)
   - Corrosion pitting
   - Delamination (tap test for composites)
   - Paint blistering or lifting
4. Measure and document any findings

### 5.4 UT Steps
1. Calibrate UT equipment per manufacturer's manual
2. Apply couplant to inspection surface
3. Scan spar caps and critical areas per grid pattern
4. Record A-scan and C-scan data
5. Compare to baseline data (if available)
6. Evaluate delaminations and voids per acceptance criteria

## 6. Acceptance Criteria

### 6.1 Spar Caps
- **Residual Thickness:** ≥ 90% of nominal (see `DATA_57-02-04`)
- **Cracks:** Zero tolerance in primary load path
- **Delamination:** None in highly stressed areas, <0.5 in² elsewhere

### 6.2 Spar Webs
- **Cracks:** None >0.25" length
- **Delamination:** <1.0 in² area, <0.040" depth
- **Buckling:** None permanent

### 6.3 Ribs
- **Cracks:** None in flange or web
- **Fastener Holes:** No elongation >0.005"
- **Corrosion:** Surface only, depth <0.010"

## 7. Reporting

1. Record all inspections in aircraft log
2. Create inspection report per `inspection.schema.json`
3. Tag any non-conformance with red tag
4. Notify Engineering for disposition if damage exceeds limits

## 8. References

- `PROC_57-11-01`: Ultrasonic Inspection for Wing Box Spars
- `DATA_57-02-04`: Spar Cap and Rib Strength Limits
- AMM 28-21-01: Fuel Tank Defueling and Inerting

---

**Document Control:**
- **Prepared by:** Wing Structures Engineering
- **Approved by:** Chief Engineer - Structures
- **Approval Date:** 2025-10-26
