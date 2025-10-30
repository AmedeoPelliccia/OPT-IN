# DESC_31-01-01 — Scope, Governance, and Effectivity

**Document ID:** DESC_31-01-01  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Chapter:** ATA 31 - Indicating & Recording Systems (Recording Function)

## 1.0 Scope

This document defines the scope, governance structure, and effectivity for ATA Chapter 31 - Indicating & Recording Systems (Recording Function) within the AMPEL360 program. It establishes the framework for managing Flight Data Recorder (FDR) and Cockpit Voice Recorder (CVR) systems, their associated procedures, data management protocols, and regulatory compliance requirements.

### 1.1 Objectives

1. Establish audit-ready documentation for FDR/CVR recording function
2. Define chain-of-custody procedures for recorded data
3. Ensure compliance with ICAO, FAA, and EASA requirements
4. Integrate recording system data with Digital Product Passport (DPP)
5. Provide traceability for accident investigation evidence

### 1.2 Applicability

This chapter applies to:
- All AMPEL360 aircraft configurations
- All manufacturing serial numbers (MSN: ALL)
- Flight Data Recorder systems (TSO-C124a compliant)
- Cockpit Voice Recorder systems (TSO-C123a compliant)
- Combined FDR/CVR units
- Data extraction and processing tools

## 2.0 Governance

### 2.1 Owner Role

**Primary Owner:** Data Systems / Flight Data Engineering

**Responsibilities:**
- System architecture and specification
- Parameter mapping and data format standards
- Download procedure development and maintenance
- Tool qualification oversight
- DPP integration and data archival

### 2.2 Review Board

The ATA 31 Review Board consists of:

1. **Airworthiness Engineering**
   - Regulatory compliance verification
   - Certification evidence review
   - Airworthiness limitation items

2. **Operations**
   - Operational procedure validation
   - Pilot and maintenance crew training
   - Routine data download scheduling

3. **Safety Engineering**
   - Hazard analysis and risk assessment
   - Accident investigation support
   - Safety recommendations implementation

4. **Data Governance**
   - Data retention policy enforcement
   - Access control and privacy compliance
   - Data quality and integrity assurance

### 2.3 Change Control

All changes to recording system specifications, procedures, or data formats require:
1. Engineering Change Request (ECR) submission
2. Review Board approval
3. Impact assessment on certification basis
4. Update of affected documentation and sidecars
5. Revision history documentation

## 3.0 Regulatory Framework

### 3.1 Applicable Regulations

- **[ICAO Annex 6](https://www.icao.int/safety/airnavigation/NationalityMarks/annexes_booklet_en.pdf):** Operation of Aircraft - FDR/CVR carriage requirements
- **[FAA 14 CFR Part 91](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-F/part-91):** General Operating and Flight Rules
- **[FAA 14 CFR Part 121](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-G/part-121):** Operating Requirements: Domestic, Flag, and Supplemental Operations
  - [§121.343](https://www.ecfr.gov/current/title-14/section-121.343) - Flight Data Recorders
  - [§121.344](https://www.ecfr.gov/current/title-14/section-121.344) - Digital Flight Data Recorders  
  - [§121.359](https://www.ecfr.gov/current/title-14/section-121.359) - Cockpit Voice Recorders
- **[FAA 14 CFR Part 125](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-G/part-125):** Certification and Operations
- **[FAA 14 CFR §135.609](https://www.ecfr.gov/current/title-14/section-135.609):** CVR Recording Protection
- **[TSO-C124a](https://www.faa.gov/aircraft/air_cert/design_approvals/tso/aircraft/):** Flight Data Recorder Systems
- **[TSO-C123a](https://www.faa.gov/aircraft/air_cert/design_approvals/tso/aircraft/):** Cockpit Voice Recorder Systems
- **[EASA CS-25](https://www.easa.europa.eu/document-library/certification-specifications/cs-25-large-aeroplanes):** Large Aeroplanes certification specifications
  - CS 25.1457 - Cockpit Voice Recorders
  - CS 25.1459 - Flight Data Recorders

### 3.2 Applicable Standards

- **[EUROCAE ED-112](https://www.eurocae.net/):** Minimum Operational Performance Standards for CVR
- **[ARINC 717](https://www.aviation-ia.com/arinc-standards):** Flight Data Recorder Systems
- **[ARINC 573](https://www.aviation-ia.com/arinc-standards):** Crash-Protected Airborne Recorder Systems (legacy)
- **[RTCA DO-160](https://www.rtca.org/):** Environmental Conditions and Test Procedures
- **[RTCA DO-178C](https://www.rtca.org/):** Software Considerations in Airborne Systems
- **[RTCA DO-254](https://www.rtca.org/):** Design Assurance Guidance for Airborne Electronic Hardware

### 3.3 Compliance Matrix

Refer to **[DATA_31-01-02_Regulatory-Compliance-Matrix.csv](DATA_31-01-02_Regulatory-Compliance-Matrix.csv)** for detailed mapping of requirements to design elements and verification methods.

## 4.0 Effectivity

### 4.1 Aircraft Applicability

- **Configurations:** All AMPEL360 BWB configurations
- **MSN Range:** ALL
- **Modification Status:** Baseline + all approved modifications
- **Phase:** Design, production, operation, maintenance

### 4.2 Document Lifecycle

- **Development Status:** Released
- **Effective Date:** 2025-10-30
- **Next Review:** 2026-10-30 (annual review cycle)
- **Supersedes:** N/A (initial release)

### 4.3 Revision Policy

Documents in this chapter shall be reviewed and updated:
- Annually (scheduled review)
- Upon regulatory changes
- Following significant incidents or accidents
- When recording system hardware/software is modified
- When operational procedures change

## 5.0 Safety Classification

### 5.1 Criticality

**Classification:** Critical - Flight Safety Item / Accident Investigation Evidence

**Rationale:**
- Essential for accident/incident investigation
- Regulatory requirement for aircraft certification
- Evidence integrity impacts aviation safety oversight
- Data loss may impair accident cause determination

### 5.2 Hazards

Identified hazards include:
1. Loss of flight data recording capability
2. Loss of CVR audio recording capability
3. Corruption of recorded data
4. Unauthorized access to sensitive recordings
5. Failure to meet mandatory parameter requirements
6. Data loss due to power interruption or crash impact
7. Tool malfunction during download
8. Chain-of-custody breach

Mitigation strategies are documented in **[DESC_31-02-01_FDR-System-Description.md](../02-FDR_FUNCTION/DESC_31-02-01_FDR-System-Description.md#90-safety-considerations)** and **[DESC_31-03-01_CVR-System-Description.md](../03-CVR_FUNCTION/DESC_31-03-01_CVR-System-Description.md)**.

## 6.0 Integration with ATA Chapters

### 6.1 Cross-References

- **[ATA 05](../../../P-PROGRAM/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/):** Time Limits & Maintenance Checks (inspection intervals)
- **[ATA 20](../../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/):** Standard Practices - Airframe (installation standards)
- **[ATA 22](../../../A3-AVIONICS/ATA_22-AUTO_FLIGHT/):** Auto Flight (autopilot status recording)
- **[ATA 24](../../../E-ELECTRICAL/ATA_24-ELECTRICAL_POWER/):** Electrical Power (power supply requirements)
- **[ATA 42](../../../A3-AVIONICS/ATA_42-INTEGRATED_MODULAR_AVIONICS/):** Integrated Modular Avionics (data bus integration)
- **[ATA 45](../../../A3-AVIONICS/ATA_45-ONBOARD_MAINTENANCE_SYSTEMS/):** Onboard Maintenance Systems (fault recording)
- **[ATA 46](../../../A3-AVIONICS/ATA_46-INFORMATION_SYSTEMS/):** Information Systems (cockpit displays)
- **[ATA 95](../../../P-PROGRAM/ATA_95-WIRING_DIGITAL_PRODUCT_PASSPORT/):** Digital Product Passport (traceability and archival)

### 6.2 Source Documents

- FDR-SPEC-31-001: Flight Data Recorder System Specification
- CVR-SPEC-31-001: Cockpit Voice Recorder System Specification
- REC-ARCH-31-001: Recording System Architecture Document
- REC-SAS-31-001: Software Accomplishment Summary (DO-178C)
- REC-SAFETY-31-001: Recording System Safety Assessment
- REC-QUAL-31-001: FDR/CVR Qualification Test Report
- REC-ENV-31-001: Environmental Qualification Evidence (DO-160)
- MAINT-PLAN-31-001: Recording System Maintenance Program
- DATA-MGMT-31-001: Data Management and Retention Policy

## 7.0 Document Structure

This chapter is organized into the following subdirectories:

1. **[01-GENERAL](../01-GENERAL/):** Scope, governance, regulatory compliance ([DESC_31-01-01](DESC_31-01-01_Scope-Governance-And-Effectivity.md), [DATA_31-01-02](DATA_31-01-02_Regulatory-Compliance-Matrix.csv))
2. **[02-FDR_FUNCTION](../02-FDR_FUNCTION/):** FDR system description and procedures ([DESC_31-02-01](../02-FDR_FUNCTION/DESC_31-02-01_FDR-System-Description.md), [PROC_31-02-01](../02-FDR_FUNCTION/PROC_31-02-01_FDR-Download-And-Preservation-Procedure.md), [DATA_31-02-02](../02-FDR_FUNCTION/DATA_31-02-02_Mandatory-FDR-Parameters.csv))
3. **[03-CVR_FUNCTION](../03-CVR_FUNCTION/):** CVR system description and procedures ([DESC_31-03-01](../03-CVR_FUNCTION/DESC_31-03-01_CVR-System-Description.md), [PROC_31-03-01](../03-CVR_FUNCTION/PROC_31-03-01_CVR-Download-And-Chain-Of-Custody.md), [DATA_31-03-02](../03-CVR_FUNCTION/DATA_31-03-02_CVR-Acoustic-Test-And-Retention.csv))
4. **[04-DATA_MANAGEMENT_AND_DPP](../04-DATA_MANAGEMENT_AND_DPP/):** Data management and DPP integration ([PROC_31-04-01](../04-DATA_MANAGEMENT_AND_DPP/PROC_31-04-01_DPP-Entry-And-Archival.md), [DATA_31-04-02](../04-DATA_MANAGEMENT_AND_DPP/DATA_31-04-02_Data-Retention-And-Access.csv))
5. **[05-QUALIFICATION_AND_TEST](../05-QUALIFICATION_AND_TEST/):** Qualification plans and test matrices ([TESTPLAN_31-05-01](../05-QUALIFICATION_AND_TEST/TESTPLAN_31-05-01_FDR-CVR-Qualification-Plan.md), [DATA_31-05-02](../05-QUALIFICATION_AND_TEST/DATA_31-05-02_Test-Matrix-And-Failure-Criteria.csv))
6. **[06-NONCONFORMANCE_AND_DEVIATION](../06-NONCONFORMANCE_AND_DEVIATION/):** NCR handling procedures ([PROC_31-06-01](../06-NONCONFORMANCE_AND_DEVIATION/PROC_31-06-01_Nonconformance-Handling-And-NCR-Template.md))
7. **[07-SIDE-CAR_META](../07-SIDE-CAR_META/templates/):** Metadata sidecar templates ([document.meta.yaml](../07-SIDE-CAR_META/templates/document.meta.yaml))
8. **[08-EXAMPLES_AND_RECORDS](../08-EXAMPLES_AND_RECORDS/):** Example records and manifests ([EXAMPLE_31-08-01](../08-EXAMPLES_AND_RECORDS/EXAMPLE_31-08-01_FDR-Download-Record.json), [EXAMPLE_31-08-02](../08-EXAMPLES_AND_RECORDS/EXAMPLE_31-08-02_CVR-Download-Record.json))

## 8.0 Quality Assurance

### 8.1 Document Control

All documents in this chapter:
- Must have a [`.meta.yaml` sidecar](../07-SIDE-CAR_META/templates/document.meta.yaml) with metadata
- Must include SHA-256 checksum for integrity verification
- Must follow naming convention: `[TYPE]_31-[XX]-[XX]_[Description]_rev[X.Y.Z]_[YYYYMMDD].[ext]`
- Must be approved by Review Board before release

### 8.2 Validation

Automated validation is performed by **[ci/validate_ata31.sh](../ci/validate_ata31.sh)** to ensure:
- File structure compliance
- Naming convention adherence
- Sidecar presence and completeness
- Schema validity (JSON schemas in [../schemas/](../schemas/))
- Regulatory reference presence
- Chain-of-custody procedure documentation

---

**Approval History:**

| Authority | Status | Date | Signature |
|-----------|--------|------|-----------|
| Data Systems Engineering | Released | 2025-10-30 | [Digital Signature] |
| Airworthiness Engineering | Approved | 2025-10-30 | [Digital Signature] |
| Safety Engineering | Approved | 2025-10-30 | [Digital Signature] |

---

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
