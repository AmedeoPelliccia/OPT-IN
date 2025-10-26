# PROC – Ground Vibration Survey (GVS)

**Document ID:** PROC_Ground-Vibration-Survey-GVS  
**Revision:** 1.0.0  
**Effective Date:** 2028-04-15  
**Status:** Released

---

## 1. Purpose and Scope

This procedure defines the requirements and methodology for conducting Ground Vibration Surveys (GVS) on AMPEL360 aircraft. GVS is performed to establish baseline vibration signatures, verify structural dynamic characteristics, and validate modifications.

**Applicability:** All AMPEL360 aircraft

---

## 2. When to Perform GVS

### 2.1 Mandatory GVS Events

| Event | Timing | Reason |
|-------|--------|--------|
| **Initial Production** | Prior to first flight | Establish baseline |
| **Post-Major Modification** | Before return to service | Verify structural integrity |
| **5-Year Periodic** | Every 5 years or 25,000 FH | Re-baseline and calibration |
| **Post-Incident** | After structural damage/repair | Verify repair quality |

### 2.2 Optional GVS

- Investigation of unexplained vibration trends
- Flutter clearance verification
- New component qualification
- Engineering investigation requests

---

## 3. Prerequisites

### 3.1 Aircraft Configuration

- Aircraft on jacks or landing gear
- All fuel tanks empty or at specified load condition
- All removable equipment installed per configuration drawing
- Center of gravity within specified range
- Flight controls in neutral position and locked

### 3.2 Environmental Conditions

| Parameter | Requirement |
|-----------|-------------|
| Temperature | 10°C to 30°C |
| Wind Speed | < 5 knots |
| Precipitation | None |
| Location | Enclosed hangar (preferred) or sheltered hardstand |

### 3.3 Personnel Requirements

| Role | Qualification | Quantity |
|------|--------------|----------|
| Test Engineer | GVS certified, 5+ years experience | 1 |
| Technician | Vibration analysis training | 2 |
| Safety Monitor | Ground operations certified | 1 |

---

## 4. Equipment and Instrumentation

### 4.1 Required Equipment

| Item | Part Number | Quantity | Calibration Status |
|------|-------------|----------|-------------------|
| Portable DAU | AP360-T020 | 1 | Valid within 12 months |
| Triaxial Accelerometers | Wilcoxon-793L | 20 | Valid within 24 months |
| Uniaxial Accelerometers | PCB-356A15 | 10 | Valid within 24 months |
| Shaker (Electrodynamic) | MB-PM50 | 1 | Valid within 12 months |
| Power Amplifier | MB-PM500 | 1 | - |
| Signal Generator | NI-PXIe-5413 | 1 | Valid within 12 months |
| Impulse Hammer | PCB-086E80 | 1 | Valid within 24 months |
| Force Transducer | PCB-208C05 | 1 | Valid within 24 months |
| Reference Accelerometer | PCB-394C06 | 1 | Valid within 12 months |
| Laptop Computer | Dell Precision | 1 | With GVS software v3.2+ |

### 4.2 Calibration Verification

Before test:
1. Verify all sensors within calibration date
2. Perform back-to-back comparison with reference accelerometer
3. Acceptance: ±5% agreement from 10 Hz to 1 kHz

---

## 5. Sensor Placement

### 5.1 Standard Sensor Grid

**Fuselage (8 locations):**
- Nose: Station 50, centerline
- Forward: Station 120, ±60" from centerline
- Mid: Station 300, ±60" from centerline  
- Aft: Station 480, centerline

**Wings (6 locations per wing):**
- Root: WBL 0, front spar, mid spar, rear spar
- Mid-span: WBL 180, front spar, rear spar
- Tip: WBL 360, front spar

**Empennage (2 locations):**
- Vertical stabilizer root
- Horizontal stabilizer tips (if applicable)

**Propulsion (4 locations per engine):**
- Forward nacelle mount
- Aft nacelle mount
- Gearbox housing
- Turbine case

**Total: 42 sensors minimum**

### 5.2 Sensor Attachment

- **Stud Mount:** For threaded inserts (torque 8-12 N⋅m)
- **Adhesive Mount:** Loctite 496 + 770 primer for smooth surfaces
- **Magnetic Mount:** For ferrous surfaces (verify attraction > 50 N)
- **Wax Mount:** For temporary installations on painted surfaces

**Mounting Orientation:** Align triaxial sensors with aircraft axes (X=longitudinal, Y=lateral, Z=vertical)

---

## 6. Test Procedures

### 6.1 Pre-Test Checks

1. Walk-around inspection
2. Verify aircraft configuration matches test plan
3. Install all sensors per grid layout
4. Connect sensors to DAU, verify continuity
5. Perform sensor tap test (verify signal response)
6. Establish test exclusion zone (20 m radius)
7. Brief all personnel on test sequence

### 6.2 Ambient Vibration Test

**Purpose:** Measure background noise and verify sensor operation

**Procedure:**
1. All personnel exit exclusion zone
2. Record 60 seconds of ambient data
3. Verify all sensors show noise floor < 0.001g RMS
4. Identify any external disturbances (HVAC, adjacent machinery)

### 6.3 Impulse Response Test (Hammer Test)

**Purpose:** Measure modal frequencies and damping ratios

**Procedure:**
1. Select excitation point (e.g., wing tip, tail)
2. Apply single impulse with calibrated hammer
3. Record transient response (10 seconds, 2048 Hz sample rate)
4. Repeat 5 times per location for averaging
5. Extract natural frequencies via FFT and Half-Power Bandwidth method

**Excitation Locations:**
- Left wing tip (vertical direction)
- Right wing tip (vertical direction)
- Vertical stabilizer tip (lateral direction)
- Nose (vertical direction)

### 6.4 Shaker Excitation Test

**Purpose:** Obtain high-resolution frequency response functions (FRFs)

**Shaker Attachment:**
- Location: Wing root or fuselage frame (nodal location)
- Direction: Vertical (Z-axis) preferred
- Attachment: Stinger rod + force transducer
- Verify stinger alignment (no lateral load)

**Swept Sine Test:**
1. Frequency range: 1 Hz to 100 Hz
2. Sweep rate: 0.1 Hz/second (logarithmic)
3. Amplitude: Maintain 0.05g response at reference sensor
4. Record: All channels continuously

**Dwell Test (Optional):**
1. Identify resonance peaks from swept sine
2. Dwell at each resonance ±10% for 60 seconds
3. Measure phase relationships and mode shapes

---

## 7. Data Processing and Analysis

### 7.1 Modal Analysis

**Extract Modal Parameters:**
- Natural frequencies (fn): Peak identification in FRF magnitude
- Damping ratios (ζ): Half-Power Bandwidth method
- Mode shapes: Animated deflection patterns from phase data

**Acceptance Criteria:**
- All modes identified within 1-100 Hz range
- Damping ratios > 1% critical (flutter safety margin)
- Mode shapes physically realistic (no measurement artifacts)

### 7.2 Comparison to Finite Element Model (FEM)

| Mode | Description | FEM Prediction (Hz) | GVS Measured (Hz) | Deviation |
|------|-------------|-------------------|------------------|-----------|
| 1 | 1st Wing Bending | 6.2 | 6.5 | +4.8% |
| 2 | 2nd Wing Bending | 18.5 | 18.2 | -1.6% |
| 3 | 1st Wing Torsion | 24.3 | 25.1 | +3.3% |
| 4 | Fuselage Bending | 12.8 | 12.6 | -1.6% |
| 5 | V-Tail Lateral | 35.2 | 34.8 | -1.1% |

**Acceptance:** Deviation < ±10% indicates good model correlation

### 7.3 Flutter Safety Margin

**Calculate Flutter Margin:**
```
Flutter Margin = (f_flutter - f_operating) / f_flutter × 100%
```

Where:
- f_flutter = Predicted flutter frequency (from analysis)
- f_operating = Highest measured operational frequency

**Requirement:** Flutter margin > 15% for certification

**Example for AMPEL360:**
- f_flutter = 10.2 Hz (predicted)
- f_operating = 6.5 Hz (1st wing bending, max loading)
- Margin = (10.2 - 6.5) / 10.2 × 100% = **36%** ✓

---

## 8. Test Report

### 8.1 Required Content

1. **Executive Summary**: Pass/fail, key findings
2. **Test Configuration**: Aircraft MSN, weight, CG, modifications
3. **Test Conditions**: Date, location, temperature, wind
4. **Instrumentation**: Sensor list, calibration dates, layout drawing
5. **Results**: Modal table, FRF plots, mode shape animations
6. **Comparison to FEM**: Correlation table, deviation analysis
7. **Flutter Assessment**: Margin calculation, safety statement
8. **Recommendations**: Any corrective actions, re-test requirements

### 8.2 Deliverables

| Document | Format | Recipient |
|----------|--------|-----------|
| Test Report | PDF | Engineering, Airworthiness |
| Raw Data | HDF5 | Data archive (ATA 95 DPP) |
| Processed Data | MATLAB .mat | Structures engineering |
| Mode Shape Animations | MP4 video | Engineering, Certification |

---

## 9. Post-Test Actions

### 9.1 Sensor Removal

1. Remove all sensors
2. Clean mounting surfaces (remove adhesive residue with IPA)
3. Inspect for any damage caused by sensor installation
4. Touch up paint as required

### 9.2 Aircraft Return to Service

1. Remove test equipment
2. Restore aircraft configuration (unlock controls, etc.)
3. Perform functional checks
4. Update aircraft maintenance log
5. Update DPP with GVS completion

### 9.3 Data Archiving

- Upload to DPP: `DPP://MSN-XXX/GVS/YYYY-MM-DD`
- Retention: Indefinite (certification evidence)

---

## 10. Safety Precautions

### 10.1 Hazards

- **Shaker Overload**: Can cause structural damage if mis-tuned
- **Electrical Shock**: High-voltage amplifier output
- **Personnel Injury**: Hammer impact, sensor installation at height

### 10.2 Controls

- **Shaker Amplitude Limiting**: Set maximum output to 0.1g
- **Lockout/Tagout**: Amplifier power during sensor work
- **Fall Protection**: Safety harness for work above 6 feet
- **Exclusion Zone**: No personnel within 20 m during excitation

---

## 11. Training Requirements

- GVS Test Engineer: 40-hour course + 3 supervised tests
- GVS Technician: 16-hour course + 1 supervised test
- Refresher: Every 24 months

---

## 12. Cross-References

- **ATA 05**: Time Limits/Maintenance Checks (GVS schedule)
- **ATA 51**: Standard Practices and Structures
- **PLAN_Vibration-And-Noise-Management-Program**: Program overview
- **MAP_Sensor-Locations-And-Part-Numbers**: Permanent sensor grid

---

**Document Control:**
- **Next Review:** 2029-04-15
- **Change Authority:** Structures Engineering

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
