# ATA 21-00-00 - Regulatory Landscape

## Document Information

- **Document ID**: ATA-21-00-00-REGLNDSCP
- **Title**: Air Conditioning and Pressurization Regulatory Landscape
- **Version**: 1.0.0
- **Date**: 2025-10-31
- **Status**: ACTIVE

## 1. Introduction

This document provides an overview of the regulatory landscape applicable to the Air Conditioning and Pressurization System (ATA Chapter 21), including certification requirements, applicable standards, and compliance pathways.

## 2. Primary Regulatory Requirements

### 2.1 FAA Regulations (United States)

#### FAR Part 25 - Transport Category Airplanes

##### 25.831 - Ventilation
**Applicability**: Cabin and cockpit ventilation
**Key Requirements**:
- Minimum fresh air supply: 10 cubic feet per minute per crew member (flight deck)
- Minimum fresh air supply: Not less than 10 cubic feet per minute per occupant (cabin)
- Carbon monoxide concentration: Maximum 1 part in 20,000 parts of air
- Carbon dioxide concentration: Not more than 3% by volume, sea level equivalent

**Compliance Approach**:
- Flow measurements in test rigs and aircraft
- Gas analysis during ground and flight tests
- Computational fluid dynamics (CFD) validation

##### 25.841 - Pressurization Systems
**Applicability**: Cabin pressure control and safety
**Key Requirements**:
- Cabin pressure altitude: Must not exceed 8,000 feet at maximum operating altitude under normal operating conditions
- Rate of change: Not more than a rate corresponding to 500 feet per minute cabin altitude change for climb and 300 feet per minute for descent
- Pressurization controls: Automatic and manual modes required
- Positive pressure relief: Must prevent cabin pressure from exceeding maximum differential
- Negative pressure relief: Must prevent damage from negative pressure
- Decompression warning: Aural or visual warning if cabin pressure altitude exceeds 10,000 feet

**Compliance Approach**:
- Pressure vessel structural analysis and testing
- System functional testing (ground and flight)
- Failure modes and effects analysis (FMEA)
- Demonstration of warning systems

##### 25.1309 - Equipment, Systems, and Installations
**Applicability**: System safety and reliability
**Key Requirements**:
- Systems must be designed so that no single failure will prevent continued safe flight and landing
- The occurrence of any failure condition which would prevent continued safe flight and landing must be extremely improbable (< 10⁻⁹ per flight hour)
- Major failure conditions (< 10⁻⁵ per flight hour) must not result in unacceptable workload or prevent crew from performing duties

**Compliance Approach**:
- System safety assessment per ARP4761
- Functional Hazard Assessment (FHA)
- Preliminary System Safety Assessment (PSSA)
- System Safety Assessment (SSA)
- Common Cause Analysis (CCA)

### 2.2 EASA Regulations (European Union)

#### CS-25 - Certification Specifications for Large Aeroplanes

EASA CS-25 is harmonized with FAR Part 25, with identical or very similar requirements for:
- CS 25.831 - Ventilation
- CS 25.841 - Pressurization systems
- CS 25.1309 - Equipment, systems, and installations

**Key Differences**:
- Acceptable Means of Compliance (AMC) may differ
- Additional advisory material in AMC/GM (Acceptable Means of Compliance and Guidance Material)

### 2.3 Other Civil Aviation Authorities

#### Transport Canada (TC)
- Follows FAR Part 25 closely
- Additional Canadian Aviation Regulations (CARs) may apply

#### Civil Aviation Administration of China (CAAC)
- CCAR-25 generally harmonized with FAR/CS-25
- May require additional documentation or testing

#### Other Authorities
- Most major aviation authorities (Brazil, Japan, Australia, etc.) have harmonized requirements with FAA/EASA

## 3. Technical Standards and Guidelines

### 3.1 SAE Standards

#### SAE ARP85 - Air Conditioning Systems for Subsonic Airplanes
**Purpose**: Design guidance for aircraft air conditioning
**Content**:
- System architecture and components
- Performance requirements
- Design considerations
- Testing methods

**Application**: Industry best practice, often referenced in certification basis

#### SAE ARP217 - Human Response to Impact Acceleration
**Purpose**: Safety factors for rapid decompression
**Application**: Pressurization system design limits

#### SAE ARP1270 - Aircraft Cabin Ozone Concentrations
**Purpose**: Ozone control requirements
**Application**: Ozone converter sizing and validation

### 3.2 RTCA Standards

#### RTCA DO-160 - Environmental Conditions and Test Procedures for Airborne Equipment
**Purpose**: Environmental qualification of electronic equipment
**Sections Applicable to ATA-21**:
- Section 4: Temperature Altitude
- Section 5: Temperature Variation
- Section 6: Humidity
- Section 8: Vibration
- Section 10: Shock
- Section 15: Magnetic Effect
- Section 16: Power Input
- Section 17: Voltage Spike
- Section 18: Audio Frequency Conducted Susceptibility - Power Inputs
- Section 20: Radio Frequency Susceptibility (Radiated and Conducted)
- Section 21: Emission of Radio Frequency Energy
- Section 22: Lightning Induced Transient Susceptibility
- Section 23: Lightning Direct Effects

**Application**: Environmental controllers, sensors, and electronic components must be qualified per DO-160

#### RTCA DO-178C - Software Considerations in Airborne Systems and Equipment Certification
**Purpose**: Software development assurance
**Application**: Cabin pressure controller and temperature control software
**Design Assurance Level**: Typically DAL-C for ATA-21 systems

#### RTCA DO-254 - Design Assurance Guidance for Airborne Electronic Hardware
**Purpose**: Hardware development assurance
**Application**: FPGA and complex electronic hardware in controllers
**Design Assurance Level**: Typically DAL-C for ATA-21 systems

### 3.3 ARINC Standards

#### ARINC 429 - Mark 33 Digital Information Transfer System (DITS)
**Purpose**: Avionics data bus standard
**Application**: Communication between cabin pressure controller, temperature controller, and avionics systems

#### ARINC 664 - Aircraft Data Network (AFDX)
**Purpose**: Deterministic Ethernet for avionics
**Application**: Next-generation data network (if applicable)

### 3.4 ARP4754A and ARP4761

#### ARP4754A - Guidelines for Development of Civil Aircraft and Systems
**Purpose**: System development process
**Application**: Complete life cycle from concept to in-service support

**Key Processes**:
- Requirements capture and management
- Design and implementation
- Verification and validation
- Configuration management

#### ARP4761 - Guidelines and Methods for Conducting the Safety Assessment Process
**Purpose**: Safety assessment methodologies
**Application**: Systematic approach to demonstrate compliance with 25.1309/CS 25.1309

**Methods**:
- Functional Hazard Assessment (FHA)
- Preliminary System Safety Assessment (PSSA)
- System Safety Assessment (SSA)
- Common Cause Analysis (CCA)
- Fault Tree Analysis (FTA)
- Failure Modes and Effects Analysis (FMEA)
- Markov Analysis (for complex redundant systems)

### 3.5 TSO Standards

#### TSO-C116a - Cockpit Displays
**Purpose**: Minimum performance standards for electronic displays
**Application**: Cabin pressurization and temperature displays (if integrated in cockpit displays)

## 4. Environmental and Health Standards

### 4.1 ASHRAE Standards

#### ASHRAE 161 - Air Quality within Commercial Aircraft
**Purpose**: Ventilation and air quality standards
**Key Requirements**:
- Ventilation rates
- Contaminant levels
- Thermal comfort
- Pressurization

**Application**: Industry best practice for passenger comfort and health

### 4.2 OSHA (Occupational Safety and Health Administration)
**Applicability**: Cabin air quality standards (primarily for flight attendants)
**Key Requirements**:
- Permissible exposure limits (PEL) for various contaminants
- Monitoring and control requirements

### 4.3 EPA (Environmental Protection Agency)
**Applicability**: Ozone exposure limits
**Requirements**: Cabin ozone concentration must not exceed 0.1 ppm (3-hour average) or 0.25 ppm (any time)

## 5. International Standards

### 5.1 ISO Standards

#### ISO 9001 - Quality Management Systems
**Application**: Quality assurance for design, manufacturing, and support

#### ISO 14001 - Environmental Management Systems
**Application**: Environmental aspects of system life cycle

### 5.2 IEC Standards

#### IEC 61508 - Functional Safety of Electrical/Electronic/Programmable Electronic Safety-related Systems
**Purpose**: Safety lifecycle for electronic systems
**Application**: Safety-critical electronic components

## 6. Certification Process

### 6.1 Certification Basis

**Definition**: The specific regulations, standards, and special conditions applicable to the aircraft and system

**Establishment**:
1. Identify applicable regulations (FAR/CS-25)
2. Define system functions and architecture
3. Conduct safety assessment (FHA, PSSA, SSA)
4. Agree on Certification Basis with certification authority (FAA, EASA)
5. Document in Type Certification Data Sheet (TCDS)

### 6.2 Means of Compliance (MOC)

**Purpose**: Demonstrate that the system meets each requirement of the certification basis

**Methods**:
- **Analysis**: Engineering calculations, simulations, trade studies
- **Test**: Ground tests, iron bird, flight tests
- **Inspection**: Visual verification, configuration audits
- **Similarity**: Comparison with previously certified systems

### 6.3 Compliance Documentation

**Required Documents**:
- System Design Description
- Safety Assessment Report (FHA, PSSA, SSA)
- Verification and Validation Plan and Report
- Test Plans and Test Reports
- Analysis Reports (thermal, CFD, FEA, etc.)
- Interface Control Documents (ICDs)
- Requirements Traceability Matrix (RTM)
- Certification Plans
- Compliance Matrix

### 6.4 Authority Involvement

**FAA Oversight**:
- Aircraft Certification Office (ACO) assignment
- Organization Designation Authorization (ODA) (if applicable)
- Issue Papers for novel or complex issues
- Certification Review Items (CRIs) and Certification Review Meetings (CRMs)

**EASA Oversight**:
- Certification Review Items (CRIs)
- Certification Memorandum (CM) for compliance demonstration
- Type Certificate Application and approval

## 7. Special Conditions and Exemptions

### 7.1 Special Conditions

**When Required**: If the aircraft or system has novel or unusual features not adequately covered by existing regulations

**Examples for ATA-21**:
- Electric air conditioning (no bleed air) - not traditionally addressed
- Advanced electronic controls with high integration
- Humidity control systems (not explicitly required by regulations)

**Process**:
1. Applicant identifies need for special condition
2. Authority evaluates and drafts special condition
3. Published for public comment
4. Finalized and incorporated into certification basis

### 7.2 Exemptions

**When Requested**: If compliance with a specific regulation is impractical or not necessary for safety

**Process**:
1. Applicant submits petition for exemption
2. Justification and compensating factors provided
3. Authority evaluates and publishes for public comment
4. Granted or denied

**Rare for ATA-21**: Most pressurization and ventilation requirements are fundamental safety requirements

## 8. In-Service Requirements

### 8.1 Continued Airworthiness

**Responsibilities**:
- Design organization: Provide maintenance and inspection instructions
- Operator: Execute approved maintenance program
- Authority: Oversight and audits

**Key Documents**:
- Aircraft Maintenance Manual (AMM) - ATA Chapter 21
- Component Maintenance Manual (CMM) - LRU-specific
- Illustrated Parts Catalog (IPC)
- Service Bulletins (SBs)
- Airworthiness Directives (ADs) (if issued)

### 8.2 Monitoring and Reporting

**Service Difficulty Reports (SDRs)**:
- Operators must report failures, malfunctions, and defects per FAA regulations (14 CFR 121.703, 135.415)

**Manufacturer Responsibilities**:
- Monitor in-service data
- Investigate failures and incidents
- Issue service bulletins as needed
- Support operators with technical assistance

## 9. International Validation

### 9.1 Validation Process

**Purpose**: Recognize a type certificate issued by another authority

**Process**:
1. Submit application to validating authority (e.g., EASA if FAA is primary)
2. Provide certification documentation
3. Validation authority reviews for compliance with their regulations
4. Technical familiarization (may include flight test)
5. Issue validation type certificate

**Harmonization Benefits**:
- Reduced duplication of effort
- Faster access to international markets
- Bilateral Aviation Safety Agreements (BASAs) facilitate validation

### 9.2 Key Markets

- **FAA**: United States
- **EASA**: European Union member states
- **CAAC**: China
- **TC**: Canada
- **ANAC**: Brazil
- **JCAB**: Japan

## 10. Emerging Regulatory Topics

### 10.1 Cybersecurity

**Concern**: Electronic systems may be vulnerable to cyber threats

**Regulatory Activity**:
- FAA and EASA developing guidance for airworthiness cybersecurity
- RTCA DO-326A (Airworthiness Security Process Specification) and DO-356A (Airworthiness Security Methods and Considerations)

**Application to ATA-21**: Electronic controllers must be evaluated for cybersecurity vulnerabilities

### 10.2 Environmental Regulations

**Greenhouse Gas Emissions**: ICAO CORSIA (Carbon Offsetting and Reduction Scheme for International Aviation)

**Impact on ATA-21**: Energy-efficient systems can contribute to emissions reduction

### 10.3 Cabin Air Quality

**Recent Concerns**: Public awareness of cabin air quality, aerosol transmission of diseases (COVID-19)

**Potential Regulatory Actions**:
- Enhanced filtration requirements (HEPA)
- Increased fresh air ventilation rates
- Air quality monitoring

**Proactive Design**: AMPEL360 incorporates HEPA filtration and monitors air quality metrics

## 11. Compliance Strategy for AMPEL360 ATA-21 System

### 11.1 Regulatory Authority Selection

**Primary Authority**: FAA (anticipated)
**Validation Authorities**: EASA, CAAC, TC, and others as market requires

### 11.2 Certification Basis

**Regulations**:
- FAR 25.831, 25.841, 25.1309 (and related)
- CS-25 (harmonized sections)

**Standards**:
- SAE ARP85, ARP4754A, ARP4761
- RTCA DO-160, DO-178C, DO-254

**Special Conditions**: None anticipated (conventional system architecture)

### 11.3 Safety Assessment

**Design Assurance Level**: DAL-C (Major failure condition)
- Cabin altitude exceeds 10,000 feet but does not reach 15,000 feet
- Significant passenger discomfort or crew workload

**Methodology**:
- ARP4761 processes
- Fault tree and FMEA analyses
- Demonstrated compliance with probability and severity requirements

### 11.4 Development Assurance

**Software**: DO-178C Level C
**Hardware**: DO-254 Level C

### 11.5 Testing and Validation

**Ground Tests**:
- Component qualification per DO-160
- System integration test (iron bird)
- Pressure vessel proof test and leak test

**Flight Tests**:
- Functional performance
- Environmental extremes (hot day, cold day, high altitude)
- Failure mode verification
- Decompression test (if applicable)

## 12. References

### Regulations
- FAR Part 25 (latest amendment)
- CS-25 (latest amendment)

### Standards and Guidelines
- SAE ARP85, ARP4754A, ARP4761
- RTCA DO-160, DO-178C, DO-254
- ARINC 429
- ASHRAE 161

### Advisory Material
- FAA Advisory Circulars (ACs)
- EASA AMC/GM

## Revision History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0.0 | 2025-10-31 | Systems Engineering | Initial release |

---

*Part of the AMPEL360 OPT-IN Framework - ATA Chapter 21*
