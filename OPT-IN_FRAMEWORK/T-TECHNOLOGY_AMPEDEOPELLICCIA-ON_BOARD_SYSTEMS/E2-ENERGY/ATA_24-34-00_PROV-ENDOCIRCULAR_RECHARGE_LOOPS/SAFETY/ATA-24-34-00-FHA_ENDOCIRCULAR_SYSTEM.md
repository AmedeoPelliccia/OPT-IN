# ATA-24-34-00-FHA ENDOCIRCULAR SYSTEM

**Document Type**: Functional Hazard Assessment  
**System**: ATA 24-34-00 Endocircular Recharge Loops  
**Standard**: ARP4761 Guidelines and Methods for Conducting Safety Assessment  
**Status**: Active Development

---

## Document Control

| Field | Value |
|-------|-------|
| Document ID | ATA-24-34-00-FHA |
| Version | 1.0.0 |
| Date | 2025-10-31 |
| Classification | Safety Critical |

---

## Executive Summary

This Functional Hazard Assessment (FHA) identifies and classifies the hazards associated with the Endocircular Recharge Loops system. The FHA establishes the safety requirements and acceptable failure rates for system functions per FAR 25.1309.

### Safety Objectives

1. **Catastrophic failures**: Probability < 10⁻⁹ per flight hour
2. **Hazardous failures**: Probability < 10⁻⁷ per flight hour
3. **Major failures**: Probability < 10⁻⁵ per flight hour
4. **Minor failures**: Probability < 10⁻³ per flight hour

---

## System Functions and Failure Conditions

### Function 1: Bidirectional Power Conversion

**Normal Operation**: Convert power between 28V DC bus and 280V battery system

**Failure Conditions**:

| ID | Failure Condition | Effect on Aircraft | Classification | Probability Objective |
|----|-------------------|-------------------|----------------|-----------------------|
| FHA-001 | Complete loss of conversion capability | Loss of regenerative charging, battery backup available | **Major** | < 10⁻⁵ /FH |
| FHA-002 | Reverse current flow undetected | Battery damage, potential fire | **Catastrophic** | < 10⁻⁹ /FH |
| FHA-003 | Overcurrent condition | Component damage, reduced capability | **Major** | < 10⁻⁵ /FH |
| FHA-004 | Loss of control authority | System shutdown, no charging | **Minor** | < 10⁻³ /FH |

### Function 2: Battery Charging Management

**Normal Operation**: Manage battery charging profile for optimal life and safety

**Failure Conditions**:

| ID | Failure Condition | Effect on Aircraft | Classification | Probability Objective |
|----|-------------------|-------------------|----------------|-----------------------|
| FHA-005 | Overcharging | Battery degradation, thermal runaway risk | **Hazardous** | < 10⁻⁷ /FH |
| FHA-006 | Undercharging | Reduced backup capacity | **Minor** | < 10⁻³ /FH |
| FHA-007 | Charging at excessive rate | Battery overheating, reduced life | **Major** | < 10⁻⁵ /FH |

### Function 3: System Protection

**Normal Operation**: Detect and isolate faults to prevent propagation

**Failure Conditions**:

| ID | Failure Condition | Effect on Aircraft | Classification | Probability Objective |
|----|-------------------|-------------------|----------------|-----------------------|
| FHA-008 | Protection failure - overcurrent | Equipment damage, potential fire | **Hazardous** | < 10⁻⁷ /FH |
| FHA-009 | Protection failure - overvoltage | Equipment damage on distribution bus | **Hazardous** | < 10⁻⁷ /FH |
| FHA-010 | Spurious protection trip | Loss of system function | **Minor** | < 10⁻³ /FH |

---

## Hazard Analysis

### Critical Hazard: Uncontrolled Reverse Current (FHA-002)

**Scenario**: Control system failure allows battery current to flow backwards into distribution bus

**Potential Effects**:
1. Bus overvoltage (> 32V)
2. Damage to connected equipment
3. Battery overheating and potential thermal runaway
4. Smoke and fire risk

**Severity**: **Catastrophic**

**Mitigation Strategies**:
1. **Hardware current sensors** (redundant, independent)
2. **Solid-state circuit breakers** (< 1 ms response)
3. **Mechanical contactors** (backup isolation)
4. **Software current monitoring** (watchdog protected)
5. **Physical reverse blocking diodes** (passive protection)

**Residual Risk**: Remote (< 10⁻⁹ /FH) with all mitigations

---

### Major Hazard: Overcharging Condition (FHA-005)

**Scenario**: Charging control failure allows excessive current to battery

**Potential Effects**:
1. Battery temperature rise above design limits
2. Electrolyte decomposition and pressure buildup
3. Battery cell damage or rupture
4. Potential fire hazard

**Severity**: **Hazardous**

**Mitigation Strategies**:
1. **Dual-channel current control** (independent processors)
2. **Battery management system coordination** (via CAN bus)
3. **Temperature monitoring** (4x RTD sensors, voted)
4. **Hard current limit** (hardware, independent of software)
5. **Battery cell balancing** (prevents localized overcharge)

**Residual Risk**: Remote (< 10⁻⁷ /FH) with all mitigations

---

## Safety Requirements Derived from FHA

Based on the identified hazards, the following safety requirements are established:

### SR-SAFE-001: Reverse Current Protection
**Requirement**: The system shall detect and interrupt reverse current flow within 100 microseconds of detection.

**Allocation**: 
- Detection: Sensors (24-34-40)
- Interruption: Protection circuits (24-34-50)

**Verification**: Test per [ATA-24-34-00-010_REVERSE_CURRENT_PROTECTION](./ATA-24-34-00-010_REVERSE_CURRENT_PROTECTION.md)

### SR-SAFE-002: Overcurrent Protection
**Requirement**: The system shall limit current to 110% of rated value under all conditions.

**Allocation**: Protection circuits (24-34-50), Control unit (24-34-30)

**Verification**: Test per [ATA-24-34-00-011_OVERCURRENT_SCENARIOS](./ATA-24-34-00-011_OVERCURRENT_SCENARIOS.md)

### SR-SAFE-003: Redundant Control
**Requirement**: Critical control functions shall have independent backup capability.

**Allocation**: Control unit (24-34-30)

**Verification**: Analysis per [ATA-24-34-00-040_REDUNDANCY_ARCHITECTURE](../DESIGN/ATA-24-34-00-040_REDUNDANCY_ARCHITECTURE.md)

---

## Common Cause Analysis

### Single Event Upset (SEU)
**Threat**: Cosmic radiation causing bit flips in control electronics

**Mitigation**:
- Triple modular redundancy (TMR) for critical functions
- Error detection and correction (EDAC) on memory
- Watchdog timers with independent oscillators

### Electromagnetic Interference (EMI)
**Threat**: External EMI causing erroneous sensor readings or control signals

**Mitigation**:
- Shielded cables and filtered interfaces
- Differential signaling for critical paths
- DO-160 Section 21 compliance testing

**Related**: [ATA-24-34-00-013_EMI_SAFETY_ANALYSIS](./ATA-24-34-00-013_EMI_SAFETY_ANALYSIS.md)

---

## Certification Compliance

This FHA supports compliance with:

- **FAR 25.1309** - Equipment, systems, and installations
- **AC 25.1309-1A** - System design and analysis
- **ARP4761** - Safety assessment process

**Certification Evidence**: [Cert Basis](../CERTIFICATION/ATA-24-34-00-153_CERT_BASIS.md)

---

## Related Documents

- **[PSSA - Preliminary System Safety Assessment](./ATA-24-34-00-PSSA_PRELIMINARY.md)**
- **[SSA - System Safety Assessment](./ATA-24-34-00-SSA_SYSTEM_SAFETY.md)**
- **[HAZOP Study](./ATA-24-34-00-HAZOP_RECHARGE_LOOPS.xlsx)**
- **[Fault Isolation Analysis](./ATA-24-34-00-012_FAULT_ISOLATION_ANALYSIS.md)**
- **[Failure Modes and Effects Analysis](./ATA-24-34-00-016_FAILURE_MODES_EFFECTS.xlsx)**
- **[System Requirements](../REQUIREMENTS/ATA-24-34-00-SR_SYSTEM_REQUIREMENTS.md)**

---

## Revision History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| 1.0.0 | 2025-10-31 | Safety Team | Initial FHA release |
| 0.2.0 | 2025-09-15 | Safety Team | Added common cause analysis |
| 0.1.0 | 2025-08-01 | Safety Team | Initial draft |

---

*This document is part of the ATA 24-34-00 Endocircular Recharge Loops safety documentation.*

**Navigation**: [← Back to INDEX](../INDEX.md) | [Main README](../README.md) | [Safety Overview](./ATA-24-34-00-PSSA_PRELIMINARY.md)
