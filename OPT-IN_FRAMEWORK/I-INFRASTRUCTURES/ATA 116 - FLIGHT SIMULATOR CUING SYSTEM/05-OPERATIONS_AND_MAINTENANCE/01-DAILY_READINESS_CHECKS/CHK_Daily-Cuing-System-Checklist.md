# CHK: Daily Cuing System Readiness Checklist

**Document ID:** CHK-ATA116-05-01  
**Revision:** 1.2.0  
**Effective Date:** 2029-01-01  
**Simulator ID:** FFS-001

---

## 1. Purpose

This checklist ensures all cuing systems (visual, motion, aural, control loading) are operational and ready for training sessions. This check is performed daily before the first training session.

---

## 2. Personnel

**Minimum:** 1 Simulator Technician (certified on FFS-001)  
**Time Required:** Approximately 20 minutes

---

## 3. Prerequisites

- Simulator powered on (all systems energized)
- No active maintenance or defects that would prevent operation
- Checklist form available (paper or electronic)

---

## 4. Checklist

### 4.1 Visual System

| Item | Check | Status | Initials |
|------|-------|--------|----------|
| **1.** All projectors powered on and displaying image | Verify | ☐ Pass ☐ Fail | _____ |
| **2.** No visible artifacts, seams, or dead pixels | Visual inspection from pilot seat | ☐ Pass ☐ Fail | _____ |
| **3.** Brightness uniform across all channels | Display white test pattern | ☐ Pass ☐ Fail | _____ |
| **4.** Color balance acceptable (no color cast) | Display neutral gray pattern | ☐ Pass ☐ Fail | _____ |
| **5.** Image generator responding to host commands | Load test scene (LFPG runway) | ☐ Pass ☐ Fail | _____ |
| **6.** Frame rate stable at 60 Hz | Check IOS performance monitor | ☐ Pass ☐ Fail | _____ |

**Notes/Defects:** _______________________________________________________

---

### 4.2 Motion System

| Item | Check | Status | Initials |
|------|-------|--------|----------|
| **7.** Motion platform powered on, all actuators operational | Check status LEDs/IOS | ☐ Pass ☐ Fail | _____ |
| **8.** Motion platform at neutral position (level) | Visual inspection | ☐ Pass ☐ Fail | _____ |
| **9.** No hydraulic/pneumatic leaks visible | Visual inspection of actuators | ☐ Pass ☐ Fail | _____ |
| **10.** E-Stop buttons functional | Test (press and release) | ☐ Pass ☐ Fail | _____ |
| **11.** Motion system self-test passed | Run self-test from IOS | ☐ Pass ☐ Fail | _____ |
| **12.** Full range-of-motion sweep completed | Execute test pattern (all 6 DOF) | ☐ Pass ☐ Fail | _____ |
| **13.** No abnormal noise or vibration during motion | Listen/feel during sweep | ☐ Pass ☐ Fail | _____ |

**Notes/Defects:** _______________________________________________________

---

### 4.3 Aural System

| Item | Check | Status | Initials |
|------|-------|--------|----------|
| **14.** All audio amplifiers powered on | Check status LEDs/IOS | ☐ Pass ☐ Fail | _____ |
| **15.** Test tone audible from all speakers | Play test tone (1 kHz) | ☐ Pass ☐ Fail | _____ |
| **16.** No crackling, distortion, or dropouts | Listen during test tone | ☐ Pass ☐ Fail | _____ |
| **17.** Propulsor sounds functional (all modes) | Test battery, fuel-cell, thermal modes | ☐ Pass ☐ Fail | _____ |
| **18.** Warning tones and callouts functional | Test master warning, GPWS, etc. | ☐ Pass ☐ Fail | _____ |
| **19.** Volume levels appropriate | Verify not too loud/quiet | ☐ Pass ☐ Fail | _____ |

**Notes/Defects:** _______________________________________________________

---

### 4.4 Control Loading System

| Item | Check | Status | Initials |
|------|-------|--------|----------|
| **20.** All control loading actuators powered on | Check status LEDs/IOS | ☐ Pass ☐ Fail | _____ |
| **21.** Yoke force feedback operational (pitch & roll) | Apply force, verify resistance | ☐ Pass ☐ Fail | _____ |
| **22.** Rudder pedal force feedback operational | Apply force, verify resistance | ☐ Pass ☐ Fail | _____ |
| **23.** Throttle quadrant force feedback operational | Move throttles, verify detents | ☐ Pass ☐ Fail | _____ |
| **24.** Breakout forces appropriate | Verify not too stiff/loose | ☐ Pass ☐ Fail | _____ |
| **25.** No binding or jerky motion | Smooth motion through full range | ☐ Pass ☐ Fail | _____ |
| **26.** Position sensors functional | Check IOS for position readout | ☐ Pass ☐ Fail | _____ |

**Notes/Defects:** _______________________________________________________

---

### 4.5 Integrated System Test

| Item | Check | Status | Initials |
|------|-------|--------|----------|
| **27.** Perform integrated cuing test | Roll input → visual, motion, control loading respond | ☐ Pass ☐ Fail | _____ |
| **28.** Verify system latency acceptable | Subjective assessment (no lag) | ☐ Pass ☐ Fail | _____ |
| **29.** All systems synchronized | No timing mismatch between cues | ☐ Pass ☐ Fail | _____ |

**Notes/Defects:** _______________________________________________________

---

## 5. Final Assessment

### 5.1 Overall Status

- **☐ GO:** All items PASS, simulator ready for training
- **☐ NO-GO:** One or more items FAIL, simulator not ready for training

### 5.2 Defect Reporting

If any item fails:
1. Document defect in `/06-REGISTRY_AND_LOGS/defects.csv`
2. Notify simulator engineering team
3. Assess impact on training schedule
4. If defect is minor and does not affect training, may proceed with training (with instructor notification)
5. If defect is major (e.g., motion system inoperative), cancel training and schedule maintenance

---

## 6. Sign-Off

**Technician Name:** _______________________  
**Technician ID:** _______________________  
**Date:** _______________ **Time:** _______________  
**Signature:** _______________________

**Supervisor Review (if NO-GO):**  
**Supervisor Name:** _______________________  
**Date:** _______________ **Time:** _______________  
**Signature:** _______________________

---

## 7. Traceability

**Related Documents:**
- SPEC_Image-Generator-System.md
- SPEC_6DOF-Motion-Platform.md
- SPEC_Sound-System-And-Acoustic-Model.md
- SPEC_Flight-Control-Loading-Actuators.md

**Defect Tracking:**
- See `/06-REGISTRY_AND_LOGS/defects.csv`

**Status Updates:**
- Update simulator status in `/06-REGISTRY_AND_LOGS/status.json` after check

---

*Refs: ATA 115, ATA 116, Simulator Operations Manual*
