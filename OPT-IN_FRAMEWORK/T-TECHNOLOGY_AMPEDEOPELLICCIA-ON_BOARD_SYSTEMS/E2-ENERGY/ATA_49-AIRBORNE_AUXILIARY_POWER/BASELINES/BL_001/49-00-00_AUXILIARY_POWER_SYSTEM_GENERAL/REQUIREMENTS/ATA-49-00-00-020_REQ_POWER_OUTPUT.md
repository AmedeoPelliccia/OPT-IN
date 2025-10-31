# ATA-49-00-00-020 Power Output Requirements

**Document Type**: System Requirements Specification  
**ATA Chapter**: 49-00-00 - Airborne Auxiliary Power  
**Requirement Category**: Performance - Electrical Power  
**Baseline**: BL_001  
**Status**: Active  
**Revision**: 1.0  
**Date**: 2025-10-31

## Cross-References

### Parent Requirements
- [Aircraft Level Requirements (ALR)](./ATA-49-00-00-ALR_AIRCRAFT_LEVEL.md)
- [System Requirements (SR)](./ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)
- [Requirements Trace Matrix (RTM)](./ATA-49-00-00-RTM_TRACE_MATRIX.xlsx)

### Related Requirements
- [Bleed Air Capacity Requirements](./ATA-49-00-00-021_REQ_BLEED_AIR_CAPACITY.md)
- [Startup Time Requirements](./ATA-49-00-00-022_REQ_STARTUP_TIME.md)
- [Reliability MTBF Requirements](./ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md)
- [Environmental Limits](./ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md)

### Design Documentation
- [Power Generation Concept](../OVERVIEW/ATA-49-00-00-003_POWER_GENERATION_CONCEPT.md)
- [APU Generators](../SUBSYSTEMS_AND_COMPONENTS/49-30_APU_ELECTRICAL_POWER_CONDITIONING/DESIGN/PHYSICAL_COMPONENTS/ATA-49-30-00-PC-493001_APU_GENERATORS.md)
- [Power Conditioning Unit](../SUBSYSTEMS_AND_COMPONENTS/49-30_APU_ELECTRICAL_POWER_CONDITIONING/DESIGN/PHYSICAL_COMPONENTS/ATA-49-30-00-PC-493002_POWER_CONDITIONING_UNIT.md)

### Test Evidence
- [Performance Test Results](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md)
- [Electrical Performance Test Cases](../V_AND_V/ATA-49-00-00-100_TEST_CASES_PERFORMANCE.md)

### Applicable Standards
- [FAR 25.1351](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1351) - General Electrical Systems
- [FAR 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECb/section-25.1431) - APU Installation
- [MIL-STD-704F](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) - Aircraft Electrical Power Characteristics
- [SAE AS755](https://www.sae.org/standards/content/as755/) - APU Specification
- [RTCA DO-160G](https://www.rtca.org/content/standards-guidance-materials) - Section 16 (Power Input)

## 1. Introduction

### 1.1 Purpose

This document defines the electrical power output requirements for the ATA-49 Airborne Auxiliary Power Unit (APU) system. These requirements establish the minimum and maximum electrical power generation capabilities necessary to support aircraft systems during all operational phases.

### 1.2 Scope

**Requirements Coverage**:
- Continuous power output ratings
- Short-duration overload capabilities
- Power quality specifications (voltage, frequency, harmonics)
- Load sharing and parallel operation
- Transient response characteristics
- Environmental operating conditions
- Derating requirements

**Operational Phases Addressed**:
- Ground operations (engine starting, passenger boarding, turnaround)
- In-flight normal operations (backup power source)
- Emergency operations (main engine failure scenarios)
- Extended operations (ETOPS compliance)

### 1.3 Document Organization

- **Section 2**: Functional Requirements
- **Section 3**: Performance Requirements
- **Section 4**: Environmental Requirements
- **Section 5**: Interface Requirements
- **Section 6**: Compliance and Verification
- **Section 7**: Traceability Matrix

## 2. Functional Requirements

### 2.1 Primary Electrical Power Generation

**REQ-PWR-001**: Continuous Power Output  
**Priority**: Critical  
**Source**: ALR-049-010

**Requirement Statement**:  
The APU electrical power system SHALL provide a minimum continuous electrical power output of **115 kVA** at rated conditions (sea level, ISA +15°C).

**Rationale**:  
- Supports all aircraft electrical loads during ground operations
- Provides margin for future growth
- Enables main engine starting under all conditions
- Meets typical narrowbody/widebody aircraft requirements per [SAE AS755](https://www.sae.org/standards/content/as755/)

**Acceptance Criteria**:
- Sustained operation at 115 kVA for minimum 2 hours
- Load capability verified by test per [FAR 25.1351](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1351)
- Power quality maintained per [MIL-STD-704F](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) Type II limits

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.1

---

**REQ-PWR-002**: Dual Generator Configuration  
**Priority**: Critical  
**Source**: ALR-049-012

**Requirement Statement**:  
The APU SHALL incorporate **two independent 60 kVA generators** operating in parallel to provide 115 kVA continuous output with single-failure tolerance.

**Rationale**:
- Provides redundancy for safety
- Enables continued operation with one generator failed
- Meets aircraft-level single-failure requirements
- Standard configuration per [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/)

**Derived Requirements**:
- Each generator shall be capable of 60 kVA continuous operation
- Load sharing accuracy: ±5% between generators
- Automatic load transfer upon generator failure
- Parallel synchronization within 2 seconds

**Verification Method**: Test + Analysis  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.3

---

**REQ-PWR-003**: Short Duration Overload  
**Priority**: High  
**Source**: ALR-049-013

**Requirement Statement**:  
The APU electrical system SHALL provide **132 kVA** (110% of rated) for a minimum duration of **30 seconds** to accommodate transient loads.

**Rationale**:
- Accommodates motor starting surges
- Handles load step changes
- Provides margin for peak demands
- Industry standard per [MIL-STD-704F](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789)

**Operating Limits**:
- Maximum duration: 30 seconds
- Cool-down period: 5 minutes between overload events
- Maximum events per hour: 6
- Automatic protection at 115% rated (138 kVA)

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.1

### 2.2 Power Quality Requirements

**REQ-PWR-010**: Voltage Regulation  
**Priority**: Critical  
**Source**: MIL-STD-704F

**Requirement Statement**:  
The APU electrical system SHALL maintain **115/200 VAC ±2%** (3-phase, line-to-neutral / line-to-line) under all loading conditions from no-load to full load.

**Specifications**:
| Parameter | Steady-State | Transient (max) |
|-----------|--------------|-----------------|
| Voltage (L-N) | 115V ±2% | +18% / -27% |
| Voltage (L-L) | 200V ±2% | +18% / -27% |
| Regulation | ±2.3V | --- |
| Recovery Time | --- | < 500 ms |

**Compliance**: [MIL-STD-704F](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) Type II, Class ABCDEF

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.1

---

**REQ-PWR-011**: Frequency Regulation  
**Priority**: Critical  
**Source**: MIL-STD-704F

**Requirement Statement**:  
The APU electrical system SHALL maintain **400 Hz ±0.5 Hz** frequency under all loading conditions.

**Specifications**:
| Parameter | Steady-State | Transient (max) |
|-----------|--------------|-----------------|
| Frequency | 400 Hz ±0.5 Hz | ±2 Hz |
| Stability | ±0.1 Hz/sec | --- |
| Recovery Time | --- | < 2 seconds |

**Compliance**: [MIL-STD-704F](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) Type II

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.1

---

**REQ-PWR-012**: Total Harmonic Distortion (THD)  
**Priority**: High  
**Source**: MIL-STD-704F

**Requirement Statement**:  
The APU electrical system SHALL limit Total Harmonic Distortion to **< 5%** for voltage and **< 10%** for current under all loading conditions.

**Harmonic Limits**:
- Individual harmonic (voltage): < 3% of fundamental
- Individual harmonic (current): < 5% of fundamental
- Even harmonics: < 1% of fundamental
- DC component: < 0.1% of fundamental

**Compliance**: [MIL-STD-704F](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) Section 2.3

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.1

---

**REQ-PWR-013**: Power Factor  
**Priority**: Medium  
**Source**: SAE AS755

**Requirement Statement**:  
The APU generators SHALL operate at **0.8 lagging to 1.0 power factor** range.

**Specifications**:
- Rated power factor: 0.8 lagging
- Design optimization: 0.9-0.95 typical
- Leading power factor capability: Not required
- Reactive power capability: Q = 0.6 × P (kVAR)

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.1

### 2.3 Transient Response Requirements

**REQ-PWR-020**: Load Application Response  
**Priority**: Critical  
**Source**: MIL-STD-704F

**Requirement Statement**:  
Upon application of rated load, the APU electrical system SHALL recover to steady-state voltage within **500 milliseconds** with voltage deviation not exceeding **±15%**.

**Test Conditions**:
| Load Step | Initial | Final | Max Deviation | Recovery Time |
|-----------|---------|-------|---------------|---------------|
| Small | 0% | 25% | ±10% | < 300 ms |
| Medium | 25% | 75% | ±12% | < 400 ms |
| Large | 0% | 100% | ±15% | < 500 ms |

**Compliance**: [MIL-STD-704F](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) Section 2.2

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.2

---

**REQ-PWR-021**: Load Rejection Response  
**Priority**: Critical  
**Source**: MIL-STD-704F

**Requirement Statement**:  
Upon sudden load rejection, the APU electrical system SHALL limit voltage overshoot to **+15%** with recovery to steady-state within **500 milliseconds**.

**Protection Requirements**:
- Overvoltage protection: 132V (115% nominal)
- Generator field forcing: Automatic reduction
- Frequency overshoot: < +3 Hz
- No generator trip on load rejection

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.2

## 3. Performance Requirements

### 3.1 Altitude Derating

**REQ-PWR-030**: Altitude Performance  
**Priority**: High  
**Source**: ALR-049-020

**Requirement Statement**:  
The APU electrical output SHALL maintain minimum **90 kVA at 30,000 feet** and **75 kVA at 41,000 feet** (maximum certified altitude).

**Derating Schedule**:
| Altitude (ft) | Power Output (kVA) | Derating (%) |
|---------------|-------------------|--------------|
| Sea Level | 115 | 0% |
| 10,000 | 110 | 4% |
| 20,000 | 102 | 11% |
| 30,000 | 90 | 22% |
| 41,000 | 75 | 35% |

**Rationale**:
- Reduced air density affects combustion and cooling
- Maintains adequate power for in-flight operations
- Meets typical aircraft requirements per [ATA-49-00-00-026](./ATA-49-00-00-026_REQ_ENVIRONMENTAL_LIMITS.md)

**Verification Method**: Test (altitude chamber)  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 8.2

---

**REQ-PWR-031**: Temperature Derating  
**Priority**: High  
**Source**: ALR-049-021

**Requirement Statement**:  
The APU electrical output SHALL maintain rated power at ambient temperatures from **-40°C to +50°C** with specified derating beyond these limits.

**Temperature Limits**:
| Ambient Temp | Power Capability | Notes |
|--------------|------------------|-------|
| < -40°C | 90% | Cold weather kit required |
| -40°C to +50°C | 100% | No derating |
| +50°C to +55°C | 95% | Hot day operation |
| > +55°C | 85% | Maximum certified limit |

**Verification Method**: Test (environmental chamber)  
**Verification Reference**: [ATA-49-00-00-TE-005](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-005_ENVIRONMENTAL_TEST_RESULTS.md)

### 3.2 Operational Flexibility

**REQ-PWR-040**: Independent Operation Modes  
**Priority**: High  
**Source**: ALR-049-025

**Requirement Statement**:  
The APU SHALL provide electrical power in the following independent operating modes:
1. **Electrical Only**: 115 kVA with no bleed air extraction
2. **Combined Load**: 90 kVA electrical + 150 lb/min bleed air
3. **Bleed Priority**: 60 kVA electrical + 180 lb/min bleed air

**Mode Selection**:
- Automatic based on aircraft demand
- Manual override capability
- Mode transition without interruption
- Status indication to flight deck

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 4.1

---

**REQ-PWR-041**: Parallel Operation  
**Priority**: Critical  
**Source**: ALR-049-026

**Requirement Statement**:  
The APU generators SHALL operate in parallel with **automatic load sharing** to within **±5%** of equal distribution.

**Parallel Operation Requirements**:
- Synchronization time: < 2 seconds
- Phase angle match: ±5 degrees
- Voltage match: ±2V before paralleling
- Frequency match: ±0.2 Hz before paralleling
- Automatic paralleling sequence

**Cross-Reference**: [Power Conditioning Unit](../SUBSYSTEMS_AND_COMPONENTS/49-30_APU_ELECTRICAL_POWER_CONDITIONING/DESIGN/PHYSICAL_COMPONENTS/ATA-49-30-00-PC-493002_POWER_CONDITIONING_UNIT.md)

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-001](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md) Section 1.3

## 4. Environmental Requirements

### 4.1 Operating Conditions

**REQ-PWR-050**: Environmental Operating Envelope  
**Priority**: Critical  
**Source**: RTCA DO-160G

**Requirement Statement**:  
The APU electrical system SHALL operate within specification under the following environmental conditions:

| Parameter | Operating Range | Survival Range |
|-----------|----------------|----------------|
| Temperature | -55°C to +85°C | -65°C to +95°C |
| Altitude | 0 to 45,000 ft | 0 to 50,000 ft |
| Humidity | 0 to 100% RH | 0 to 100% RH |
| Vibration | Category S (Severe) | Category U (Crash) |
| Sand/Dust | [DO-160G Section 12](https://www.rtca.org/content/standards-guidance-materials) | --- |

**Compliance**: [RTCA DO-160G](https://www.rtca.org/content/standards-guidance-materials) Environmental Categories

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-005](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-005_ENVIRONMENTAL_TEST_RESULTS.md)

---

**REQ-PWR-051**: EMI/EMC Compliance  
**Priority**: Critical  
**Source**: RTCA DO-160G Section 21

**Requirement Statement**:  
The APU electrical system SHALL comply with **[RTCA DO-160G Section 21](https://www.rtca.org/content/standards-guidance-materials)** for electromagnetic interference and compatibility.

**EMI/EMC Requirements**:
- Conducted emissions: Category M (Medium)
- Radiated emissions: Category M (Medium)
- Susceptibility: Category A (All aircraft systems)
- Lightning protection: Category A (All aircraft)

**Verification Method**: Test  
**Verification Reference**: [ATA-49-00-00-TE-003](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-003_VIBRATION_TEST_RESULTS.md)

## 5. Interface Requirements

### 5.1 Electrical Interfaces

**REQ-PWR-060**: Aircraft Electrical Bus Interface  
**Priority**: Critical  
**Source**: ALR-049-035

**Requirement Statement**:  
The APU electrical output SHALL interface with the aircraft electrical distribution system per [ICD-001 TO 24 ELECTRICAL](../INTERFACES/ATA-49-00-00-ICD-001_TO_24_ELECTRICAL.md).

**Interface Specifications**:
- **Voltage**: 115/200 VAC, 3-phase, 4-wire + ground
- **Frequency**: 400 Hz
- **Connection**: MIL-DTL-38999 Series III connectors
- **Protection**: Circuit breakers, contactors, current transformers
- **Control**: Discrete signals + ARINC 429 data bus

**Cross-Reference**: [Electrical Interfaces](../INTERFACES/ATA-49-00-00-040_ELECTRICAL_INTERFACES.md)

---

**REQ-PWR-061**: Generator Control Unit Interface  
**Priority**: Critical  
**Source**: ALR-049-036

**Requirement Statement**:  
The APU generators SHALL interface with dedicated Generator Control Units (GCU) providing:
- Voltage regulation
- Frequency control
- Load sharing
- Protection functions
- Status monitoring

**Communication Protocol**: ARINC 429 + Discrete I/O

**Cross-Reference**: [Generator Control Software](../SUBSYSTEMS_AND_COMPONENTS/49-30_APU_ELECTRICAL_POWER_CONDITIONING/ENGINEERING/SOFTWARE/ATA-49-30-00-SW-493101_generator_control.c)

## 6. Compliance and Verification

### 6.1 Regulatory Compliance

**Applicable Regulations**:

| Regulation | Section | Requirement | Compliance Status |
|------------|---------|-------------|-------------------|
| [FAR 25.1351](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1351) | (a) | General electrical systems | ✅ Compliant |
| [FAR 25.1351](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1351) | (d) | Independent power sources | ✅ Compliant |
| [FAR 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECb/section-25.1431) | (a) | APU installation | ✅ Compliant |
| [FAR 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECb/section-25.1431) | (c) | APU electrical supply | ✅ Compliant |

**Certification Basis**: [ATA-49-00-00-140 Certification Basis](../CERTIFICATION/ATA-49-00-00-140_CERT_BASIS.md)

### 6.2 Verification Methods

**Verification Summary**:

| Requirement ID | Verification Method | Test Reference | Status |
|----------------|---------------------|----------------|--------|
| REQ-PWR-001 | Test | TE-001 Section 1.1 | ✅ Verified |
| REQ-PWR-002 | Test + Analysis | TE-001 Section 1.3 | ✅ Verified |
| REQ-PWR-003 | Test | TE-001 Section 1.1 | ✅ Verified |
| REQ-PWR-010 | Test | TE-001 Section 1.1 | ✅ Verified |
| REQ-PWR-011 | Test | TE-001 Section 1.1 | ✅ Verified |
| REQ-PWR-012 | Test | TE-001 Section 1.1 | ✅ Verified |
| REQ-PWR-013 | Test | TE-001 Section 1.1 | ✅ Verified |
| REQ-PWR-020 | Test | TE-001 Section 1.2 | ✅ Verified |
| REQ-PWR-021 | Test | TE-001 Section 1.2 | ✅ Verified |
| REQ-PWR-030 | Test | TE-001 Section 8.2 | ✅ Verified |
| REQ-PWR-031 | Test | TE-005 | ✅ Verified |
| REQ-PWR-040 | Test | TE-001 Section 4.1 | ✅ Verified |
| REQ-PWR-041 | Test | TE-001 Section 1.3 | ✅ Verified |
| REQ-PWR-050 | Test | TE-005 | ✅ Verified |
| REQ-PWR-051 | Test | TE-003 | ✅ Verified |

**Verification Status**: All requirements verified ✅

**Verification Report**: [ATA-49-00-00-112 Verification Report](../V_AND_V/ATA-49-00-00-112_VERIFICATION_REPORT.md)

## 7. Requirements Traceability

### 7.1 Upstream Traceability

**Parent Requirements**:
| Parent Requirement | This Document | Derivation |
|--------------------|---------------|------------|
| ALR-049-010 | REQ-PWR-001 | Direct allocation |
| ALR-049-012 | REQ-PWR-002 | Direct allocation |
| ALR-049-013 | REQ-PWR-003 | Direct allocation |
| ALR-049-020 | REQ-PWR-030 | Direct allocation |
| ALR-049-021 | REQ-PWR-031 | Direct allocation |
| ALR-049-025 | REQ-PWR-040 | Direct allocation |
| ALR-049-026 | REQ-PWR-041 | Direct allocation |
| ALR-049-035 | REQ-PWR-060 | Direct allocation |
| ALR-049-036 | REQ-PWR-061 | Direct allocation |

### 7.2 Downstream Traceability

**Child Documents**:
- [Generator Design Specification](../SUBSYSTEMS_AND_COMPONENTS/49-30_APU_ELECTRICAL_POWER_CONDITIONING/DESIGN/PHYSICAL_COMPONENTS/ATA-49-30-00-PC-493001_APU_GENERATORS.md)
- [Power Conditioning Unit Specification](../SUBSYSTEMS_AND_COMPONENTS/49-30_APU_ELECTRICAL_POWER_CONDITIONING/DESIGN/PHYSICAL_COMPONENTS/ATA-49-30-00-PC-493002_POWER_CONDITIONING_UNIT.md)
- [Generator Control Software](../SUBSYSTEMS_AND_COMPONENTS/49-30_APU_ELECTRICAL_POWER_CONDITIONING/ENGINEERING/SOFTWARE/ATA-49-30-00-SW-493101_generator_control.c)

**Complete Trace**: [Requirements Trace Matrix](./ATA-49-00-00-RTM_TRACE_MATRIX.xlsx)

## 8. Assumptions and Constraints

### 8.1 Assumptions

1. Aircraft electrical distribution system meets [MIL-STD-704F](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) Type II requirements
2. Generator cooling air available per [Ventilation Design](../DESIGN/ATA-49-00-00-035_VENTILATION_COOLING_DESIGN.md)
3. Fuel quality meets [SAE AS1241](https://www.sae.org/standards/content/as1241/) specifications
4. Maintenance performed per [AMM Schedule](../OPERATIONS_AND_MAINTENANCE/ATA-49-00-00-147_INSPECTION_INTERVALS.md)

### 8.2 Constraints

1. Maximum APU shaft speed: 52,000 RPM
2. Generator weight limit: 45 kg each (dual installation = 90 kg total)
3. Physical envelope: 0.6 m³ per generator
4. Generator efficiency target: > 94%
5. Power factor correction: Passive (no active compensation)

## 9. Revision History

| Revision | Date | Description | Author |
|----------|------|-------------|--------|
| 1.0 | 2025-10-31 | Initial release | Requirements Team |

## References

### Regulatory Documents
1. [FAR Part 25.1351](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1351) - General Electrical Systems
2. [FAR Part 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECb/section-25.1431) - APU Installation
3. [MIL-STD-704F](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35789) - Aircraft Electrical Power Characteristics
4. [RTCA DO-160G](https://www.rtca.org/content/standards-guidance-materials) - Environmental Conditions and Test Procedures

### Industry Standards
5. [SAE AS755](https://www.sae.org/standards/content/as755/) - APU Specification
6. [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) - APU Installation Guide
7. [SAE AS1241](https://www.sae.org/standards/content/as1241/) - Jet Fuel Quality Requirements

### Internal Documentation
8. [System Requirements (SR)](./ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)
9. [Requirements Trace Matrix](./ATA-49-00-00-RTM_TRACE_MATRIX.xlsx)
10. [Performance Test Results](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-001_PERFORMANCE_TEST_RESULTS.md)
11. [Certification Basis](../CERTIFICATION/ATA-49-00-00-140_CERT_BASIS.md)

---

**Document Control**  
**Classification**: Controlled - Engineering  
**Distribution**: Engineering, Certification, Test  
**Next Review**: Annual or upon design change

[📋 Return to Requirements](./README.md) | [🏠 ATA-49 Home](../README.md)
