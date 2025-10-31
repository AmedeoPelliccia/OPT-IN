# ATA-21 References and Standards

## Document Information

- **Document ID**: ATA-21-00-00-REFS
- **Title**: Air Conditioning and Pressurization References and Standards
- **Version**: 1.0.0
- **Date**: 2025-10-31
- **Status**: ACTIVE

## Purpose

This document provides a centralized reference list with hyperlinks to regulatory documents, technical standards, and internal documentation for the ATA-21 Air Conditioning and Pressurization System.

---

## Federal Aviation Regulations (FAR)

### FAR Part 25 - Airworthiness Standards: Transport Category Airplanes

- **[FAR 25.831 - Ventilation](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/subject-group-ECFR45ddd4419ad436d/section-25.831)**
  - Minimum ventilation requirements for cabin and cockpit
  - Carbon monoxide and carbon dioxide limits

- **[FAR 25.841 - Pressurization Systems](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/subject-group-ECFR45ddd4419ad436d/section-25.841)**
  - Cabin pressure altitude limits
  - Rate of change requirements
  - Pressure relief requirements

- **[FAR 25.1309 - Equipment, Systems, and Installations](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFRe8b86bdb1a03e2b/section-25.1309)**
  - System safety requirements
  - Failure condition classifications
  - Design assurance requirements

- **[FAR 25.853 - Compartment Interiors](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/subject-group-ECFRd6f3d0cf3c86c38/section-25.853)**
  - Material flammability requirements

---

## EASA Certification Specifications

### CS-25 - Certification Specifications for Large Aeroplanes

- **[CS-25 (Complete Document)](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-large-aeroplanes)**
  - European equivalent to FAR Part 25
  - Harmonized with FAA requirements

- **CS 25.831 - Ventilation**
  - Equivalent to FAR 25.831

- **CS 25.841 - Pressurization Systems**
  - Equivalent to FAR 25.841

- **CS 25.1309 - Equipment, Systems, and Installations**
  - Equivalent to FAR 25.1309

---

## SAE International Standards

### Air Conditioning and Environmental Systems

- **[SAE ARP85 - Air Conditioning Systems for Subsonic Airplanes](https://www.sae.org/standards/content/arp85/)**
  - Design guidance for aircraft air conditioning
  - System architecture and components
  - Performance requirements and testing methods

- **[SAE ARP217 - Human Response to Impact Acceleration](https://www.sae.org/standards/content/arp217/)**
  - Safety factors for rapid decompression
  - Human tolerance to acceleration forces

- **[SAE ARP1270 - Aircraft Cabin Ozone Concentrations](https://www.sae.org/standards/content/arp1270/)**
  - Ozone control requirements
  - Converter sizing and validation

### System Safety

- **[SAE ARP4754A - Guidelines for Development of Civil Aircraft and Systems](https://www.sae.org/standards/content/arp4754a/)**
  - System development processes
  - Requirements capture and management
  - Verification and validation

- **[SAE ARP4761 - Guidelines and Methods for Conducting the Safety Assessment Process](https://www.sae.org/standards/content/arp4761/)**
  - Safety assessment methodologies
  - FHA, PSSA, SSA processes
  - Common cause analysis

---

## RTCA Standards

### Environmental and Software Standards

- **[RTCA DO-160G - Environmental Conditions and Test Procedures for Airborne Equipment](https://www.rtca.org/content/standards-guidance-materials)**
  - Environmental qualification testing
  - Temperature, vibration, EMI/EMC testing

- **[RTCA DO-178C - Software Considerations in Airborne Systems and Equipment Certification](https://www.rtca.org/content/standards-guidance-materials)**
  - Software development assurance
  - Design Assurance Levels (DAL)

- **[RTCA DO-254 - Design Assurance Guidance for Airborne Electronic Hardware](https://www.rtca.org/content/standards-guidance-materials)**
  - Hardware development assurance
  - Complex electronic hardware qualification

---

## ARINC Standards

### Avionics Data Bus

- **[ARINC 429 - Mark 33 Digital Information Transfer System](https://www.aviation-ia.com/aeec/projects/arinc-429-2/)**
  - Avionics data bus standard
  - Message format and protocol

- **ARINC 664 - Aircraft Data Network (AFDX)**
  - Deterministic Ethernet for avionics
  - Next-generation data network

---

## ASHRAE Standards

### Cabin Air Quality

- **[ASHRAE 161 - Air Quality within Commercial Aircraft](https://www.ashrae.org/technical-resources/bookstore/ashrae-standard-161)**
  - Ventilation rates
  - Contaminant levels
  - Thermal comfort standards

---

## ISO Standards

### Quality and Environmental Management

- **[ISO 9001 - Quality Management Systems](https://www.iso.org/standard/62085.html)**
  - Quality assurance for design and manufacturing

- **[ISO 14001 - Environmental Management Systems](https://www.iso.org/standard/60857.html)**
  - Environmental aspects of system lifecycle

### Safety

- **[IEC 61508 - Functional Safety](https://www.iso.org/standard/61508-1.html)**
  - Safety lifecycle for electronic systems

---

## Aerospace Standards

### AS9100 Series

- **[AS9100 - Quality Management Systems - Requirements for Aviation, Space, and Defense Organizations](https://www.sae.org/standards/content/as9100/)**
  - Aerospace quality management

- **[AS9102 - Aerospace First Article Inspection Requirement](https://www.sae.org/standards/content/as9102/)**
  - First article inspection process

---

## Internal ATA-21 Documentation

### Overview Documentation

- [System Description](./OVERVIEW/21-00-00_SYSTEM_DESCRIPTION.md)
- [Operational Concepts](./OVERVIEW/21-00-00_OPERATIONAL_CONCEPTS.md)
- [Key Technologies](./OVERVIEW/21-00-00_KEY_TECHNOLOGIES.md)
- [Regulatory Landscape](./OVERVIEW/21-00-00_REGULATORY_LANDSCAPE.md)

### Safety Documentation

- [Functional Hazard Assessment (FHA)](./SAFETY/21-00-00_FHA.md)
- [Safety Case: Pressurization Loss](./SAFETY/SAFETY_CASES/21-00-00_PRESSURIZATION_LOSS.md)
- [FMEA Calculator](./SAFETY/scripts/fmea_calculator.py)
- [Safety Analysis Tool](./SAFETY/scripts/safety_analysis.py)
- [Risk Matrix Generator](./SAFETY/scripts/risk_matrix_generator.py)

### Requirements Documentation

- [Requirements Management](./REQUIREMENTS/README.md)

### Design Documentation

- [Design Overview](./DESIGN/README.md)
- [Architecture](./DESIGN/ARCHITECTURE/)
- [Interface Control Documents](./DESIGN/ICD/)

### Verification & Validation

- [V&V Overview](./V_AND_V/README.md)
- [Test Case: System Startup](./V_AND_V/CASES/FUNCTIONAL_TESTS/21-00-00_TC_001_SYSTEM_STARTUP.md)

### Subsystems

- [Subsystems Overview](./SUBSYSTEMS_AND_COMPONENTS/README.md)
- [21-10 Cabin Air Distribution](./SUBSYSTEMS_AND_COMPONENTS/BASELINES/BL_001/21-10_CABIN_AIR_DISTRIBUTION/README.md)

### Certification

- [Certification Overview](./CERTIFICATION/README.md)

### Operations & Maintenance

- [Operations & Maintenance Overview](./OPERATIONS_AND_MAINTENANCE/README.md)

---

## Related ATA Chapters

### System Interfaces

- **ATA-24 - Electrical Power**: Power supply interfaces
- **ATA-27 - Flight Controls**: Flight envelope data
- **ATA-30 - Ice and Rain Protection**: Anti-ice coordination
- **ATA-35 - Oxygen**: Emergency oxygen deployment
- **ATA-36 - Pneumatic**: Engine bleed air supply
- **ATA-49 - APU**: Auxiliary power unit air supply

---

## External Resources

### Regulatory Authorities

- **[FAA - Federal Aviation Administration](https://www.faa.gov/)**
- **[EASA - European Union Aviation Safety Agency](https://www.easa.europa.eu/)**
- **[Transport Canada Civil Aviation](https://tc.canada.ca/en/aviation)**
- **[CAAC - Civil Aviation Administration of China](http://www.caac.gov.cn/en/)**

### Standards Organizations

- **[SAE International](https://www.sae.org/)**
- **[RTCA, Inc.](https://www.rtca.org/)**
- **[ARINC - Airlines Electronic Engineering Committee](https://www.aviation-ia.com/aeec/)**
- **[ASHRAE - American Society of Heating, Refrigerating and Air-Conditioning Engineers](https://www.ashrae.org/)**
- **[ISO - International Organization for Standardization](https://www.iso.org/)**

### Technical Resources

- **[eCFR - Electronic Code of Federal Regulations](https://www.ecfr.gov/)**
- **[FAA Aircraft Certification Service](https://www.faa.gov/aircraft)**
- **[SAE MOBILUS - Standards Database](https://www.sae.org/publications/)**

---

## Document History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0.0 | 2025-10-31 | Systems Engineering | Initial release with hyperlinks |

---

*Part of the AMPEL360 OPT-IN Framework - ATA Chapter 21*
