# ATA 26 - FIRE PROTECTION

**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Document ID:** ATA_26_README_rev1.0.0_20251030  
**Owner:** Fire Protection Systems Engineering

---

## Table of Contents

1. [Overview](#overview)
2. [Scope and Applicability](#scope-and-applicability)
3. [Regulatory Framework](#regulatory-framework)
4. [System Architecture](#system-architecture)
5. [Chapter Organization](#chapter-organization)
6. [Safety and Criticality](#safety-and-criticality)
7. [Document Navigation](#document-navigation)
8. [Related ATA Chapters](#related-ata-chapters)
9. [Governance and Approvals](#governance-and-approvals)

---

## Overview

ATA Chapter 26 covers the comprehensive fire protection systems for the AMPEL360 Blended Wing Body (BWB) aircraft. This includes all systems, equipment, and procedures for:

- **Fire Detection**: Smoke detectors, heat detectors, flame detectors, and fire detection control units
- **Fire Suppression**: Fire extinguishing agents, bottles, discharge systems, and distribution networks
- **Engine and APU Fire Protection**: Dedicated systems for propulsion fire zones
- **Cargo and Lavatory Fire Protection**: Specialized systems for passenger and cargo areas
- **Fire-Resistant Materials**: Specifications and traceability for approved materials
- **Maintenance and Testing**: Procedures, intervals, and acceptance criteria

The fire protection system is safety-critical and must comply with stringent airworthiness requirements including FAA Part 25 regulations and EASA CS-25 standards.

---

## Scope and Applicability

**Effectivity:**
- All AMPEL360 BWB configurations
- All Manufacturing Serial Numbers (MSN)
- All aircraft configurations

**Covered Systems:**
1. Engine fire zones (nacelles, pylons)
2. APU fire protection
3. Cargo compartment fire detection and suppression (Class C and Class E)
4. Lavatory fire extinguishers
5. Main cabin and flight deck portable fire extinguishers
6. Electrical and equipment bay fire detection
7. Landing gear bay fire/overheat detection
8. Pneumatic duct overheat detection

**Exclusions:**
- General aircraft materials flammability (covered under ATA 20, ATA 51)
- Fuel system fire prevention (primary coverage under ATA 28)
- Powerplant design for fire resistance (primary coverage under ATA 71)

---

## Regulatory Framework

### Primary Regulations

**FAA 14 CFR Part 25 (Airworthiness Standards: Transport Category Airplanes)**
- §25.851 - Fire extinguishers
- §25.853 - Compartment interiors
- §25.854 - Lavatory fire protection
- §25.855 - Cargo or baggage compartments
- §25.856 - Thermal/Acoustic insulation materials
- §25.857 - Cargo compartment classification
- §25.858 - Cargo compartment smoke/fire detection
- §25.1181 through §25.1207 - Powerplant fire protection

**EASA CS-25 (Certification Specifications for Large Aeroplanes)**
- Equivalent requirements to FAA Part 25

### Industry Standards

- **ISO 2685** - Aircraft environmental conditions and test procedures
- **SAE AS8036** - Minimum Performance Standard for Aircraft Smoke Detectors
- **SAE AS8030** - Aircraft Hand Held Fire Extinguisher standards
- **SAE AS6057** - Aircraft Fire Extinguishing System Bottles
- **RTCA DO-160** - Environmental Conditions and Test Procedures for Airborne Equipment

---

## System Architecture

### Fire Protection Philosophy

The AMPEL360 fire protection system follows a defense-in-depth approach:

1. **Prevention**: Fire-resistant materials and design practices
2. **Detection**: Rapid and reliable fire/smoke detection with minimal false alarms
3. **Suppression**: Effective fire extinguishing capability with appropriate agents
4. **Containment**: Fire zone isolation and barriers to prevent spread
5. **Crew Action**: Clear indications, warnings, and manual control capability

### Major System Components

#### Detection Systems
- **Smoke Detectors**: Photoelectric and ionization types for cabin, cargo, lavatories
- **Heat Detectors**: Continuous loop and spot-type for engine nacelles, APU
- **Flame Detectors**: Optical (IR/UV) sensors for specific high-risk zones
- **Fire Detection Control Unit (FDCU)**: Centralized monitoring and control
- **Indication and Warning**: Flight deck panels, aural warnings, EICAS/ECAM integration

#### Suppression Systems
- **Fire Extinguishing Agents**: Halon 1301, HFC-125, FK-5-1-12 (per zone requirements)
- **Fire Bottles/Containers**: High-pressure storage with cartridge actuators
- **Discharge Valves**: Squib-actuated or explosive cartridge types
- **Distribution Tubing and Nozzles**: Agent delivery network with optimized spray patterns
- **Pressure Switches**: Low-pressure indication and discharge confirmation
- **Manual/Automatic Control**: Flight deck controls with automatic discharge logic (where applicable)

#### Specialized Zones
- **Engine Fire Zones**: Dual-shot capability, continuous loop detection
- **APU Fire Zone**: Automatic fire detection and optional auto-shutdown
- **Cargo Compartments**: Class C (smoke detection + suppression) or Class E (detection only)
- **Lavatory Fire Protection**: Automatic waste bin extinguishers

---

## Chapter Organization

This chapter is organized into the following major sections:

### 01-GENERAL
Scope, governance, effectivity, system overview, safety analysis, requirements traceability, design philosophy, interfaces, certification basis, and regulatory compliance.

**Key Documents:**
- `DESC_26-01-01_Scope-Governance-And-Effectivity.md`
- Fire Hazard Analysis (FHA)
- Failure Modes and Effects Analysis (FMEA)
- Requirements Traceability Matrix (RTM)
- Certification Compliance Matrix

### 02-DETECTION_AND_SENSING
Fire and smoke detection technologies, detector types, detection control units, indication systems, response time requirements, placement strategies.

**Subsystems:**
- 02-10: Smoke Detectors
- 02-20: Heat Detectors
- 02-30: Flame Detectors
- 02-40: Fire Detection Control Unit
- 02-50: Indication and Warning

**Key Procedures:**
- `PROC_26-02-01_Smoke-Detector-Functional-Test.md`
- `DATA_26-02-02_Detector-Specs-And-Intervals.csv`

### 03-SUPPRESSION_AND_AGENT_SYSTEMS
Fire extinguishing agents, storage containers, discharge systems, agent distribution networks, nozzle design, concentration requirements, discharge time specifications.

**Subsystems:**
- 03-10: Fire Extinguishing Agent
- 03-20: Fire Bottles/Containers
- 03-30: Discharge Valves/Actuators
- 03-40: Distribution Tubing and Nozzles
- 03-50: Pressure Switches/Sensors
- 03-60: Fire Extinguisher Control

**Key Procedures:**
- `PROC_26-03-01_Fire-Agent-Discharge-Test.md`
- `DATA_26-03-02_Fire-Agent-Specs.csv`

### 04-ENGINE_APU_FIRE_HANDLING
Dedicated fire protection for engines and APU, including detection loops, dual-shot suppression bottles, FADEC integration, automatic shutdown logic.

**Subsystems:**
- 04-10: Engine Fire Detection Loops
- 04-20: Engine Fire Bottles
- 04-30: APU Fire Protection
- 04-40: Nacelle Overheat Detection

**Key Procedures:**
- `PROC_26-04-01_Engine-Fire-Detection-And-Extinguishing-Test.md`
- `DATA_26-04-02_Engine-Fire-Test-Matrix.csv`

### 05-CARGO_AND_LAVATORY_FIRE_PROTECTION
Cargo compartment classification, smoke detection systems, fire suppression for Class C cargo, lavatory automatic extinguishers, smoke evacuation.

**Subsystems:**
- 05-10: Cargo Detection Loops
- 05-20: Lavatory Extinguishers
- 05-30: Cargo Suppression Units
- 05-40: Cargo Monitoring and Control
- 05-50: Egress and Evacuation Interface

**Key Procedures:**
- `PROC_26-05-01_Cargo-Fire-Extinguisher-Test.md`
- `DATA_26-05-02_Cargo-Detector-And-Extinguisher-Specs.csv`

### 06-MATERIALS_M_AND_P
Approved fire extinguishing agents and materials, specifications, procurement requirements, Certificate of Conformance (CoC), storage and handling guidelines, traceability.

**Key Documents:**
- `DATA_26-06-01_Approved-Extinguishants-And-Materials.csv`
- `PROC_26-06-02_M&P-Traceability-And-Storage.md`

### 07-NONCONFORMANCE_AND_DEVIATION
Non-conformance reporting (NCR), engineering disposition, root cause analysis, corrective and preventive actions, deviation approval process.

**Key Documents:**
- `PROC_26-07-01_Nonconformance-Handling-And-Engineering-Disposition.md`
- `DATA_26-07-02_NCR-Template.csv`

### 08-DIAGRAMS_AND_REFERENCE_DATA
System block diagrams, schematic drawings, agent distribution networks, fire zone layouts, reference tables, technical specifications.

**Key Documents:**
- `DIAG_26-08-01_Fire-System-Block-Diagram.pdf`
- `DIAG_26-08-02_Distribution-Network.pdf`
- `DATA_26-08-02_Reference-Tables.csv`

### 09-SIDE-CAR_META
Metadata templates (YAML sidecar files), JSON schemas, validation scripts, traceability tools, naming conventions, integrity checking.

**Subdirectories:**
- `templates/` - Document metadata templates
- `schemas/` - JSON schema definitions
- `validators/` - Python validation scripts

### 10-EXAMPLES_AND_RECORDS
Example test records, maintenance logs, calibration certificates, discharge test reports, inspection records demonstrating proper format and traceability.

**Example Records:**
- `EXAMPLE_26-10-01_Extinguisher-Test-Record.json`
- `EXAMPLE_26-10-02_Detector-Cal-Log.csv`
- `EXAMPLE_26-10-03_Fire-Agent-Discharge-Test-Report.pdf`
- `EXAMPLE_26-10-04_Maintenance-Log.json`

---

## Safety and Criticality

### Safety Classification: CRITICAL

Fire protection systems are categorized as safety-critical due to their direct impact on:
- Flight safety (engine fire leading to loss of thrust or structural damage)
- Occupant safety (cabin/cargo fire threatening evacuation or structural integrity)
- Continued safe flight and landing

### Key Hazards

1. **Undetected Fire**: Failure of detection system to identify fire in time
2. **Inadequate Suppression**: Insufficient agent concentration or coverage
3. **False Alarms**: Nuisance warnings leading to operational disruption or crew desensitization
4. **Agent Toxicity**: Crew or passenger exposure to fire extinguishing agents
5. **Inadvertent Discharge**: Unintended activation causing agent loss or hazard
6. **System Degradation**: Environmental exposure, corrosion, or wear affecting reliability

### Airworthiness Limitation Items (ALIs)

Critical inspections and tests that must be performed at specified intervals:

| Item | Interval | Type |
|------|----------|------|
| Fire detection loop integrity check | Every 500 FH | Electrical continuity test |
| Fire bottle pressure verification | Every 100 FH | Pressure gauge reading |
| Smoke detector functional test | Every 200 FH | Functional test with smoke source |
| Fire suppression discharge test | Annual (ground) | Full system discharge |
| Fire extinguisher pressure/weight check | Monthly | Visual inspection + weight |
| Fire zone seal inspection | Every 1000 FH or 12 months | Visual and leak test |
| Agent concentration verification | Every 5 years | Concentration measurement |
| Detection system response time test | Annual | Response time verification |

---

## Document Navigation

### Quick Links

- [INDEX.meta.yaml](./INDEX.meta.yaml) - Chapter metadata and traceability
- [01-GENERAL/](./01-GENERAL/) - General information and requirements
- [02-DETECTION_AND_SENSING/](./02-DETECTION_AND_SENSING/) - Detection systems
- [03-SUPPRESSION_AND_AGENT_SYSTEMS/](./03-SUPPRESSION_AND_AGENT_SYSTEMS/) - Suppression systems
- [04-ENGINE_APU_FIRE_HANDLING/](./04-ENGINE_APU_FIRE_HANDLING/) - Engine/APU fire protection
- [05-CARGO_AND_LAVATORY_FIRE_PROTECTION/](./05-CARGO_AND_LAVATORY_FIRE_PROTECTION/) - Cargo/lavatory systems
- [schemas/](./schemas/) - JSON schemas for validation
- [ci/](./ci/) - Continuous Integration validation scripts

### Document Naming Convention

All documents follow the standardized naming convention:

```
{TYPE}_{ATA}-{SUB}-{SEQ}_{Title}[_rev{X.Y.Z}_{YYYYMMDD}].{ext}[.meta.yaml]
```

**Types:**
- `DESC` - Descriptive document
- `PROC` - Procedure
- `DATA` - Data file (CSV, JSON, Excel)
- `CALC` - Calculation sheet
- `DIAG` - Diagram or drawing
- `TESTPLAN` - Test plan
- `EXAMPLE` - Example record

**Extensions:**
- `.md` - Markdown text
- `.csv` - Comma-separated values
- `.json` - JSON data
- `.yaml` - YAML data
- `.xlsx` - Excel spreadsheet
- `.pdf` - PDF document
- `.svg` / `.png` - Graphics

Each document must have an accompanying `.meta.yaml` sidecar file for traceability.

---

## Related ATA Chapters

### Direct Dependencies

- **ATA 05** - Time Limits & Maintenance Checks (inspection intervals for fire systems)
- **ATA 12** - Servicing (fire extinguisher recharging and agent replenishment)
- **ATA 24** - Electrical Power (fire system power supply and distribution)
- **ATA 28** - Fuel (fuel shutoff valves, fire-related fuel system isolation)
- **ATA 31** - Indicating/Recording (fire warning indications on EICAS/ECAM)
- **ATA 71** - Power Plant (engine fire zones, nacelle design)

### Interface Dependencies

- **ATA 20** - Standard Practices - Airframe (fire system repair procedures)
- **ATA 21** - Air Conditioning (APU fire detection interface)
- **ATA 25** - Equipment/Furnishings (cargo and lavatory fire extinguisher mounting)
- **ATA 30** - Ice and Rain Protection (engine nacelle fire zone interfaces)
- **ATA 33** - Lights (fire warning lights and annunciators)
- **ATA 35** - Oxygen (oxygen system fire hazard mitigation)
- **ATA 49** - Airborne Auxiliary Power (APU fire protection systems)

### Traceability

- **ATA 95** - Digital Product Passport (component traceability, agent batch tracking)

---

## Governance and Approvals

### Document Control

**Owner:** Fire Protection Systems Engineering  
**Review Board:**
- Fire Protection Engineering
- Airworthiness Engineering
- Safety Engineering
- Materials & Processes
- Propulsion Systems Engineering
- Cabin Systems Engineering

### Approval Status

| Authority | Status | Date |
|-----------|--------|------|
| Fire Protection Systems Engineering | Released | 2025-10-28 |
| Safety Engineering | Released | 2025-10-29 |
| Materials & Processes | Released | 2025-10-29 |
| Airworthiness Engineering | Approved | 2025-10-30 |
| Propulsion Systems | Approved | 2025-10-30 |

### Revision History

| Revision | Date | Description | Author |
|----------|------|-------------|--------|
| 1.0.0 | 2025-10-30 | Initial release of ATA 26 structure | Fire Protection Systems Engineering |

### Change Control

Changes to safety-critical fire protection system documentation require:
1. Engineering change request with safety impact assessment
2. Review and approval by Airworthiness and Safety Engineering
3. Verification of regulatory compliance impact
4. Update of traceability matrices and cross-references
5. Revision of affected test procedures and acceptance criteria

For change requests, contact: **fire-protection-systems@ampel360.com**

---

## Continuous Integration and Validation

### Automated Validation

All documents in this chapter are subject to automated validation via CI pipeline:

```bash
./ci/validate_ata26.sh
```

**Validation Checks:**
- Sidecar file presence and completeness
- Effective date ≤ current date
- SHA-256 checksum verification
- JSON schema conformance
- CSV header and units validation
- Cross-reference integrity
- Naming convention compliance

### Manual Review Requirements

Certain documents require manual technical review and approval before release:
- Safety-critical procedures (fire detection, suppression)
- Test plans and acceptance criteria
- Certification compliance matrices
- System design specifications
- Engineering calculations for agent concentration

---

## Contact and Support

**Technical Owner:** Fire Protection Systems Engineering  
**Email:** fire-protection-systems@ampel360.com  
**Internal Wiki:** https://wiki.ampel360.com/ata26  

**Regulatory Compliance:** airworthiness@ampel360.com  
**Safety Engineering:** safety@ampel360.com  
**Materials & Processes:** materials-processes@ampel360.com  

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../../../README.md) | [↑ E1-ENVIRONMENT](../README.md)
