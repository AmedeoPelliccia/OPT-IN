# QTG Test: 4.D.1a - Motion Onset Cues

**Test ID:** QTG-TEST_4.D.1a  
**Revision:** 1.8.0  
**Effective Date:** 2025-10-27  
**Simulator ID:** FFS-001  
**Qualification Level:** EASA Level D

---

## 1. Objective

To verify that the motion platform provides accurate onset cues in response to pilot control inputs and aircraft dynamics, ensuring proper motion fidelity for training.

---

## 2. Source Data Reference

### 2.1 Regulatory Standard
- **Reference:** EASA CS-FSTD(A) Issue 2, Appendix 1, Table 3, Test 4.d.1.a
- **Requirement:** Motion onset cues must be present and consistent with the aircraft's response to control inputs

### 2.2 AMPEL360 Aircraft Data
- AMPEL360 Flight Test Data (control response time constants)
- BWB Handling Qualities Report
- Fly-by-Wire Control Law Response Characteristics

---

## 3. Test Setup

### 3.1 Equipment Required
- 3-axis accelerometer (mounted on motion platform, 1000 Hz sampling)
- Angular rate sensors (3-axis gyroscope, 1000 Hz sampling)
- Control input recording (yoke, rudder position sensors)
- Data acquisition system (synchronized timing)

### 3.2 Simulator Configuration
- **Flight Phase:** Level flight, 250 KIAS, 10,000 ft MSL
- **Aircraft State:** Trimmed, stable
- **Systems:** Motion system active, normal control law
- **Weather:** Clear sky, no turbulence
- **Time of Day:** Daylight

---

## 4. Test Procedure

### 4.1 Pre-Test Checks
1. Verify motion system is calibrated and operational
2. Verify washout algorithm is loaded (AMPEL360 BWB tuning)
3. Mount accelerometer and gyroscope on platform (center, near pilot seat)
4. Synchronize all data acquisition clocks
5. Record 10 seconds of baseline data (no motion)

### 4.2 Test Execution

#### Test 4.D.1a.1: Roll Onset (Step Input)
1. Apply a rapid roll input (yoke, 15° in <200 ms)
2. Record:
   - Control input time history
   - Motion platform roll rate and acceleration
   - Pilot subjective assessment (onset cue present, realistic)
3. Repeat 3 times, average results

**Expected Result:** Roll motion onset within 100 ms of control input, peak roll rate consistent with aircraft dynamics

#### Test 4.D.1a.2: Pitch Onset (Step Input)
1. Apply a rapid pitch input (yoke, 5° pull in <200 ms)
2. Record:
   - Control input time history
   - Motion platform pitch rate and heave acceleration
   - Pilot subjective assessment
3. Repeat 3 times, average results

**Expected Result:** Pitch motion onset within 100 ms of control input, heave acceleration consistent with load factor change

#### Test 4.D.1a.3: Yaw Onset (Step Input)
1. Apply a rapid yaw input (rudder, 10° deflection in <200 ms)
2. Record:
   - Control input time history
   - Motion platform yaw rate and lateral acceleration
   - Pilot subjective assessment
3. Repeat 3 times, average results

**Expected Result:** Yaw motion onset within 100 ms of control input, lateral acceleration consistent with sideslip

#### Test 4.D.1a.4: Combined Input (Roll + Pitch)
1. Apply simultaneous roll and pitch input (simulating turn entry)
2. Record motion platform response on all 6 DOF
3. Verify coordinated motion (e.g., roll + yaw for coordinated turn)

**Expected Result:** Multi-axis motion onset coordinated and realistic

#### Test 4.D.1a.5: Sustained Motion (Turbulence)
1. Activate light turbulence (simulator feature)
2. Record motion platform activity over 60 seconds
3. Verify sustained, random motion consistent with turbulence model

**Expected Result:** Turbulence motion continuous, not excessive washout

#### Test 4.D.1a.6: Motion Washout (Return to Neutral)
1. After a large maneuver (e.g., 30° bank turn), return to level flight
2. Record motion platform return to neutral position
3. Verify washout is smooth and imperceptible to pilot

**Expected Result:** Washout occurs below pilot perception threshold (~0.1 rad/s²), no jarring motion

---

## 5. Quantitative Acceptance Criteria

### 5.1 Onset Timing

| Test | Control Input | Motion Onset (Time to 10% Peak) | Tolerance | Pass/Fail |
|------|---------------|----------------------------------|-----------|-----------|
| Roll | 15° yoke deflection | < 100 ms | ±20 ms | _____ |
| Pitch | 5° yoke pull | < 100 ms | ±20 ms | _____ |
| Yaw | 10° rudder deflection | < 100 ms | ±20 ms | _____ |

### 5.2 Peak Response Magnitude (AMPEL360 BWB-Specific)

| Test | Expected Peak | Measured Peak | Tolerance | Pass/Fail |
|------|---------------|---------------|-----------|-----------|
| Roll Rate | 8 - 12°/s | _______ | ±20% | _____ |
| Pitch Rate | 3 - 5°/s | _______ | ±20% | _____ |
| Yaw Rate | 2 - 4°/s | _______ | ±20% | _____ |
| Lateral Accel (yaw) | 0.05 - 0.1 g | _______ | ±30% | _____ |
| Heave Accel (pitch) | 0.1 - 0.2 g | _______ | ±30% | _____ |

---

## 6. Qualitative Assessment (Pilot Subjective)

### 6.1 Pilot Questionnaire (to be completed by test pilot)

| Question | Rating (1-5) | Comments |
|----------|--------------|----------|
| Were roll onset cues realistic? | _____ | ________________ |
| Were pitch onset cues realistic? | _____ | ________________ |
| Were yaw onset cues realistic? | _____ | ________________ |
| Was motion magnitude appropriate? | _____ | ________________ |
| Was washout imperceptible? | _____ | ________________ |
| Overall motion fidelity? | _____ | ________________ |

**Rating Scale:** 1 = Poor, 2 = Fair, 3 = Good, 4 = Very Good, 5 = Excellent

**Acceptance:** All ratings ≥3, overall fidelity ≥4

---

## 7. Acceptance Criteria

**PASS:**
- All onset times < 100 ms (±20 ms tolerance)
- Peak response magnitudes within ±30% of expected values
- Pilot subjective ratings ≥3 (all), overall ≥4
- No false or jarring motion cues

**FAIL:**
- Any onset time ≥120 ms
- Peak response magnitude outside tolerance
- Pilot subjective ratings <3
- Motion cues inconsistent with aircraft dynamics

---

## 8. Non-Conformance Actions

If test fails:
1. Review washout algorithm parameters (gains, filter cutoffs)
2. Verify motion platform calibration
3. Check for actuator faults or performance degradation
4. Re-tune washout algorithm if necessary (see `/03-CALIBRATION_AND_ALIGNMENT/PROC_Motion-Platform-Washout-Tuning.md`)
5. Re-test after corrective action

---

## 9. Sign-off

### 9.1 Test Execution

**Test Pilot:** _______________  
**Date:** _______________  
**Signature:** _______________

**Test Engineer:** _______________  
**Date:** _______________  
**Signature:** _______________

### 9.2 Regulatory Witness (if required)

**Regulatory Authority:** EASA  
**Inspector Name:** _______________  
**Date:** _______________  
**Signature:** _______________

---

## 10. Traceability

**Related Documents:**
- SPEC_6DOF-Motion-Platform.md
- ICD_Host-To-Motion-Controller.md
- PROC_Motion-Platform-Washout-Tuning.md

**Compliance:**
- EASA CS-FSTD(A) Issue 2, Appendix 1, Table 3, Test 4.d.1.a

**Cross-References:**
- ATA 27: Flight Controls (source data for control response)
- AMPEL360 Handling Qualities Report

---

*Refs: ATA 115, ATA 27, EASA CS-FSTD(A)*
