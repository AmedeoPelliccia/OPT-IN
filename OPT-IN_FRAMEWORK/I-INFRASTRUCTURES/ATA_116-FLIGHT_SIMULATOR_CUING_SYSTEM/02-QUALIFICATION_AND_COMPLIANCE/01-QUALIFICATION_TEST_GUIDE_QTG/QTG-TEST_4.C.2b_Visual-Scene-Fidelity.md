# QTG Test: 4.C.2b - Visual Scene Fidelity

**Test ID:** QTG-TEST_4.C.2b  
**Revision:** 1.5.0  
**Effective Date:** 2025-10-27  
**Simulator ID:** FFS-001  
**Qualification Level:** EASA Level D

---

## 1. Objective

To verify that the visual scene presented to the pilot accurately represents the AMPEL360 aircraft out-of-cockpit view, including correct geometric relationships, lighting, textures, and special visual effects.

---

## 2. Source Data Reference

### 2.1 Regulatory Standard
- **Reference:** EASA CS-FSTD(A) Issue 2, Appendix 1, Table 2, Test 4.c.2.b
- **Requirement:** Visual scene must replicate the pilot's view with sufficient fidelity to support training objectives

### 2.2 AMPEL360 Aircraft Data
- AMPEL360 Cockpit Geometry Database (Design Eye Point coordinates)
- AMPEL360 Exterior Visual Model v2.3
- Flight Test Visual Reference Photography

---

## 3. Test Setup

### 3.1 Equipment Required
- Calibrated camera at Design Eye Point (DEP)
- Brightness/color meter (spectroradiometer)
- Angular measurement device (inclinometer or laser rangefinder)
- Reference photographs from actual aircraft

### 3.2 Simulator Configuration
- **Aircraft:** AMPEL360 (standard configuration)
- **Airport:** LFPG (Paris Charles de Gaulle) - high-detail database
- **Runway:** 27R (for approach and landing tests)
- **Weather:** Clear sky, visibility >10 km
- **Time of Day:** Noon (high sun angle)

---

## 4. Test Procedure

### 4.1 Geometric Fidelity

#### Test 4.C.2b.1: Field of View (FOV)
1. Position simulator on LFPG runway 27R centerline, stopped
2. From Design Eye Point, measure angular extent of visible scene
3. Verify FOV coverage:
   - **Horizontal:** ≥ 220° (left, center, right displays)
   - **Vertical:** ≥ 80° (includes wing leading edge and overhead sky)

**Expected Result:** FOV meets or exceeds EASA Level D requirements (≥180° H, ≥40° V)

#### Test 4.C.2b.2: Horizon Line Accuracy
1. Position simulator in level flight, 5000 ft AGL, wings level
2. Measure horizon line position relative to cockpit references (glareshield, HUD)
3. Compare to AMPEL360 aircraft reference photos

**Expected Result:** Horizon line within ±1° of reference data

#### Test 4.C.2b.3: Wing and Ground References (AMPEL360 BWB-Specific)
1. Position simulator on ground, parking position
2. Verify visibility of:
   - Wing leading edges (left and right)
   - Wing tips (should be partially visible in peripheral vision)
   - Ground beneath windshield (BWB has unique ground visibility)
3. Compare to aircraft reference photos

**Expected Result:** Wing and ground references match aircraft within ±5% angular error

### 4.2 Visual Database Quality

#### Test 4.C.2b.4: Airport Feature Accuracy (LFPG)
1. Position simulator at LFPG runway 27R threshold
2. Verify presence and accuracy of:
   - Runway markings (threshold, centerline, touchdown zone, numbers)
   - Taxiway signs and markings
   - Airport buildings and terminals (Terminal 1, 2E visible from runway)
   - Lighting (PAPI, runway edge lights, taxiway lights)

**Expected Result:** All required features present and accurately positioned (±10m)

#### Test 4.C.2b.5: Terrain and Cultural Features
1. Position simulator on approach to LFPG runway 27R, 5 nm final
2. Verify presence of:
   - Terrain elevation (should match real-world DEM data)
   - Major roads and landmarks (A1 autoroute, nearby towns)
   - Vegetation and land use (fields, forests, urban areas)

**Expected Result:** Terrain and features consistent with satellite imagery and charts

### 4.3 Lighting and Textures

#### Test 4.C.2b.6: Surface Texture Quality
1. Position simulator on LFPG runway 27R, stationary
2. Inspect texture resolution and clarity:
   - Runway surface (cracks, paint, tire marks)
   - Grass and pavement transitions
   - Building facades

**Expected Result:** Textures support training objectives, no visible pixelation or aliasing at typical viewing distances

#### Test 4.C.2b.7: Lighting Effects (Day)
1. Position simulator at noon, clear weather
2. Verify:
   - Sun position matches time of day and geographic location
   - Shadows cast by aircraft (wing shadow on ground)
   - Dynamic range (bright sky vs. shaded areas)

**Expected Result:** Lighting realistic, shadows present and correctly oriented

#### Test 4.C.2b.8: Lighting Effects (Night)
1. Position simulator at midnight, clear weather, LFPG runway 27R
2. Verify:
   - Runway lighting (edge lights, centerline, PAPI)
   - Airport lighting (taxiway, apron, terminal)
   - Aircraft lighting reflection on ground

**Expected Result:** All required lights functional, intensities realistic

### 4.4 Special Visual Effects (AMPEL360-Specific)

#### Test 4.C.2b.9: Wing Flex Visualization
1. Configure simulator in flight, 250 KIAS, turbulence active
2. Observe wing leading edges during turbulence and maneuvering
3. Verify wing flex is visible and realistic

**Expected Result:** Wing flex animation present, magnitude consistent with structural analysis data

#### Test 4.C.2b.10: Open-Fan Propulsor Visualization
1. Position simulator on ground, engines running (idle to full thrust)
2. Verify:
   - Rotating fan blades visible (if within FOV)
   - Exhaust heat distortion (shimmer effect)
   - Lighting effects on propulsor nacelles

**Expected Result:** Propulsor effects visible and realistic

#### Test 4.C.2b.11: Ground Effect Visualization
1. Position simulator on approach, 50 ft AGL, simulating flare
2. Observe ground proximity cues:
   - Terrain texture detail increase
   - Ground rush effect (peripheral motion)
   - Any visual cues specific to BWB ground effect

**Expected Result:** Ground effect cues present and realistic

---

## 5. Expected Results Summary

| Test | Parameter | Expected Result | Tolerance | Pass/Fail |
|------|-----------|----------------|-----------|-----------|
| 4.C.2b.1 | FOV Horizontal | ≥220° | - | _____ |
| 4.C.2b.1 | FOV Vertical | ≥80° | - | _____ |
| 4.C.2b.2 | Horizon Accuracy | Reference ±1° | - | _____ |
| 4.C.2b.3 | Wing References | Reference ±5% | - | _____ |
| 4.C.2b.4 | Airport Features | Present, ±10m | - | _____ |
| 4.C.2b.5 | Terrain | Matches DEM data | ±5m | _____ |
| 4.C.2b.6 | Texture Quality | No pixelation | - | _____ |
| 4.C.2b.7 | Day Lighting | Realistic shadows | - | _____ |
| 4.C.2b.8 | Night Lighting | All lights functional | - | _____ |
| 4.C.2b.9 | Wing Flex | Visible, realistic | - | _____ |
| 4.C.2b.10 | Propulsors | Effects visible | - | _____ |
| 4.C.2b.11 | Ground Effect | Cues present | - | _____ |

---

## 6. Acceptance Criteria

**PASS:** All visual elements present and accurate within specified tolerances. Visual scene supports all training objectives without negative training.  
**FAIL:** Any required element missing, or accuracy exceeds tolerance. Visual scene has artifacts that could lead to negative training.

---

## 7. Non-Conformance Actions

If test fails:
1. Document specific deficiency (missing element, inaccurate geometry, etc.)
2. Log defect in `/06-REGISTRY_AND_LOGS/defects.csv`
3. Coordinate with visual database provider or image generator vendor
4. Re-test after corrective action

---

## 8. Sign-off

### 8.1 Test Execution

**Test Engineer:** _______________  
**Date:** _______________  
**Signature:** _______________

### 8.2 Regulatory Witness (if required)

**Regulatory Authority:** EASA  
**Inspector Name:** _______________  
**Date:** _______________  
**Signature:** _______________

---

## 9. Traceability

**Related Documents:**
- SPEC_Image-Generator-System.md
- SPEC_Projector-And-Display-System.md
- AMPEL360 Exterior Visual Model v2.3

**Compliance:**
- EASA CS-FSTD(A) Issue 2, Appendix 1, Table 2, Test 4.c.2.b

**Cross-References:**
- ATA 115: Visual Database Specification
- AMPEL360 Design Eye Point Specification

---

*Refs: ATA 115, ATA 116, EASA CS-FSTD(A)*
