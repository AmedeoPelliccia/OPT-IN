# ATA 31 — Indicating & Recording Systems (Recording Function)

Purpose: FDR/CVR recording function: system description, download procedures, qualification and DPP traceability for AMPEL360.

Owner: Data Systems / Flight Data Engineering  
Effective date: 2025-10-30

Conventions:
- All downloads and raw recordings must include SHA-256 hash.
- All PROC/DATA files require a `.meta.yaml` sidecar with approvals, effectivity and integrity fields.

## Quick Navigation

📋 **[Index & Governance](INDEX.meta.yaml)** | 🔍 **[Validation Script](ci/validate_ata31.sh)**

### Core Documentation

- **[01-GENERAL](01-GENERAL/)**: [Scope & Governance](01-GENERAL/DESC_31-01-01_Scope-Governance-And-Effectivity.md) • [Regulatory Compliance Matrix](01-GENERAL/DATA_31-01-02_Regulatory-Compliance-Matrix.csv)
- **[02-FDR_FUNCTION](02-FDR_FUNCTION/)**: [System Description](02-FDR_FUNCTION/DESC_31-02-01_FDR-System-Description.md) • [Download Procedure](02-FDR_FUNCTION/PROC_31-02-01_FDR-Download-And-Preservation-Procedure.md) • [Mandatory Parameters](02-FDR_FUNCTION/DATA_31-02-02_Mandatory-FDR-Parameters.csv)
- **[03-CVR_FUNCTION](03-CVR_FUNCTION/)**: [System Description](03-CVR_FUNCTION/DESC_31-03-01_CVR-System-Description.md) • [Chain-of-Custody Procedure](03-CVR_FUNCTION/PROC_31-03-01_CVR-Download-And-Chain-Of-Custody.md) • [Acoustic Test Data](03-CVR_FUNCTION/DATA_31-03-02_CVR-Acoustic-Test-And-Retention.csv)
- **[04-DATA_MANAGEMENT_AND_DPP](04-DATA_MANAGEMENT_AND_DPP/)**: [DPP Entry & Archival](04-DATA_MANAGEMENT_AND_DPP/PROC_31-04-01_DPP-Entry-And-Archival.md) • [Retention & Access Policy](04-DATA_MANAGEMENT_AND_DPP/DATA_31-04-02_Data-Retention-And-Access.csv)
- **[05-QUALIFICATION_AND_TEST](05-QUALIFICATION_AND_TEST/)**: [Qualification Plan](05-QUALIFICATION_AND_TEST/TESTPLAN_31-05-01_FDR-CVR-Qualification-Plan.md) • [Test Matrix](05-QUALIFICATION_AND_TEST/DATA_31-05-02_Test-Matrix-And-Failure-Criteria.csv)
- **[06-NONCONFORMANCE_AND_DEVIATION](06-NONCONFORMANCE_AND_DEVIATION/)**: [NCR Handling Procedure](06-NONCONFORMANCE_AND_DEVIATION/PROC_31-06-01_Nonconformance-Handling-And-NCR-Template.md)
- **[07-SIDE-CAR_META](07-SIDE-CAR_META/templates/)**: [Document Metadata Template](07-SIDE-CAR_META/templates/document.meta.yaml)
- **[08-EXAMPLES_AND_RECORDS](08-EXAMPLES_AND_RECORDS/)**: [FDR Download Example](08-EXAMPLES_AND_RECORDS/EXAMPLE_31-08-01_FDR-Download-Record.json) • [CVR Download Example](08-EXAMPLES_AND_RECORDS/EXAMPLE_31-08-02_CVR-Download-Record.json)

### JSON Schemas

- [Recording Function Schema](schemas/recording-function.schema.json) - FDR/CVR unit specifications
- [FDR Parameter Schema](schemas/fdr-schema.json) - ARINC/ICAO parameter mapping
- [CVR Channel Schema](schemas/cvr-schema.json) - Audio channel specifications
- [Recording Download Schema](schemas/recording-record.schema.json) - Download manifest with checksums

## Applicable Standards & Regulations

### International Standards
- **[ICAO Annex 6](https://www.icao.int/safety/airnavigation/NationalityMarks/annexes_booklet_en.pdf)** - Operation of Aircraft (FDR/CVR carriage and performance)

### Aviation Regulatory Standards
- **[FAA 14 CFR Part 91](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-F/part-91)** - General Operating and Flight Rules
- **[FAA 14 CFR Part 121](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-G/part-121)** - Operating Requirements: Domestic, Flag, and Supplemental Operations
  - [§121.343](https://www.ecfr.gov/current/title-14/section-121.343) - Flight Data Recorders
  - [§121.344](https://www.ecfr.gov/current/title-14/section-121.344) - Digital Flight Data Recorders
  - [§121.359](https://www.ecfr.gov/current/title-14/section-121.359) - Cockpit Voice Recorders
- **[FAA 14 CFR Part 125](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-G/part-125)** - Certification and Operations: Airplanes Having a Seating Capacity of 20 or More Passengers
- **[FAA 14 CFR Part 135.609](https://www.ecfr.gov/current/title-14/section-135.609)** - CVR Recording Protection

### Technical Standard Orders (TSO)
- **[TSO-C124a](https://www.faa.gov/aircraft/air_cert/design_approvals/tso/aircraft/)** - Flight Data Recorder Systems
- **[TSO-C123a](https://www.faa.gov/aircraft/air_cert/design_approvals/tso/aircraft/)** - Cockpit Voice Recorder Systems

### EUROCAE Standards
- **[ED-112](https://www.eurocae.net/)** - Minimum Operational Performance Standards for Crash Protected Airborne Recorder Systems (CVR)
- **[ED-112A](https://www.eurocae.net/)** - CVR Performance Standards (Latest Revision)

### ARINC Specifications
- **[ARINC 717](https://www.aviation-ia.com/arinc-standards)** - Flight Data Recorder Systems (Digital Formats)
- **[ARINC 573](https://www.aviation-ia.com/arinc-standards)** - Crash-Protected Airborne Recorder Systems (Legacy)
- **[ARINC 429](https://www.aviation-ia.com/arinc-standards)** - Mark 33 Digital Information Transfer System

### RTCA DO Standards
- **[RTCA DO-160](https://www.rtca.org/)** - Environmental Conditions and Test Procedures for Airborne Equipment
- **[RTCA DO-178C](https://www.rtca.org/)** - Software Considerations in Airborne Systems and Equipment Certification
- **[RTCA DO-254](https://www.rtca.org/)** - Design Assurance Guidance for Airborne Electronic Hardware

### EASA Certification Specifications
- **[EASA CS-25](https://www.easa.europa.eu/document-library/certification-specifications/cs-25-large-aeroplanes)** - Large Aeroplanes
  - CS 25.1457 - Cockpit Voice Recorders
  - CS 25.1459 - Flight Data Recorders

### SAE Standards
- **[SAE ARP](https://www.sae.org/standards/)** - Aerospace Recommended Practices for data formats and recording functions

## Key Requirements

- **Mandated parameters** for FDR mapping to ARINC/ICAO lists → See [DATA_31-02-02](02-FDR_FUNCTION/DATA_31-02-02_Mandatory-FDR-Parameters.csv)
- **Retention & chain-of-custody** rules for downloads and accident investigation records → See [PROC_31-02-01](02-FDR_FUNCTION/PROC_31-02-01_FDR-Download-And-Preservation-Procedure.md) and [PROC_31-03-01](03-CVR_FUNCTION/PROC_31-03-01_CVR-Download-And-Chain-Of-Custody.md)
- **Environmental qualification** for recording units (DO-160) and shock/crash survivability evidence → See [DESC_31-02-01](02-FDR_FUNCTION/DESC_31-02-01_FDR-System-Description.md#50-environmental-qualification)
- **Tool and software assurance** for extraction/processing tools (tool qualification / DO-178C mapping) → See [TESTPLAN_31-05-01](05-QUALIFICATION_AND_TEST/TESTPLAN_31-05-01_FDR-CVR-Qualification-Plan.md#72-tool-qualification)
- **NDT & functional checks** for CVR microphones and FDR acquisition units → See [DESC_31-03-01](03-CVR_FUNCTION/DESC_31-03-01_CVR-System-Description.md) and [DATA_31-03-02](03-CVR_FUNCTION/DATA_31-03-02_CVR-Acoustic-Test-And-Retention.csv)
- **Privacy & access controls** for occurrence and routine data → See [PROC_31-03-01](03-CVR_FUNCTION/PROC_31-03-01_CVR-Download-And-Chain-Of-Custody.md#20-regulatory-and-privacy-requirements) and [DATA_31-04-02](04-DATA_MANAGEMENT_AND_DPP/DATA_31-04-02_Data-Retention-And-Access.csv)
- **Data format & interoperability** (ARINC 717/573, MEL formats) → See [DESC_31-02-01](02-FDR_FUNCTION/DESC_31-02-01_FDR-System-Description.md#40-parameter-recording)
- **DPP integration** and traceability → See [PROC_31-04-01](04-DATA_MANAGEMENT_AND_DPP/PROC_31-04-01_DPP-Entry-And-Archival.md)

## Related ATA Chapters

- **[ATA 05](../../P-PROGRAM/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/)**: Time Limits & Maintenance Checks (inspection intervals)
- **[ATA 20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/)**: Standard Practices - Airframe (installation standards)
- **[ATA 22](../../A3-AVIONICS/ATA_22-AUTO_FLIGHT/)**: Auto Flight (autopilot status recording)
- **[ATA 24](../../E-ELECTRICAL/ATA_24-ELECTRICAL_POWER/)**: Electrical Power (power supply requirements)
- **[ATA 42](../../A3-AVIONICS/ATA_42-INTEGRATED_MODULAR_AVIONICS/)**: Integrated Modular Avionics (data bus integration)
- **[ATA 45](../../A3-AVIONICS/ATA_45-ONBOARD_MAINTENANCE_SYSTEMS/)**: Onboard Maintenance Systems (fault recording)
- **[ATA 46](../../A3-AVIONICS/ATA_46-INFORMATION_SYSTEMS/)**: Information Systems (cockpit displays)
- **[ATA 95](../../P-PROGRAM/ATA_95-WIRING_DIGITAL_PRODUCT_PASSPORT/)**: Digital Product Passport (traceability and archival)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
