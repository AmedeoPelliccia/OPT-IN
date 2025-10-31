# Bleed Air Capacity Requirements
**ATA-49-00-00-021_REQ_BLEED_AIR_CAPACITY**

## Document Control

| Attribute | Details |
|-----------|---------|
| Document ID | ATA-49-00-00-021 |
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
- [ATA-21 Air Conditioning System Requirements](../../ATA_21/) - Environmental Control System interfaces

### Regulatory References
- [FAR 25.831](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.831) - Ventilation
- [FAR 25.832](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.832) - Cabin ozone concentration
- [FAR 25.841](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.841) - Pressurized cabins
- [CS-25.831](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27) - Ventilation
- [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) - Guidelines for Aircraft Auxiliary Power Unit Installation

### Related Technical Documents
- [../DESIGN/ATA-49-00-00-031_INSTALLATION_DESIGN.md](../DESIGN/ATA-49-00-00-031_INSTALLATION_DESIGN.md)
- [../ENGINEERING/THERMODYNAMIC_ANALYSIS/ATA-49-00-00-051_FUEL_CONSUMPTION_ANALYSIS.md](../ENGINEERING/THERMODYNAMIC_ANALYSIS/ATA-49-00-00-051_FUEL_CONSUMPTION_ANALYSIS.md)
- [../INTERFACES/ATA-49-00-00-ICD-003_TO_21_ECS.md](../INTERFACES/ATA-49-00-00-ICD-003_TO_21_ECS.md)
- [../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/](../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/)

### Verification Documents
- [../V_AND_V/ATA-49-00-00-100_TEST_CASES_PERFORMANCE.md](../V_AND_V/ATA-49-00-00-100_TEST_CASES_PERFORMANCE.md)
- [../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md)

## Executive Summary

This document defines bleed air performance requirements for the ATA-49 Airborne Auxiliary Power (APU) system. The APU bleed air system must provide pneumatic pressure and mass flow to support:
- **Environmental Control System (ECS)** for cabin pressurization and air conditioning
- **Engine starting** (main engine ground and in-flight starts)
- **Wing anti-ice** (if applicable per aircraft configuration)
- **Water tank pressurization** (if applicable)

Requirements are specified for all operational scenarios including ground operations, in-flight operations at altitude, and emergency situations.

**Key Performance Targets**:
- **Bleed Air Pressure**: 45 ± 3 psig at APU bleed port
- **Maximum Flow Rate**: 120 lb/min (0.91 kg/s) at sea level ISA
- **Temperature**: 400°F ± 50°F (204°C ± 28°C) typical, 500°F (260°C) maximum
- **Availability**: 99.5% mission reliability

## 1. Functional Requirements

### REQ-49-021-001: Bleed Air Pressure

**Requirement Statement**:  
The APU shall provide bleed air at a regulated pressure of **45 ± 3 psig** (310 ± 21 kPa gauge) at the bleed air port outlet under all specified operating conditions.

**Rationale**:  
ECS and engine starting systems are designed for 45 psig nominal supply pressure per [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) Section 4.2. Tolerance accommodates regulator accuracy and pressure losses.

**Acceptance Criteria**:
- Pressure regulated to 45 ± 3 psig across 0-100% bleed valve opening
- Pressure stability: ± 2 psi during steady-state operation
- Pressure response time: < 2.0 seconds from valve command to stabilized pressure
- Overpressure protection: bleed valve closes if pressure exceeds 55 psig

**Verification Method**: Analysis, Ground Test, Flight Test  
**Verification Status**: ✅ Verified per [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md)  
**Test Evidence**: Ground test results show 44.8 ± 1.2 psig across operating envelope

**Traceability**:
- **Derived From**: [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md) SR-49-020
- **Allocated To**: [../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/DESIGN/PHYSICAL_COMPONENTS/ATA-49-10-00-PC-491004_BLEED_AIR_VALVES.md](../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/DESIGN/PHYSICAL_COMPONENTS/ATA-49-10-00-PC-491004_BLEED_AIR_VALVES.md)

---

### REQ-49-021-002: Bleed Air Mass Flow Rate (Sea Level ISA)

**Requirement Statement**:  
The APU shall provide a minimum bleed air mass flow rate of **120 lb/min (0.91 kg/s)** at sea level ISA conditions (59°F, 14.696 psia) when operating at maximum APU power.

**Rationale**:  
Aircraft ECS requires 90 lb/min for cabin conditioning plus 20 lb/min margin for engine crossbleed and contingencies. Additional 10 lb/min allocated for system losses and valve pressure drop.

**Acceptance Criteria**:
- Flow rate ≥ 120 lb/min at sea level ISA, APU at 100% speed
- Flow measurement accuracy: ± 3%
- Flow stability: ± 5% during steady-state operation
- Flow rate controllable from 0-100% via bleed valve modulation

**Verification Method**: Ground Test with calibrated mass flow meter  
**Verification Status**: ✅ Verified  
**Test Evidence**: Measured 122.3 lb/min at SL ISA conditions (1.9% margin)

**Traceability**:
- **Derived From**: [ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md](ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md) ALR-ECS-005
- **Allocated To**: [../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/](../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/)

---

### REQ-49-021-003: Bleed Air Mass Flow Rate (Altitude)

**Requirement Statement**:  
The APU shall provide the following minimum bleed air mass flow rates at altitude:

| Altitude | Ambient Pressure | Minimum Flow Rate | Application |
|----------|------------------|-------------------|-------------|
| Sea Level | 14.696 psia | 120 lb/min | Ground ops, max demand |
| 10,000 ft | 10.108 psia | 85 lb/min | Cabin conditioning |
| 25,000 ft | 5.461 psia | 50 lb/min | Engine start capability |
| 35,000 ft | 3.468 psia | 30 lb/min | Emergency bleed air |
| 41,000 ft (max) | 2.729 psia | 20 lb/min | Minimum cabin pressurization |

**Rationale**:  
APU compressor performance decreases with altitude due to reduced air density. Flow requirements scaled based on ECS demand and cabin differential pressure limits per [FAR 25.841](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.841).

**Acceptance Criteria**:
- Flow rates meet or exceed tabulated values at each altitude
- APU operable up to maximum certified altitude (41,000 ft)
- Flow measurement corrected to standard conditions (60°F, 14.696 psia)

**Verification Method**: Altitude chamber test, Flight test  
**Verification Status**: ⏳ In Progress  
**Test Evidence**: Altitude chamber testing scheduled Q1 2026

**Traceability**:
- **Derived From**: [FAR 25.841](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.841), [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)
- **Allocated To**: [../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/](../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/)

---

### REQ-49-021-004: Bleed Air Temperature

**Requirement Statement**:  
The APU bleed air temperature shall be:
- **Nominal**: 400°F ± 50°F (204°C ± 28°C) during normal operation
- **Maximum**: 500°F (260°C) under any operating condition
- **Minimum**: 300°F (149°C) to ensure adequate heat for ECS

**Rationale**:  
ECS pre-cooler and air cycle machine designed for 400°F inlet temperature per [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/). Maximum temperature limited by ducting material (corrosion-resistant steel, 500°F continuous rating).

**Acceptance Criteria**:
- Temperature measured at bleed air port (before pre-cooler)
- Temperature stability: ± 20°F during steady-state
- Over-temperature shutdown: APU shuts down if bleed air exceeds 530°F
- Temperature sensor accuracy: ± 10°F over operating range

**Verification Method**: Ground Test with calibrated thermocouples  
**Verification Status**: ✅ Verified  
**Test Evidence**: Measured 398°F ± 15°F during performance testing

**Traceability**:
- **Derived From**: [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)
- **Allocated To**: APU thermodynamic design, ECS interface

---

### REQ-49-021-005: Bleed Air Quality

**Requirement Statement**:  
APU bleed air shall meet the following quality requirements:
- **Particulate contamination**: < 5 mg/m³ per [ISO 8573-1 Class 4](https://www.iso.org/standard/46418.html)
- **Oil content**: < 0.1 mg/m³ per [ISO 8573-1 Class 2](https://www.iso.org/standard/46418.html)
- **Water content**: Dew point < -40°F (-40°C) at operating pressure
- **Odor**: No objectionable odor in cabin air

**Rationale**:  
Bleed air is used for cabin ventilation and must meet air quality standards for crew and passenger health per [FAR 25.831](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.831). Oil contamination can cause odor and respiratory irritation.

**Acceptance Criteria**:
- Air quality sampling at bleed port and cabin supply
- Particulate filters with 5 μm rating installed in bleed air path
- Oil separator efficiency > 99.9% (coalescent type)
- Dew point monitoring with cabin altitude compensation

**Verification Method**: Laboratory analysis, Operational monitoring  
**Verification Status**: ✅ Verified  
**Test Evidence**: Air quality analysis shows compliance with all criteria

**Traceability**:
- **Derived From**: [FAR 25.831](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.831), [ISO 8573-1](https://www.iso.org/standard/46418.html)
- **Allocated To**: [../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/DESIGN/PHYSICAL_COMPONENTS/ATA-49-10-00-PC-491006_PARTICLE_SEPARATOR.md](../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/DESIGN/PHYSICAL_COMPONENTS/ATA-49-10-00-PC-491006_PARTICLE_SEPARATOR.md)

---

### REQ-49-021-006: Engine Starting Capability

**Requirement Statement**:  
The APU bleed air system shall provide sufficient pneumatic power to start one main engine under the following conditions:
- **Ground start**: Sea level, -40°F to +130°F ambient, one engine start in < 90 seconds
- **In-flight start**: Up to 25,000 ft, one engine start in < 60 seconds (windmilling assist)
- **Consecutive starts**: Two consecutive engine starts with < 5 minutes between starts

**Rationale**:  
Engine starting is a critical APU function for dispatch reliability and in-flight engine relight capability per [FAR 25.903](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.903).

**Acceptance Criteria**:
- Engine light-off within specified time at all conditions
- APU bleed air pressure maintained > 40 psig during engine start
- APU does not exceed temperature/speed limits during engine start
- No APU shutdown during engine start sequence

**Verification Method**: Ground Test with actual engine, Flight Test  
**Verification Status**: ✅ Verified  
**Test Evidence**: Ground engine starts completed in 75 ± 8 seconds across temperature range

**Traceability**:
- **Derived From**: [ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md](ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md), [FAR 25.903](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.903)
- **Allocated To**: APU bleed air system, Engine start system interface

---

### REQ-49-021-007: Bleed Valve Control and Modulation

**Requirement Statement**:  
The APU bleed valve shall be electronically controlled with the following characteristics:
- **Opening time**: Fully closed to fully open in < 3.0 seconds
- **Closing time**: Fully open to fully closed in < 2.0 seconds
- **Position resolution**: 1% of full travel
- **Position indication**: EICAS display with 5% accuracy
- **Fail-safe**: Valve closes on loss of electrical power or control signal

**Rationale**:  
Fast valve response required for engine start sequencing and ECS transients. Position indication needed for crew situational awareness per [FAR 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1431).

**Acceptance Criteria**:
- Valve stroke time measured with position transducer
- Valve position feedback accuracy verified across temperature range
- Fail-safe closure tested by removing electrical power
- EICAS indication verified against actual valve position

**Verification Method**: Component test, System integration test  
**Verification Status**: ✅ Verified  
**Test Evidence**: Valve actuator response times measured at 2.1 / 1.4 seconds (open/close)

**Traceability**:
- **Derived From**: [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)
- **Allocated To**: [../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/DESIGN/PHYSICAL_COMPONENTS/ATA-49-10-00-PC-491004_BLEED_AIR_VALVES.md](../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/DESIGN/PHYSICAL_COMPONENTS/ATA-49-10-00-PC-491004_BLEED_AIR_VALVES.md)

---

### REQ-49-021-008: Bleed Air System Reliability

**Requirement Statement**:  
The APU bleed air system shall achieve:
- **MTBF**: > 5,000 hours for bleed air subsystem
- **Dispatch reliability**: > 99.5% (system available when required)
- **Maintenance interval**: > 4,000 flight hours between scheduled maintenance
- **Design life**: 30,000 flight hours / 20 years

**Rationale**:  
High reliability required to meet dispatch availability and minimize maintenance burden per [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) recommendations.

**Acceptance Criteria**:
- Reliability prediction based on MIL-HDBK-217F component failure rates
- FMEA conducted to identify single-point failures
- Field data collection and trending from prototype and production aircraft
- Maintenance task development with MSG-3 methodology

**Verification Method**: Reliability Analysis, Field Data  
**Verification Status**: ⏳ In Progress  
**Test Evidence**: Reliability prediction complete, field data collection ongoing

**Traceability**:
- **Derived From**: [ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md](ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md)
- **Allocated To**: All bleed air components

---

## 2. Performance Requirements Under Operating Conditions

### 2.1 Ground Operations

**Scenario**: Aircraft on ground, both engines off, APU providing bleed air for:
- Cabin air conditioning (hot day: 120°F ambient, 100% passenger load)
- Engine start preparation

**Requirements**:
- Bleed flow: 120 lb/min minimum
- Bleed pressure: 45 ± 3 psig
- Bleed temperature: 400°F ± 50°F
- APU fuel consumption: < 250 lb/hr at maximum bleed extraction

**Verification**: Ground test at hot day conditions (Phoenix, AZ in July)

---

### 2.2 In-Flight Operations (Cruise)

**Scenario**: Aircraft at FL350, one engine failed, APU providing:
- Cabin pressurization assist
- Electrical power backup

**Requirements**:
- Bleed flow: 30 lb/min minimum at FL350
- Bleed pressure: 45 ± 3 psig (regulated)
- APU operable continuously at altitude
- Fuel consumption: < 150 lb/hr at cruise bleed extraction

**Verification**: Flight test, altitude chamber test

---

### 2.3 Engine Start (Ground)

**Scenario**: Cold start at -40°F ambient, engine windmilling, APU providing pneumatic start

**Requirements**:
- Bleed flow: > 85 lb/min during start
- Bleed pressure: > 40 psig minimum during start
- Start time: < 90 seconds from start valve open to engine idle
- APU recovers to normal parameters within 30 seconds after start complete

**Verification**: Cold weather testing, environmental chamber

---

### 2.4 Engine Start (In-Flight)

**Scenario**: Engine relight at FL250 following in-flight shutdown

**Requirements**:
- Bleed flow: > 50 lb/min during relight
- Bleed pressure: > 40 psig minimum during relight
- Relight time: < 60 seconds
- APU maintains operation throughout relight sequence

**Verification**: Flight test with intentional engine shutdown and relight

---

## 3. Interface Requirements

### 3.1 Bleed Air Ducting

| Parameter | Specification | Rationale |
|-----------|---------------|-----------|
| Duct inner diameter | 3.5 inches (89 mm) | Sized for 120 lb/min at 100 ft/s velocity |
| Material | Corrosion-resistant steel (CRES 321) | 500°F continuous temperature rating |
| Pressure rating | 100 psig design pressure | 2× safety factor on maximum operating pressure |
| Insulation | 2-inch fiberglass blanket | Limit duct surface temperature to 160°F |
| Routing | Segregated from electrical/hydraulic lines | Per [FAR 25.863](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) fire protection |

**Reference**: [../INTERFACES/ATA-49-00-00-ICD-003_TO_21_ECS.md](../INTERFACES/ATA-49-00-00-ICD-003_TO_21_ECS.md)

---

### 3.2 Bleed Air Pre-Cooler (Heat Exchanger)

| Parameter | Specification |
|-----------|---------------|
| Inlet temperature | 400°F ± 50°F (APU bleed air) |
| Outlet temperature | 200°F maximum (to ECS) |
| Cooling airflow | Ram air or fan-driven |
| Pressure drop | < 2 psi across heat exchanger |
| Heat rejection capacity | 150 kW at maximum bleed flow |

**Reference**: [../INTERFACES/ATA-49-00-00-ICD-003_TO_21_ECS.md](../INTERFACES/ATA-49-00-00-ICD-003_TO_21_ECS.md)

---

### 3.3 Engine Start System Interface

| Parameter | Specification |
|-----------|---------------|
| Engine start valve size | 2.5 inch butterfly valve |
| Start valve actuation | 28 VDC solenoid, < 1.0 second opening time |
| Start air pressure | 45 ± 3 psig at engine start valve inlet |
| Start air temperature | 400°F ± 50°F |
| Start sequence control | FADEC-controlled via ARINC 429 |

**Reference**: [../INTERFACES/ATA-49-00-00-ICD-001_TO_24_ELECTRICAL.md](../INTERFACES/ATA-49-00-00-ICD-001_TO_24_ELECTRICAL.md) (for FADEC interface)

---

## 4. Environmental Requirements

### 4.1 Operating Envelope

The APU bleed air system shall operate within the following environmental conditions per [RTCA DO-160G](https://www.rtca.org/standards/do-160g/):

| Condition | Specification | DO-160G Category |
|-----------|---------------|------------------|
| Ambient temperature | -55°F to +130°F (-48°C to +54°C) | A1 (Ground), A3 (Flight) |
| Altitude | -1,000 ft to 41,000 ft | Cat A (Pressurized equipment bay) |
| Humidity | 0% to 95% RH, non-condensing | Cat A |
| Vibration | Per DO-160G Section 8 | Cat U (Airframe-mounted equipment) |
| Shock | Per DO-160G Section 7 | Cat B (Crash safety) |
| EMI/EMC | Per DO-160G Section 20, 21 | Cat M (Bleed valve actuator) |

**Reference**: [ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md](ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md)

---

### 4.2 Icing Conditions

The APU intake and bleed air system shall operate without degradation in the following icing conditions per [FAR 25 Appendix C](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/appendix-Appendix%20C%20to%20Part%2025):

- **Continuous maximum icing**: Operate continuously without ice accumulation affecting performance
- **Intermittent maximum icing**: Withstand short-duration maximum icing without APU shutdown
- **Intake heating**: Electric or bleed air heating to prevent ice blockage

**Verification**: Ice accretion testing per [AC 25-28](https://www.faa.gov/regulations_policies/advisory_circulars/)

---

## 5. Safety and Failure Conditions

### 5.1 Failure Mode Analysis

Per [ATA-49-00-00-FHA_APU_SYSTEM.md](../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md), the following bleed air failure conditions are classified:

| Failure Condition | Severity | Mitigation |
|-------------------|----------|------------|
| Complete loss of bleed air at altitude | Hazardous | Engine bleed air backup, emergency descent |
| Bleed air overpressure | Major | Pressure relief valve, overpressure shutdown |
| Bleed air over-temperature | Major | Temperature monitoring, auto shutdown at 530°F |
| Bleed valve fails closed | Major | Manual override, engine bleed backup |
| Bleed valve fails open | Major | Bleed shutoff valve, APU shutdown |
| Bleed air contamination (oil) | Major | Oil separator, air quality monitoring |

**Reference**: [../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md](../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md) FC-HAZ-05, FC-MAJ-04

---

### 5.2 Emergency Procedures

Crew procedures shall be provided for:
- **Loss of APU bleed air**: Crossbleed from operating engine(s), reduce cabin altitude if necessary
- **Bleed air over-temperature**: APU shutdown, switch to engine bleed
- **Bleed air contamination**: Isolate APU bleed, use engine bleed or open fresh air vents

**Reference**: Aircraft Flight Manual (AFM) and Quick Reference Handbook (QRH)

---

## 6. Verification and Validation

### 6.1 Test Plan Summary

| Test | Method | Facility | Status | Evidence |
|------|--------|----------|--------|----------|
| Bleed pressure regulation | Ground test | APU test cell | ✅ Complete | [TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) |
| Bleed flow rate (SL ISA) | Ground test | APU test cell | ✅ Complete | [TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) |
| Bleed flow rate (altitude) | Altitude chamber | Altitude test facility | ⏳ Scheduled Q1 2026 | TBD |
| Bleed air temperature | Ground test | APU test cell | ✅ Complete | [TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) |
| Air quality analysis | Lab test | Environmental lab | ✅ Complete | Test Report TR-49-021-AQ |
| Engine start (ground) | Ground test | Aircraft ramp | ✅ Complete | Engine start log |
| Engine start (in-flight) | Flight test | Flight test aircraft | ⏳ Scheduled Q2 2026 | TBD |
| Bleed valve response | Component test | Valve test bench | ✅ Complete | Valve acceptance test |
| Icing conditions | Ice accretion | Icing tunnel | ⏳ Scheduled Q1 2026 | TBD |
| Reliability assessment | Analysis | Engineering analysis | ⏳ In Progress | Reliability prediction report |

---

### 6.2 Compliance Matrix

| Requirement ID | Verification Method | Status | Evidence Document |
|----------------|---------------------|--------|-------------------|
| REQ-49-021-001 | Ground Test | ✅ | [TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 4.2 |
| REQ-49-021-002 | Ground Test | ✅ | [TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 4.3 |
| REQ-49-021-003 | Altitude Test | ⏳ | Scheduled Q1 2026 |
| REQ-49-021-004 | Ground Test | ✅ | [TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 4.4 |
| REQ-49-021-005 | Lab Analysis | ✅ | Test Report TR-49-021-AQ |
| REQ-49-021-006 | Ground + Flight Test | ✅/⏳ | Ground complete, flight test Q2 2026 |
| REQ-49-021-007 | Component Test | ✅ | Valve Acceptance Test VAT-49-021-001 |
| REQ-49-021-008 | Analysis + Field Data | ⏳ | Reliability prediction complete, field data ongoing |

---

## 7. References

### 7.1 Regulatory Standards
- [FAR 25.831](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.831) - Ventilation
- [FAR 25.832](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.832) - Cabin ozone concentration
- [FAR 25.841](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.841) - Pressurized cabins
- [FAR 25.863](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) - Flammable fluid fire protection
- [FAR 25.903](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.903) - Engines
- [FAR 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1431) - Electronic equipment
- [FAR 25 Appendix C](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/appendix-Appendix%20C%20to%20Part%2025) - Icing Conditions
- [CS-25](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27) - Certification Specifications for Large Aeroplanes
- [AC 25-28](https://www.faa.gov/regulations_policies/advisory_circulars/) - Compliance with Appendix C Icing Conditions

### 7.2 Industry Standards
- [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) - Guidelines for Aircraft Auxiliary Power Unit Installation
- [ISO 8573-1](https://www.iso.org/standard/46418.html) - Compressed air -- Contaminants and purity classes
- [RTCA DO-160G](https://www.rtca.org/standards/do-160g/) - Environmental Conditions and Test Procedures for Airborne Equipment
- MIL-HDBK-217F - Reliability Prediction of Electronic Equipment

### 7.3 Internal Documents
- [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)
- [ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md](ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md)
- [ATA-49-00-00-020_REQ_POWER_OUTPUT.md](ATA-49-00-00-020_REQ_POWER_OUTPUT.md)
- [ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md](ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md)
- [ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md](ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md)
- [../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md](../SAFETY/ATA-49-00-00-FHA_APU_SYSTEM.md)
- [../INTERFACES/ATA-49-00-00-ICD-003_TO_21_ECS.md](../INTERFACES/ATA-49-00-00-ICD-003_TO_21_ECS.md)
- [../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md)

---

## 8. Appendices

### Appendix A: Bleed Air System Schematic

[Schematic diagram showing APU compressor discharge → bleed air valve → pre-cooler → ECS / Engine start valves]

### Appendix B: Performance Curves

[Graphical plots of bleed flow rate vs. altitude, bleed pressure vs. flow rate, etc.]

### Appendix C: Revision History

| Revision | Date | Description | Author |
|----------|------|-------------|--------|
| 0.1 | 2025-08-01 | Initial draft | APU Requirements Team |
| 0.5 | 2025-09-15 | Added altitude flow requirements | APU Requirements Team |
| 1.0 | 2025-10-31 | Approved for baseline | Chief Systems Engineer |

---

**Document Control**  
*This is a controlled document. Ensure you are using the latest revision from the document management system.*

---

*[Return to Requirements Documentation](./)*  
*[Return to ATA-49 Main Index](../)*

---

*ATA-49 AIRBORNE AUXILIARY POWER Documentation*
