# DESC_16-01-01 — Scope, Governance, and Effectivity

**Document ID:** DESC_16-01-01  
**Revision:** 1.0.0  
**Date:** 2025-10-30  
**ATA Chapter:** 16 — Change of Role

## Purpose

This document defines the scope, governance structure, and effectivity management framework for all role changes affecting aircraft systems, equipment, or operational capability within the AMPEL360 BWB aircraft program.

## Scope

### In-Scope Role Changes

The following types of role changes fall under ATA 16 governance:

1. **Equipment Role Changes**
   - Functional reassignment of equipment (e.g., seat converted from passenger to crew seat)
   - System operational mode changes (e.g., galley equipment repurposed for medical use)
   - Equipment ownership transfer between ATA chapters

2. **System Function Changes**
   - Modification of system primary function
   - Addition or removal of system capabilities
   - Integration of new functions into existing systems

3. **Crew/Observer Role Assignments**
   - Changes to crew positions that impact certification (e.g., addition of relief pilot station)
   - Observer role assignments affecting operational procedures
   - Flight deck vs. cabin crew responsibility transfers

4. **LOPA Configuration Changes**
   - Seat configuration changes affecting capacity or layout
   - Cabin zone repurposing (e.g., business class to premium economy)
   - Galley, lavatory, or storage compartment relocation or repurposing

5. **System Ownership Changes**
   - Responsibility transfer between engineering disciplines
   - Maintenance ownership changes between organizations
   - Operational control transfers

6. **Certification Impact Changes**
   - Changes requiring Type Certificate Data Sheet (TCDS) amendment
   - Supplemental Type Certificate (STC) scope modifications
   - Airworthiness Directive (AD) compliance method changes

### Out-of-Scope

The following are NOT considered role changes under ATA 16:
- Routine maintenance or repairs (covered by maintenance manuals)
- Component replacements with identical part numbers
- Software version updates without functional changes
- Cosmetic changes not affecting function or certification
- Temporary changes with explicit operational limitations (unless affecting certification)

## Governance Structure

### Ownership

**Primary Owner:** Configuration & Change Control  
**Alternate Owner:** Cabin Interiors Engineering (for cabin-specific role changes)

### Review Board

All role change requests must be reviewed by:
1. **Airworthiness Engineering** — Mandatory for safety-critical and certification-affecting changes
2. **Human Factors** — Required for crew/passenger interface changes
3. **Materials & Process** — Required for structural or material changes
4. **Structures Engineering** — Required for load-bearing or attachment changes
5. **Configuration Control Board** — Overall approval authority

### Approval Authority Levels

| Change Impact | Primary Approver | Additional Approvals Required |
|---------------|------------------|-------------------------------|
| No certification impact | Configuration Control | Human Factors (if applicable) |
| Minor certification impact | Airworthiness + Configuration Control | Safety Engineering |
| Major certification impact | Airworthiness + Chief Engineer | Safety Engineering, Certification Authority Coordination |
| TCDS amendment required | Chief Engineer + Certification Authority | Full review board |

## Effectivity Management

### Effectivity Fields

All change requests must specify:

1. **Manufacturer Serial Number (MSN)** 
   - Format: `ALL`, `001`, `001-050`, `025,030,035`
   - Must align with production records

2. **Configuration Identifier**
   - Format: `ALL`, `BUSINESS`, `ECONOMY`, `CARGO`, `VIP`, custom identifier
   - Must align with approved configuration list

3. **LOPA Version**
   - Format: `ALL`, `LOPA-v1.2`, `LOPA-2025-Q1`, date-based identifier
   - Must align with LOPA document control

4. **Effective Date**
   - Format: ISO 8601 (`YYYY-MM-DD`)
   - Must not be in the future for released changes
   - Provisional changes may have future effective dates with proper justification

5. **Production Block (optional)**
   - Delivery batch or production run identifier
   - Used for phased implementations

### Effectivity Verification

Before change closure, Configuration Control must verify:
- MSN range is valid and unambiguous
- Configuration exists in master configuration list
- LOPA version is current and approved
- Effective date is consistent with implementation schedule
- No conflicting effectivity with other active changes

## Change Classification

### Safety Criticality

| Class | Description | Approval Path |
|-------|-------------|---------------|
| **Critical** | Affects flight safety, airworthiness, or emergency systems | Full review board + Airworthiness + Safety Engineering |
| **Major** | Affects operational capability, comfort, or compliance | Airworthiness + Configuration Control + relevant discipline |
| **Minor** | Limited impact, no certification or safety implications | Configuration Control + Human Factors (if applicable) |
| **Administrative** | Documentation or procedural changes only | Configuration Control |

### Certification Impact

| Impact Level | Description | Authority Coordination |
|--------------|-------------|------------------------|
| **None** | No regulatory compliance impact | Internal approval only |
| **Minor** | Compliance by similarity or analysis | Internal approval, authority notification |
| **Major** | Requires new compliance demonstration | Authority pre-approval, formal submission |
| **TCDS Amendment** | Type Certificate modification | Formal authority application and approval |

## Regulatory Basis

All role changes must consider applicable regulations:
- **CS-25 / 14 CFR Part 25** — Airworthiness standards
- **EASA Part-21** — Certification procedures for changes
- **FAA Order 8110.4C** — Type Certification guidance
- **SAE ARP4754A** — Development guidelines
- **SAE ARP4761** — Safety assessment process

Regulatory compliance must be documented in the change request and verified in the safety assessment.

## Traceability Requirements

Each role change must maintain traceability to:
1. **Change Request** — Unique ECR or NCR identifier
2. **Safety Assessment** — FHA, FTA, FMEA, or equivalent
3. **Test Evidence** — Functional, integration, and regression test results
4. **Numeric Data** — Pass/fail criteria and measured values
5. **Approvals** — Reviewer IDs, timestamps, and comments
6. **Related Documents** — Engineering drawings, procedures, LOPA documents

All artifacts must include `.meta.yaml` sidecars with SHA-256 checksums.

## Revision Control

This document is subject to configuration control. Changes require approval from Configuration Control Board.

**Revision History:**

| Revision | Date | Author | Description |
|----------|------|--------|-------------|
| 1.0.0 | 2025-10-30 | Configuration Control | Initial release |

---

*Document controlled under ATA 16 Change of Role governance framework*
