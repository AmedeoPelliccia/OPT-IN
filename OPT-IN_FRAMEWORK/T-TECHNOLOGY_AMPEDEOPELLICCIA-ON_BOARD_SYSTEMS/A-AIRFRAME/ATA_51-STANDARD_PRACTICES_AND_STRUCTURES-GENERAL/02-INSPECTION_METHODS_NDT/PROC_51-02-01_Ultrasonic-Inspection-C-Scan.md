# Procedure: 51-02-01 - Ultrasonic Inspection - C-Scan
**Revision:** 1.0.0

## 1. Purpose
This procedure defines the methodology for ultrasonic C-Scan inspection of composite structures to detect internal delaminations, voids, porosity, and bond-line defects.

## 2. Applicability
- Pre-repair assessment of composite damage
- Post-repair verification of composite repairs
- Periodic inspection of composite primary structure
- Manufacturing quality control (if applicable)

## 3. Prerequisites
- **Personnel:** NDT Level 2 (ultrasonic) certification per EN 4179 or equivalent
- **Equipment:** Calibrated ultrasonic C-Scan system with appropriate transducers
- **Standards:** Reference standards representative of part thickness and material

## 4. Equipment and Materials
- Ultrasonic C-Scan system (immersion tank or squirter system)
- Transducers: 5 MHz to 10 MHz (frequency selected based on part thickness)
- Calibration standards (flat-bottom holes or known delaminations)
- Couplant (water for immersion; gel or water column for squirter)
- Data acquisition and analysis software
- Documentation: Calibration records, scan files, report templates

## 5. Procedure

### 5.1 Calibration
1. Select appropriate reference standard (same material and thickness as part)
2. Set ultrasonic parameters:
   - Frequency: Typically 5 MHz for thick structures (>6mm), 10 MHz for thin
   - Gate position: Adjust to capture back-wall echo or bond-line interface
   - Gain: Set to achieve 80% full-screen height on reference
3. Verify calibration using known defects in standard
4. Document calibration settings and timestamp

### 5.2 Part Preparation
1. Clean inspection surface to remove contaminants
2. Ensure part is at room temperature (20±5°C) to avoid thermal effects
3. Mark inspection area boundaries on part (use non-permanent marker)
4. Position part in immersion tank or under squirter head with proper standoff

### 5.3 Scanning
1. Program scan area and resolution in software:
   - Minimum resolution: 1 mm × 1 mm for repairs
   - Resolution may be coarser (5 mm × 5 mm) for large-area inspections
2. Start automated scan
3. Monitor data acquisition in real-time for issues (loss of signal, poor coupling)
4. If anomalies detected, rescan at higher resolution

### 5.4 Data Analysis
1. Review C-Scan image using amplitude and time-of-flight (TOF) displays
2. Identify indications:
   - **Delamination:** Shows as area of reduced back-wall amplitude or increased TOF
   - **Porosity/Voids:** Dispersed low-amplitude areas
   - **Bond-line defects:** Interface echo present where bond should exist
3. Measure defect size using software tools:
   - Record maximum length and width
   - Calculate area (if defect is irregular)
4. Compare to acceptance criteria (see Section 6)

### 5.5 Post-Inspection
1. Clean part to remove couplant residue
2. Save scan data files with unique identifiers:
   - Naming convention: `MSN_Zone_Station_Date_Time.cpa` (or vendor-specific format)
3. Generate inspection report (see Section 7)

## 6. Acceptance Criteria

### 6.1 Pre-Repair Assessment
- Any delamination >25 mm diameter shall be classified as "Repairable" or "Requires Disposition" per `DATA_51-01-01`
- Multiple delaminations: cumulative area rules apply

### 6.2 Post-Repair Acceptance (from `DATA_51-06-03`)
- Maximum single void: ≤3.0 mm diameter
- Total void area: ≤2% of repair area
- No voids permitted in first (scrim) or last ply of repair
- No delamination permitted at repair edges

## 7. Documentation and Reporting
**Inspection Report shall include:**
- Part identification (MSN, zone, component P/N)
- Inspection date and inspector ID
- Equipment used (model, serial number, calibration due date)
- Calibration settings (frequency, gain, gate position)
- C-Scan image files (attach as `.png` or vendor format)
- List of all indications with dimensions and locations
- Acceptance/rejection determination
- Inspector signature

## 8. Special Considerations

### 8.1 Honeycomb Core Structures
- Use lower frequency (2-5 MHz) for thick honeycomb
- Look for core crushing (reduced TOF) and face-core disbond (interface echo)

### 8.2 Multi-Layer Repairs
- Scan through repair layers to verify bond at each interface
- Expect some attenuation; adjust gain as needed

### 8.3 Curved Surfaces
- Use contour-following scanner or flexible probe
- Verify calibration on curved standard

## 9. Limitations
- Inspection depth limited by material attenuation (~50 mm for CFRP)
- Surface roughness can cause signal scatter and false indications
- Cannot detect damage parallel to surface (use other methods)

## 10. Quality Assurance
- Equipment calibration: Annual by certified laboratory
- Operator proficiency check: Every 6 months (blind test on known defects)
- Scan data shall be archived for minimum 10 years

## 11. Cross-References
- `DATA_51-06-03`: Post-Repair Acceptance Criteria
- `PROC_51-04-02`: Composite Scarf Repair (requires pre- and post-repair C-Scan)
- `PROC_51-02-02`: Thermographic Inspection (alternative method)
- EN 4179: Aerospace NDT personnel qualification

---
**Document Control:**
- **Owner:** NDT Engineering
- **Approved By:** Chief Engineer, Quality Assurance
- **Effective Date:** 2025-10-27
- **Next Review:** 2027-10-27
