# ATA-24-34-00-SR SYSTEM REQUIREMENTS

**Document Type**: System Requirements Specification  
**System**: ATA 24-34-00 Endocircular Recharge Loops  
**Standard**: DO-178C, DO-254, ARP4754A  
**Status**: Active Development

---

## Document Control

| Field | Value |
|-------|-------|
| Document ID | ATA-24-34-00-SR |
| Version | 1.0.0 |
| Date | 2025-10-31 |
| Classification | Engineering |

---

## Introduction

This document specifies the top-level system requirements for the Endocircular Recharge Loops system, derived from [Aircraft Level Requirements](./ATA-24-34-00-ALR_AIRCRAFT_LEVEL.md) and safety analysis.

### Requirements Hierarchy

```
Aircraft Level Requirements (ALR)
         ↓
System Requirements (SR) ← THIS DOCUMENT
         ↓
Subsystem Requirements (SSR)
         ↓
Component Requirements (CR)
```

---

## Functional Requirements

### FR-001: Bidirectional Power Conversion

**Requirement**: The system shall convert electrical power bidirectionally between the aircraft 28V DC distribution bus and the 280V battery system.

- **ID**: FR-001
- **Priority**: Mandatory
- **Rationale**: Core system function enabling regenerative charging
- **Verification**: Test
- **Parent**: ALR-015 (Energy Recovery Capability)
- **Allocated to**: [Bidirectional Converters (24-34-10)](../SUBSYSTEMS_AND_COMPONENTS/24-34-10_BIDIRECTIONAL_CONVERTERS/README.md)

**Derived Requirements**: 
- [SR-PWR-001: Charging Mode](./ATA-24-34-00-021_REQ_RECHARGE_RATE.md)
- [SR-PWR-002: Discharging Mode](./ATA-24-34-00-020_REQ_ENERGY_RECOVERY_EFFICIENCY.md)

---

### FR-002: Charging Power Management

**Requirement**: The system shall manage battery charging to optimize battery life while meeting operational needs.

- **ID**: FR-002
- **Priority**: Mandatory
- **Rationale**: Extends battery lifecycle, reduces maintenance costs
- **Verification**: Test + Analysis
- **Parent**: ALR-020 (Battery Management)
- **Allocated to**: [Control Unit (24-34-30)](../SUBSYSTEMS_AND_COMPONENTS/24-34-30_CONTROL_UNIT/README.md)

**Parameters**:
- Charging rate: 1-25 kW (variable based on battery SOC and temperature)
- Charging profile: CC-CV (Constant Current - Constant Voltage)
- Temperature limits: 0°C to 45°C for charging
- State of Charge (SOC) target: 20% to 90% for normal operations

---

### FR-003: System Monitoring and Control

**Requirement**: The system shall continuously monitor electrical parameters and system health, providing status to the aircraft monitoring system.

- **ID**: FR-003
- **Priority**: Mandatory  
**Rationale**: Enables crew awareness and predictive maintenance
- **Verification**: Test
- **Parent**: ALR-025 (System Visibility)
- **Allocated to**: [Sensors & Instrumentation (24-34-40)](../SUBSYSTEMS_AND_COMPONENTS/24-34-40_SENSORS_INSTRUMENTATION/README.md), [Control Unit (24-34-30)](../SUBSYSTEMS_AND_COMPONENTS/24-34-30_CONTROL_UNIT/README.md)

**Monitored Parameters**:
- Bus voltage and current (both sides)
- Battery voltage, current, temperature
- Converter temperature
- System status and fault codes
- Energy throughput (kWh accumulated)

---

## Performance Requirements

### PR-001: Charging Efficiency

**Requirement**: The system shall achieve ≥ 95% efficiency during charging mode at rated power.

- **ID**: PR-001
- **Priority**: Mandatory
- **Rationale**: Maximizes fuel savings from regenerative capture
- **Verification**: Test
- **Test Method**: Measure input vs. output power at multiple load points
- **Acceptance**: Efficiency ≥ 95% from 20% to 100% rated power

**Detailed Requirements**: [REQ_ENERGY_RECOVERY_EFFICIENCY](./ATA-24-34-00-020_REQ_ENERGY_RECOVERY_EFFICIENCY.md)

---

### PR-002: Discharging Efficiency

**Requirement**: The system shall achieve ≥ 93% efficiency during discharging mode at rated power.

- **ID**: PR-002
- **Priority**: Mandatory
- **Rationale**: Minimizes battery capacity requirement
- **Verification**: Test
- **Acceptance**: Efficiency ≥ 93% from 20% to 100% rated power

---

### PR-003: Response Time

**Requirement**: The system shall transition between modes within 50 milliseconds of command.

- **ID**: PR-003
- **Priority**: Mandatory
- **Rationale**: Enables dynamic load management
- **Verification**: Test
- **Acceptance**: Mode transition < 50 ms, 95th percentile

**Detailed Requirements**: [REQ_CONTROL_RESPONSE_TIME](./ATA-24-34-00-026_REQ_CONTROL_RESPONSE_TIME.md)

---

### PR-004: Power Quality

**Requirement**: The system shall maintain power quality within specified limits on both interfaces.

- **ID**: PR-004
- **Priority**: Mandatory
- **Verification**: Test
- **Standards**: DO-160 Section 16

**Specifications**:
- Voltage ripple: < 2% RMS
- Current ripple: < 5% RMS  
- Total Harmonic Distortion (THD): < 3%
- Conducted emissions: Per DO-160 Category M

**Detailed Requirements**: [REQ_POWER_QUALITY](./ATA-24-34-00-024_REQ_POWER_QUALITY.md)

---

## Safety Requirements

### SR-001: Fault Detection and Isolation

**Requirement**: The system shall detect electrical faults and isolate the failed section within 10 milliseconds.

- **ID**: SR-001
- **Priority**: Mandatory
- **Safety Classification**: DAL-B (Design Assurance Level B)
- **Rationale**: Prevents fault propagation to aircraft systems
- **Verification**: Test + Analysis
- **Parent**: FHA-001, FHA-008, FHA-009
- **Allocated to**: [Protection Circuits (24-34-50)](../SUBSYSTEMS_AND_COMPONENTS/24-34-50_PROTECTION_CIRCUITS/README.md)

**Fault Types Covered**:
- Overcurrent (> 110% rated)
- Overvoltage (> 32V on 28V bus, > 320V on battery bus)
- Undervoltage (< 22V on 28V bus, < 240V on battery bus)
- Ground fault (> 1 mA leakage)
- Reverse current (any reverse flow on 28V bus)

**Related**: [Fault Isolation Analysis](../SAFETY/ATA-24-34-00-012_FAULT_ISOLATION_ANALYSIS.md)

---

### SR-002: Redundant Control Functions

**Requirement**: Critical control functions shall have independent redundant implementation.

- **ID**: SR-002
- **Priority**: Mandatory
- **Safety Classification**: DAL-B
- **Rationale**: Prevents loss of function from single failure
- **Verification**: Analysis + Test
- **Parent**: FHA-004

**Redundant Functions**:
- Current measurement (dual independent sensors)
- Voltage measurement (dual independent sensors)
- Processor (dual-core with cross-monitoring)
- Communication (dual CAN buses)

**Architecture**: [Redundancy Design](../DESIGN/ATA-24-34-00-040_REDUNDANCY_ARCHITECTURE.md)

---

### SR-003: Safe Mode Operation

**Requirement**: Upon detection of a critical fault, the system shall transition to a safe mode within 100 milliseconds.

- **ID**: SR-003
- **Priority**: Mandatory
- **Safety Classification**: DAL-B
- **Verification**: Test
- **Parent**: FHA-001, FHA-002, FHA-008

**Safe Mode Actions**:
1. Open all power contactors
2. Disable switching devices
3. Activate status indication (fault light)
4. Log fault data for maintenance
5. Inhibit automatic restart

---

## Environmental Requirements

### ER-001: Operating Temperature Range

**Requirement**: The system shall operate throughout the aircraft environmental envelope.

- **ID**: ER-001
- **Priority**: Mandatory
- **Verification**: Test per DO-160 Section 4 & 5
- **Operating range**: -55°C to +85°C
- **Storage range**: -65°C to +95°C
- **Thermal derating**: Above +70°C, derate power by 2% per °C

**Related**: [Thermal Limits](./ATA-24-34-00-025_REQ_THERMAL_LIMITS.md)

---

### ER-002: Vibration and Shock

**Requirement**: The system shall withstand aircraft vibration and shock environments per DO-160.

- **ID**: ER-002
- **Verification**: Test per DO-160 Sections 7 & 8
- **Vibration**: Category U (standard airborne equipment)
- **Shock**: Category B (typical equipment)

---

### ER-003: EMI/EMC

**Requirement**: The system shall meet electromagnetic compatibility requirements.

- **ID**: ER-003
- **Verification**: Test per DO-160 Sections 15-25
- **Emissions**: Category M (conducted), Category H (radiated)
- **Susceptibility**: All applicable categories per DO-160G

**Related**: [EMI Safety Analysis](../SAFETY/ATA-24-34-00-013_EMI_SAFETY_ANALYSIS.md), [EMI Mitigation Design](../DESIGN/ATA-24-34-00-039_EMI_MITIGATION_DESIGN.md)

---

## Interface Requirements

### IR-001: Electrical Generation Interface

**Requirement**: The system shall interface with aircraft 28V DC generation system per specification.

- **ID**: IR-001
- **Verification**: Test + Analysis
- **Interface**: Parallel connection to main bus bar
- **Protection coordination**: With generator circuit breakers
- **Communication**: Status to generation control unit via CAN

**ICD**: [ICD-001 TO 24-10 GENERATION](../INTERFACES/ATA-24-34-00-ICD-001_TO_24-10_GENERATION.md)

---

### IR-002: Battery System Interface

**Requirement**: The system shall interface with battery management system per specification.

- **ID**: IR-002
- **Verification**: Test
- **Interface**: High-voltage DC connection (280V nominal)
- **Communication**: CAN-FD with BMS (1 Mbps, 20 ms cycle time)
- **Data exchanged**: SOC, SOH, voltage, current, temperature, limits

**ICD**: [ICD-003 TO 24-33 BATTERY](../INTERFACES/ATA-24-34-00-ICD-003_TO_24-33_BATTERY.md)

---

## Maintainability Requirements

### MR-001: Built-In Test (BIT)

**Requirement**: The system shall provide comprehensive built-in test capability.

- **ID**: MR-001
- **Priority**: Mandatory
- **Verification**: Test
- **Coverage**: > 95% of detectable faults
- **False alarm rate**: < 1% (99% confidence)

**BIT Functions**:
- Power-on self-test (POST)
- Continuous background test (CBT)
- Initiated test (maintenance mode)
- Fault logging and retrieval

---

### MR-002: Maintenance Intervals

**Requirement**: The system shall be designed for scheduled maintenance intervals consistent with aircraft schedule.

- **ID**: MR-002
- **Verification**: Analysis + Demonstration
- **Target**: 2000 flight hours or 12 months, whichever first
- **MTBF**: > 10,000 hours
- **MTTR**: < 2 hours for module replacement

**Related**: [Maintenance Intervals](./ATA-24-34-00-029_REQ_MAINTENANCE_INTERVALS.md)

---

## Physical Requirements

### PH-001: Weight and Volume

**Requirement**: The system shall meet weight and volume constraints.

- **ID**: PH-001
- **Verification**: Inspection + Weighing
- **Weight limit**: < 100 kg (220 lb)
- **Volume limit**: < 0.5 m³ (17.7 ft³)
- **Power density**: > 0.5 kW/kg

**Related**: [Weight & Volume Requirements](./ATA-24-34-00-028_REQ_WEIGHT_VOLUME.md), [Weight Optimization](../DESIGN/ATA-24-34-00-041_WEIGHT_OPTIMIZATION.md)

---

## Requirements Traceability

All requirements are traced to:
- Parent aircraft-level requirements
- Safety analysis (FHA, PSSA, SSA)
- Regulatory requirements (FAR 25, DO-160, etc.)
- Subsystem and component requirements
- Verification methods and test evidence

**Traceability Matrix**: [RTM](./ATA-24-34-00-RTM_TRACE_MATRIX.xlsx)

---

## Verification Methods

| Method | Code | Description |
|--------|------|-------------|
| Test | T | Physical testing of hardware/software |
| Analysis | A | Engineering analysis, simulation, calculation |
| Inspection | I | Physical examination, measurement |
| Demonstration | D | Functional demonstration under observation |

---

## Related Documents

### Requirements Documents
- **[Aircraft Level Requirements](./ATA-24-34-00-ALR_AIRCRAFT_LEVEL.md)**
- **[Subsystem Requirements](./ATA-24-34-00-SSR_SUBSYSTEM_REQUIREMENTS.md)**
- **[Component Requirements](./ATA-24-34-00-CR_COMPONENT_REQUIREMENTS.md)**
- **[Requirements Trace Matrix](./ATA-24-34-00-RTM_TRACE_MATRIX.xlsx)**

### Detailed Requirements
- **[Energy Recovery Efficiency](./ATA-24-34-00-020_REQ_ENERGY_RECOVERY_EFFICIENCY.md)**
- **[Recharge Rate](./ATA-24-34-00-021_REQ_RECHARGE_RATE.md)**
- **[Voltage Regulation](./ATA-24-34-00-022_REQ_VOLTAGE_REGULATION.md)**
- **[Current Control](./ATA-24-34-00-023_REQ_CURRENT_CONTROL.md)**
- **[Power Quality](./ATA-24-34-00-024_REQ_POWER_QUALITY.md)**
- **[Thermal Limits](./ATA-24-34-00-025_REQ_THERMAL_LIMITS.md)**
- **[Control Response Time](./ATA-24-34-00-026_REQ_CONTROL_RESPONSE_TIME.md)**
- **[Redundancy](./ATA-24-34-00-027_REQ_REDUNDANCY.md)**

### Safety & Certification
- **[FHA](../SAFETY/ATA-24-34-00-FHA_ENDOCIRCULAR_SYSTEM.md)**
- **[FAR 25 Compliance](./ATA-24-34-00-REGS_FAR_25_ELECTRICAL.md)**
- **[DO-160 Compliance](./ATA-24-34-00-REGS_RTCA_DO-160.md)**

---

## Revision History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| 1.0.0 | 2025-10-31 | Requirements Team | Initial release |
| 0.3.0 | 2025-10-01 | Requirements Team | Added environmental requirements |
| 0.2.0 | 2025-09-01 | Requirements Team | Added safety requirements from FHA |
| 0.1.0 | 2025-08-15 | Requirements Team | Initial draft |

---

*This document is part of the ATA 24-34-00 Endocircular Recharge Loops requirements documentation.*

**Navigation**: [← Back to INDEX](../INDEX.md) | [Main README](../README.md) | [Verification Plan](../V_AND_V/ATA-24-34-00-VVP_VERIFICATION_PLAN.md)
