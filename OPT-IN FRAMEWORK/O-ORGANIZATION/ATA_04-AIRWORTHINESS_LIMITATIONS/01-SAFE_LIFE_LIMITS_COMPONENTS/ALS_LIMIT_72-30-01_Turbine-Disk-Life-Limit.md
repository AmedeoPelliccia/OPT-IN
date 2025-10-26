# ALS LIMIT 72-30-01: Turbine Disk Life Limit

**Document Type:** Airworthiness Limitation - Safe Life Limit  
**Revision:** 1.0.0  
**Effective Date:** 2028-04-01  
**Supersedes:** None

---

## 1.0 Scope

This Airworthiness Limitation defines the mandatory safe-life limit for the high-pressure turbine disk in the AMPEL360 hydrogen fuel cell auxiliary power unit turbine.

## 2.0 Applicability

- **Aircraft Type:** AMPEL360-BWB-H2
- **Manufacturer Serial Numbers:** ALL
- **Part Number:** TRB-HP-DISK-360-01
- **Component:** High-Pressure Turbine Disk (Stage 1)
- **System:** ATA 72 - Engine

## 3.0 Limitation

### 3.1 Life Limit

**The high-pressure turbine disk (Stage 1) MUST be retired from service upon reaching 25,000 flight cycles.**

- **Basis:** Flight Cycles (FC)
- **Limit:** 25,000 FC
- **Tolerance:** +0 / -0 (Zero tolerance)

### 3.2 No Extension Permitted

This life limit represents the safe-life limit determined through:
- Fracture mechanics analysis
- Full-scale fatigue testing
- Probabilistic risk assessment

The limit **CANNOT** be exceeded without:
1. New certification by EASA and FAA
2. Substantiating test data
3. Revised risk assessment demonstrating equivalent safety

## 4.0 Compliance Tracking

### 4.1 Digital Product Passport (DPP)

Compliance tracking is performed through:
- **Aircraft DPP:** Tracks total flight cycles per ATA 95
- **Component DPP:** Individual turbine disk serial number tracking
- **Automated Alerts:** Warnings at 23,750 FC (95%) and 24,688 FC (98.75%)

### 4.2 Maintenance Action

Upon reaching the life limit, the turbine disk must be:
1. Removed from service during scheduled maintenance
2. Marked as "LIFE-EXPIRED - SCRAP ONLY"
3. Destroyed per approved procedures (sectioning required)
4. Replacement installed with full traceability to DPP

## 5.0 Inspection Requirements

### 5.1 Pre-Life-Limit Inspections

Prior to reaching the life limit, the following inspections are required:
- **At 15,000 FC:** Borescope inspection per AMM 72-30-00-600-001
- **At 20,000 FC:** Enhanced borescope + fluorescent penetrant inspection per AMM 72-30-00-600-002

### 5.2 Defect Reporting

Any cracks, defects, or anomalies found during inspection must be:
- Immediately reported to the Type Certificate Holder
- Documented in the DPP system
- Investigated per the Service Difficulty Reporting process

## 6.0 Certification Basis

This limitation is established in accordance with:
- **CS 25.571** - Damage-tolerance and fatigue evaluation of structure
- **CS-E 520** - Turbine, compressor, fan, and turbosupercharger rotors
- **FAA AC 33.14-1** - Damage Tolerance for High Energy Turbine Engine Rotors
- **Source Report:** ENG-RPT-72-030 "HP Turbine Disk Low Cycle Fatigue Analysis"

## 7.0 Approval Authority

This Airworthiness Limitation has been approved by:
- **EASA:** Approved on 2028-03-15 (Ref: EASA.21.J.XXX)
- **FAA:** Approved on 2028-03-20 (Ref: FAA-ALS-XXX-2028)

## 8.0 Related Documentation

- **AMM Task:** 72-30-00-710-001 - Turbine Disk Removal/Installation
- **AMM Task:** 72-30-00-600-001 - Turbine Disk Borescope Inspection
- **AMM Task:** 72-30-00-600-002 - Turbine Disk Fluorescent Penetrant Inspection
- **IPC:** 72-30-01 - Turbine Section Parts List
- **Engineering Report:** ENG-RPT-72-030

## 9.0 Revision History

| Revision | Date | Description | Approved By |
|:---------|:-----|:------------|:------------|
| 1.0.0 | 2028-04-01 | Initial release | EASA, FAA |

---

**CRITICAL WARNING:** This component operates under extreme stress and temperature conditions. Exceeding the life limit can result in catastrophic uncontained failure with potentially fatal consequences. Non-compliance is a serious safety violation.

**Document ID:** ALS_LIMIT_72-30-01  
**Checksum:** See accompanying .meta.yaml file  
**Digital Signature:** Required per EASA Part 21 and FAA Order 8110.4C
