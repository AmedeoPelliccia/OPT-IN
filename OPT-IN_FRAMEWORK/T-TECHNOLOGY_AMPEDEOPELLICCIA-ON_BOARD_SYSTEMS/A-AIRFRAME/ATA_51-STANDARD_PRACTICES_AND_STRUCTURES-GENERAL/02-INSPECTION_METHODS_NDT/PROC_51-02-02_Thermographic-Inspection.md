# Procedure: 51-02-02 - Thermographic Inspection
**Revision:** 1.0.0

## 1. Purpose
This procedure defines the methodology for active thermographic (infrared) inspection of composite and bonded structures to detect subsurface defects such as delaminations, disbonds, and impact damage.

## 2. Applicability
- Impact damage assessment in composite structures
- Bond-line inspection (skin-to-core, doubler-to-skin)
- Large-area inspection where C-Scan is impractical
- Field inspections (portable equipment available)

## 3. Prerequisites
- **Personnel:** NDT Level 2 (thermography) certification per ISO 9712 or equivalent
- **Equipment:** Calibrated infrared camera and heat source
- **Environment:** Inspection area shielded from direct sunlight and wind

## 4. Equipment and Materials
- Infrared camera (NETD ≤50 mK, minimum 320×240 pixels)
- Heat source: Flash lamps (pulse thermography) or heat lamps (lock-in thermography)
- Calibration reference panels (with known defects)
- Tripod or positioning fixture
- Data acquisition software
- Black paint or emissivity coating (if part has reflective surface)

## 5. Inspection Methods

### 5.1 Pulse Thermography (Preferred for Impact Damage)
**Principle:** Short heat pulse applied; surface temperature monitored during cool-down. Defects cause different cooling rates.

**Procedure:**
1. Set up camera perpendicular to inspection surface at 0.5-1.5 m distance
2. Position flash lamps at 45° angle to surface
3. Apply single heat pulse (flash duration: 5-20 ms, energy: 2-6 kJ)
4. Record thermal video for 10-60 seconds after pulse
5. Analyze data using thermal contrast or temperature-time plots

### 5.2 Lock-In Thermography (Preferred for Deep Defects)
**Principle:** Periodic heat applied; phase shift in thermal response indicates defect.

**Procedure:**
1. Position heat lamps and camera as above
2. Apply modulated heat (sinusoidal, typical frequency: 0.01-1 Hz)
3. Record thermal video over multiple cycles (minimum 10 cycles)
4. Software calculates phase and amplitude images
5. Phase image provides better defect contrast and depth information

## 6. Procedure Steps

### 6.1 Surface Preparation
1. Clean surface to remove dirt, oil, moisture
2. If surface is reflective (bare metal, shiny paint), apply thin coat of matte black paint or emissivity-enhancing spray
3. Allow surface to reach thermal equilibrium with ambient (15-30 minutes)

### 6.2 Calibration
1. Perform calibration on reference panel (same material and thickness)
2. Verify defect detection in reference at expected depth
3. Adjust camera settings (integration time, frame rate) if needed
4. Document calibration parameters

### 6.3 Inspection Execution
1. Divide large areas into overlapping inspection zones (~500 mm × 500 mm)
2. For each zone:
   - Position equipment and record setup photo
   - Execute thermal acquisition (pulse or lock-in)
   - Review data in real-time for obvious defects
3. If anomalies detected, repeat at higher resolution or with different heating parameters

### 6.4 Data Analysis
1. Process thermal data using appropriate algorithm (contrast, derivative, phase)
2. Identify indications:
   - **Delamination/Disbond:** Appears as hot spot (slower cooling) in pulse mode, or as phase shift in lock-in mode
   - **Impact damage:** Characteristic "butterfly" pattern in composites
3. Measure defect dimensions in processed image
4. Estimate depth using time-to-peak contrast or phase angle (requires calibration curve)

## 7. Acceptance Criteria
- Use same dimensional limits as ultrasonic inspection (see `PROC_51-02-01`)
- Thermography is qualitative; suspicious indications should be verified with ultrasonic or other NDT

## 8. Documentation
**Inspection Report shall include:**
- Part identification and inspection date
- Equipment model, serial number, calibration date
- Heating parameters (pulse energy or lock-in frequency)
- Camera settings (frame rate, integration time)
- Thermal images (raw and processed) for each zone
- Defect locations, dimensions, estimated depth
- Acceptance determination and inspector signature

## 9. Advantages and Limitations

### Advantages:
- Rapid large-area inspection
- Portable (can be used in field)
- Non-contact (no couplant required)
- Good for curved surfaces

### Limitations:
- Surface condition affects results (requires uniform emissivity)
- Depth penetration limited (~5 mm in CFRP)
- Affected by environmental conditions (wind, sun)
- Lower resolution than C-Scan for small defects
- Requires operator interpretation (more subjective than UT)

## 10. Quality Assurance
- Equipment calibration: Annually (camera) and before each use (reference panel check)
- Operator proficiency: Annual evaluation using blind test specimens
- Data archival: Minimum 10 years for all inspections

## 11. Cross-References
- `PROC_51-02-01`: Ultrasonic Inspection (complementary method)
- `PROC_51-01-02`: General Visual Inspection (GVI)
- `DATA_51-06-03`: Post-Repair Acceptance Criteria
- ISO 9712: NDT personnel qualification

---
**Document Control:**
- **Owner:** NDT Engineering
- **Approved By:** Chief Engineer, Quality Assurance
- **Effective Date:** 2028-02-01
- **Next Review:** 2030-02-01
