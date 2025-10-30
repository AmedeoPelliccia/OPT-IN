# DESC_28-60-01 — Chapter Scope and Applicability
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Owner:** Cryogenic Systems Engineering

---

## 1. Purpose

This document defines the scope, applicability, and boundaries of ATA 28-60-00 — Cryogenic H₂ Storage and Distribution for the AMPEL360 aircraft hydrogen propulsion system.

---

## 2. Scope

### 2.1 Included Systems

This chapter covers all aspects of liquid hydrogen (LH₂) storage and distribution from the aircraft fill point to the fuel cell or combustor interface, including:

#### 2.1.1 Storage Systems
- Vacuum-insulated cryogenic tanks
- Inner liner (pressure vessel)
- Outer shell (vacuum jacket)
- Multi-layer insulation (MLI)
- Structural supports and mounting systems
- Tank fill and drain systems
- Pressure relief and safety systems

#### 2.1.2 Distribution Systems
- Vacuum-jacketed transfer lines
- Cryogenic valves (isolation, control, check)
- Valve actuators (manual, pneumatic, electric)
- Line supports and expansion compensation
- Flexible cryogenic hoses (if applicable)

#### 2.1.3 Instrumentation
- Temperature sensors (RTDs, thermocouples)
- Pressure transducers and transmitters
- Liquid level sensors
- Mass flow meters
- Hydrogen gas detectors
- Vacuum level monitors

#### 2.1.4 Thermal Management
- Multi-layer insulation (MLI) systems
- Vacuum pump and maintenance systems
- Getter materials for vacuum preservation
- Heat leak analysis and modeling
- Boiloff management strategies
- Thermal stratification control

#### 2.1.5 Safety Systems
- Pressure relief valves (PRV)
- Burst discs
- Emergency vent systems
- Hydrogen detection and alarm systems
- Fire detection and suppression integration
- Static bonding and grounding

### 2.2 Excluded Systems

The following systems are covered under other ATA chapters:

- **Fuel Cell Systems**: ATA 49 — Airborne Auxiliary Power
- **Combustor/Engine Interface**: ATA 73 — Engine Fuel and Control
- **Ground Servicing Equipment**: ATA 12 — Servicing
- **Electrical Power Distribution to Sensors**: ATA 24 — Electrical Power
- **Fire Suppression Systems**: ATA 26 — Fire Protection
- **General Structural Attachments**: ATA 51 — Standard Practices - Structures
- **Purge Gas Systems (N₂)**: ATA 47 — Nitrogen Generation

---

## 3. Applicability

### 3.1 Aircraft Effectivity

This chapter applies to:

- **Aircraft Type**: AMPEL360
- **Configuration**: All aircraft equipped with liquid hydrogen propulsion (config code: LH2)
- **MSN Range**: ALL
- **Retrofit Applicability**: To be determined based on specific retrofit design

### 3.2 Regulatory Basis

All systems, procedures, and documentation are developed to comply with:

- FAA 14 CFR Part 25, Subpart E (Powerplant - Fuel System)
- EASA CS-25, Subpart E (Powerplant)
- SAE AIR6464 (Hydrogen Fuel Cell Systems for Aircraft)
- ISO 21010 (Cryogenic Vessels — Gas/Materials Compatibility)
- ISO 13985 (Liquid Hydrogen — Land Vehicle Fuel Tanks, adapted for aviation)

### 3.3 Certification Approach

Certification will be pursued through:

- Special Conditions (if required for novel hydrogen fuel systems)
- Equivalent Level of Safety (ELOS) findings where existing regulations are not directly applicable
- Issue Papers and means of compliance coordination with certification authorities

---

## 4. System Boundaries and Interfaces

### 4.1 Upstream Boundary

**Input Boundary**: LH₂ fill coupling on aircraft exterior

- Interface with ground servicing equipment per ATA 12
- Fill system includes: fill coupling, isolation valve, line to tank

### 4.2 Downstream Boundary

**Output Boundary**: Fuel delivery to propulsion system

- **For Fuel Cell Systems**: Interface flange at fuel cell inlet (ATA 49)
- **For Combustion Systems**: Interface flange at engine fuel manifold (ATA 73)

### 4.3 Key Interfaces

| Interface Point | Description | Related ATA |
|----------------|-------------|-------------|
| Fill Coupling | Ground servicing connection | ATA 12 |
| Tank Mounting | Structural attachment points | ATA 51, ATA 53 |
| Electrical Power | Sensor and valve power | ATA 24 |
| FADEC/Control System | Fuel control signals | ATA 73/49 |
| Fire Detection | Fire zone integration | ATA 26 |
| Nitrogen Purge | Inert gas purging | ATA 47 |
| Vent System | Overboard venting | ATA 30, ATA 56 |
| Environmental Control | Cabin pressure monitoring | ATA 21 |

---

## 5. Operating Conditions

### 5.1 Normal Operations

- **Storage Temperature**: -253°C (-423°F) at ~20 K
- **Operating Pressure**: 5-10 bar (typical)
- **Ambient Temperature Range**: -55°C to +50°C
- **Altitude**: Ground to 13,000 m (43,000 ft)
- **Boiloff Management**: Continuous monitoring, periodic venting

### 5.2 Abnormal/Emergency Operations

- **Overpressure Relief**: Automatic PRV actuation
- **Emergency Defueling**: Controlled vent to atmosphere
- **Rapid Depletion**: Emergency fuel dump (if equipped)
- **Fire**: Emergency shutdown and isolation

---

## 6. Design Service Life

### 6.1 Primary Structure (Tank)

- **Design Life**: 20 years or 60,000 flight hours
- **Thermal Cycles**: 10,000 cycles (fill/empty)
- **Vacuum Integrity**: Maintained for 5 years minimum without repumping

### 6.2 Components

| Component | Design Life |
|-----------|-------------|
| Cryogenic Valves | 50,000 cycles |
| Relief Valves | 10 years (recertification required) |
| Sensors (RTD, Pressure) | 10 years or 20,000 FH |
| Hydrogen Detectors | 5 years (sensor element) |
| MLI System | 20 years (vacuum dependent) |
| Flexible Hoses | 5 years or 10,000 cycles |

---

## 7. Safety Classification

### 7.1 Criticality

All cryogenic hydrogen storage and distribution systems are classified as:

**Flight-Critical / Catastrophic**

Failure could result in:
- Loss of propulsion capability
- Fire or explosion hazard
- Loss of aircraft control

### 7.2 Safety Analysis Requirements

- Fault Tree Analysis (FTA)
- Failure Modes and Effects Analysis (FMEA)
- System Safety Assessment (SSA)
- Hazard Analysis
- Compliance with ARP4761 guidelines

---

## 8. Documentation Structure

### 8.1 Document Types

| Type | Prefix | Description |
|------|--------|-------------|
| Description | DESC | Technical descriptions, design specifications |
| Procedure | PROC | Maintenance, inspection, test procedures |
| Data | DATA | Tables, limits, acceptance criteria |
| Diagram | DIAG | Schematics, drawings, reference diagrams |
| Test | TEST | Test reports, records |

### 8.2 Metadata Requirements

All documents require accompanying `.meta.yaml` sidecar files containing:

- Document identification and revision
- Effectivity (MSN, configuration)
- Approvals and signatures
- Traceability to requirements
- Change history

---

## 9. Material and Process Standards

### 9.1 Approved Materials

All materials must be qualified for cryogenic service at -253°C:

- **Metals**: 316L, Inconel 718, Al 5083, 6061
- **Composites**: CFRP with cryogenic-qualified resin systems
- **Seals**: PTFE, Vespel, Grafoil, Inconel X-750
- **Insulation**: MLI per specification

### 9.2 Traceability

**Mandatory for all pressure-bearing components**:

- Heat numbers for all metals
- Lot numbers for composites (resin and fiber)
- Certificate of Conformance (CoC)
- Mill test reports
- Charpy impact testing at -196°C for austenitic stainless steels

### 9.3 Welding

All cryogenic welds must:

- Use qualified welding procedures per AWS D10.11
- Be performed by AWS-certified cryogenic welders
- Be 100% NDT inspected (RT or UT)
- Use high-purity shielding gas (≥99.999%)

---

## 10. Quality and Inspection Requirements

### 10.1 Inspection Points

Mandatory inspection hold points:

1. Material receipt and traceability verification
2. Pre-weld cleaning and fit-up
3. Post-weld visual and NDT
4. Pressure testing (witness required)
5. Final acceptance inspection

### 10.2 Inspector Qualifications

- AS9100 certified facility
- NDT Level II minimum (SNT-TC-1A)
- Cryogenic systems training required

---

## 11. Training Requirements

### 11.1 Mandatory Training

All personnel working on cryogenic hydrogen systems must complete:

- CRYO-101: Cryogenic Safety Fundamentals (8 hours)
- H2-SAFE-101: Hydrogen Safety Awareness (4 hours)

### 11.2 Role-Specific Training

- **Maintenance Technicians**: CRYO-301 (40 hours)
- **Welders**: WELD-CRYO certification (80 hours + practical exam)
- **Inspectors**: NDT-UT-II or NDT-RT-II (per SNT-TC-1A)
- **Test Personnel**: PRESS-TEST authorization (24 hours)

---

## 12. Revision History

| Revision | Date | Author | Description |
|----------|------|--------|-------------|
| 1.0.0 | 2025-10-30 | Cryogenic Systems Engineering | Initial release |

---

## 13. Approvals

**Prepared by:** Dr. Elena Petrov, Lead Engineer - Cryogenic Systems  
**Date:** 2025-10-30

**Reviewed by:** Safety Engineering  
**Date:** 2025-10-30

**Approved by:** Chief Engineer - Propulsion Systems  
**Date:** 2025-10-30

---

*This document is part of ATA 28-60-00 — Cryogenic H₂ Storage and Distribution*
