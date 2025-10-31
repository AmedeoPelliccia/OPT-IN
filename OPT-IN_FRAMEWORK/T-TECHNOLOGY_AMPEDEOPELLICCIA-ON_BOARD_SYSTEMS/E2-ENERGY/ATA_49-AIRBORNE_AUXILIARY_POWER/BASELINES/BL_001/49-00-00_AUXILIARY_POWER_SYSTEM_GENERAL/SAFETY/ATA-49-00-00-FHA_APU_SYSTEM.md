# Functional Hazard Assessment - APU System
**ATA-49-00-00-FHA_APU_SYSTEM**

## Document Control

| Attribute | Details |
|-----------|---------|
| Document ID | ATA-49-00-00-FHA_APU_SYSTEM |
| Revision | 1.0 |
| Date | 2025-10-31 |
| Status | Released for Review |
| Classification | Company Confidential |
| Prepared By | APU Systems Safety Team |
| Approved By | Chief Safety Engineer |

## Cross-References

### Parent Documents
- [ARP4761A - Guidelines and Methods for Conducting Safety Assessment](https://www.sae.org/standards/content/arp4761a/)
- [ARP4754A - Guidelines for Development of Civil Aircraft and Systems](https://www.sae.org/standards/content/arp4754a/)
- [FAR 25.1309 - Equipment, systems, and installations](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309)
- [CS-25.1309 - Equipment, systems, and installations](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27)
- [../OVERVIEW/ATA-49-00-00-000_SUBSYSTEM_SUMMARY.md](../OVERVIEW/ATA-49-00-00-000_SUBSYSTEM_SUMMARY.md)
- [../REQUIREMENTS/ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](../REQUIREMENTS/ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)

### Related Safety Documents
- [ATA-49-00-00-PSSA_PRELIMINARY.md](ATA-49-00-00-PSSA_PRELIMINARY.md) - Preliminary System Safety Assessment
- [ATA-49-00-00-SSA_SYSTEM_SAFETY.md](ATA-49-00-00-SSA_SYSTEM_SAFETY.md) - System Safety Assessment
- [ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md](ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md) - Fire Safety Analysis
- [ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md](ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md) - Fault Tree Analysis
- [ATA-49-00-00-015_SAFETY_CASE_REPORT.md](ATA-49-00-00-015_SAFETY_CASE_REPORT.md) - Safety Case Report

### Interface Documents
- [../INTERFACES/ATA-49-00-00-ICD-001_TO_24_ELECTRICAL.md](../INTERFACES/ATA-49-00-00-ICD-001_TO_24_ELECTRICAL.md)
- [../INTERFACES/ATA-49-00-00-ICD-004_TO_26_FIRE_PROTECTION.md](../INTERFACES/ATA-49-00-00-ICD-004_TO_26_FIRE_PROTECTION.md)

## Executive Summary

This Functional Hazard Assessment (FHA) identifies and classifies the failure conditions associated with the ATA-49 Airborne Auxiliary Power (APU) system per [ARP4761A](https://www.sae.org/standards/content/arp4761a/) methodology. The FHA forms the foundation of the safety assessment process for certification compliance with [FAR 25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309) and [CS-25.1309](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27).

**Key Findings**:
- **38 failure conditions** identified across APU system functions
- **2 Catastrophic** failure conditions requiring DAL A software/hardware
- **6 Hazardous** failure conditions requiring extensive mitigation
- **15 Major** failure conditions requiring fault tolerance
- **15 Minor** failure conditions with defined dispatch limits

All catastrophic and hazardous failure conditions have been allocated quantitative probability requirements and mitigation strategies are defined.

## 1. Introduction

### 1.1 Purpose

This FHA establishes the safety basis for the APU system by:
1. Identifying system functions and their failure modes
2. Assessing effects of function failures on aircraft and occupants
3. Classifying failure conditions by severity per [ARP4761A](https://www.sae.org/standards/content/arp4761a/)
4. Allocating quantitative safety objectives
5. Defining derived safety requirements for design and certification

### 1.2 Scope

The FHA covers the complete APU system including:
- Main APU (gas turbine or fuel cell configurations)
- Electrical power generation (49-30)
- Bleed air supply (49-10)
- Fuel and lubrication systems (49-20)
- Emergency power (RAM Air Turbine - 49-40)
- Ground power interfaces (49-50)
- Fire detection and suppression
- APU control and monitoring systems
- Integration with aircraft systems (ATA-24, 21, 28, 26, 31, 46)

### 1.3 Methodology

Assessment conducted per [ARP4761A](https://www.sae.org/standards/content/arp4761a/) Section 3:
1. Function identification and operational scenarios
2. Failure condition identification (loss/malfunction of functions)
3. Effect analysis at aircraft level
4. Severity classification per [FAR 25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309)
5. Quantitative probability allocation
6. Identification of design requirements and safety mitigations

## 2. APU System Functions

### 2.1 Primary Functions

| Function ID | Function Description | Operational Phase |
|-------------|---------------------|-------------------|
| F-49-001 | Provide electrical power (115VAC 400Hz, 28VDC) | All phases |
| F-49-002 | Provide pneumatic bleed air for ECS and engine starting | Ground, in-flight |
| F-49-003 | Start and control APU operation | All phases |
| F-49-004 | Monitor APU health and performance | All phases |
| F-49-005 | Provide emergency electrical power (RAT deployment) | Emergency |
| F-49-006 | Provide fire detection in APU compartment | All phases |
| F-49-007 | Provide fire suppression in APU compartment | All phases |
| F-49-008 | Interface with ground power sources | Ground only |
| F-49-009 | Condition and distribute APU electrical power | All phases |
| F-49-010 | Lubricate and cool APU components | APU running |
| F-49-011 | Supply fuel to APU | APU running |
| F-49-012 | Provide APU status to flight deck and EICAS | All phases |

### 2.2 Operational Scenarios

The FHA considers the following flight phases per [ARP4761A](https://www.sae.org/standards/content/arp4761a/) Appendix D:
- Ground operations (pre-flight, post-flight)
- Taxi (out/in)
- Takeoff
- Climb
- Cruise
- Descent
- Approach
- Landing
- Emergency operations (engine failure, electrical emergency, pressurization loss)

## 3. Failure Condition Analysis

### 3.1 Severity Classification Criteria

Per [FAR 25.1309(b)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309):

| Classification | Effect on Aircraft and Occupants | Probability Requirement |
|----------------|----------------------------------|-------------------------|
| **Catastrophic** | Prevents continued safe flight and landing | < 10⁻⁹ per flight hour |
| **Hazardous** | Large reduction in safety margins or functional capabilities; higher workload impairing crew efficiency; adverse effects on occupants | < 10⁻⁷ per flight hour |
| **Major** | Significant reduction in safety margins or functional capabilities; increase in crew workload; some discomfort to occupants | < 10⁻⁵ per flight hour |
| **Minor** | Slight reduction in safety margins; slight increase in crew workload; some inconvenience to occupants | Probable (no quantitative requirement) |
| **No Safety Effect** | No effect on safety | None |

### 3.2 Catastrophic Failure Conditions

#### FC-CAT-01: Complete Loss of All Electrical Power (All Generators + APU + RAT Fail)

**Function Affected**: F-49-001, F-49-005  
**Phase**: All, especially IMC night operations  
**Effects**:
- Loss of all flight instruments (PFD, ND, EICAS)
- Loss of all flight controls (fly-by-wire reversion to direct mechanical)
- Loss of navigation and communication systems
- Loss of night lighting
- Loss of pressurization control

**Severity**: **CATASTROPHIC**  
**Probability Requirement**: < 10⁻⁹ per FH  
**Allocated Requirement**: APU + RAT combined failure < 10⁻⁹ per FH  
**Derived Safety Requirements**:
- APU system designed to DAL A per [DO-178C](https://www.rtca.org/standards/do-178c/) for safety-critical control software
- Independent RAT system with automatic deployment
- Dissimilar redundancy between APU electrical and RAT electrical generation
- Multiple independent power distribution buses
- Battery backup for essential systems (30 minutes minimum)
- FMEA/FTA required per [ARP4761A](https://www.sae.org/standards/content/arp4761a/)

**References**:
- [ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md](ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md)
- [../SUBSYSTEMS_AND_COMPONENTS/49-40_EMERGENCY_POWER/](../SUBSYSTEMS_AND_COMPONENTS/49-40_EMERGENCY_POWER/)

#### FC-CAT-02: Uncontained APU Fire with Structural Damage

**Function Affected**: F-49-006, F-49-007  
**Phase**: All  
**Effects**:
- Fire penetrates firewall into adjacent compartments
- Structural damage to primary flight structure
- Potential loss of hydraulic/fuel/electrical systems routed through affected area
- Smoke/fumes in pressurized areas

**Severity**: **CATASTROPHIC**  
**Probability Requirement**: < 10⁻⁹ per FH  
**Allocated Requirement**: Uncontained fire < 10⁻⁹ per FH  
**Derived Safety Requirements**:
- Dual-loop fire detection with < 0.8 seconds response time per [FAR 25.1203](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1203)
- Dual-shot fire suppression system per [FAR 25.1195](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1195)
- Firewall with 22-minute burnthrough resistance per [FAR 25.863](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.863)
- Automatic APU shutdown on fire detection
- Fire test per [FAR 25.1203](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1203) and [DO-160G Section 26](https://www.rtca.org/standards/do-160g/)
- Segregated routing of critical systems

**References**:
- [ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md](ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md)
- [../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-002_FIRE_TEST_RESULTS.md](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-002_FIRE_TEST_RESULTS.md)

### 3.3 Hazardous Failure Conditions

#### FC-HAZ-01: APU Fails During Single-Engine Taxi

**Function Affected**: F-49-001, F-49-002  
**Phase**: Ground operations  
**Effects**:
- Loss of electrical power (main engines not running)
- Loss of pneumatic for air conditioning (hot day operations)
- Increased crew workload for APU restart or ground power connection
- Potential delayed departure

**Severity**: **HAZARDOUS**  
**Probability Requirement**: < 10⁻⁷ per FH  
**Allocated Requirement**: APU in-flight failure < 10⁻⁷ per FH  
**Derived Safety Requirements**:
- MTBF > 10,000 hours for APU assembly
- Built-in test (BIT) with prediction capability
- Crew procedures for APU loss
- MEL dispatch provisions
- Ground power availability at all airports

**References**:
- [../REQUIREMENTS/ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md](../REQUIREMENTS/ATA-49-00-00-023_REQ_RELIABILITY_MTBF.md)

#### FC-HAZ-02: RAT Fails to Deploy in Dual-Engine Failure

**Function Affected**: F-49-005  
**Phase**: In-flight emergency  
**Effects**:
- No emergency electrical power available
- No emergency hydraulic power available
- Limited battery time (30 minutes)
- Forced immediate landing

**Severity**: **HAZARDOUS** (given extremely rare dual-engine failure condition)  
**Probability Requirement**: < 10⁻⁷ per FH (conditional on dual-engine failure)  
**Allocated Requirement**: RAT deployment failure < 10⁻⁴ per demand  
**Derived Safety Requirements**:
- Automatic RAT deployment logic (independent of crew action)
- Manual deployment capability (backup)
- Spring-loaded mechanism with independent pneumatic backup
- Periodic functional tests per maintenance program
- Self-test capability with EICAS annunciation

**References**:
- [../SUBSYSTEMS_AND_COMPONENTS/49-40_EMERGENCY_POWER/README.md](../SUBSYSTEMS_AND_COMPONENTS/49-40_EMERGENCY_POWER/README.md)

#### FC-HAZ-03: Hydrogen Leak with Ignition (Fuel Cell APU Configuration)

**Function Affected**: F-49-011  
**Phase**: All  
**Effects**:
- Hydrogen fire/explosion in APU bay
- Potential damage to adjacent systems and structure
- Crew unable to extinguish hydrogen fire
- Emergency descent and landing required

**Severity**: **HAZARDOUS**  
**Probability Requirement**: < 10⁻⁷ per FH  
**Allocated Requirement**: H2 leak with ignition < 10⁻⁷ per FH  
**Derived Safety Requirements**:
- Hydrogen leak detection per [SAE AIR7803](https://www.sae.org/standards/content/air7803/) and [ISO 19880-8](https://www.iso.org/standard/69680.html)
- Ventilation system sized for worst-case leak (4x Lower Flammability Limit)
- Automatic H2 shutdown on leak detection
- Purge system for ground and in-flight operations
- Ignition source controls per [NFPA 2](https://www.nfpa.org/codes-and-standards/all-codes-and-standards/list-of-codes-and-standards/detail?code=2)
- Hydrogen-compatible materials and bonding/grounding

**References**:
- [ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md](ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md)
- [../SUBSYSTEMS_AND_COMPONENTS/49-60_FUEL_CELL_APU_H2_INTEGRATION/](../SUBSYSTEMS_AND_COMPONENTS/49-60_FUEL_CELL_APU_H2_INTEGRATION/)

#### FC-HAZ-04: APU Overspe (Runaway Turbine)

**Function Affected**: F-49-003  
**Phase**: APU operating  
**Effects**:
- Turbine overspeed leading to uncontained rotor failure
- High-energy debris ejected from APU compartment
- Potential damage to adjacent systems, structure, fuel tanks
- Fire risk from severed fuel/hydraulic lines

**Severity**: **HAZARDOUS**  
**Probability Requirement**: < 10⁻⁷ per FH  
**Allocated Requirement**: Uncontained turbine failure < 10⁻⁷ per FH  
**Derived Safety Requirements**:
- Dual-channel overspeed protection with independent fuel shutoff valves
- Mechanical overspeed governor (independent of electronic control)
- Containment design per [AC 33.94](https://www.faa.gov/regulations_policies/advisory_circulars/index.cfm/go/document.information/documentID/1020107) for critical speed range
- Rotor integrity monitoring (vibration, temperature)
- Periodic inspections per damage tolerance analysis

**References**:
- [../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/](../SUBSYSTEMS_AND_COMPONENTS/49-10_APU_MECHANICAL_POWERTRAIN/)

#### FC-HAZ-05: Loss of All Bleed Air at High Altitude

**Function Affected**: F-49-002  
**Phase**: Cruise above FL280  
**Effects**:
- Loss of cabin pressurization
- Emergency descent required
- Crew oxygen required
- Passenger oxygen required (if above FL350)

**Severity**: **HAZARDOUS**  
**Probability Requirement**: < 10⁻⁷ per FH  
**Allocated Requirement**: Complete bleed air loss < 10⁻⁷ per FH  
**Derived Safety Requirements**:
- Independent APU bleed and engine bleed sources
- Cross-bleed capability between engines
- Automatic bleed valve control with fault detection
- Cabin altitude warning system
- Emergency descent procedures in QRH

**References**:
- [../REQUIREMENTS/ATA-49-00-00-021_REQ_BLEED_AIR_CAPACITY.md](../REQUIREMENTS/ATA-49-00-00-021_REQ_BLEED_AIR_CAPACITY.md)

#### FC-HAZ-06: Undetected Fire in APU Compartment

**Function Affected**: F-49-006  
**Phase**: All  
**Effects**:
- Fire continues unchecked until structural damage occurs
- Smoke/fumes propagate into aircraft
- Potential catastrophic outcome if not detected by other means

**Severity**: **HAZARDOUS** (assumes fire contained by firewall for 22 minutes)  
**Probability Requirement**: < 10⁻⁷ per FH  
**Allocated Requirement**: Fire detection failure < 10⁻⁴ per demand  
**Derived Safety Requirements**:
- Dual-loop fire detection (independent sensors and circuits)
- Built-in test of fire detection system (daily automatic test)
- Fire detection system monitoring (BITE with EICAS alert on failure)
- Smoke detection as backup indication
- Periodic fire detector functional tests per maintenance schedule

**References**:
- [ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md](ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md)

### 3.4 Major Failure Conditions (Summary)

| FC ID | Failure Condition | Severity | Probability | Key Mitigation |
|-------|------------------|----------|-------------|----------------|
| FC-MAJ-01 | APU fails to start (no backup power available) | Major | < 10⁻⁵/FH | Ground power, battery backup, dual-channel starting |
| FC-MAJ-02 | APU shuts down in flight (single generator remaining) | Major | < 10⁻⁵/FH | Engine-driven generators, fault-tolerant control |
| FC-MAJ-03 | APU electrical generator failure | Major | < 10⁻⁵/FH | Dual generators on APU, redundant field excitation |
| FC-MAJ-04 | APU bleed air valve fails closed | Major | < 10⁻⁵/FH | Dual valve channels, position feedback |
| FC-MAJ-05 | APU oil system failure | Major | < 10⁻⁵/FH | Oil quantity/pressure monitoring, auto shutdown |
| FC-MAJ-06 | APU control system failure | Major | < 10⁻⁵/FH | Dual-channel FADEC, reversionary modes |
| FC-MAJ-07 | APU fuel supply failure | Major | < 10⁻⁵/FH | Dual fuel pumps, independent DC buses |
| FC-MAJ-08 | Fire suppression system failure | Major | < 10⁻⁴/demand | Dual-shot system, agent quantity monitoring |
| FC-MAJ-09 | APU start system failure | Major | < 10⁻⁵/FH | Dual starter channels, backup pneumatic start |
| FC-MAJ-10 | APU intake obstruction (ice/debris) | Major | < 10⁻⁵/FH | Heated intake, FOD protection, inspection procedures |
| FC-MAJ-11 | APU exhaust blockage | Major | < 10⁻⁵/FH | EGT monitoring, exhaust inspection, over-temp shutdown |
| FC-MAJ-12 | Loss of APU monitoring/indication | Major | < 10⁻⁵/FH | Redundant sensors, dual EICAS displays, backup gauges |
| FC-MAJ-13 | Ground power relay failure (stuck closed) | Major | < 10⁻⁵/FH | Current/voltage monitoring, manual disconnect capability |
| FC-MAJ-14 | RAT deploys inadvertently | Major | < 10⁻⁵/FH | Dual-channel deployment inhibit, landing gear squat switch |
| FC-MAJ-15 | APU vibration/imbalance | Major | < 10⁻⁵/FH | Vibration monitoring, automatic shutdown, periodic balance |

### 3.5 Minor Failure Conditions (Summary)

15 minor failure conditions identified including:
- Single APU parameter sensor failures (with redundancy)
- APU cooling fan failures (with reduced envelope operation)
- APU door actuator failures
- APU drain system failures
- APU instrumentation light failures
- etc.

All minor conditions allow continued safe flight and landing with procedural mitigations and MEL dispatch provisions.

## 4. Quantitative Safety Allocations

### 4.1 Top-Level Safety Budget

Based on [AC 25.1309-1A](https://www.faa.gov/regulations_policies/advisory_circulars/index.cfm/go/document.information/documentID/1020388) Section 5:

| Failure Condition Class | Aircraft-Level Probability Target | APU System Allocation | Rationale |
|------------------------|----------------------------------|---------------------|-----------|
| Catastrophic | < 10⁻⁹ per FH | < 10⁻⁹ per FH (2 conditions) | 100% allocation due to direct APU causation |
| Hazardous | < 10⁻⁷ per FH | < 10⁻⁷ per FH (6 conditions) | 100% allocation, APU is primary contributor |
| Major | < 10⁻⁵ per FH | < 10⁻⁵ per FH (15 conditions) | 100% allocation for single-fault major conditions |

### 4.2 Derived Component Reliability Requirements

To achieve system-level allocations, component-level requirements derived:

| Component | Failure Rate Requirement | Rationale |
|-----------|-------------------------|-----------|
| APU Assembly (total failure) | < 10⁻⁵ per hour | Contributes to FC-MAJ-02 |
| APU Control (FADEC) | < 10⁻⁶ per hour | Contributes to FC-CAT-01, FC-HAZ-04 |
| Fire Detection (per loop) | > 0.9999 per demand | Dual loops achieve FC-HAZ-06 requirement |
| Fire Suppression | > 0.999 per demand | Dual shots achieve FC-HAZ-06 requirement |
| RAT Deployment Mechanism | > 0.9999 per demand | Achieves FC-HAZ-02 requirement |
| Electrical Generator | < 10⁻⁵ per hour | Contributes to FC-MAJ-03 |

### 4.3 Common Cause Analysis

Per [ARP4761A](https://www.sae.org/standards/content/arp4761a/) Section 7, common cause failures considered:
- Environmental (lightning, HIRF, temperature extremes, icing)
- Design/manufacturing defects (systematic failures)
- Maintenance errors
- Software common-mode failures
- Particular risk analyzed: all APU electrical + RAT electrical share aircraft speed/altitude environment

**Mitigation**: Dissimilar redundancy (APU uses turbine/fuel cell, RAT uses aerodynamic), independent power generation and distribution.

## 5. Development Assurance Levels

Per [ARP4754A](https://www.sae.org/standards/content/arp4754a/) and [DO-178C](https://www.rtca.org/standards/do-178c/):

| System/Component | DAL | Justification |
|------------------|-----|---------------|
| APU Control Software (FADEC) | **Level A** | Contributes to Catastrophic failure conditions (FC-CAT-01, FC-CAT-02 via FC-HAZ-04) |
| Fire Detection System | **Level A** | Contributes to Catastrophic failure condition (FC-CAT-02 via FC-HAZ-06) |
| RAT Deployment Software | **Level A** | Contributes to Hazardous failure condition (FC-HAZ-02) with high severity |
| APU Electrical Generator Control | **Level B** | Contributes to Hazardous failure conditions |
| APU Monitoring/EICAS Interface | **Level C** | Contributes to Major failure conditions |
| Ground Power Interface Control | **Level D** | Minor failure conditions only |

## 6. Derived Safety Requirements Summary

The FHA generates the following categories of derived requirements:

### 6.1 Design Requirements
- Dual-redundant APU control channels (DAL A)
- Independent APU and RAT electrical generation
- Dual-loop fire detection with cross-monitoring
- Dual-shot fire suppression
- Firewall with 22-minute burnthrough resistance
- Hydrogen leak detection and ventilation (fuel cell APU)
- APU containment design for rotor failure
- Segregated routing of critical systems
- Battery backup for essential systems (30 min)

### 6.2 Verification Requirements
- Fault tree analysis for FC-CAT-01, FC-CAT-02
- FMEA for all catastrophic and hazardous contributors
- Fire test per DO-160G Section 26
- Rotor burst test per AC 33.94
- Software verification per DO-178C Level A
- Hardware verification per DO-254 (FPGA designs)
- System safety assessment per ARP4761A
- Environmental qualification per DO-160G

### 6.3 Operational Requirements
- Crew procedures for all hazardous failure conditions
- MEL dispatch provisions for major/minor failures
- Maintenance program with condition monitoring
- Periodic fire detector functional tests
- Hydrogen system leak checks (fuel cell APU)
- APU vibration trend monitoring

## 7. Next Steps

### 7.1 Downstream Safety Assessments

1. **Preliminary System Safety Assessment (PSSA)**: Functional analysis, preliminary FMEA, preliminary FTA
   - Reference: [ATA-49-00-00-PSSA_PRELIMINARY.md](ATA-49-00-00-PSSA_PRELIMINARY.md)

2. **System Safety Assessment (SSA)**: Detailed FMEA, quantitative FTA, common cause analysis, design verification
   - Reference: [ATA-49-00-00-SSA_SYSTEM_SAFETY.md](ATA-49-00-00-SSA_SYSTEM_SAFETY.md)

3. **Fault Tree Analysis (FTA)**: Quantitative analysis of catastrophic and hazardous top events
   - Reference: [ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md](ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md)

### 7.2 Certification Coordination

- Coordination with certification authorities (FAA, EASA) on FHA results
- Issue Paper generation for novel technologies (fuel cell APU, H2 storage)
- Certification plan update with allocated DALs and testing requirements

**References**:
- [../CERTIFICATION/ATA-49-00-00-140_CERT_BASIS.md](../CERTIFICATION/ATA-49-00-00-140_CERT_BASIS.md)
- [../CERTIFICATION/ATA-49-00-00-141_COMPLIANCE_MATRIX_FAR25.xlsx](../CERTIFICATION/ATA-49-00-00-141_COMPLIANCE_MATRIX_FAR25.xlsx)

## 8. References

### 8.1 Regulatory Standards
- [FAR Part 25](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25) - Airworthiness Standards: Transport Category Airplanes
  - [25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309) - Equipment, systems, and installations
  - [25.863](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) - Flammable fluid fire protection
  - [25.1182](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1182) - Fire protection
  - [25.1195](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1195) - Fire extinguishing systems
  - [25.1203](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1203) - Fire detector system
  - [25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1431) - Electronic equipment
- [CS-25](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27) - Certification Specifications for Large Aeroplanes
- [AC 25.1309-1A](https://www.faa.gov/regulations_policies/advisory_circulars/index.cfm/go/document.information/documentID/1020388) - System Design and Analysis
- [AC 33.94](https://www.faa.gov/regulations_policies/advisory_circulars/index.cfm/go/document.information/documentID/1020107) - Rotor Blade Containment

### 8.2 Industry Standards
- [SAE ARP4761A](https://www.sae.org/standards/content/arp4761a/) - Guidelines and Methods for Conducting the Safety Assessment Process on Civil Aircraft, Systems, and Equipment
- [SAE ARP4754A](https://www.sae.org/standards/content/arp4754a/) - Guidelines for Development of Civil Aircraft and Systems
- [RTCA DO-178C](https://www.rtca.org/standards/do-178c/) - Software Considerations in Airborne Systems and Equipment Certification
- [RTCA DO-254](https://www.rtca.org/standards/do-254/) - Design Assurance Guidance for Airborne Electronic Hardware
- [RTCA DO-160G](https://www.rtca.org/standards/do-160g/) - Environmental Conditions and Test Procedures for Airborne Equipment
- [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) - Guidelines for Aircraft Auxiliary Power Unit Installation
- [SAE AIR7803](https://www.sae.org/standards/content/air7803/) - Hydrogen Detection for Aerospace Applications
- [ISO 19880-8](https://www.iso.org/standard/69680.html) - Gaseous hydrogen — Fueling stations — Part 8: Fuel quality control
- [NFPA 2](https://www.nfpa.org/codes-and-standards/all-codes-and-standards/list-of-codes-and-standards/detail?code=2) - Hydrogen Technologies Code

### 8.3 Internal Documents
- [../OVERVIEW/ATA-49-00-00-000_SUBSYSTEM_SUMMARY.md](../OVERVIEW/ATA-49-00-00-000_SUBSYSTEM_SUMMARY.md)
- [../OVERVIEW/ATA-49-00-00-001_APU_TECHNOLOGY_OVERVIEW.md](../OVERVIEW/ATA-49-00-00-001_APU_TECHNOLOGY_OVERVIEW.md)
- [../REQUIREMENTS/ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](../REQUIREMENTS/ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)
- [ATA-49-00-00-PSSA_PRELIMINARY.md](ATA-49-00-00-PSSA_PRELIMINARY.md)
- [ATA-49-00-00-SSA_SYSTEM_SAFETY.md](ATA-49-00-00-SSA_SYSTEM_SAFETY.md)
- [ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md](ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md)
- [ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md](ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md)
- [ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md](ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md)
- [ATA-49-00-00-015_SAFETY_CASE_REPORT.md](ATA-49-00-00-015_SAFETY_CASE_REPORT.md)

## 9. Appendices

### Appendix A: FHA Workshop Participants

- APU Systems Engineering Lead
- Chief Safety Engineer
- Certification Engineering Manager
- Flight Test Engineering Representative
- Flight Operations Representative
- Maintenance Engineering Representative
- Supplier Technical Representatives (APU OEM, Fire Protection OEM)

### Appendix B: Assumptions and Limitations

1. Analysis assumes APU meets SAE AIR1818B installation requirements
2. Dual-engine failure probability assumed 10⁻⁹ per flight hour (industry standard)
3. Fire containment effectiveness assumes compliance with FAR 25.863 firewall test
4. Hydrogen system analysis based on SAE AIR7803 and ISO 19880-8 (emerging standards)
5. BWB airframe integration assumptions per preliminary design
6. Analysis will be updated as detailed design matures

### Appendix C: Revision History

| Revision | Date | Description | Author |
|----------|------|-------------|--------|
| 0.1 | 2025-09-15 | Initial draft for preliminary design review | APU Safety Team |
| 0.5 | 2025-10-01 | Updated with H2 fuel cell APU considerations | APU Safety Team |
| 1.0 | 2025-10-31 | Released for certification coordination | Chief Safety Engineer |

---

**Document Control**  
*This is a controlled document. Ensure you are using the latest revision from the document management system.*

---

*[Return to ATA-49 Safety Documentation](./)*  
*[Return to ATA-49 Main Index](../)*

---

*ATA-49 AIRBORNE AUXILIARY POWER Documentation*
