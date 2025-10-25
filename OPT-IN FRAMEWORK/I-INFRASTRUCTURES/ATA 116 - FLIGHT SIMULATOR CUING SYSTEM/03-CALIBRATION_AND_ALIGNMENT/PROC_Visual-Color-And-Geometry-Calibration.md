# PROC: Visual System Color & Geometry Calibration

**Document ID:** PROC-ATA116-03-01  
**Revision:** 1.5.0  
**Effective Date:** 2029-01-01  
**Simulator ID:** FFS-001

---

## 1. Purpose

To calibrate and align the multi-projector visual system for seamless brightness, color uniformity, and geometric accuracy across the entire field of view.

---

## 2. Prerequisites

### 2.1 System State
- Simulator powered on in maintenance mode
- Ambient light in the simulator bay below 1 lux (blackout curtains closed)
- Visual system pre-warmed for 30 minutes

### 2.2 Required Ground Support Equipment (GSE)

| Equipment | Part Number | Calibration Status |
|-----------|-------------|-------------------|
| **Spectroradiometer** | T-VS-001 | Must be calibrated (ref: `/03-CALIBRATION_AND_ALIGNMENT/schedule.csv`) |
| **Alignment Software** | - | Running on Instructor Operating Station (IOS) |
| **Tripod (for spectroradiometer)** | T-VS-002 | - |
| **Color/Geometry Test Patterns** | - | Loaded in image generator |

### 2.3 Personnel
- **Minimum:** 1 Visual Systems Technician (certified)
- **Recommended:** 2 technicians (one at IOS, one with measurement equipment)

---

## 3. Safety Precautions

### 3.1 Laser Safety
- Projectors use Class 1 laser sources (IEC 60825-1)
- Do not stare directly into projector lenses
- Wear laser safety goggles if accessing projector internals (not required for this procedure)

### 3.2 Environmental
- Ensure adequate ventilation (projectors generate heat)
- Do not touch hot projector surfaces (>60°C)

---

## 4. Procedure

### 4.1 Preparation (15 minutes)

#### Step 1: Power-Up Sequence
1. Power on all projectors (left, center, right)
2. Wait 30 minutes for projectors to reach thermal equilibrium and full brightness
3. Verify all projectors display test pattern (white field)

#### Step 2: Setup Measurement Equipment
1. Position spectroradiometer on tripod at Design Eye Point (DEP)
   - **DEP Coordinates:** X=0.0m, Y=0.0m, Z=1.2m (pilot seat reference)
2. Connect spectroradiometer to laptop/IOS via USB
3. Launch spectroradiometer software (vendor-specific)
4. Verify spectroradiometer is reading ambient light (should be <1 lux)

#### Step 3: Load Test Patterns
1. On IOS, launch Visual Calibration Tool
2. Load "Full White Field" test pattern (all channels, 100% white)
3. Verify pattern is displayed on all three projectors

---

### 4.2 Black Level Calibration (10 minutes)

#### Step 4: Measure and Adjust Black Levels
1. Load "Full Black Field" test pattern (all channels, 0% black)
2. Using spectroradiometer at DEP, measure luminance for each channel:
   - **Left Projector:** Record luminance (cd/m²)
   - **Center Projector:** Record luminance (cd/m²)
   - **Right Projector:** Record luminance (cd/m²)
3. Adjust projector "Black Level" or "Brightness" settings to achieve uniform black level
   - **Target:** < 0.5 cd/m² per channel
   - **Uniformity:** All channels within 0.1 cd/m² of each other

**Acceptance:** Black level < 0.5 cd/m², uniformity ±0.1 cd/m²

---

### 4.3 White Level & Brightness Uniformity (15 minutes)

#### Step 5: Measure and Adjust White Levels
1. Load "Full White Field" test pattern (all channels, 100% white)
2. Using spectroradiometer at DEP, measure luminance for each channel:
   - **Left Projector:** Record luminance (cd/m²)
   - **Center Projector:** Record luminance (cd/m²)
   - **Right Projector:** Record luminance (cd/m²)
3. Adjust projector "Contrast" or "Gain" settings to achieve uniform white level
   - **Target:** 80 - 100 cd/m² per channel (typical for flight simulation)
   - **Uniformity:** All channels within 5% of mean

**Acceptance:** White level 80-100 cd/m², uniformity ±5%

#### Step 6: Brightness Uniformity Across Screen
1. With "Full White Field" displayed, measure luminance at 9 grid points per channel:
   - Center, 4 corners, 4 midpoints (3×3 grid)
2. Record luminance at each point
3. Calculate uniformity: Min/Max × 100% should be >80%

**Acceptance:** Brightness uniformity >80% across each channel

---

### 4.4 Color Calibration (30 minutes)

#### Step 7: Primary Color Measurement
1. Load "Red Field" test pattern (all channels, 100% red, 0% green, 0% blue)
2. Measure chromaticity (x, y) at DEP for each channel
3. Repeat for "Green Field" and "Blue Field"
4. Record chromaticity coordinates for each primary, each channel

#### Step 8: Color Matching Matrix Adjustment
1. In Visual Calibration Tool, enter measured chromaticity values
2. Software computes color correction matrix for each projector
3. Apply correction matrix and verify:
   - Display "White Field" (should be neutral, no color cast)
   - Display "Gray Field" (should be neutral gray, no tint)

#### Step 9: Color Uniformity Verification
1. Display "Full White Field" again
2. Measure color difference (ΔE) between all channel pairs:
   - Left vs. Center
   - Center vs. Right
   - Left vs. Right
3. Adjust color matching matrix iteratively until ΔE <2.0 for all pairs

**Acceptance:** Color uniformity ΔE <2.0 across all channels

---

### 4.5 Geometric Alignment (45 minutes)

#### Step 10: Grid Pattern Display
1. Load "Alignment Grid" test pattern (white grid on black, 10° spacing)
2. Visually inspect for misalignment, distortion, or visible seams

#### Step 11: Automated Geometry Correction
1. In Visual Calibration Tool, select "Auto-Align" function
2. Software uses camera (mounted at DEP) to detect grid intersections
3. Software computes warp correction for each projector to align grids
4. Apply warp correction and verify alignment

#### Step 12: Edge Blending Adjustment
1. Display "Blend Zone Test Pattern" (vertical gradient in overlap regions)
2. Adjust blend curves (gamma, width) to eliminate visible seams
   - Blend zone width: 10% overlap per edge (typical)
   - Blend curve: Gamma-corrected (gamma ≈ 2.2)
3. Verify seamless transition at left-center and center-right boundaries

**Acceptance:** No visible geometric distortion or seams from DEP, grid lines continuous across boundaries

---

### 4.6 Verification (15 minutes)

#### Step 13: Final Visual Check
1. Display realistic test scenes:
   - **Runway Approach:** LFPG runway 27R, 3 nm final
   - **Horizon Line:** Level flight, check horizon continuity
   - **Grid Pattern:** Final check for seams or distortion
2. Evaluate from Design Eye Point (pilot seat)
3. Verify no visible artifacts (seams, color banding, distortion)

**Acceptance:** Visual scene seamless, no artifacts, realistic appearance

#### Step 14: Document Results
1. Record all measurements in calibration log (`/06-REGISTRY_AND_LOGS/calibration_log.csv`)
2. Update calibration status in IOS (calibration date, next due date)
3. Save calibration settings (backup to USB/network storage)

---

## 5. Completion Criteria

**PASS:**
- Black level <0.5 cd/m², uniformity ±0.1 cd/m²
- White level 80-100 cd/m², uniformity ±5%
- Brightness uniformity >80% across screen
- Color uniformity ΔE <2.0 across all channels
- No visible geometric distortion or seams from DEP

**FAIL:** Any measurement outside tolerance → repeat failed step(s) or escalate to maintenance

---

## 6. Post-Procedure Actions

1. Return simulator to operational mode
2. Update `/03-CALIBRATION_AND_ALIGNMENT/schedule.csv` with next calibration due date (quarterly)
3. If any issues remain, log defect in `/06-REGISTRY_AND_LOGS/defects.csv`
4. Brief simulator operations team on any calibration findings

---

## 7. Frequency

- **Quarterly:** Full calibration (all steps)
- **Monthly:** Quick check (brightness uniformity, visual artifacts)
- **After Maintenance:** Full calibration if projector or screen replaced

---

## 8. Traceability

**Related Documents:**
- SPEC_Projector-And-Display-System.md
- QTG-TEST_4.C.2b_Visual-Scene-Fidelity.md

**GSE Calibration:**
- See `/03-CALIBRATION_AND_ALIGNMENT/schedule.csv` for spectroradiometer calibration status

**Defect Tracking:**
- See `/06-REGISTRY_AND_LOGS/defects.csv`

---

## 9. Approval

**Author:** Visual Systems Engineer  
**Reviewed by:** Chief Simulator Engineer  
**Approved by:** Simulator Engineering Authority  
**Approval Date:** 2028-12-15  

**Signature:** ______________________

---

*Refs: ATA 115, ATA 116, EASA CS-FSTD(A)*
