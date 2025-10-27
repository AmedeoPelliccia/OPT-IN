# PROC: Motion Platform Washout Tuning

**Document ID:** PROC-ATA116-03-02  
**Revision:** 1.3.0  
**Effective Date:** 2025-10-27  
**Simulator ID:** FFS-001

---

## 1. Purpose

To tune the motion platform washout algorithm parameters for optimal motion cueing fidelity, ensuring realistic onset cues while maximizing the effective motion envelope.

---

## 2. Prerequisites

### 2.1 System State
- Simulator powered on in maintenance/engineering mode
- Motion platform operational and calibrated (actuator positions verified)
- Host computer running, motion system enabled
- Test pilot available for subjective evaluation

### 2.2 Required Equipment

| Equipment | Description |
|-----------|-------------|
| **3-Axis Accelerometer** | Mounted on motion platform, 1000 Hz sampling |
| **3-Axis Gyroscope** | Mounted on motion platform, 1000 Hz sampling |
| **Data Acquisition System** | For recording motion data |
| **Washout Tuning Software** | Running on engineering workstation |

### 2.3 Personnel
- **Minimum:** 1 Motion Systems Engineer + 1 Test Pilot
- **Recommended:** Motion Systems Engineer, Test Pilot, Simulation Engineer

---

## 3. Safety Precautions

### 3.1 Motion Platform Safety
- Ensure simulator bay is clear of personnel during motion tests
- Emergency stop (E-Stop) must be accessible and functional
- Motion platform must return to neutral between tests
- Do not exceed safe motion limits (risk of actuator damage)

### 3.2 Test Pilot Safety
- Test pilot must be briefed on emergency procedures
- Test pilot must report any discomfort or disorientation immediately
- If pilot experiences motion sickness, stop testing and allow recovery

---

## 4. Procedure

### 4.1 Preparation (15 minutes)

#### Step 1: Load Baseline Washout Parameters
1. On engineering workstation, launch Washout Tuning Software
2. Load current washout parameter set (AMPEL360 BWB baseline)
3. Verify parameters are loaded in motion controller

#### Step 2: Setup Data Logging
1. Connect accelerometer and gyroscope to data acquisition system
2. Verify sensors are recording (check signal quality)
3. Start data logging (continuous recording during all tests)

#### Step 3: Test Pilot Briefing
1. Brief test pilot on test objectives and maneuvers
2. Explain subjective rating scale (see Section 4.5)
3. Ensure pilot is familiar with E-Stop location and procedure

---

### 4.2 Washout Parameter Overview

The classical washout algorithm consists of:

#### High-Pass Filters (Translational Channels: Surge, Sway, Heave)
- **Purpose:** Allow onset cues (high-frequency), attenuate sustained motion (low-frequency)
- **Key Parameters:**
  - **Corner Frequency (ωₙ):** 0.5 - 2.0 rad/s (typical)
  - **Damping Ratio (ζ):** 0.7 - 1.0 (slightly overdamped)
  - **Gain (K):** 0.5 - 1.5 (scales motion magnitude)

#### Low-Pass Filters (Rotational Channels: Roll, Pitch, Yaw)
- **Purpose:** Provide sustained rotational cues (use tilt-coordination for sustained acceleration)
- **Key Parameters:**
  - **Corner Frequency (ωₙ):** 0.3 - 1.0 rad/s
  - **Damping Ratio (ζ):** 0.7 - 1.0
  - **Gain (K):** 0.8 - 1.2

#### Tilt-Coordination (for Sustained Acceleration)
- **Purpose:** Use platform tilt to simulate sustained linear acceleration (e.g., turns, climb)
- **Key Parameters:**
  - **Tilt Gain:** 0.5 - 1.0 (fraction of gravitation vector used)
  - **Tilt Rate Limit:** 3 - 10°/s (to avoid false cues)

---

### 4.3 Baseline Motion Tests (30 minutes)

#### Test 1: Roll Step Input (Onset Cue)
1. **Maneuver:** Pilot applies rapid roll input (15° yoke deflection in <200 ms)
2. **Record:** Motion platform roll rate, roll acceleration
3. **Pilot Rating:** Rate onset cue realism (1-5 scale)
4. **Objective Metric:** Time to 10% peak roll rate (should be <100 ms)

**Tuning Goal:** Strong, immediate roll onset cue, minimal false motion

#### Test 2: Pitch Step Input (Onset Cue + Heave)
1. **Maneuver:** Pilot applies rapid pitch pull (5° yoke pull in <200 ms)
2. **Record:** Motion platform pitch rate, heave acceleration
3. **Pilot Rating:** Rate onset cue and load factor cue realism
4. **Objective Metric:** Heave acceleration peak (should be 0.1-0.2g for 1g load factor change)

**Tuning Goal:** Realistic pitch onset + heave cue for load factor change

#### Test 3: Yaw Step Input (Onset Cue + Lateral Accel)
1. **Maneuver:** Pilot applies rapid rudder input (10° deflection in <200 ms)
2. **Record:** Motion platform yaw rate, lateral acceleration (sway)
3. **Pilot Rating:** Rate onset cue and sideslip sensation
4. **Objective Metric:** Lateral acceleration peak (should be 0.05-0.1g for sideslip)

**Tuning Goal:** Realistic yaw onset + lateral acceleration cue

#### Test 4: Sustained Turn (Tilt-Coordination)
1. **Maneuver:** Pilot enters a steady 30° bank turn, maintain for 30 seconds
2. **Record:** Motion platform roll angle, pilot subjective assessment
3. **Pilot Rating:** Does sustained turn feel realistic? Any false washout cues?
4. **Objective Metric:** Platform roll should stabilize at ~5-15° (partial tilt-coordination)

**Tuning Goal:** Sustained turn cue without excessive washout or false sensation

#### Test 5: Turbulence (Random Motion)
1. **Maneuver:** Activate light turbulence in simulator
2. **Record:** Motion platform activity over 60 seconds
3. **Pilot Rating:** Does turbulence feel realistic? Too much/too little motion?
4. **Objective Metric:** RMS acceleration (should be 0.02-0.05g for light turbulence)

**Tuning Goal:** Realistic turbulence cues without excessive motion

---

### 4.4 Parameter Adjustment (Iterative, 60-90 minutes)

#### Step 4: Analyze Baseline Results
1. Review pilot subjective ratings (identify weak areas)
2. Review objective metrics (onset timing, peak magnitudes)
3. Identify which parameters to adjust (see guidelines below)

#### Step 5: Adjust Parameters

**Common Adjustments:**

| Issue | Likely Cause | Adjustment |
|-------|--------------|------------|
| **Roll onset too weak** | Low high-pass gain | Increase roll HPF gain (K) by 10-20% |
| **Roll onset too strong/jarring** | High high-pass gain | Decrease roll HPF gain (K) by 10-20% |
| **Heave cue missing** | Low heave gain | Increase heave HPF gain (K) by 10-20% |
| **False washout sensation** | High washout rate | Decrease HPF corner frequency (ωₙ) by 10-20% |
| **Sustained turn feels wrong** | Tilt-coordination gain issue | Adjust tilt gain (increase for more sustained cue) |
| **Excessive motion in turbulence** | High turbulence gain | Decrease turbulence scaling factor |

#### Step 6: Re-Test After Adjustment
1. Load new parameter set into motion controller
2. Repeat Test 1-5 with new parameters
3. Compare pilot ratings and objective metrics to baseline
4. Continue iterative tuning until all criteria met (see Section 4.6)

---

### 4.5 Pilot Subjective Rating Scale

**Rating Scale (1-5):**
- **5 = Excellent:** Motion cues indistinguishable from aircraft, supports training
- **4 = Very Good:** Motion cues realistic, minor discrepancies not affecting training
- **3 = Good:** Motion cues adequate, acceptable for training but room for improvement
- **2 = Fair:** Motion cues noticeable discrepancies, may limit training effectiveness
- **1 = Poor:** Motion cues unrealistic or absent, negative training risk

**Acceptance Criteria:** All maneuvers rated ≥3, majority rated ≥4

---

### 4.6 Completion Criteria

**PASS:**
- All onset times <100 ms (objective metric)
- Peak response magnitudes within ±30% of expected values
- Pilot subjective ratings ≥3 (all maneuvers), ≥4 (majority)
- Sustained motion (turns, turbulence) feels realistic, no false washout cues
- Motion does not exceed platform physical limits (actuator stroke <90% of max)

**FAIL:** Any criteria not met → continue iterative tuning or escalate to motion system vendor

---

### 4.7 Finalization (15 minutes)

#### Step 7: Save Tuned Parameters
1. In Washout Tuning Software, save final parameter set
2. Label parameter set: "AMPEL360_BWB_Washout_v[version]_[date]"
3. Backup parameter file to network storage and USB

#### Step 8: Load Parameters into Production
1. Load tuned parameters into motion controller (production system)
2. Perform quick verification test (Test 1: Roll step input)
3. Confirm motion response is as expected

#### Step 9: Document Results
1. Record final parameter values in tuning report (template provided in software)
2. Log tuning activity in `/06-REGISTRY_AND_LOGS/calibration_log.csv`
3. Update next tuning due date in `/03-CALIBRATION_AND_ALIGNMENT/schedule.csv`

---

## 5. Frequency

- **Semi-Annually:** Full washout tuning review and validation
- **After Major Changes:** Full re-tuning if motion system hardware changed, or aircraft model significantly updated
- **Quarterly:** Quick verification (Test 1-3 only, subjective pilot rating)

---

## 6. Traceability

**Related Documents:**
- SPEC_6DOF-Motion-Platform.md
- QTG-TEST_4.D.1a_Motion-Onset-Cues.md
- AMPEL360 Handling Qualities Report (source data)

**Calibration Schedule:**
- See `/03-CALIBRATION_AND_ALIGNMENT/schedule.csv`

**Defect Tracking:**
- See `/06-REGISTRY_AND_LOGS/defects.csv`

---

## 7. Approval

**Author:** Motion Systems Engineer  
**Reviewed by:** Chief Simulator Engineer  
**Approved by:** Simulator Engineering Authority  
**Approval Date:** 2025-10-27  

**Signature:** ______________________

---

*Refs: ATA 115, ATA 27, EASA CS-FSTD(A)*
