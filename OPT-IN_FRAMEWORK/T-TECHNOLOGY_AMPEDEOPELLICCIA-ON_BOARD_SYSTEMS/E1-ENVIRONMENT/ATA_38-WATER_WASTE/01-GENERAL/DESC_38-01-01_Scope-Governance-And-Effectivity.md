# DESC_38-01-01 — Scope, Governance and Effectivity

**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Owner:** Environmental Systems Engineering  
**Classification:** Technical Reference Document

---

## Table of Contents
1. [Scope](#scope)
2. [System Overview](#system-overview)
3. [Governance](#governance)
4. [Regulatory Framework](#regulatory-framework)
5. [Effectivity](#effectivity)
6. [Interfaces and Dependencies](#interfaces-and-dependencies)
7. [Change Control](#change-control)
8. [References](#references)

---

## Scope

This chapter (ATA 38 - Water/Waste) covers the complete lifecycle of potable water and waste management systems for the AMPEL360 aircraft, including:

### Potable Water Systems
- **Water Supply:** Storage tanks, distribution lines, faucets, and dispensers
- **Water Quality:** Bacteriological and chemical testing, monitoring, and certification
- **Sanitization:** Approved disinfection procedures, contact times, and verification methods
- **Filtration:** Water treatment and purification equipment
- **Temperature Control:** Heating elements and thermal management for potable water

### Waste Systems
- **Collection:** Gray water (sinks, showers) and black water (toilets) tanks
- **Drainage:** Drain lines, vents, and overflow protection
- **Disposal:** Servicing connections, contamination prevention, and environmental compliance
- **Treatment:** Waste processing equipment (if applicable)
- **Odor Control:** Vent filters and chemical deodorizers

### Support Systems
- **Pumps & Valves:** See [DESC_38-04-01](../04-PUMPS_VALVES_AND_CONTROLS/DESC_38-04-01_Pumps-And-Valve-Types.md)
- **Sensors & Monitoring:** See [PROC_38-05-01](../05-SENSORS_AND_MONITORING/PROC_38-05-01_Level-Sensor-Calibration.md)
- **Control Systems:** Automated control, alarms, and indication
- **Materials:** NSF-certified components per [DATA_38-06-01](../06-MATERIALS_M_AND_P/DATA_38-06-01_Approved-Seals-And-Lubricants.csv)

### Lifecycle Activities
- Design, certification, and qualification testing
- Installation, commissioning, and initial certification
- Routine maintenance, inspection, and servicing
- Modification, repair, and overhaul
- Decommissioning and disposal

---

## System Overview

### Potable Water System Architecture

The AMPEL360 potable water system provides clean, safe drinking water to passengers and crew:

**Capacity:** Up to 1,200 liters forward + 800 liters aft (expandable based on configuration)  
**Pressure:** 20-50 psi nominal operating pressure  
**Distribution:** Multi-zone with redundant supply paths  
**Quality Monitoring:** Continuous conductivity and periodic bacteriological testing

Key components:
- Stainless steel or approved composite water tanks
- NSF 61-certified distribution piping (PEX or stainless steel)
- Pressure pumps with redundancy
- Inline filters and UV sterilization (optional)
- Level and pressure sensors with cockpit indication
- Hot water heaters for galley service

### Waste System Architecture

The waste management system collects and contains wastewater until ground disposal:

**Gray Water Capacity:** 800 liters typical  
**Black Water Capacity:** 400 liters typical  
**Venting:** Overboard with odor filters  
**Service Points:** External ground service connections

Key components:
- Corrosion-resistant waste tanks (aluminum alloy or composite)
- Sealed drain lines with backflow prevention
- Pressure/vacuum relief venting
- Level sensors with crew alerts
- Flush valves and vacuum generators
- Heating elements for freeze protection

---

## Governance

### Organizational Structure

**Owner:** Environmental Systems Engineering Department
- Responsible for system design, certification, and lifecycle management
- Maintains all technical documentation and procedures
- Coordinates with regulatory authorities and certification bodies

**Review Board:**
1. **Airworthiness Engineering** - Ensures regulatory compliance and airworthiness
2. **Health & Safety** - Public health standards, crew/passenger safety
3. **Materials & Process** - Material selection, qualification, and traceability
4. **Operations** - Maintainability, serviceability, and operational procedures

### Approval Authority

| Document Type | Approval Required | Authority |
|---------------|-------------------|-----------|
| Procedures (PROC) | Engineering + Quality | Chief Engineer - Environmental Systems |
| Design Changes | Engineering + Airworthiness | Director of Engineering |
| Material Specifications | Materials & Process | Materials Engineering Manager |
| Test Plans | Engineering + Quality + Safety | Chief Engineer + Safety Officer |
| Regulatory Submissions | All stakeholders | Certification Manager |

### Document Control Process

All documents follow version control per corporate standards:
- Initial release: Rev 1.0.0
- Minor updates: Increment minor version (1.1.0)
- Major revisions: Increment major version (2.0.0)
- Each document requires review board approval before release
- Superseded documents archived with reference to new version

---

## Regulatory Framework

### Primary Regulations

#### FAA (Federal Aviation Administration)
- **[14 CFR Part 25.1439](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25)** - Waste Water Disposal Systems
- **[14 CFR Part 25.1461](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25)** - Equipment Containing High Energy Rotors
- **[AC 25-19](https://www.faa.gov/regulations_policies/advisory_circulars/)** - Potable Water System Certification
- **[AC 20-107B](https://www.faa.gov/regulations_policies/advisory_circulars/)** - Composite Aircraft Structure

#### EASA (European Union Aviation Safety Agency)
- **[CS-25.1439](https://www.easa.europa.eu/en/document-library/certification-specifications)** - Waste Water Systems
- **[CS-25 Book 2, AMC 25.1439](https://www.easa.europa.eu/en/document-library/certification-specifications)** - Acceptable Means of Compliance
- **[Part-21](https://www.easa.europa.eu/en/document-library/regulations)** - Certification of Aircraft and Related Products

### Health & Safety Standards

#### NSF International
- **[NSF/ANSI 61](https://www.nsf.org/knowledge-library/nsf-ansi-standard-61)** - Drinking Water System Components - Health Effects
- **[NSF/ANSI 51](https://www.nsf.org/)** - Food Equipment Materials
- **[NSF/ANSI 372](https://www.nsf.org/)** - Lead Content

#### WHO (World Health Organization)
- **[Guidelines for Drinking-water Quality, 4th Edition](https://www.who.int/publications/i/item/9789240045064)** - Microbiological and chemical standards
- **[Sanitation Safety Planning Manual](https://www.who.int/)** - Waste management

### Testing Standards

#### EPA (Environmental Protection Agency)
- **[Method 9223](https://www.epa.gov/measurements)** - Coliform bacteria in water
- **[Method 9308-1](https://www.epa.gov/measurements)** - Fecal coliforms
- **[EPA 815-R-04-002](https://www.epa.gov/)** - Water Quality Criteria

#### ISO Standards
- **[ISO 6222:1999](https://www.iso.org/)** - Enumeration of culturable microorganisms
- **[ISO 9308-1:2014](https://www.iso.org/)** - Detection and enumeration of Escherichia coli
- **[ISO 17025:2017](https://www.iso.org/)** - General requirements for testing and calibration laboratories

### Environmental Regulations
- Local environmental protection regulations for waste disposal
- ICAO Annex 16 - Environmental Protection (as applicable)
- Hazardous waste handling per local jurisdiction

See [DATA_38-01-02_Regulatory-Compliance-Matrix.csv](DATA_38-01-02_Regulatory-Compliance-Matrix.csv) for detailed compliance mapping.

---

## Effectivity

### Aircraft Applicability
- **Manufacturer:** AMPEL Technologies
- **Aircraft Type:** AMPEL360 Blended Wing Body
- **MSN (Manufacturing Serial Number):** ALL
- **Configuration:** All cabin configurations (passenger, cargo, VIP)
- **Production Block:** All blocks

### System Configuration Applicability

| Configuration | Forward Water | Aft Water | Gray Water | Black Water | Notes |
|---------------|---------------|-----------|------------|-------------|-------|
| Passenger (std) | 1200L | 800L | 800L | 400L | Standard layout |
| Passenger (high-density) | 1200L | 1200L | 1000L | 500L | Additional capacity |
| VIP | 1500L | 1000L | 1000L | 500L | Enhanced amenities |
| Cargo | 500L | N/A | 300L | 200L | Crew only |

### Modification Status

Current baseline includes:
- Standard potable water system (MOD-38-001)
- Waste management system (MOD-38-002)
- UV sterilization option (MOD-38-003) - Optional
- Hot water system (MOD-38-004) - Standard on passenger configurations

### Applicability Notes

1. This chapter applies to all AMPEL360 aircraft regardless of customer or operator
2. Procedures may reference operator-specific maintenance programs
3. Local regulations may impose additional requirements
4. Field modifications require engineering disposition

---

## Interfaces and Dependencies

### Related ATA Chapters

This chapter interfaces with multiple other aircraft systems:

#### ATA 21 - Air Conditioning and Pressurization
- **Interface:** Cabin pressure affects waste tank venting
- **Reference:** [ATA_21-AIR_CONDITIONING_AND_PRESSURIZATION](../../ATA_21-AIR_CONDITIONING_AND_PRESSURIZATION/)
- **Coordination Required:** Vent line routing, pressure relief design

#### ATA 24 - Electrical Power
- **Interface:** Power supply for pumps, heaters, and UV sterilization
- **Load Requirements:** 5-10 kW depending on configuration
- **Emergency Power:** Critical systems on essential bus

#### ATA 27 - Flight Controls
- **Interface:** System weight and CG impact
- **Reference:** Weight tracking for full/empty tank conditions

#### ATA 28 - Fuel System
- **Interface:** Physical separation requirements
- **Safety:** Contamination prevention and leak isolation

#### ATA 36 - Pneumatic
- **Interface:** Pressure supply for waste flush systems (optional)
- **Reference:** [ATA_36-PNEUMATIC](../../ATA_36-PNEUMATIC/)

#### ATA 45 - Central Maintenance System
- **Interface:** Health monitoring and fault reporting
- **BITE:** Built-in test equipment for level sensors and pumps

### External Dependencies

- **Ground Support Equipment:** Service carts, test equipment
- **Consumables:** Approved sanitants, deodorizers, test kits
- **Laboratory Services:** Accredited water testing facilities
- **Spare Parts:** OEM components with traceability

---

## Change Control

### Engineering Change Process

All modifications to water/waste systems require formal engineering review:

1. **Initiation:** Engineering Change Request (ECR) submitted
2. **Review:** Multi-discipline review by governance board
3. **Analysis:** Impact assessment on:
   - Airworthiness and safety
   - Regulatory compliance
   - System performance
   - Weight and balance
   - Maintenance procedures
4. **Approval:** Engineering Change Order (ECO) issued
5. **Implementation:** Controlled release with documentation updates
6. **Verification:** Post-modification testing and validation

### Criticality Classification

| Change Type | Approval Authority | Notification Required |
|-------------|-------------------|----------------------|
| **Critical** (structural tanks, primary containment) | Airworthiness + Engineering Director | Regulatory authority |
| **Major** (new components, capacity changes) | Chief Engineer + Review Board | Internal stakeholders |
| **Minor** (procedure updates, part substitutions) | Chief Engineer | Quality Assurance |
| **Editorial** (document corrections) | Document owner | None |

### Configuration Management

- All aircraft configurations tracked in Configuration Management Database (CMDB)
- Service Bulletins (SB) issued for fleet-wide changes
- Airworthiness Directives (AD) compliance tracking
- Modification status recorded in aircraft logbook

---

## References

### Internal Documentation
- [INDEX.meta.yaml](../INDEX.meta.yaml) - Chapter metadata and approval records
- [00_README.md](../00_README.md) - Chapter overview and navigation
- [Regulatory Compliance Matrix](DATA_38-01-02_Regulatory-Compliance-Matrix.csv) - Detailed regulatory mapping
- [ci/validate_ata38.sh](../ci/validate_ata38.sh) - Documentation validation script

### External Standards (Hyperlinked)
- [FAA Regulations](https://www.faa.gov/regulations_policies/)
- [EASA Certification Specifications](https://www.easa.europa.eu/en/document-library/certification-specifications)
- [NSF Standards](https://www.nsf.org/knowledge-library)
- [WHO Guidelines](https://www.who.int/health-topics/water-sanitation-and-hygiene-wash)
- [EPA Methods](https://www.epa.gov/measurements)
- [ISO Standards Catalog](https://www.iso.org/standards.html)

### Manufacturer Documentation
- AMPEL360 Aircraft Maintenance Manual (AMM)
- AMPEL360 System Description Manual (SDM)
- Component Maintenance Manuals (CMM) for pumps, valves, sensors
- Illustrated Parts Catalog (IPC)

### Training Materials
- Water System Servicing Course (WATER-SVC-L1, L2)
- Waste System Maintenance Course (WASTE-MNT-L1)
- Quality Testing Certification (QA-WATER-TEST)

---

**Document Control:**
- **Approved By:** [Name], Chief Engineer - Environmental Systems
- **Review Date:** 2025-10-30
- **Next Review:** 2026-10-30
- **Distribution:** Engineering, Maintenance, Quality, Certification

**Revision History:**
| Revision | Date | Author | Changes |
|----------|------|--------|---------|
| 1.0.0 | 2025-10-30 | Environmental Systems Engineering | Initial release |

---

[↑ Return to Chapter Index](../00_README.md) | [Next: Regulatory Compliance Matrix →](DATA_38-01-02_Regulatory-Compliance-Matrix.csv)
