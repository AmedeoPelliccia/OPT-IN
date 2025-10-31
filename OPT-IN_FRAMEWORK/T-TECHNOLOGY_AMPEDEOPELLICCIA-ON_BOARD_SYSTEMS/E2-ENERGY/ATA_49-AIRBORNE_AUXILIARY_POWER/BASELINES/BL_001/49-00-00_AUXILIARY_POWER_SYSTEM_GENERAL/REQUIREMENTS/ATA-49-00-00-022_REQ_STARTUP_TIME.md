# APU Startup Time Requirements
**ATA-49-00-00-022_REQ_STARTUP_TIME**

## Document Control

| Attribute | Details |
|-----------|---------|
| Document ID | ATA-49-00-00-022 |
| Revision | 1.0 |
| Date | 2025-10-31 |
| Status | Approved |
| Classification | Company Confidential |
| Prepared By | APU Systems Requirements Team |
| Approved By | Chief Systems Engineer |

## Cross-References

### Parent Requirements
- [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md) - System Level Requirements
- [ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md](ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md) - Aircraft Level Requirements

### Regulatory References
- [FAR 25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309) - Equipment, systems, and installations
- [FAR 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1431) - Electronic equipment
- [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) - Guidelines for Aircraft Auxiliary Power Unit Installation
- [SAE AS755](https://www.sae.org/standards/content/as755/) - Aircraft Auxiliary Power Unit

### Related Documents
- [ATA-49-00-00-020_REQ_POWER_OUTPUT.md](ATA-49-00-00-020_REQ_POWER_OUTPUT.md)
- [ATA-49-00-00-021_REQ_BLEED_AIR_CAPACITY.md](ATA-49-00-00-021_REQ_BLEED_AIR_CAPACITY.md)
- [ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md](ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md)
- [../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md](../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md)
- [../DESIGN/ATA-49-00-00-036_CONTROLS_INSTRUMENTATION.md](../DESIGN/ATA-49-00-00-036_CONTROLS_INSTRUMENTATION.md)
- [../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/](../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/)

### Verification Documents
- [../V_AND_V/ATA-49-00-00-100_TEST_CASES_PERFORMANCE.md](../V_AND_V/ATA-49-00-00-100_TEST_CASES_PERFORMANCE.md)
- [../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md)

## Executive Summary

This document defines APU startup time requirements critical to aircraft dispatch reliability and operational efficiency. Fast, reliable APU starts are essential for:
- **Pre-flight preparation**: Providing electrical power and air conditioning before engine start
- **Ground turnaround**: Minimizing ground time between flights
- **In-flight operation**: Emergency power availability if main engines fail
- **Dispatch reliability**: Meeting airline operational timelines

**Key Performance Targets**:
- **Normal ground start**: ≤ 60 seconds from start command to electrical power available
- **Cold weather start**: ≤ 90 seconds at -40°F ambient
- **Hot weather start**: ≤ 75 seconds at +130°F ambient  
- **In-flight start**: ≤ 120 seconds at cruise altitude (FL350)
- **Consecutive starts**: 3 starts with 2-minute intervals without degradation
- **Start reliability**: ≥ 99.5% successful start rate

## 1. Startup Sequence Overview

### 1.1 APU Startup Phases

Per [SAE AS755](https://www.sae.org/standards/content/as755/), APU startup consists of the following phases:

| Phase | Description | Typical Duration | Key Parameters Monitored |
|-------|-------------|------------------|--------------------------|
| **1. Pre-start** | System checks, fuel priming, inlet door opening | 5-10 seconds | Fuel pressure, door position, electrical power |
| **2. Starter engage** | Electric or pneumatic starter spins APU | 10-15 seconds | N1 speed (reaching light-off speed ~10% N1) |
| **3. Ignition** | Fuel introduced, ignition activated | 2-5 seconds | EGT rise, fuel flow |
| **4. Acceleration** | APU accelerates to idle speed (50% N1) | 15-25 seconds | N1, EGT, oil pressure |
| **5. Stabilization** | APU stabilizes at idle, ready for load | 10-15 seconds | N1 steady, EGT steady, vibration normal |
| **6. Load acceptance** | Electrical generator and bleed air brought online | 5-10 seconds | Generator voltage/frequency, bleed pressure |

**Total Normal Start Time**: 47-80 seconds (target ≤ 60 seconds nominal)

### 1.2 Start Success Criteria

APU start is considered successful when:
1. APU reaches and maintains stable idle speed (50% ± 2% N1)
2. Exhaust gas temperature (EGT) within normal range (400-600°C at idle)
3. Oil pressure > 20 psi
4. No warning or fault indications
5. Electrical generator voltage/frequency within limits (115 VAC ± 3V, 400 ± 4 Hz)
6. Bleed air pressure available (if bleed selected) > 40 psig

## 2. Startup Time Requirements

### REQ-49-022-001: Normal Ground Start Time

**Requirement Statement**:  
The APU shall complete a successful start from start button activation to electrical power available in **≤ 60 seconds** under the following conditions:
- Ambient temperature: +59°F (ISA sea level)
- Ambient pressure: 14.696 psia (sea level)
- APU pre-lubricated (recent operation within 24 hours)
- Aircraft electrical power available (28 VDC for start sequence)

**Rationale**:  
60-second start time provides acceptable ground turnaround performance per airline operational requirements and [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) industry practice. Faster starts reduce gate time and improve dispatch reliability.

**Acceptance Criteria**:
- 95% of starts complete within 60 seconds
- 99% of starts complete within 75 seconds
- No starts exceed 90 seconds (automatic abort and retry)
- Start time measured from start button press to "APU AVAIL" EICAS message

**Verification Method**: Ground Test (100+ start cycles)  
**Verification Status**: ✅ Verified  
**Test Evidence**: Mean start time 54 ± 6 seconds (N=150 starts)

**Traceability**:
- **Derived From**: [ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md](ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md) ALR-APU-010
- **Allocated To**: APU control system, starter system, ignition system

---

### REQ-49-022-002: Cold Weather Start Time

**Requirement Statement**:  
The APU shall complete a successful start in **≤ 90 seconds** at cold ambient conditions:
- Ambient temperature: -40°F (-40°C)
- Ambient pressure: 14.696 psia (sea level)
- APU cold-soaked for minimum 4 hours
- Fuel temperature: -40°F (cold fuel)
- Oil temperature: -40°F (high viscosity)

**Rationale**:  
Cold weather operations are critical for northern latitudes and high-altitude airports. Extended start time accommodates:
- Higher oil viscosity (increased drag on starter)
- Cold fuel atomization challenges
- Battery power limitations in cold conditions
- Preheating time for combustor and ignition system

**Acceptance Criteria**:
- 90% of cold starts complete within 90 seconds
- 98% of cold starts complete within 120 seconds
- Automatic fuel and ignition system preheat activated below +20°F
- APU glow plugs (if equipped) activated for cold starts
- EGT monitoring for hung start detection (no EGT rise within 30 seconds = abort)

**Verification Method**: Cold weather test, Environmental chamber test  
**Verification Status**: ✅ Verified  
**Test Evidence**: Cold chamber testing at -40°F, mean start time 82 ± 8 seconds (N=50 starts)

**Traceability**:
- **Derived From**: [FAR 25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309), [ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md](ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md)
- **Allocated To**: APU fuel system, starter system, ignition system

---

### REQ-49-022-003: Hot Weather Start Time

**Requirement Statement**:  
The APU shall complete a successful start in **≤ 75 seconds** at hot ambient conditions:
- Ambient temperature: +130°F (+54°C)
- Ambient pressure: 14.696 psia (sea level) or 13.0 psia (2,000 ft elevation hot day)
- APU heat-soaked from previous operation or prolonged ground exposure
- Fuel temperature: +120°F
- Oil temperature: +200°F

**Rationale**:  
Hot weather start is limited by:
- Reduced air density (compressor performance degradation)
- Higher starting EGT (closer to temperature limits)
- Potential for hot start (over-temperature condition)
- Reduced battery capacity and starter motor performance at elevated temperature

**Acceptance Criteria**:
- 90% of hot starts complete within 75 seconds
- 98% of hot starts complete within 90 seconds
- EGT monitoring for hot start protection (abort if EGT > 850°C during start)
- Automatic start attempt limit (3 attempts maximum, 2-minute cool-down between attempts)
- Intake cooling (if equipped) activated above +100°F ambient

**Verification Method**: Hot weather test, Environmental chamber test  
**Verification Status**: ✅ Verified  
**Test Evidence**: Hot chamber testing at +130°F, mean start time 68 ± 7 seconds (N=50 starts)

**Traceability**:
- **Derived From**: [ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md](ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md)
- **Allocated To**: APU control system, EGT monitoring, hot start protection logic

---

### REQ-49-022-004: In-Flight Start Time (Altitude)

**Requirement Statement**:  
The APU shall complete a successful in-flight start in **≤ 120 seconds** at the following conditions:
- Altitude: Up to FL350 (35,000 ft, 3.468 psia ambient)
- Airspeed: Mach 0.78 (typical cruise)
- Ambient temperature: ISA -15°C (cruise temperature)
- APU windmilling or stationary prior to start

**Rationale**:  
In-flight APU start is required for:
- Emergency electrical power if both main generators fail
- Emergency bleed air for cabin pressurization
- Emergency hydraulic power (via electric pump)

Extended start time at altitude due to:
- Low air density (reduced compressor performance)
- Lower ambient pressure (combustion challenges)
- Potential windmilling drag from ram air

**Acceptance Criteria**:
- In-flight start successful up to maximum certified altitude
- Start time ≤ 120 seconds from start command to APU AVAIL
- Automatic start sequence initiated by dual-generator failure
- APU operable within 150 seconds to support emergency descent
- Flight crew alerted of start progress via EICAS

**Verification Method**: Flight test, Altitude chamber test  
**Verification Status**: ⏳ Scheduled Q2 2026  
**Test Evidence**: TBD (flight test program)

**Traceability**:
- **Derived From**: [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md), [../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md](../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md) FC-HAZ-01
- **Allocated To**: APU control system, altitude start logic, emergency procedures

---

### REQ-49-022-005: Consecutive Start Capability

**Requirement Statement**:  
The APU shall be capable of **3 consecutive successful starts** with the following timing:
- Start interval: Minimum 2 minutes between start commands
- Each start: Meet normal start time requirement (≤ 60 seconds)
- No performance degradation: Third start time ≤ first start time + 10%
- Temperature limits: APU remains within temperature limits for all 3 starts

**Rationale**:  
Consecutive start capability required for:
- Failed start troubleshooting (crew may attempt multiple starts)
- Ground maintenance procedures
- Operational flexibility (APU shutdown and restart during ground ops)

Minimum 2-minute interval prevents:
- Starter motor overheating
- Battery depletion
- Hot start conditions (elevated starting EGT)

**Acceptance Criteria**:
- Three starts completed without fault indications
- Each start successful per REQ-49-022-001 criteria
- Starter duty cycle monitoring (automatic lockout if duty cycle exceeded)
- EGT monitoring (elevated starting EGT allowed but within limits)
- Battery voltage monitoring (start inhibited if voltage < 24 VDC)

**Verification Method**: Ground Test  
**Verification Status**: ✅ Verified  
**Test Evidence**: Consecutive start testing completed, all starts within specification

**Traceability**:
- **Derived From**: [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) Section 4.5
- **Allocated To**: APU control system, starter duty cycle protection

---

### REQ-49-022-006: Start Reliability

**Requirement Statement**:  
The APU start system shall achieve a start success rate of **≥ 99.5%** measured as:
- Successful starts / Total start attempts ≥ 0.995
- Failed start defined as: APU does not reach stable idle within 90 seconds or trips offline within 60 seconds after successful start
- Calculation excludes aborted starts due to crew cancellation or improper operation

**Rationale**:  
High start reliability is critical for:
- Aircraft dispatch reliability (APU required for departure)
- Operational efficiency (minimize delays)
- Passenger comfort (early cabin conditioning)
- Economic performance (reduce maintenance costs)

99.5% target based on:
- Industry benchmarks per [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/)
- Airline operational requirements
- Historical APU performance data

**Acceptance Criteria**:
- Start reliability demonstrated over 1,000+ start attempts
- Field data collection from prototype and production aircraft
- Failed start root cause analysis and corrective actions
- Trending of start performance parameters (start time, EGT, N1 acceleration)

**Verification Method**: Field Data Collection, Reliability Analysis  
**Verification Status**: ⏳ In Progress  
**Test Evidence**: Prototype testing shows 99.7% success rate (3 failed starts in 1,000 attempts)

**Traceability**:
- **Derived From**: [ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md](ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md)
- **Allocated To**: APU overall reliability program

---

### REQ-49-022-007: Failed Start Detection and Protection

**Requirement Statement**:  
The APU control system shall automatically detect and protect against the following failed start conditions:
- **Hung start**: No EGT rise within 30 seconds of ignition → Abort, terminate fuel flow
- **Hot start**: EGT exceeds 850°C during start → Abort, terminate fuel flow, cool-down required
- **No light-off**: EGT rise but no N1 acceleration to idle → Abort after 60 seconds
- **Stall/surge**: Compressor stall detected (rapid EGT rise, N1 oscillation) → Abort immediately
- **Over-speed**: N1 exceeds 105% during start → Abort, close fuel valve
- **No oil pressure**: Oil pressure < 10 psi after 20 seconds at idle → Shutdown

**Rationale**:  
Failed start protection prevents:
- APU damage from over-temperature
- Starter motor burnout from extended cranking
- Fuel accumulation in combustor (fire hazard)
- Compressor blade damage from stall/surge
- Safety hazards to ground personnel

**Acceptance Criteria**:
- All failed start modes detected and aborted per specified timelines
- Fault codes logged to maintenance system
- EICAS messages displayed to flight crew
- Automatic cool-down period enforced (2 minutes minimum) before allowing retry
- Maintenance lockout after 3 consecutive failed starts (maintenance action required)

**Verification Method**: Ground Test with simulated failures  
**Verification Status**: ✅ Verified  
**Test Evidence**: Failed start testing completed for all modes

**Traceability**:
- **Derived From**: [../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md](../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md)
- **Allocated To**: APU control software (DAL C), protection logic

---

## 3. Start Time Performance by Configuration

### 3.1 Gas Turbine APU Configuration

| Condition | Target Start Time | Actual Performance | Margin |
|-----------|-------------------|---------------------|--------|
| Normal ground (ISA SL) | ≤ 60 sec | 54 ± 6 sec | +10% |
| Cold weather (-40°F) | ≤ 90 sec | 82 ± 8 sec | +9% |
| Hot weather (+130°F) | ≤ 75 sec | 68 ± 7 sec | +9% |
| Altitude (FL350) | ≤ 120 sec | TBD (flight test) | TBD |
| Consecutive (3rd start) | ≤ 66 sec | 58 ± 7 sec | +12% |

**Reference**: [../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 3.1

---

### 3.2 Fuel Cell APU Configuration

| Condition | Target Start Time | Actual Performance | Notes |
|-----------|-------------------|---------------------|-------|
| Normal ground (ISA SL) | ≤ 90 sec | 78 ± 10 sec | Slower due to FC stack warm-up |
| Cold weather (-40°F) | ≤ 150 sec | TBD | Requires stack preheating |
| Hot weather (+130°F) | ≤ 100 sec | 88 ± 12 sec | Cooling system delay |
| Altitude (FL350) | ≤ 180 sec | TBD | H2 pressure regulation delay |

**Note**: Fuel cell APU startup includes:
1. H2 system purge and pressurization (15-20 seconds)
2. FC stack preheating (30-40 seconds at cold temperatures)
3. Stack voltage build-up (10-15 seconds)
4. Power conditioning unit (PCU) initialization (5-10 seconds)

**Reference**: [../SUBSYSTEMS_AND_COMPONENTS/49-60_FUEL_CELL_APU_H2_INTEGRATION/](../SUBSYSTEMS_AND_COMPONENTS/49-60_FUEL_CELL_APU_H2_INTEGRATION/)

---

## 4. Factors Affecting Start Time

### 4.1 Environmental Factors

| Factor | Effect on Start Time | Mitigation |
|--------|---------------------|------------|
| Low temperature | +30-50% (oil viscosity, fuel atomization) | Fuel/ignition preheat, glow plugs |
| High temperature | +10-20% (air density, EGT margin) | Intake cooling, EGT monitoring |
| High altitude | +50-100% (air density) | Altitude start logic, extended time limit |
| High humidity | +5-10% (combustion efficiency) | Ignition system robustness |
| Crosswind | +5% (inlet distortion) | Inlet design, FOD protection |

---

### 4.2 Operational Factors

| Factor | Effect on Start Time | Mitigation |
|--------|---------------------|------------|
| Battery state of charge | +10-30% if degraded | Battery monitoring, ground power |
| Previous APU operation | -10% if recent (pre-lubricated) | Oil pressure monitoring |
| Fuel temperature | +/-10% | Fuel heating/cooling system |
| Maintenance condition | +20% if degraded | Preventive maintenance, trending |
| Start attempts (consecutive) | +10-15% (thermal soak) | Cool-down time enforcement |

---

## 5. Interface Requirements

### 5.1 Electrical System Interface

Per [../INTERFACES/ATA-49-00-00-ICD-001_TO_24_ELECTRICAL.md](../INTERFACES/ATA-49-00-00-ICD-001_TO_24_ELECTRICAL.md):

| Parameter | Specification | Purpose |
|-----------|---------------|---------|
| Start power source | 28 VDC aircraft battery or GPU | Starter motor and control power |
| Start current (peak) | 400 A (electric starter) | Sized for cold weather starts |
| Start duration (max) | 90 seconds continuous | Starter duty cycle protection |
| Control voltage | 28 VDC ± 4V | APU control unit (ACU) power |
| Ignition power | 28 VDC, 5 A | High-energy ignition system |

---

### 5.2 Fuel System Interface

Per [../SUBSYSTEMS_AND_COMPONENTS/49-20_APU_FUEL_FLUIDS/](../SUBSYSTEMS_AND_COMPONENTS/49-20_APU_FUEL_FLUIDS/):

| Parameter | Specification | Purpose |
|-----------|---------------|---------|
| Fuel pressure at APU inlet | 30 ± 5 psig | Fuel control unit (FCU) supply |
| Fuel priming time | < 10 seconds | Fill fuel lines before ignition |
| Fuel temperature range | -40°F to +120°F | Cold/hot start capability |
| Fuel type | Jet-A, Jet-A1, JP-8, SAF | Compatibility with sustainable fuels |

---

### 5.3 Control System Interface

Per [../DESIGN/ATA-49-00-00-036_CONTROLS_INSTRUMENTATION.md](../DESIGN/ATA-49-00-00-036_CONTROLS_INSTRUMENTATION.md):

| Signal | Type | Purpose |
|--------|------|---------|
| Start command | Discrete input | Pilot start button or auto-start logic |
| N1 speed | Analog 0-10V | Turbine speed monitoring and control |
| EGT | Thermocouple K-type | Temperature monitoring and protection |
| Oil pressure | Analog 0-5V | Lubrication system monitoring |
| Fuel flow | Analog 4-20 mA | Fuel control and metering |
| APU AVAIL | Discrete output | Status to EICAS and electrical system |

---

## 6. Operational Procedures

### 6.1 Normal Ground Start Procedure

1. **Pre-start checks**: Verify APU fire extinguisher armed, APU area clear, fuel quantity adequate
2. **Start initiation**: Press APU START button on overhead panel
3. **Automatic sequence**: APU control unit (ACU) executes start sequence
4. **Monitoring**: Crew monitors EICAS for start progress and fault indications
5. **APU AVAIL**: EICAS message displayed when APU ready for electrical/bleed load
6. **Load application**: Select APU GEN ON and/or BLEED AIR as required

**Typical timeline**: 0:00 Start button pressed → 0:10 N1 rotation → 0:25 Ignition/light-off → 0:45 APU at idle → 0:55 APU AVAIL displayed

---

### 6.2 Failed Start Procedure

1. **Abort indication**: EICAS message "APU START FAULT" with fault code
2. **Crew action**: Note fault code, wait for 2-minute cool-down
3. **Retry**: Press APU START button for second attempt
4. **Second failure**: If second start fails, contact maintenance before third attempt
5. **Maintenance lockout**: After three consecutive failures, APU requires maintenance action to reset

**Common failed start causes**:
- Low battery voltage (recharge or use GPU)
- Fuel system fault (check fuel quantity, fuel pump operation)
- Over-temperature (allow extended cool-down)
- Starter motor fault (maintenance action required)

---

### 6.3 Cold Weather Start Procedure

1. **Preheating**: If available, use APU inlet heating and fuel preheating system
2. **Battery check**: Verify battery voltage > 25 VDC (may require GPU in extreme cold)
3. **Extended start**: Allow up to 90 seconds for cold start
4. **Monitoring**: Watch for EGT rise within 30 seconds (hung start indication if no rise)
5. **Post-start**: Allow APU to warm up for 2-3 minutes before applying bleed load

---

## 7. Verification and Validation

### 7.1 Test Summary

| Test | Method | Conditions | Status | Evidence |
|------|--------|------------|--------|----------|
| Normal start time | Ground test | ISA SL, N=150 | ✅ Pass | [TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) |
| Cold weather start | Environmental chamber | -40°F, N=50 | ✅ Pass | Test Report TR-49-022-COLD |
| Hot weather start | Environmental chamber | +130°F, N=50 | ✅ Pass | Test Report TR-49-022-HOT |
| Altitude start | Flight test | FL350, N=TBD | ⏳ Q2 2026 | TBD |
| Consecutive starts | Ground test | 3 starts, 2-min interval, N=30 | ✅ Pass | [TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) |
| Start reliability | Field data | 1,000+ starts | ⏳ Ongoing | Field data collection |
| Failed start protection | Ground test with faults | All failure modes | ✅ Pass | Test Report TR-49-022-FAIL |

---

### 7.2 Acceptance Criteria Summary

| Requirement | Target | Actual | Status |
|-------------|--------|--------|--------|
| REQ-49-022-001 (Normal) | ≤ 60 sec | 54 ± 6 sec | ✅ Pass (+10% margin) |
| REQ-49-022-002 (Cold) | ≤ 90 sec | 82 ± 8 sec | ✅ Pass (+9% margin) |
| REQ-49-022-003 (Hot) | ≤ 75 sec | 68 ± 7 sec | ✅ Pass (+9% margin) |
| REQ-49-022-004 (Altitude) | ≤ 120 sec | TBD | ⏳ Pending flight test |
| REQ-49-022-005 (Consecutive) | 3 starts, ≤ 66 sec each | 58 ± 7 sec | ✅ Pass (+12% margin) |
| REQ-49-022-006 (Reliability) | ≥ 99.5% | 99.7% (prototype) | ✅ Exceeds target |
| REQ-49-022-007 (Protection) | All modes detected | All modes verified | ✅ Pass |

---

## 8. References

### 8.1 Regulatory Standards
- [FAR 25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309) - Equipment, systems, and installations
- [FAR 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1431) - Electronic equipment
- [CS-25](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27) - Certification Specifications for Large Aeroplanes

### 8.2 Industry Standards
- [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) - Guidelines for Aircraft Auxiliary Power Unit Installation
- [SAE AS755](https://www.sae.org/standards/content/as755/) - Aircraft Auxiliary Power Unit

### 8.3 Internal Documents
- [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)
- [ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md](ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md)
- [ATA-49-00-00-020_REQ_POWER_OUTPUT.md](ATA-49-00-00-020_REQ_POWER_OUTPUT.md)
- [ATA-49-00-00-021_REQ_BLEED_AIR_CAPACITY.md](ATA-49-00-00-021_REQ_BLEED_AIR_CAPACITY.md)
- [ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md](ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md)
- [ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md](ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md)
- [../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md](../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md)
- [../DESIGN/ATA-49-00-00-036_CONTROLS_INSTRUMENTATION.md](../DESIGN/ATA-49-00-00-036_CONTROLS_INSTRUMENTATION.md)
- [../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md)

---

## 9. Appendices

### Appendix A: Start Sequence Timing Diagram

[Diagram showing N1, EGT, fuel flow, and ignition timing during normal start]

### Appendix B: Failed Start Decision Tree

[Flowchart for troubleshooting failed starts based on symptoms]

### Appendix C: Revision History

| Revision | Date | Description | Author |
|----------|------|-------------|--------|
| 0.1 | 2025-08-15 | Initial draft | APU Requirements Team |
| 0.5 | 2025-09-30 | Added cold/hot weather requirements | APU Requirements Team |
| 1.0 | 2025-10-31 | Approved for baseline | Chief Systems Engineer |

---

**Document Control**  
*This is a controlled document. Ensure you are using the latest revision from the document management system.*

---

*[Return to Requirements Documentation](./)*  
*[Return to ATA-49 Main Index](../)*

---

*ATA-49 AIRBORNE AUXILIARY POWER Documentation*
