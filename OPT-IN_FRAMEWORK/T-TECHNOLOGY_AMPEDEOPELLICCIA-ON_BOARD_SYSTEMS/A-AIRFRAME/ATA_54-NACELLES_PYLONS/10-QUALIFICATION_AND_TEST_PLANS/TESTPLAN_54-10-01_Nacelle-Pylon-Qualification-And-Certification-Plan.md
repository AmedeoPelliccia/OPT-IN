# TESTPLAN 54-10-01: Nacelle-Pylon Qualification and Certification Plan

**Document Type:** Test Plan  
**Revision:** 1.0.0  
**Effective Date:** 2028-12-05  
**Status:** Released for Certification

## 1. Introduction

### 1.1 Purpose
This Test Plan defines the qualification and certification testing program for the AMPEL360 nacelle and pylon structures. It establishes the test methodology, acceptance criteria, and documentation requirements to demonstrate compliance with FAA Part 25 and EASA CS-25 airworthiness standards.

### 1.2 Scope
This plan covers:
- Pylon static strength tests (ultimate load)
- Fan Blade Out (FBO) containment and structural integrity
- Nacelle acoustic fatigue testing
- Thrust reverser endurance testing
- Environmental testing
- Damage tolerance validation

### 1.3 Regulatory Basis
- FAA Part 25.305: Strength and deformation
- FAA Part 25.571: Damage tolerance and fatigue evaluation
- FAA Part 25.571 Appendix H: Instructions for Continued Airworthiness
- EASA CS-25 equivalent requirements

## 2. Test Matrix

### 2.1 Static Ultimate Load Tests
**Objective:** Demonstrate pylon structure can withstand 1.5 x limit loads without failure

**Test Articles:**
- Complete pylon assembly (3 articles minimum)
- Representative engine mass simulator
- Airframe attach fixture

**Load Cases (per DATA 54-01-03):**
1. Maximum forward thrust: 1275 kN
2. Maximum reverse thrust: 975 kN  
3. Maximum vertical gust: 630 kN
4. Maximum side gust: 570 kN
5. Engine seizure torsion: 270 kN-m
6. Combined load cases (thrust + gust combinations)

**Acceptance Criteria:**
- No structural failure at ultimate loads
- Permanent deformation < 5% of elastic deformation
- All failsafe features function as designed
- Crack initiation loads > 1.5 x limit loads

**Test Report:** STR-RPT-54-001

### 2.2 Fan Blade Out (FBO) Test
**Objective:** Demonstrate nacelle and pylon can contain fan blade failure and maintain engine attachment

**Test Article:**
- Complete nacelle assembly with pylon
- Full engine (or FBO test rig)
- Instrumentation: High-speed cameras, accelerometers, strain gauges

**Test Procedure:**
1. Install engine/nacelle on test stand
2. Run engine to critical speed
3. Trigger fan blade release
4. Monitor structural response
5. Inspect for damage post-test

**Acceptance Criteria:**
- Debris contained within nacelle (no perforation)
- Pylon maintains structural integrity (no collapse)
- Engine remains attached to pylon
- No secondary blade failures
- Deformation within predicted limits

**Test Report:** STR-RPT-54-002

### 2.3 Acoustic Fatigue Test
**Objective:** Demonstrate nacelle acoustic panels can withstand acoustic environment for full service life

**Test Article:**
- Representative nacelle panel section with acoustic treatment
- Acoustic chamber with high-SPL speakers

**Test Conditions:**
- Sound Pressure Level (SPL): 150 dB (maximum operating level)
- Frequency range: 20 Hz - 10 kHz (focus on 800-2500 Hz)
- Spectrum: Open-fan propulsor signature
- Duration: 10 million cycles (equivalent to 30,000 flight hours)

**Acceptance Criteria:**
- No cracking in face sheets
- No delamination of acoustic treatment
- No separation of honeycomb core
- Acoustic insertion loss degradation < 1 dB

**Test Report:** STR-RPT-54-003

### 2.4 Thrust Reverser Endurance Test
**Objective:** Demonstrate thrust reverser can complete 5,000 deployment cycles without failure

**Test Article:**
- Complete thrust reverser assembly
- Hydraulic test rig
- Actuators and control system

**Test Procedure:**
1. Install reverser on test fixture
2. Connect hydraulic and control systems
3. Cycle reverser: deploy → stow (5,000 times)
4. Monitor actuation time, forces, wear
5. Inspect components at intervals (1,000, 2,500, 5,000 cycles)

**Acceptance Criteria:**
- All 5,000 cycles completed successfully
- Deployment time remains < 3 seconds
- Stow time remains < 4 seconds
- Locks engage positively throughout test
- No hydraulic leaks
- Wear on components within allowable limits

**Test Report:** SYS-RPT-54-004

## 3. Environmental Testing

### 3.1 Temperature Extremes
- Cold soak: -55°C for 24 hours
- Hot soak: +70°C for 24 hours  
- Thermal cycling: -55°C to +70°C (50 cycles)

**Components Tested:**
- Composite panels
- Sealants and adhesives
- Hydraulic actuators
- Latch mechanisms

### 3.2 Humidity and Salt Fog
- Salt fog exposure: ASTM B117 (1,000 hours)
- Humidity: 95% RH at 50°C (500 hours)

**Acceptance:** No corrosion beyond acceptable limits per ATA 51

### 3.3 Rain Erosion
- Rain erosion test on leading edges
- Per ASTM G73 (simulated rain at cruise speed)

**Acceptance:** Erosion coating remains effective

## 4. Damage Tolerance Validation

### 4.1 Objective
Demonstrate compliance with FAA Part 25.571 damage tolerance requirements

### 4.2 Test Articles
- Pylon structure test coupons with pre-existing flaws
- Engine mount fittings with induced cracks

### 4.3 Test Procedure
1. Introduce known flaw (EDM notch or fatigue pre-crack)
2. Apply spectrum loading (flight-by-flight)
3. Periodically inspect (NDT) to monitor crack growth
4. Continue until failure or completion of 2-lifetime

### 4.4 Acceptance Criteria
- Crack growth rate within analytical predictions
- Detectable crack size reached before critical length
- Inspection intervals validated
- Fail-safe features activate before catastrophic failure

## 5. Test Documentation

### 5.1 Test Reports Required
Each test must produce:
- Test plan (this document)
- Test procedure (detailed step-by-step)
- Test report with:
  - Raw data
  - Data reduction and analysis
  - Photos/videos of test
  - Comparison to predictions
  - Acceptance criteria met/not met
  - Conclusions and recommendations

### 5.2 Traceability
All test results must be traceable to:
- Certification basis
- Analytical predictions
- Design requirements
- Test matrix (DATA 54-10-02)

### 5.3 Configuration Control
- Test articles must have build records
- Material certifications required
- Dimensional inspection before test
- Post-test teardown and inspection

## 6. Quality Assurance

### 6.1 Witnessing
The following must witness critical tests:
- FAA or EASA Designated Engineering Representative (DER)
- Company Quality Assurance
- Engineering responsible for design

### 6.2 Calibration
All test equipment must be:
- Calibrated within 90 days of test
- Traceable to NIST standards
- Documented in test report

### 6.3 Non-Conformances
Any test failure or anomaly requires:
- Immediate stop of test
- Root cause investigation
- Engineering disposition
- Corrective action before resuming

## 7. Schedule and Milestones

| Milestone | Target Date | Status |
|-----------|-------------|--------|
| Test Plan Approval | 2028-12-05 | Complete |
| Test Articles Fabrication | 2029-03-01 | Planned |
| Static Ultimate Load Test | 2029-06-01 | Planned |
| FBO Test | 2029-07-15 | Planned |
| Acoustic Fatigue Test Start | 2029-04-01 | Planned |
| Acoustic Fatigue Test Complete | 2030-10-01 | Planned |
| Thrust Reverser Endurance | 2029-09-01 | Planned |
| Environmental Tests | 2029-08-01 | Planned |
| Damage Tolerance Tests | 2029-05-01 | Planned |
| Final Certification Report | 2030-12-01 | Planned |

## 8. References
- FAA Part 25: Airworthiness Standards
- DATA 54-01-03: Design load cases
- DATA 54-10-02: Test matrix and acceptance criteria
- ATA 51: Structural damage tolerance philosophy

## 9. Approvals

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Structures Engineering | TBD | _________ | ______ |
| Test Engineering | TBD | _________ | ______ |
| Airworthiness Engineering | TBD | _________ | ______ |
| FAA DER | TBD | _________ | ______ |

---
**Document Control:**  
Document ID: TESTPLAN_54-10-01  
Revision: 1.0.0  
Effective: 2028-12-05
