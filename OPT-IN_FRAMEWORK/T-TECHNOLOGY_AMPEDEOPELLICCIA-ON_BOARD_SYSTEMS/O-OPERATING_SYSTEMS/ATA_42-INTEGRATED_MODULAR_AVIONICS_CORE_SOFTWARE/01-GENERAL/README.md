# 01-GENERAL

← [ATA_42 Core OS](../README.md) | [🏠 Repository Root](../../../../../README.md) | [📋 Navigation](../NAVIGATION.md)

---

## Table of Contents
- [Overview](#overview)
- [Purpose](#purpose)
- [Contents](#contents)
- [Key Documents](#key-documents)
- [Regulatory Framework](#regulatory-framework)
- [Stakeholder Responsibilities](#stakeholder-responsibilities)
- [Navigation](#navigation)

---

## Overview
General information, scope, governance, and regulatory compliance for ATA 42 Core OS.

## Purpose

Establishes the foundation for ATA 42 Core OS documentation, including:
- **Scope definition** and boundaries of Core OS
- **Regulatory basis** per DO-178C, ARINC 653, DO-330, ED-202A/203
- **Stakeholder responsibilities** with RACI matrix
- **Document conventions** and terminology
- **Reference standards** applicable to development

## Contents

### Governance Documents
- **DESC_42-01-01**: [Scope, Governance, and Effectivity](./DESC_42-01-01_Scope-Governance-And-Effectivity.md)
  - Project scope and boundaries
  - Governance structure and review board
  - Effectivity (All AMPEL360 configurations)
  - Approval authority and change control

### Regulatory Compliance
- **DATA_42-01-02**: [Regulatory Compliance Matrix](./DATA_42-01-02_Regulatory-Compliance-Matrix.csv)
  - Mapping to 10 key standards (DO-178C, ARINC 653, DO-330, ED-202A, ED-203, etc.)
  - Compliance status for each requirement
  - Verification methods
  - Evidence locations

### Chapter Overview
- **DESC_42-01-03**: [ATA-42 Chapter Overview](./DESC_42-01-03_ATA-42-Chapter-Overview.md)
  - Core OS functions and architecture principles
  - Relationship to other ATA chapters
  - Safety and security philosophy

### Stakeholder Management
- **DATA_42-01-04**: [Stakeholder Roles RACI](./DATA_42-01-04_Stakeholder-Roles-RACI.csv)
  - Responsibility matrix (Responsible, Accountable, Consulted, Informed)
  - 6 key stakeholder roles:
    - IMA Core Engineering
    - Software Safety
    - Certification
    - Airworthiness
    - System Integration
    - Quality Assurance

### Documentation Standards
- **DESC_42-01-05**: [Document Conventions and Terminology](./DESC_42-01-05_Document-Conventions-And-Terminology.md)
  - File naming conventions (DESC_, PROC_, DATA_, CALC_, DIAGRAM_)
  - Terminology and glossary
  - Document conventions (SHALL, SHOULD, MAY)
  - Revision control practices

### Reference Standards
- **DATA_42-01-06**: [Reference Standards](./DATA_42-01-06_Reference-Standards.csv)
  - Complete list of applicable standards
  - ARINC 653, DO-178C, DO-330, DO-297, DO-160G
  - EUROCAE ED-202A, ED-203
  - Mandatory vs. optional standards

## Key Documents

| Document | Description | Type |
|----------|-------------|------|
| DESC_42-01-01 | Scope, Governance, and Effectivity | Governance |
| DATA_42-01-02 | Regulatory Compliance Matrix | Compliance |
| DESC_42-01-03 | ATA-42 Chapter Overview | Overview |
| DATA_42-01-04 | Stakeholder Roles RACI | Management |
| DESC_42-01-05 | Document Conventions | Standards |
| DATA_42-01-06 | Reference Standards | Standards |

## Regulatory Framework

### Primary Regulations
1. **DO-178C (DAL A)** - Software lifecycle processes
2. **ARINC 653** - IMA API and partitioning requirements
3. **DO-330** - Tool qualification for compilers and analyzers
4. **DO-297** - IMA development and certification guidance

### Security Standards
1. **EUROCAE ED-202A** - MILS security architecture
2. **EUROCAE ED-203** - Airborne security methods

### Environmental
1. **DO-160G** - Environmental qualification

## Stakeholder Responsibilities

### RACI Matrix Summary
- **IMA Core Engineering**: Responsible for architecture, design, implementation
- **Software Safety**: Accountable for safety analysis and hazard mitigation
- **Certification**: Accountable for DO-178C compliance and evidence
- **Airworthiness**: Approval authority for safety-critical changes
- **System Integration**: Responsible for HIL testing and integration
- **Quality Assurance**: Configuration management and process compliance

See [DATA_42-01-04](./DATA_42-01-04_Stakeholder-Roles-RACI.csv) for complete matrix.

## Document Conventions

### File Naming
- **DESC_** - Descriptive documents (.md)
- **PROC_** - Procedures (.md)
- **DATA_** - Data files (.csv, .json)
- **CALC_** - Calculations (.xlsx)
- **DIAGRAM_** - Diagrams (.svg, .png)

### Requirement Keywords
- **SHALL** - Mandatory requirement
- **SHOULD** - Recommended practice
- **MAY** - Optional feature

See [DESC_42-01-05](./DESC_42-01-05_Document-Conventions-And-Terminology.md) for complete conventions.

## Owner & Contacts

- **Owner**: Systems Engineering
- **Review Board**: Airworthiness, Software Safety, Certification
- **Status**: Released
- **Last Updated**: 2025-10-30

---

## Navigation

- **Next**: [02-ARCHITECTURE_AND_SERVICES →](../02-ARCHITECTURE_AND_SERVICES/README.md)
- **Parent**: [← ATA_42 Core OS](../README.md)
- **Root**: [🏠 Repository Root](../../../../../README.md)
- [🔝 Back to Top](#01-general)

---

*Last Updated: 2025-10-30*  
*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
