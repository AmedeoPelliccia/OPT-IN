# Maintenance Review Board Report (MRBR) - Master Document
**Aircraft Type:** AMPEL360 Blended-Wing Body Hydrogen Aircraft  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Document ID:** MRBR_Master-Document_rev1.0.0_20280515

---

## 1.0 Introduction

### 1.1 Purpose
This Maintenance Review Board Report (MRBR) establishes the scheduled maintenance requirements for the AMPEL360 aircraft in accordance with FAA AC 120-16, EASA Part-M, and ATA MSG-3 methodology. It serves as the regulatory foundation for the operator's approved maintenance program.

### 1.2 Scope
This document defines maintenance tasks, intervals, and philosophies for all systems and structures of the AMPEL360 aircraft. It is the authoritative source for:
- Scheduled maintenance task requirements
- Maintenance philosophies (Hard Time, On-Condition, Condition Monitoring)
- Initial maintenance intervals
- Structural inspection programs
- Zonal inspection requirements

### 1.3 MSG-3 Analysis Methodology
The AMPEL360 maintenance program was developed using the MSG-3 (Maintenance Steering Group - 3rd Generation) analysis process, which is a decision logic approach that:
- Identifies significant items requiring maintenance
- Determines appropriate maintenance tasks
- Establishes initial maintenance intervals
- Documents the technical justification for each decision

### 1.4 Aircraft Configuration
- **Type:** Blended-Wing Body (BWB) Configuration
- **Powerplant:** Hydrogen Fuel Cell + Battery Hybrid Electric
- **Primary Energy Storage:** Cryogenic Liquid Hydrogen (LH2)
- **Backup Energy:** Solid-CO₂ Battery Modules (ATA 24-33)
- **Structural Material:** Advanced Composites with Integrated Sensors

---

## 2.0 Maintenance Philosophy

### 2.1 Core Principles
The AMPEL360 maintenance program is fundamentally **data-driven** and emphasizes:
1. **On-Condition (OC) Maintenance:** Tasks are performed based on actual component condition rather than fixed intervals
2. **Condition Monitoring (CM):** Continuous sensor-based monitoring of critical systems
3. **Prognostics and Health Management (PHM):** Predictive analytics to forecast component degradation

### 2.2 Maintenance Task Categories

#### 2.2.1 Hard Time (HT)
- Components/tasks with definite life limits
- Mandatory replacement/overhaul at specified intervals
- Applied primarily to:
  - Safety-critical life-limited parts
  - Structural elements with fatigue concerns
  - Certain pressurized components

#### 2.2.2 On-Condition (OC)
- Components inspected/tested at specified intervals
- Continued operation based on measured condition
- Applied to:
  - Battery State of Health (SOH) assessments
  - Actuator performance testing
  - System functional checks

#### 2.2.3 Condition Monitoring (CM)
- Continuous or periodic monitoring without scheduled removal
- Alert generated when parameters exceed thresholds
- Applied to:
  - Hydrogen system leak detection
  - Thermal management systems
  - Structural health monitoring (SHM) sensors

### 2.3 Digital Product Passport (DPP) Integration
All maintenance activities are recorded in the Digital Product Passport (ATA 95), providing:
- Complete component traceability from birth to disposal
- Real-time maintenance history
- Predictive analytics input data
- Regulatory compliance documentation

---

## 3.0 Systems Maintenance Requirements

### 3.1 ATA 24 - Electrical Power System
**Maintenance Philosophy:** Primarily On-Condition with Condition Monitoring

#### 3.1.1 Solid-CO₂ Battery Modules (24-33)
- **Task:** Battery Capacity Check and SOH Assessment
- **Interval:** 2000 FH or 12 Months
- **Type:** On-Condition
- **Justification:** Solid-state CO₂ battery technology requires periodic capacity verification to detect degradation before performance impact. Automated diagnostics provide State of Health (SOH) metrics.

#### 3.1.2 Fuel Cell Stacks (24-60)
- **Task:** Performance Test and Membrane Inspection
- **Interval:** 4000 FH or 24 Months
- **Type:** On-Condition
- **Justification:** Fuel cell membrane degradation is gradual and measurable through performance testing.

### 3.2 ATA 28 - Fuel (Hydrogen Storage)
**Maintenance Philosophy:** Condition Monitoring with Scheduled Structural Inspections

#### 3.2.1 Cryogenic Tank Insulation (28-60)
- **Task:** Vacuum Integrity Check and Thermal Performance Test
- **Interval:** 6000 FH or 36 Months
- **Type:** On-Condition
- **Justification:** Multi-layer insulation (MLI) and vacuum integrity are critical for LH2 storage efficiency and safety. Periodic verification ensures no thermal runaway risk.

#### 3.2.2 Hydrogen Leak Detection System (28-40)
- **Task:** Sensor Calibration and Functional Test
- **Interval:** 1000 FH or 6 Months
- **Type:** Hard Time (Safety Critical)
- **Justification:** Hydrogen leak detection is a primary safety system requiring periodic calibration.

### 3.3 ATA 29 - Hydraulic Power
**Maintenance Philosophy:** On-Condition with PHM Support

#### 3.3.1 Electro-Hydraulic Actuators
- **Task:** Performance Test (Response Time, Pressure, Flow)
- **Interval:** 3000 FH or 18 Months
- **Type:** On-Condition
- **Justification:** Actuator degradation is predictable through performance monitoring. PHM algorithms track trends and predict remaining useful life (RUL).

### 3.4 ATA 72 - Engine (Turbofan/Turboelectric)
**Maintenance Philosophy:** On-Condition with Model-Based Maintenance (ATA 92)

#### 3.4.1 Turbine Blade Inspection
- **Task:** Borescope Inspection for Erosion and Cracking
- **Interval:** 5000 FH or 30 Months
- **Type:** On-Condition
- **Justification:** Operating temperature and stress data are continuously monitored. Blade life models predict degradation, but periodic visual inspection validates model predictions.

---

## 4.0 Structural Maintenance Requirements

### 4.1 Structural Inspection Program (SIP)
The AMPEL360 BWB structure is constructed from advanced composites with embedded Structural Health Monitoring (SHM) sensors.

#### 4.1.1 BWB Fuselage Primary Structure (ATA 53)
- **Task:** Ultrasonic NDT (Non-Destructive Testing)
- **Interval:** 12,000 FH or 72 Months (Initial interval, subject to SHM data analysis)
- **Type:** On-Condition
- **Justification:** SHM sensors continuously monitor strain and acoustic emissions. NDT validates SHM data and detects any anomalies not captured by sensors.

#### 4.1.2 Wing-to-Fuselage Integration Zone
- **Task:** Eddy Current and Thermographic Inspection
- **Interval:** 8,000 FH or 48 Months
- **Type:** On-Condition
- **Justification:** Critical load-bearing region with complex stress distribution. Requires periodic validation in addition to continuous SHM.

### 4.2 Zonal Inspection Program (ZIP)
Detailed zonal inspection requirements are defined in:
- **Document:** `ZONAL_Master-Diagrams-And-Tasks.md`
- **Location:** `02-MAINTENANCE_PLANNING_DOCUMENT_MPD/zonal_inspection_program/`

Zonal inspections cover:
- General visual inspections for damage, corrosion, and leaks
- Specific zone definitions with detailed diagrams
- Inspection intervals and procedures

---

## 5.0 Powerplant Maintenance Requirements

### 5.1 Hybrid Electric Propulsion System
The AMPEL360 uses a turboelectric or fuel cell-electric propulsion architecture.

#### 5.1.1 Electric Motor/Generator
- **Task:** Bearing Inspection and Thermal Performance Test
- **Interval:** 6000 FH or 36 Months
- **Type:** On-Condition
- **Justification:** Electric motors have minimal wear but require periodic bearing inspection and thermal management system verification.

#### 5.1.2 Power Electronics Cooling System
- **Task:** Coolant Quality Check and Heat Exchanger Performance Test
- **Interval:** 2000 FH or 12 Months
- **Type:** On-Condition
- **Justification:** Power electronics generate significant heat. Cooling system performance is critical for safe operation.

---

## 6.0 Maintenance Program Management

### 6.1 Maintenance Program Variations
Operators may request variations to the maintenance program based on:
- Operational environment and usage patterns
- Reliability data from in-service experience
- Advanced monitoring capabilities

All variations require approval from the responsible regulatory authority.

### 6.2 Escalation Procedures
When inspection findings or component failures occur, escalation procedures defined in `PROC_Maintenance-Program-Escalation-And-Revision.md` shall be followed.

### 6.3 Reliability Program
The operator shall establish a Reliability Program as defined in `PROC_Reliability-Program-Plan.md` to continuously monitor and improve maintenance effectiveness.

---

## 7.0 Appendices

### Appendix A: Systems and Powerplant Maintenance Tasks
Detailed task descriptions for all ATA Chapters 20-80.  
**Document:** `MRBR-APP-A_Systems-And-Powerplant.md`

### Appendix B: Structural Inspection Tasks
Detailed structural inspection requirements including NDT methods and acceptance criteria.  
**Document:** `MRBR-APP-B_Structural-Inspections.md`

---

## 8.0 Revision History

| Revision | Date | Description | Approved By |
|----------|------|-------------|-------------|
| 1.0.0 | 2025-10-27 | Initial Release | MRB Chairman |

---

## 9.0 Regulatory Approvals

| Authority | Approval Date | Reference |
|-----------|---------------|-----------|
| EASA | 2025-10-27 | EASA.21J.XXX |
| FAA | 2025-10-27 | FAA DOA Auth XXX |

---

**End of MRBR Master Document**

*Cross-references: ATA_04 (Airworthiness Limitations), ATA_05 (Maintenance Checks), ATA_45 (OMS), ATA_92 (Model-Based Maintenance), ATA_95 (Digital Product Passport)*
