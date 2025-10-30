# 44-01-01: Scope, Governance, and Effectivity

## Document Information

- **ATA Chapter:** 44 - Cabin Systems (Including IFE / IFX)
- **Document Type:** DESC (Description)
- **Revision:** 1.0.0
- **Effective Date:** 2025-10-30

## Table of Contents

1. [Scope](#1-scope)
   - [Chapter Coverage](#11-chapter-coverage)
   - [Exclusions](#12-exclusions)
   - [BWB-Specific Considerations](#13-bwb-specific-considerations)
2. [Governance Structure](#2-governance-structure)
   - [Organizational Responsibilities](#21-organizational-responsibilities)
   - [Review Board](#22-review-board)
   - [Change Control Process](#23-change-control-process)
3. [Regulatory Basis](#3-regulatory-basis)
   - [Primary Regulations](#31-primary-regulations)
   - [Industry Standards](#32-industry-standards)
   - [Material Standards](#33-material-standards)
   - [NDT Standards](#34-ndt-standards)
4. [Effectivity](#4-effectivity)
5. [Interface with Other ATA Chapters](#5-interface-with-other-ata-chapters)
6. [Document Hierarchy and Organization](#6-document-hierarchy-and-organization)
7. [Maintenance and Updates](#7-maintenance-and-updates)

## Quick Links
- [Main README](../00_README.md)
- [Regulatory Compliance Matrix](./DATA_44-01-03_Regulatory-Compliance-Matrix_rev1.0.0_20251030.csv)
- [Definitions & Taxonomy](./DESC_44-01-02_Definitions-And-Taxonomy_rev1.0.0_20251030.md)

---

## 1. Scope

This document defines the scope, governance structure, and effectivity of ATA Chapter 44 - Cabin Systems documentation for the AMPEL360 BWB aircraft. It establishes the boundaries of this chapter and defines the organizational responsibilities for cabin system design, certification, maintenance, and modification.

### 1.1 Chapter Coverage

ATA Chapter 44 covers all cabin management systems, passenger service systems, and cabin environmental controls, including but not limited to:

- Passenger seating and furnishings
- Cabin layouts and zoning
- In-Flight Entertainment (IFE) and In-Flight Connectivity (IFX) systems
- Emergency oxygen systems (passenger and cabin crew)
- Fire detection and suppression systems (cabin and galley)
- Galley equipment and service systems
- Cabin environmental and pressurization interfaces
- Cabin control panels and indications
- Cabin wiring, harnesses, and connectivity
- Lavatories and monuments
- Overhead storage bins
- Cabin interior panels (sidewalls, ceiling, floor)
- Emergency equipment stowage
- Placarding and signage

### 1.2 Exclusions

The following items are covered in other ATA chapters:
- **[ATA 21](../../E1-ENVIRONMENT/ATA_21-AIR_CONDITIONING_AND_PRESSURIZATION/):** Air conditioning (primary environmental control systems)
- **[ATA 25](../ATA_25-EQUIPMENT_FURNISHINGS/):** Equipment/furnishings (cargo and non-cabin areas)
- **[ATA 33](../ATA_33-LIGHTS/):** Cabin lighting systems (covered separately)
- **[ATA 35](../ATA_35-OXYGEN/):** Crew oxygen systems (flight deck)
- **[ATA 46](../../I-INFORMATION_INTELLIGENCE_INTERFACES/ATA_46-40-xx-DATA_LOADING_AND_CONFIGURATION/):** Information systems (flight deck and aircraft systems integration)

### 1.3 BWB-Specific Considerations

The Blended Wing Body (BWB) configuration presents unique cabin system challenges and opportunities:

- **Large Cabin Volume:** Extended cabin space requires enhanced air distribution, fire detection coverage, and oxygen system capacity
- **Natural Light:** Extensive use of composite materials and cabin transparency for natural light integration
- **Novel Layouts:** Non-traditional cabin geometries enable innovative passenger seating arrangements
- **Distributed Systems:** IFE/IFX and environmental systems are distributed across a wider cabin area
- **Extended Egress Paths:** Fire safety and emergency oxygen systems must account for longer evacuation routes

## 2. Governance Structure

### 2.1 Organizational Responsibilities

#### 2.1.1 Cabin Systems Engineering
- **Owner of ATA 44 content**
- Design and integration of cabin systems
- Certification coordination with authorities
- Change control and configuration management
- Technical authority for cabin system modifications

#### 2.1.2 IFE/IFX Engineering
- IFE/IFX system architecture and design
- Software baseline management per DO-178C
- Hardware qualification per DO-254
- Cyber security compliance per DO-326A
- Supplier technical coordination

#### 2.1.3 Materials & Processes (M&P)
- Material specification and qualification
- Flammability testing and certification per 14 CFR Part 25.853
- Certificate of Conformance (CofC) management
- Material traceability and lot control
- Shelf life and expiry tracking

#### 2.1.4 Safety Engineering
- Safety assessment per ARP4754A/ARP4761
- Hazard identification and mitigation
- Emergency equipment compliance
- Fire safety analysis
- Human factors and accessibility

#### 2.1.5 Airworthiness Engineering
- Regulatory compliance verification
- Airworthiness Limitation Items (ALI) definition
- Continued Airworthiness oversight
- Service Bulletin coordination
- Airworthiness Directive (AD) compliance

#### 2.1.6 Systems Integration
- Cross-system interface management
- Electrical load analysis
- EMI/EMC coordination
- Wiring separation and routing standards

### 2.2 Review Board

All major changes to cabin systems require review and approval from the Cabin Systems Review Board, consisting of:
- Cabin Systems Engineering (Chair)
- IFE/IFX Engineering
- Materials & Processes
- Safety Engineering
- Airworthiness Engineering
- Systems Integration

### 2.3 Change Control Process

1. **Initiation:** Engineering change request submitted to Cabin Systems Engineering
2. **Assessment:** Technical and safety impact assessment
3. **Review:** Cabin Systems Review Board review (if major change)
4. **Approval:** Engineering approval and authority signature
5. **Implementation:** Change incorporated into documentation and aircraft
6. **Verification:** Post-change verification and test
7. **Closeout:** Digital Product Passport (DPP) entry and document update

## 3. Regulatory Basis

### 3.1 Primary Regulations

#### [FAA 14 CFR Part 25](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25)
- **[25.853](https://www.ecfr.gov/current/title-14/section-25.853):** Compartment interiors (flammability requirements)
- **[25.855](https://www.ecfr.gov/current/title-14/section-25.855):** Cargo and baggage compartments
- **[25.856](https://www.ecfr.gov/current/title-14/section-25.856):** Thermal/acoustic insulation materials
- **[25.857](https://www.ecfr.gov/current/title-14/section-25.857):** Cargo compartment classification
- **[25.1439](https://www.ecfr.gov/current/title-14/section-25.1439):** Protective breathing equipment
- **[25.1447](https://www.ecfr.gov/current/title-14/section-25.1447):** Equipment standards for oxygen dispensing units
- **[25.1450](https://www.ecfr.gov/current/title-14/section-25.1450):** Chemical oxygen generators

#### [EASA CS-25](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-large-aeroplanes)
- European equivalents to FAA Part 25 requirements
- CS-25.853 through CS-25.1450

### 3.2 Industry Standards

- **[DO-160](https://www.rtca.org/content/standards-guidance-materials):** Environmental Conditions and Test Procedures for Airborne Equipment
- **[DO-178C](https://www.rtca.org/content/standards-guidance-materials):** Software Considerations in Airborne Systems and Equipment Certification
- **[DO-254](https://www.rtca.org/content/standards-guidance-materials):** Design Assurance Guidance for Airborne Electronic Hardware
- **[DO-326A / ED-202A](https://www.rtca.org/content/standards-guidance-materials):** Airworthiness Security Process Specification
- **[ARP4754A](https://www.sae.org/standards/content/arp4754a/):** Guidelines for Development of Civil Aircraft and Systems
- **[ARP4761](https://www.sae.org/standards/content/arp4761/):** Guidelines and Methods for Conducting the Safety Assessment Process
- **[ARINC 628](https://www.aviation-ia.com/standards/):** Aviation data communication standards for IFE/IFX

### 3.3 Material Standards

- **[MMPDS](https://www.mmpds.org/):** Metallic Materials Properties Development and Standardization
- **AMS:** Aerospace Material Specifications
- **BMS:** Boeing Material Specifications
- **[FAR 25 Appendix F](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/appendix-Appendix%20F%20to%20Part%2025):** Flammability test procedures

### 3.4 NDT Standards

- **[ASTM E1444](https://www.astm.org/e1444-16.html):** Standard Practice for Ultrasonic Testing
- **[ASTM E1417](https://www.astm.org/e1417-21.html):** Standard Practice for Liquid Penetrant Testing
- **AMS 2644:** Magnetic Particle Inspection

## 4. Effectivity

### 4.1 Aircraft Effectivity

This ATA 44 documentation applies to:
- **Aircraft Type:** AMPEL360 BWB
- **MSN Range:** ALL (unless otherwise specified in individual documents)
- **Configuration:** All cabin configurations unless specifically noted

### 4.2 Cabin Configuration Variants

The following cabin configurations are covered:
1. **Single-Class Economy:** High-density seating (300-350 passengers)
2. **Dual-Class Business/Economy:** Premium forward cabin with economy aft (250-280 passengers)
3. **Premium Cabin:** Enhanced business class throughout (180-220 passengers)
4. **High-Density Charter:** Maximum density configuration (350-400 passengers)

### 4.3 IFE/IFX Variants

Multiple IFE/IFX system variants exist:
- **Embedded IFE:** Seat-back monitors with embedded control units
- **Wireless IFE:** Portable device streaming (BYOD - Bring Your Own Device)
- **Hybrid IFE:** Combination of embedded and wireless systems
- **No IFE:** Economy configuration without IFE (rare)

Each variant has specific software baselines, hardware configurations, and maintenance requirements documented in Section 07.

### 4.4 Retrofit and Modification Applicability

Retrofit kits and modifications are effectivity-controlled by:
- **Service Bulletin (SB):** Manufacturer-issued service bulletins
- **Engineering Order (EO):** Internal engineering changes
- **Supplemental Type Certificate (STC):** Third-party modifications
- **Airworthiness Directive (AD):** Mandatory regulatory changes

## 5. Interface with Other ATA Chapters

### 5.1 Direct Interfaces

- **[ATA 20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/):** Standard practices (torque, fasteners, sealing, bonding)
- **[ATA 21](../../E1-ENVIRONMENT/ATA_21-AIR_CONDITIONING_AND_PRESSURIZATION/):** Air conditioning (cabin air supply interface)
- **[ATA 25](../ATA_25-EQUIPMENT_FURNISHINGS/):** Equipment/furnishings (cargo area interfaces)
- **[ATA 33](../ATA_33-LIGHTS/):** Cabin lighting systems
- **[ATA 35](../ATA_35-OXYGEN/):** Oxygen systems (crew oxygen interface)
- **[ATA 46](../../I-INFORMATION_INTELLIGENCE_INTERFACES/ATA_46-40-xx-DATA_LOADING_AND_CONFIGURATION/):** Information systems (IFE/IFX data integration)
- **[ATA 51](../../A-AIRFRAME/ATA_51-STANDARD_PRACTICES_AND_STRUCTURES-GENERAL/):** Standard practices for structures (composite repairs)
- **[ATA 53](../../A-AIRFRAME/ATA_53-FUSELAGE/):** Fuselage (attachment points and load transfer)

### 5.2 Indirect Interfaces

- **ATA 05:** Time limits and maintenance checks
- **ATA 24:** Electrical power (cabin power distribution)
- **ATA 28:** Fuel (galley fuel cell interfaces if applicable)
- **ATA 95:** Digital Product Passport (traceability)

## 6. Document Hierarchy and Organization

### 6.1 Document Types

All documents in ATA 44 follow a consistent naming and typing convention:

- **DESC:** Description documents (scope, definitions, overviews)
- **PROC:** Procedure documents (step-by-step maintenance, installation, test procedures)
- **DATA:** Data tables and specifications (limits, specs, material tables)
- **DIAG:** Diagrams and drawings (exploded views, schematics, wiring diagrams)
- **TESTPLAN:** Test plans and qualification protocols
- **INSP:** Inspection procedures and checklists

### 6.2 Metadata Requirements

Every document (except templates and examples) must have an accompanying `.meta.yaml` sidecar file containing:
- Schema version
- Unique document ID
- Document type, title, revision, effective date
- Effectivity (MSN, configuration)
- Safety criticality and hazards
- Approvals with authority, status, and date
- Traceability (source documents, cross-references)
- Integrity checksum (SHA-256)
- Revision history

Templates are available in `15-SIDE-CAR_META/templates/`.

### 6.3 Validation

All ATA 44 content is validated by the CI script `ci/validate_ata44.sh`, which checks:
- File naming conventions
- Presence of metadata sidecars
- JSON schema validity
- Required directory structure
- Cross-reference completeness

## 7. Maintenance and Updates

### 7.1 Review Cycle

This document and the ATA 44 structure are reviewed annually or when:
- Major cabin system changes are introduced
- Regulatory requirements change
- Certification findings require updates
- Operational experience indicates improvements

### 7.2 Version Control

All documents use semantic versioning (X.Y.Z):
- **X (Major):** Significant changes affecting certification or safety
- **Y (Minor):** Procedure changes, clarifications, or additions
- **Z (Patch):** Typographical corrections, formatting updates

### 7.3 Approval Authority

Changes to this governance document require approval from:
- Cabin Systems Engineering (Owner)
- Airworthiness Engineering (Compliance)
- Safety Engineering (Safety Impact)

---

**Document Control:**
- **Owner:** Cabin Systems Engineering
- **Approvers:** Airworthiness Engineering, Safety Engineering
- **Next Review:** 2026-10-30

---

*Part of the AMPEL360 ATA Chapter 44 - Cabin Systems Documentation*
