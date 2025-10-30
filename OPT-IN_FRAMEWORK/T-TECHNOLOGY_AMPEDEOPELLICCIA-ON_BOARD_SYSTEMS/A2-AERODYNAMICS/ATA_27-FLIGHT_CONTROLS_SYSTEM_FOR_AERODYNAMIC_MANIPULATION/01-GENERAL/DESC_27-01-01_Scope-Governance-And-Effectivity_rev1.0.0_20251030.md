# DESC_27-01-01: Scope, Governance, and Effectivity

**Document ID:** DESC_27-01-01_Scope-Governance-And-Effectivity_rev1.0.0_20251030  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Classification:** Technical Description - Flight Safety Critical

## Purpose

This document defines the scope, governance framework, effectivity rules, and organizational responsibilities for ATA 27 — Flight Controls System for Aerodynamic Manipulation within the AMPEL360 BWB aircraft maintenance and certification framework.

## Scope

### Systems Covered

ATA 27 encompasses all systems, components, and software responsible for aerodynamic control of the AMPEL360 BWB aircraft, including but not limited to:

1. **Primary Flight Control Surfaces:**
   - Ailerons (inboard and outboard, left and right wing)
   - Elevators (left and right horizontal stabilizer)
   - Rudders (upper and lower vertical stabilizer)
   - Spoilers/speedbrakes
   - Multi-function control surfaces (elevons, ruddervators where applicable)

2. **Secondary Flight Control Surfaces:**
   - Trim tabs (elevator, rudder, aileron)
   - Trim systems (stabilizer trim)
   - High-lift devices (flaps, slats) — coordination with ATA 57

3. **Actuators and Servo Systems:**
   - Electro-Hydraulic Actuators (EHA)
   - Electro-Mechanical Actuators (EMA)
   - Hydraulic actuators
   - Servo valves and control modules

4. **Fly-By-Wire Systems:**
   - Flight Control Computers (FCC) — primary and standby
   - Control law software (normal, alternate, direct modes)
   - Redundancy management and voting logic
   - Mode control and envelope protection

5. **Sensors and Transducers:**
   - Angle of Attack (AoA) sensors
   - Air Data Sensors (pitot-static, TAT)
   - Rate gyros (pitch, roll, yaw)
   - Accelerometers (linear and angular)
   - Control surface position sensors (LVDT, RVDT)
   - Force and torque sensors

6. **Mechanical Interfaces:**
   - Control cables and turnbuckles
   - Pulleys and fairleads
   - Linkages and rod ends
   - Hinges and bearings
   - Attachment fittings to primary structure

7. **Electrical and Power Systems:**
   - FCC power supply units (PSU)
   - Redundant power distribution
   - Circuit protection and load management
   - Emergency power provisions

8. **Human-Machine Interface:**
   - Cockpit control inceptors (yoke, sidestick, rudder pedals)
   - Autopilot controls and mode selectors
   - Control position indicators
   - Warning and caution annunciations

### Boundaries and Exclusions

**Included:**
- All components from cockpit inceptors to control surface trailing edge
- Software and hardware for control law implementation
- Qualification and validation evidence for safety-critical items
- Structural interfaces to primary airframe (ATA 53, 57)

**Excluded (covered by other ATA chapters):**
- Hydraulic power generation and distribution (ATA 29)
- Electrical power generation (ATA 24)
- High-lift devices and wing trailing-edge flaps (covered under ATA 57)
- Landing gear steering (ATA 32)
- Auto-flight system logic beyond control law interface (ATA 22)

## Governance

### Organizational Ownership

**Primary Owner:** Flight Controls Engineering  
**Co-Owners:**
- Avionics Engineering (FCC hardware/software)
- Software Quality Assurance (DO-178C compliance)
- Systems Integration (system-level validation)
- Structures Engineering (actuator attachment interfaces)

**Review Board:**
- Airworthiness Engineering
- Safety Engineering
- Flight Test Engineering
- Certification Authority Liaison

### Regulatory Basis

All procedures, specifications, and maintenance practices in ATA 27 are developed to comply with:

1. **FAA Regulations:**
   - 14 CFR Part 25.671 — Control Systems — General
   - 14 CFR Part 25.672 — Stability Augmentation and Automatic and Power-Operated Systems
   - 14 CFR Part 25.675 — Stops
   - 14 CFR Part 25.677 — Trim Systems
   - 14 CFR Part 25.679 — Control System Gust Locks
   - 14 CFR Part 25.683 — Operation Tests
   - 14 CFR Part 25.685 — Control System Details
   - 14 CFR Part 25.697 — Lift and Drag Device Indicator Systems
   - 14 CFR Part 25.703 — Takeoff Warning System
   - 14 CFR Part 25.1309 — Equipment, Systems, and Installations

2. **EASA Regulations:**
   - CS-25 (equivalent provisions to Part 25)

3. **Industry Standards:**
   - **DO-178C:** Software Considerations in Airborne Systems and Equipment Certification (DAL-A for flight control software)
   - **DO-254:** Design Assurance Guidance for Airborne Electronic Hardware (DAL-A for FCC hardware)
   - **DO-160:** Environmental Conditions and Test Procedures for Airborne Equipment
   - **ARP4754A:** Guidelines for Development of Civil Aircraft and Systems
   - **ARP4761:** Guidelines and Methods for Conducting the Safety Assessment Process
   - **MIL-STD-1797:** Flying Qualities of Piloted Aircraft (handling qualities)
   - **SAE AS94900:** Quality Management Systems — Requirements for Aviation, Space, and Defense Organizations

### Change Control

All changes to flight control system components, software, or procedures must be processed through the Engineering Change Control Board (ECCB) with the following approvals:

**Software Changes:**
- Software Configuration Control Board (SCCB)
- DO-178C compliance verification
- Regression test plan approval
- Airworthiness approval

**Hardware Changes:**
- Hardware Configuration Control Board (HCCB)
- DO-254 compliance verification (if applicable)
- Qualification test plan approval
- Structural interface verification (if affecting attachments)
- Airworthiness approval

**Procedure Changes:**
- Maintenance Review Board (MRB)
- Safety assessment (if affecting critical procedures)
- Training impact assessment
- Technical publications update

### Data Integrity and Traceability

All ATA 27 documents must maintain:
1. SHA-256 checksums for tamper-evident integrity
2. Version control with revision history
3. Effectivity tracking (MSN, configuration, mod status)
4. Cross-references to source requirements and certification evidence
5. Metadata sidecars (`.meta.yaml`) per OPT-IN framework standards

## Effectivity

### Application Rules

**Manufacturer Serial Number (MSN):**
- Each procedure, limit, or specification must declare MSN effectivity
- Use "ALL" for universal applicability or specify MSN ranges

**Configuration Effectivity:**
- Flight control system configuration is defined by:
  - Control surface layout (number and type of surfaces)
  - Actuator type (EHA, EMA, hydraulic)
  - FCC hardware baseline
  - Software baseline (control law version)
  - Sensor suite configuration

**Modification Status:**
- Service Bulletins (SB) that modify flight controls must be tracked
- All post-delivery modifications must update effectivity metadata

### Certification Basis

**Type Certificate (TC):**
- Control system must comply with TC baseline or amended TC

**Supplemental Type Certificate (STC):**
- Any STC affecting flight controls requires full recertification of affected functions

## Safety Classification

### Criticality Levels

Per ARP4761 failure classification:

| Component/Function | Failure Effect | DAL | Redundancy Required |
|-------------------|---------------|-----|---------------------|
| Primary FCC | Catastrophic | A | Dual or triple redundant |
| Control law software | Catastrophic | A | Dual dissimilar or triple |
| Primary actuators | Catastrophic | A | Dual or triple redundant |
| AoA sensors | Hazardous | A | Triple redundant with voting |
| Position sensors | Hazardous | A | Dual redundant |
| Control cables | Major | C | Single with inspection |
| Trim systems | Major | B | Single with manual backup |

### Airworthiness Limitation Items (ALI)

The following are designated as ALIs and are non-deferrable:
1. FCC software baseline verification
2. Actuator attachment fitting inspections
3. Control surface hinge inspections
4. Primary flight control sensor calibrations
5. Control law validation after software change

## References

- **ATA iSpec 2200:** Information Standards for Aviation Maintenance
- **S1000D:** International specification for technical publications
- **GAMP 5:** Good Automated Manufacturing Practice (for software validation)

## Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Flight Controls Engineering Lead | [Name TBD] | [Digital Signature] | 2025-10-28 |
| Airworthiness Engineering | [Name TBD] | [Digital Signature] | 2025-10-29 |
| Safety Engineering | [Name TBD] | [Digital Signature] | 2025-10-30 |

---

**Next Review Date:** 2026-10-30  
**Document Owner:** Flight Controls Engineering  
**Classification:** Controlled Document — Flight Safety Critical
