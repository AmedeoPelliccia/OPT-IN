# ATA-49-00-00-PSSA: Preliminary System Safety Assessment
## APU System - ATA Chapter 49

**Document Type**: PSSA (Preliminary System Safety Assessment)  
**ATA Chapter**: 49 - Airborne Auxiliary Power  
**System**: APU System (Gas Turbine, Fuel Cell, Emergency Power)  
**Compliance**: FAR 25.1309, CS-25.1309, ARP4761A  
**Revision**: A  
**Date**: 2024-10-31  
**Status**: Preliminary

---

## Cross-Reference

**Parent Documents**:
- [ATA-49-00-00-FHA_APU_SYSTEM.md](./ATA-49-00-00-FHA_APU_SYSTEM.md) - Functional Hazard Assessment
- [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](../REQUIREMENTS/ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md) - System Requirements

**Related Documents**:
- [ATA-49-00-00-SSA_SYSTEM_SAFETY.md](./ATA-49-00-00-SSA_SYSTEM_SAFETY.md) - System Safety Assessment (follows PSSA)
- [ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md](./ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md) - Fault Tree Analysis
- [ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md](./ATA-49-00-00-010_FIRE_SAFETY_ANALYSIS.md) - Fire Safety Analysis
- [ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md](./ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md) - H2 Safety

**Standards**:
- [FAR 25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309) - Equipment, systems, and installations
- [CS-25.1309](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27) - Equipment, systems, and installations
- [ARP4761A](https://www.sae.org/standards/content/arp4761a/) - Guidelines for Conducting Safety Assessments
- [ARP4754A](https://www.sae.org/standards/content/arp4754a/) - Development of Civil Aircraft Systems
- [DO-178C](https://www.rtca.org/content/standards-guidance-materials) - Software Considerations in Airborne Systems
- [DO-254](https://www.rtca.org/content/standards-guidance-materials) - Hardware Considerations in Airborne Systems

---

## 1. Executive Summary

This Preliminary System Safety Assessment (PSSA) evaluates the APU system design during the preliminary design phase per ARP4761A guidelines. The PSSA refines the Functional Hazard Assessment (FHA) results, validates safety requirements allocation, and establishes preliminary safety assessment for design progression.

**Key Findings**:
- Design meets preliminary safety objectives for all failure conditions
- 15 derived safety requirements identified
- 12 preliminary failure modes require detailed analysis in SSA
- No safety showstoppers identified
- Preliminary design recommendations provided

---

## 2. Objectives and Scope

### 2.1 PSSA Objectives

Per ARP4761A Section 4.3, the PSSA:
1. Validates FHA safety requirements allocation
2. Evaluates preliminary design for safety compliance
3. Identifies failure modes requiring detailed analysis
4. Derives additional safety requirements
5. Establishes safety assessment baseline for SSA

### 2.2 Scope

**Systems Covered**:
- Gas turbine APU (Honeywell HGT750)
- Fuel cell APU (H2-powered, 50 kW)
- Ram Air Turbine (emergency power)
- APU electrical generation and distribution
- APU fuel supply and control
- APU fire protection
- APU bleed air extraction
- APU control and monitoring

**Excluded**: Ground power unit interface (covered in separate PSSA)

---

## 3. PSSA Methodology

### 3.1 Process Overview

PSSA follows ARP4761A Figure 4 methodology:

```
FHA Results → Preliminary Design → Functional Failure Analysis → 
Qualitative Assessment → Safety Requirements Validation → 
Derived Requirements → Design Recommendations → SSA Planning
```

### 3.2 Analysis Techniques

- **Functional Failure Analysis**: Top-down decomposition
- **Preliminary FMEA**: Bottom-up failure mode identification
- **Qualitative Safety Assessment**: Severity and likelihood estimation
- **Common Cause Analysis**: Preliminary assessment
- **Design Review**: Safety-focused design evaluation

### 3.3 Safety Objectives from FHA

| Failure Condition | Classification | Safety Objective | Allocation |
|-------------------|----------------|------------------|------------|
| Complete Electrical System Loss | Catastrophic | < 10^-9 per FH | APU: < 5×10^-10 |
| Uncontained APU Fire | Catastrophic | < 10^-9 per FH | Detection: < 2×10^-10 |
| APU Failure (No Start/Shutdown) | Hazardous | < 10^-7 per FH | < 5×10^-8 |
| RAT Uncommanded Deployment | Hazardous | < 10^-7 per FH | < 1×10^-8 |
| H2 Fuel Leak | Hazardous | < 10^-7 per FH | < 3×10^-8 |
| APU Overspeed/Overtorque | Hazardous | < 10^-7 per FH | < 2×10^-8 |
| Bleed Air System Loss | Major | < 10^-5 per FH | < 5×10^-6 |
| Fire Detection System Failure | Major | < 10^-5 per FH | < 2×10^-6 |

---

## 4. Functional Failure Analysis

### 4.1 APU Electrical Generation Function

**Function**: Provide 115V AC 400Hz electrical power to aircraft systems

**Preliminary Failure Modes**:
1. **Generator Output Loss**
   - Causes: Generator winding failure, exciter failure, GCU malfunction
   - Effect: Loss of APU-supplied electrical power
   - Mitigation: Dual-channel GCU, generator redundancy (main engines), RAT backup
   - Severity: Hazardous (with loss of all generators)

2. **Electrical Power Quality Degradation**
   - Causes: GCU control error, voltage regulator failure
   - Effect: Out-of-spec voltage/frequency per MIL-STD-704F
   - Mitigation: Power quality monitoring, automatic load shedding
   - Severity: Major

3. **Generator Overvoltage**
   - Causes: Voltage regulator runaway, sense line failure
   - Effect: Damage to electrical loads, potential fire
   - Mitigation: Overvoltage protection relay, circuit breakers
   - Severity: Major

**Derived Requirements**:
- **PSSA-REQ-001**: Generator Control Unit shall be dual-channel with cross-monitoring
- **PSSA-REQ-002**: Overvoltage protection shall trip within 50 ms
- **PSSA-REQ-003**: Power quality monitoring per MIL-STD-704F Category A

### 4.2 APU Mechanical Power Function

**Function**: Generate shaft power for electrical generator and bleed air extraction

**Preliminary Failure Modes**:
1. **APU Overspeed**
   - Causes: Fuel control malfunction, governor failure, load shed
   - Effect: Mechanical damage, uncontained failure risk
   - Mitigation: Dual-channel overspeed protection, fuel shutoff
   - Severity: Hazardous (if uncontained)

2. **APU Seizure/Mechanical Failure**
   - Causes: Bearing failure, FOD, inadequate lubrication
   - Effect: Loss of APU function, potential fire, uncontained failure
   - Mitigation: Vibration monitoring, oil system monitoring, containment design
   - Severity: Hazardous

3. **Compressor Surge/Stall**
   - Causes: Inlet distortion, bleed valve malfunction, dirty compressor
   - Effect: Loss of APU performance, potential engine damage
   - Mitigation: Surge detection and recovery logic, inlet design
   - Severity: Major

**Derived Requirements**:
- **PSSA-REQ-004**: Overspeed protection shall be independent dual-channel
- **PSSA-REQ-005**: Containment design per CS-E 810 for rotating components
- **PSSA-REQ-006**: Vibration monitoring with automatic shutdown at high levels

### 4.3 APU Fuel Supply Function

**Function**: Deliver fuel (Jet-A or H2) to APU combustion system

**Preliminary Failure Modes**:
1. **Fuel Starvation**
   - Causes: Fuel pump failure, line blockage, tank depletion
   - Effect: APU shutdown, loss of APU-supplied services
   - Mitigation: Fuel low-level warning, pump redundancy
   - Severity: Major

2. **Fuel System Leak**
   - Causes: Line rupture, seal failure, fitting failure
   - Effect: Fire hazard, fuel quantity loss
   - Mitigation: Leak detection, fireproof line routing, shutoff valves
   - Severity: Hazardous (if fire results)

3. **H2 Fuel System Leak**
   - Causes: High-pressure line rupture, fitting failure, permeation
   - Effect: Explosion hazard, H2 accumulation
   - Mitigation: H2 detection network, ventilation, automatic isolation
   - Severity: Hazardous

**Derived Requirements**:
- **PSSA-REQ-007**: H2 fuel system shall have automatic leak detection and isolation
- **PSSA-REQ-008**: H2 sensors shall alarm at <25% LEL (1.0% concentration)
- **PSSA-REQ-009**: Fuel shutoff valves shall close within 2 seconds of detection

### 4.4 APU Fire Protection Function

**Function**: Detect and suppress fires in APU compartment

**Preliminary Failure Modes**:
1. **Fire Detection System Failure**
   - Causes: Sensor failure, wire damage, FSEU failure
   - Effect: Undetected fire, delayed crew response
   - Mitigation: Dual-loop detection, cross-monitoring
   - Severity: Major

2. **Fire Suppression System Failure**
   - Causes: Bottle discharge failure, nozzle blockage, valve failure
   - Effect: Fire not extinguished, aircraft loss
   - Mitigation: Dual-shot capability, pressure monitoring
   - Severity: Catastrophic (if fire uncontained)

3. **False Fire Warning**
   - Causes: Sensor contamination, EMI, FSEU malfunction
   - Effect: Unnecessary APU shutdown, flight disruption
   - Mitigation: Dual-loop confirmation logic, EMI protection
   - Severity: Minor

**Derived Requirements**:
- **PSSA-REQ-010**: Fire detection shall be dual-loop with fault annunciation
- **PSSA-REQ-011**: Fire suppression shall provide two-shot capability
- **PSSA-REQ-012**: False alarm rate shall be < 1 per 10,000 flight hours

### 4.5 APU Bleed Air Function

**Function**: Extract compressed air from APU compressor for ECS and engine starting

**Preliminary Failure Modes**:
1. **Bleed Air System Loss**
   - Causes: Bleed valve failure, duct rupture, pre-cooler failure
   - Effect: Loss of cabin pressurization, inability to start engines
   - Mitigation: Bleed valve redundancy, leak detection
   - Severity: Major

2. **Bleed Air Overpressure**
   - Causes: Pressure regulator failure, valve stuck open
   - Effect: Duct rupture, pneumatic system damage
   - Mitigation: Overpressure relief valve, pressure monitoring
   - Severity: Major

3. **Bleed Air Contamination**
   - Causes: Oil ingestion, combustion products, foreign material
   - Effect: ECS contamination, crew/passenger health hazard
   - Mitigation: Air quality monitoring, oil seal design
   - Severity: Major

**Derived Requirements**:
- **PSSA-REQ-013**: Bleed air pressure regulation with overpressure protection
- **PSSA-REQ-014**: Air quality monitoring per ISO 8573-1
- **PSSA-REQ-015**: Bleed valve position monitoring and failure detection

### 4.6 APU Control and Monitoring Function

**Function**: Control APU operation and provide status/health monitoring

**Preliminary Failure Modes**:
1. **APU Control System Failure**
   - Causes: APMS software error, sensor failure, actuation failure
   - Effect: Loss of APU control, uncommanded shutdown/overspeed
   - Mitigation: Dual-channel control, fail-safe design per DO-178C DAL A
   - Severity: Hazardous

2. **False Indication/Warning**
   - Causes: Sensor failure, display failure, data corruption
   - Effect: Crew confusion, inappropriate action
   - Mitigation: Signal validity monitoring, cross-channel comparison
   - Severity: Major

3. **Loss of APU Monitoring**
   - Causes: Sensor loss, data bus failure, display failure
   - Effect: Inability to assess APU health, delayed fault detection
   - Mitigation: Critical parameter redundancy, warning prioritization
   - Severity: Major

**Derived Requirements**:
- **PSSA-REQ-016**: APMS shall be DO-178C DAL A for safety-critical functions
- **PSSA-REQ-017**: Critical parameters shall have dual-redundant sensing
- **PSSA-REQ-018**: Control system shall be fail-safe (safe shutdown on failure)

---

## 5. Common Cause Analysis (Preliminary)

### 5.1 Lightning Strike

**Effect on APU Systems**:
- Electrical transients can damage GCU, APMS, sensors
- Bonding and grounding critical for protection

**Mitigation**:
- DO-160G Category A lightning protection
- Transient suppression on all electrical interfaces
- Proper bonding per FAR 25.899

### 5.2 Electromagnetic Interference (EMI)

**Effect on APU Systems**:
- Can cause false warnings, control errors, sensor anomalies
- High-power radars, lightning, HIRF sources

**Mitigation**:
- EMI testing per DO-160G Category M
- Shielded cables, filtered interfaces
- Software robustness against data corruption

### 5.3 Fire/Overheat

**Effect on APU Systems**:
- Can damage multiple components in APU compartment
- Wire bundles, sensors, hydraulic lines vulnerable

**Mitigation**:
- Fire-resistant materials per FAR 25.863
- Fire detection and suppression
- Critical system separation and protection

### 5.4 Icing/Freezing

**Effect on APU Systems**:
- Inlet icing can cause FOD or airflow disruption
- Fuel system icing (water contamination)
- Sensor icing (probes, drains)

**Mitigation**:
- Inlet anti-ice system
- Fuel tank heating for cold soak
- Protected sensor locations

### 5.5 Contamination

**Effect on APU Systems**:
- Fuel contamination (water, particulates) causes combustion issues
- Oil contamination causes bearing wear
- Air contamination affects bleed air quality

**Mitigation**:
- Filtration systems for all fluids
- Contamination monitoring
- Preventive maintenance inspections

---

## 6. Preliminary Design Recommendations

### 6.1 Redundancy and Independence

1. **Electrical Generation**: Maintain APU generator independence from main engine generators
2. **Fire Protection**: Dual-loop fire detection with independent power sources
3. **Control System**: Dual-channel APMS with dissimilar redundancy where practical
4. **Emergency Power**: RAT completely independent of APU system

### 6.2 Failure Detection and Annunciation

1. **Critical Parameters**: Dual-redundant sensing for N1, EGT, oil pressure, vibration
2. **Health Monitoring**: Continuous monitoring with prognostics for scheduled maintenance
3. **Crew Interface**: Clear, prioritized warnings per FAR 25.1322
4. **BITE**: Built-in test for pre-flight and in-flight diagnostics

### 6.3 Fail-Safe Design

1. **Fuel Control**: Fail to shutoff (fuel closed) on control system failure
2. **Overspeed Protection**: Independent mechanical/hydromechanical backup
3. **Fire Suppression**: Manual discharge capability independent of automatic system
4. **Isolation Valves**: Fail closed for fuel, fail open for ventilation

### 6.4 Environmental Protection

1. **Lightning**: Full DO-160G Category A compliance
2. **EMI/HIRF**: DO-160G Category M compliance
3. **Temperature**: -55°C to +85°C operating envelope
4. **Vibration**: Category U (standard aircraft vibration) per DO-160G

### 6.5 H2 Fuel Cell Specific

1. **Ventilation**: 6 air changes per hour minimum in FC compartment
2. **H2 Detection**: Network of 8 sensors with <25% LEL alarm
3. **Isolation**: Automatic H2 supply shutoff on leak detection
4. **Inerting**: Nitrogen purge capability for maintenance

---

## 7. Derived Safety Requirements

| Req ID | Description | Rationale | Verification |
|--------|-------------|-----------|--------------|
| PSSA-REQ-001 | Dual-channel GCU with cross-monitoring | Prevent loss of electrical generation control | Analysis + Test |
| PSSA-REQ-002 | Overvoltage trip within 50 ms | Protect electrical loads from damage | Test |
| PSSA-REQ-003 | Power quality monitoring per MIL-STD-704F | Ensure electrical power quality | Test |
| PSSA-REQ-004 | Independent dual-channel overspeed protection | Prevent APU uncontained failure | Analysis + Test |
| PSSA-REQ-005 | Containment per CS-E 810 | Protect aircraft from rotor burst | Analysis + Test |
| PSSA-REQ-006 | Auto shutdown on high vibration | Prevent catastrophic mechanical failure | Test |
| PSSA-REQ-007 | H2 auto leak detection and isolation | Prevent H2 explosion hazard | Test |
| PSSA-REQ-008 | H2 alarm at <25% LEL | Early warning of H2 accumulation | Test |
| PSSA-REQ-009 | Fuel shutoff within 2 seconds | Rapid fire hazard mitigation | Test |
| PSSA-REQ-010 | Dual-loop fire detection with annunciation | Reliable fire detection | Test |
| PSSA-REQ-011 | Two-shot fire suppression capability | Ensure fire extinguishment | Test |
| PSSA-REQ-012 | False alarm rate < 1 per 10,000 FH | Minimize nuisance shutdowns | Analysis + Fleet Data |
| PSSA-REQ-013 | Bleed overpressure protection | Protect pneumatic system | Test |
| PSSA-REQ-014 | Air quality monitoring per ISO 8573-1 | Crew/passenger safety | Test |
| PSSA-REQ-015 | Bleed valve position monitoring | Detect pneumatic system faults | Test |
| PSSA-REQ-016 | APMS DO-178C DAL A | Safety-critical software reliability | Certification |
| PSSA-REQ-017 | Dual-redundant critical sensors | Prevent loss of situation awareness | Analysis |
| PSSA-REQ-018 | Fail-safe control system | Safe shutdown on control failure | Analysis + Test |

---

## 8. Preliminary Failure Modes Requiring SSA Analysis

| Failure Mode | Preliminary Severity | SSA Analysis Required |
|--------------|----------------------|----------------------|
| Complete APU loss with all generators | Catastrophic | Detailed FTA, probability calculation |
| Uncontained APU rotor burst | Catastrophic | Zone analysis, containment verification |
| H2 fuel cell explosion | Catastrophic | QRA, ventilation effectiveness analysis |
| Uncontained APU fire | Catastrophic | Fire test verification, suppression effectiveness |
| APU overspeed with containment breach | Catastrophic | FTA, rotor dynamics analysis |
| Dual-channel GCU failure | Hazardous | Common cause analysis, independence verification |
| Fire detection system dual-loop failure | Hazardous | FTA, common mode analysis |
| H2 leak with detection system failure | Hazardous | FTA, sensor reliability analysis |
| Bleed air system total loss | Major | FMEA, failure rate analysis |
| APU fuel starvation | Major | Single-point failure analysis |
| False fire warning (nuisance shutdown) | Major | Historical data analysis, EMI testing |
| Generator power quality out of spec | Major | Fault injection testing, load analysis |

---

## 9. Verification and Validation Strategy

### 9.1 Analysis Methods

- **Fault Tree Analysis (FTA)**: For catastrophic and hazardous failure conditions
- **Failure Mode and Effects Analysis (FMEA)**: Component-level failure modes
- **Common Cause Analysis**: Lightning, EMI, fire, icing, contamination
- **Zonal Safety Analysis**: APU compartment hazards
- **Software Safety Analysis**: APMS per DO-178C DAL A

### 9.2 Test Methods

- **Functional Testing**: Verify all modes of operation
- **Failure Injection Testing**: Verify detection and response to failures
- **Environmental Testing**: DO-160G full suite
- **Fire Testing**: FAR 25.863 and 25.1182 compliance
- **EMC Testing**: DO-160G Category M
- **Vibration Testing**: DO-160G Category U

### 9.3 Verification Matrix

Complete verification matrix will be developed in SSA phase, linking each safety requirement to verification method and test evidence.

---

## 10. Conclusions and Next Steps

### 10.1 PSSA Conclusions

1. **Safety Objectives Achievable**: Preliminary design demonstrates feasible paths to meet all FHA safety objectives
2. **No Safety Showstoppers**: No fundamental design issues identified that preclude certification
3. **Derived Requirements Identified**: 18 new safety requirements derived from PSSA analysis
4. **SSA Scope Defined**: 12 failure modes identified for detailed SSA analysis

### 10.2 Design Maturity Assessment

- **Electrical System**: 60% mature, detailed GCU design needed
- **Mechanical System**: 70% mature, containment analysis pending
- **Fuel System**: 55% mature, H2 system detailed design needed
- **Fire Protection**: 75% mature, suppression testing pending
- **Control System**: 50% mature, DO-178C development in progress

### 10.3 Next Steps (SSA Phase)

1. **Complete FTA**: Detailed fault trees for top 6 events
2. **FMEA**: Component-level analysis for all LRUs
3. **Zonal Analysis**: APU compartment detailed hazard analysis
4. **Software/Hardware Analysis**: DO-178C/DO-254 safety assessments
5. **Test Evidence**: Collect all verification test results
6. **Final SSA Report**: Demonstrate compliance with FAR 25.1309

---

## 11. References

### 11.1 Regulatory Standards

- [FAR 25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1309) - Equipment, systems, and installations
- [FAR 25.863](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) - Flammable fluid fire protection
- [FAR 25.899](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.899) - Electrical bonding and protection
- [CS-25.1309](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27) - Equipment, systems, and installations
- [CS-E 810](https://www.easa.europa.eu/en/document-library/certification-specifications) - Engine containment

### 11.2 Industry Standards

- [SAE ARP4761A](https://www.sae.org/standards/content/arp4761a/) - Guidelines for Conducting Safety Assessments
- [SAE ARP4754A](https://www.sae.org/standards/content/arp4754a/) - Development of Civil Aircraft Systems
- [RTCA DO-178C](https://www.rtca.org/content/standards-guidance-materials) - Software Considerations in Airborne Systems
- [RTCA DO-254](https://www.rtca.org/content/standards-guidance-materials) - Hardware Considerations in Airborne Systems
- [RTCA DO-160G](https://www.rtca.org/content/standards-guidance-materials) - Environmental Conditions and Test Procedures
- [MIL-STD-704F](https://www.everyspec.com/MIL-STD/MIL-STD-0700-0799/MIL-STD-704F_1083/) - Aircraft Electric Power Characteristics
- [ISO 8573-1](https://www.iso.org/standard/46418.html) - Compressed air quality

### 11.3 Internal References

- [ATA-49-00-00-FHA_APU_SYSTEM.md](./ATA-49-00-00-FHA_APU_SYSTEM.md)
- [ATA-49-00-00-SSA_SYSTEM_SAFETY.md](./ATA-49-00-00-SSA_SYSTEM_SAFETY.md)
- [ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md](./ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md)
- [ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md](../REQUIREMENTS/ATA-49-00-00-SR_SYSTEM_REQUIREMENTS.md)
- [ATA-49-00-00-030_APU_SELECTION_STUDY.md](../DESIGN/ATA-49-00-00-030_APU_SELECTION_STUDY.md)

---

## Document Control

**Prepared By**: APU Safety Assessment Team  
**Reviewed By**: Chief Safety Engineer  
**Approved By**: Program Manager  

**Revision History**:
| Revision | Date | Description | Author |
|----------|------|-------------|--------|
| A | 2024-10-31 | Initial PSSA release | Safety Team |

---

**[Return to ATA-49 Safety Documentation](./)**  
**[Return to ATA-49 Main Index](../)**

*ATA-49 AIRBORNE AUXILIARY POWER - Preliminary System Safety Assessment*
