# QTG Test: 4.A.1a - System Transport Delay (Latency)

**Test ID:** QTG-TEST_4.A.1a  
**Revision:** 2.0.0  
**Effective Date:** 2029-01-01  
**Simulator ID:** FFS-001  
**Qualification Level:** EASA Level D

---

## 1. Objective

To measure the end-to-end transport delay from control input to visual and motion system response, ensuring it remains within the limits for Level D qualification.

---

## 2. Source Data Reference

### 2.1 Regulatory Standard
- **Reference:** EASA CS-FSTD(A) Issue 2, Appendix 1, Table 1, Test 4.a.1.a
- **Requirement:** Total latency must be less than 100 milliseconds (from control input to first detectable response in visual or motion system)

### 2.2 AMPEL360 Aircraft Data
- Not applicable (simulator system performance test, not aircraft-specific)

---

## 3. Test Setup

### 3.1 Equipment Required
- High-speed camera (minimum 240 fps, synchronized with test rig)
- Control input recording device (optical encoder on yoke, 1000 Hz sampling)
- Visual display timing sensor (photodiode aimed at known pixel location)
- Motion platform accelerometer (3-axis, mounted on platform, 1000 Hz sampling)
- Data acquisition system with synchronized time base (GPS/NTP time reference)

### 3.2 Simulator Configuration
- **Flight Phase:** Level flight, 250 KIAS, 10,000 ft MSL
- **Aircraft State:** Trimmed, stable
- **Systems:** All cuing systems active (visual, motion, aural, control loading)
- **Weather:** Clear sky, no turbulence
- **Time of Day:** Daylight

### 3.3 Measurement Points
- **Visual System:** Time from control input to first pixel change on center display
- **Motion System:** Time from control input to first detectable acceleration (>0.05 m/s²) on motion platform

---

## 4. Test Procedure

### 4.1 Pre-Test Checks
1. Verify all simulator systems are operational and calibrated
2. Synchronize all data acquisition clocks (GPS time or NTP)
3. Position high-speed camera to capture both yoke and visual display
4. Mount accelerometer on motion platform (center, near cockpit floor)
5. Verify data logging is active on all sensors

### 4.2 Test Execution

#### Step 1: Baseline Measurement
1. Record 5 seconds of data with simulator in steady state (no inputs)
2. Verify sensor noise levels are acceptable

#### Step 2: Roll Axis Test (Primary)
1. Instructor applies a rapid step input to the roll axis (yoke roll, 10° deflection in <100 ms)
2. Record the following:
   - **T0:** Time of control input start (yoke begins to move)
   - **T1:** Time of first pixel change on visual display (horizon line shift)
   - **T2:** Time of first detectable acceleration on motion platform roll axis (>0.05 m/s²)
3. Repeat 5 times with 30-second intervals
4. Record data for each trial

#### Step 3: Pitch Axis Test
1. Repeat Step 2 procedure for pitch axis (yoke pitch, 5° deflection)
2. Measure visual (horizon shift) and motion (heave/pitch acceleration) response

#### Step 4: Yaw Axis Test
1. Repeat Step 2 procedure for yaw axis (rudder pedal, 10° deflection)
2. Measure visual (heading change) and motion (yaw acceleration) response

### 4.3 Data Analysis
For each trial, calculate:
- **Δt_visual = T1 - T0** (Control to visual response time)
- **Δt_motion = T2 - T0** (Control to motion response time)

Compute mean and standard deviation across 5 trials per axis.

---

## 5. Expected Results

### 5.1 Pass Criteria (EASA CS-FSTD(A) Requirements)

| Parameter | Maximum Allowed | Typical (AMPEL360 FFS-001) |
|-----------|----------------|----------------------------|
| **Δt_visual (Visual System)** | < 100 ms | 35 - 45 ms |
| **Δt_motion (Motion System)** | < 100 ms | 45 - 55 ms |

### 5.2 Tolerance
- Each individual measurement must be < 100 ms
- Mean latency across 5 trials should be consistent (σ < 10 ms)

### 5.3 Expected Latency Breakdown (FFS-001)

| Component | Latency Contribution |
|-----------|---------------------|
| Host Computer Processing | 2 - 5 ms |
| Network Transmission | 1 - 2 ms |
| Image Generator Rendering | 20 - 30 ms |
| Projector Display Lag | 10 - 15 ms |
| Motion Controller Processing | 5 - 8 ms |
| Motion Platform Actuator Response | 30 - 40 ms |

---

## 6. Test Results (Template)

### 6.1 Roll Axis

| Trial | Δt_visual (ms) | Δt_motion (ms) | Pass/Fail |
|-------|---------------|---------------|-----------|
| 1 | __________ | __________ | __________ |
| 2 | __________ | __________ | __________ |
| 3 | __________ | __________ | __________ |
| 4 | __________ | __________ | __________ |
| 5 | __________ | __________ | __________ |
| **Mean** | __________ | __________ | __________ |
| **Std Dev** | __________ | __________ | __________ |

### 6.2 Pitch Axis

| Trial | Δt_visual (ms) | Δt_motion (ms) | Pass/Fail |
|-------|---------------|---------------|-----------|
| (same table structure) | | | |

### 6.3 Yaw Axis

| Trial | Δt_visual (ms) | Δt_motion (ms) | Pass/Fail |
|-------|---------------|---------------|-----------|
| (same table structure) | | | |

---

## 7. Acceptance Criteria

**PASS:** All measured latencies < 100 ms for both visual and motion systems, all axes.  
**FAIL:** Any single measurement ≥ 100 ms, or mean latency inconsistent (σ > 10 ms).

---

## 8. Non-Conformance Actions

If test fails:
1. Identify which system exceeded latency limit (visual, motion, or both)
2. Review system logs in `/06-REGISTRY_AND_LOGS/` for anomalies
3. Verify network configuration (check for packet loss, jitter)
4. Re-run test after corrective actions
5. Document findings in defects.csv

---

## 9. Sign-off

### 9.1 Test Execution

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
- SPEC_Image-Generator-System.md (visual system latency)
- SPEC_6DOF-Motion-Platform.md (motion system latency)
- ICD_Host-To-Motion-Controller.md (interface timing)

**Compliance:**
- EASA CS-FSTD(A) Issue 2, Appendix 1, Table 1, Test 4.a.1.a

**Cross-References:**
- ATA 115: Simulator Host Computer (timing source)
- ATA 27: Flight Controls (control input source)

---

*Refs: ATA 115 (Qualification Plan), ATA 27 (Flight Controls), EASA CS-FSTD(A)*
