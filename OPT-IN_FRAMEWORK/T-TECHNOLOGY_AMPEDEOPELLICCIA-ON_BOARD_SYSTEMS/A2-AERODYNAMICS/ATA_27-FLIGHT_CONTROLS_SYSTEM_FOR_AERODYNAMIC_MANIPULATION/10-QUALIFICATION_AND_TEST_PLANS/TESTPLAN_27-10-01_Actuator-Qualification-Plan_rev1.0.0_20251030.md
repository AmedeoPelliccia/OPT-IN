# TESTPLAN_27-10-01: Actuator Qualification Plan

**Document ID:** TESTPLAN_27-10-01_Actuator-Qualification-Plan_rev1.0.0_20251030  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30

## Purpose

Defines qualification test requirements for flight control actuators per DO-160, ARP4754A, and Part 25 requirements.

## Test Matrix

### Environmental Qualification (DO-160)

| Test | Category | Acceptance Criteria |
|------|----------|---------------------|
| Temperature (Operating) | Cat A3 | -55°C to +85°C, no degradation |
| Temperature (Storage) | N/A | -65°C to +95°C |
| Altitude | Cat A1 | 0 to 55,000 ft |
| Vibration | Cat U | Per DO-160 Section 8, Cat U |
| Humidity | Cat A | 95% RH, no condensation |
| Salt Fog | Cat S | Per DO-160 Section 11 |
| EMI/EMC | Cat M | Per DO-160 Section 21 |

### Functional Tests

**Step Response Test:**
- Commanded step: 50% of full stroke
- Acceptance: Response time < 100 ms (EHA), < 150 ms (EMA)
- Overshoot: < 10%

**Frequency Response Test:**
- Sweep: 0.1 Hz to 10 Hz
- Acceptance: Bandwidth > 5 Hz, Phase margin > 45°

**Endurance Test:**
- Cycles: 150,000 (minimum qualification requirement)
- Load: 100% maximum load
- Acceptance: No degradation in performance parameters

**Stall Load Test:**
- Measure stall load at 3 positions: 0%, 50%, 100% stroke
- Acceptance: Stall load > 110% of specification

**Jam Test:**
- Mechanically jam actuator at 50% stroke
- Verify jam detection within 50 ms
- Verify load limiting activates

### Thermal Tests

- Operate actuator continuously at maximum load
- Measure temperature rise
- Acceptance: Temperature < 95°C at steady state

## Pass/Fail Criteria

**Pass:** All tests meet acceptance criteria  
**Conditional Pass:** Minor deviations with engineering disposition  
**Fail:** Any safety-critical test fails; requires design change

---

**Document Owner:** Flight Controls Engineering  
**Next Review:** 2026-10-30
