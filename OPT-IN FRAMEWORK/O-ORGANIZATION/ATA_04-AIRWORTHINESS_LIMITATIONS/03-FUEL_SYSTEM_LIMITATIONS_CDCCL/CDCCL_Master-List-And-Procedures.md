# CDCCL Master List and Procedures

**Document Type:** Critical Design Configuration Control Limitations  
**Revision:** 1.0.0  
**Effective Date:** 2028-04-01  
**Supersedes:** None

---

## 1.0 Scope

This document defines the Critical Design Configuration Control Limitations (CDCCL) for the AMPEL360 aircraft fuel system. These limitations identify specific design features that **MUST** be maintained to prevent fuel tank ignition sources.

## 2.0 Applicability

- **Aircraft Type:** AMPEL360-BWB-H2
- **Manufacturer Serial Numbers:** ALL
- **System:** ATA 28 - Fuel Systems (including hydrogen storage)

## 3.0 Regulatory Basis

CDCCL is required by:
- **CS 25.981** - Fuel Tank Ignition Prevention
- **FAA SFAR 88** - Fuel Tank System Fault Tolerance Evaluation
- **EASA Part 26** - Design Changes to Fuel Tank Systems

## 4.0 Fundamental Principles

### 4.1 Mandatory Maintenance

All CDCCL features **MUST** be maintained during:
- Routine maintenance
- Modifications
- Repairs
- Component replacement
- System troubleshooting

### 4.2 Zero Tolerance

Any deviation from CDCCL requirements is **NOT PERMITTED** without:
1. Formal engineering evaluation
2. Risk assessment
3. Approval from Type Certificate Holder
4. Acceptance by airworthiness authority (EASA/FAA)

### 4.3 Verification Requirements

All CDCCL items must be verified:
- **After any maintenance** in the CDCCL-affected area
- **During scheduled inspections** as specified
- **Before aircraft return to service**

## 5.0 CDCCL Master List

### 5.1 Table Format Explanation

| Column | Description |
|:-------|:------------|
| **CDCCL ID** | Unique identifier for each CDCCL item |
| **ATA** | ATA chapter reference |
| **Component/Area** | Affected component or area |
| **Feature to be Maintained** | Specific design feature requirement |
| **Tooling PN** | Special tooling part number (if applicable) |
| **Material Spec** | Material specification (if applicable) |
| **Verification Step** | How to verify compliance |
| **AMM Task** | Aircraft Maintenance Manual task reference |
| **AMM_Link_OK** | Verification that AMM task is current (Y/N) |

### 5.2 AMPEL360 CDCCL Items

| CDCCL ID | ATA | Component/Area | Feature to be Maintained | Tooling PN | Material Spec | Verification Step | AMM Task | AMM_Link_OK |
|:---|:---|:---|:---|:---|:---|:---|:---|:---:|
| **CDCCL-001** | 28-42 | Fuel Pump Wiring | Separation distance > 25mm from structure. | `AP360-T015` | N/A | Measure separation | `28-42-11` | Y |
| **CDCCL-002** | 28-42 | Fuel Pump Mounting | Bonding jumper installed at pump mounting flange. | N/A | `AS5211/6` | Verify bonding strap present | `28-42-12` | Y |
| **CDCCL-003** | 28-60 | H₂ Tank Bonding Straps | Bonding resistance < 0.001 Ohms. | `AP360-T008` | N/A | 4-wire resistance check | `28-60-15` | Y |
| **CDCCL-004** | 28-60 | H₂ Tank Insulation | Vacuum-insulated double-wall maintained. No breaches. | N/A | N/A | Vacuum pressure check < 10⁻⁵ mbar | `28-60-20` | Y |
| **CDCCL-005** | 28-30 | Fuel Quantity Indicating System (FQIS) Probes | FQIS probes must maintain > 10mm clearance from tank walls. | `AP360-T022` | N/A | Measure clearance with go/no-go gauge | `28-30-35` | Y |
| **CDCCL-006** | 28-11 | Fuel Tank Vent System | Flame arrestor screens installed in all vent outlets. | N/A | `AMS 5511` | Visual inspection + mesh count verification | `28-11-40` | Y |
| **CDCCL-007** | 28-44 | Fuel System Electrical Connectors | Only approved sparkproof connectors permitted in fuel tank area. | N/A | `MIL-DTL-38999` | Verify connector part number | `28-44-25` | Y |
| **CDCCL-008** | 28-50 | Fuel Tank Access Panels | Conductive sealant applied to all fasteners. | N/A | `PR-1776` | Visual inspection + resistance check < 1 Ohm | `28-50-10` | Y |
| **CDCCL-009** | 28-24 | Fuel Pump Impeller Material | Impeller must be non-sparking material (aluminum bronze). | N/A | `SAF 2205` | Verify material cert on replacement | `28-24-31` | Y |
| **CDCCL-010** | 28-60 | H₂ Tank Pressure Relief | Pressure relief valve set to 6.0 ± 0.2 bar. | `AP360-T050` | N/A | Pressure test per AMM | `28-60-45` | Y |

### 5.3 CDCCL Items Under Development

The following CDCCL items are being evaluated for inclusion in Revision 2.0.0:
- **CDCCL-011:** H₂ leak detection system calibration requirements
- **CDCCL-012:** Fuel cell membrane electrode assembly (MEA) grounding
- **CDCCL-013:** Cryogenic valve bonding and grounding

## 6.0 Maintenance Procedures

### 6.1 Pre-Maintenance Verification

**Before performing any maintenance in a CDCCL area:**
1. Review applicable CDCCL items from the master list
2. Ensure required tooling and materials are available
3. Brief personnel on CDCCL requirements
4. Prepare verification checklist

### 6.2 During Maintenance

**Maintain CDCCL features:**
- Do not modify, remove, or relocate CDCCL-controlled items without engineering approval
- Use only approved materials and parts
- Follow specified torque, clearance, and installation requirements
- Document any discrepancies immediately

### 6.3 Post-Maintenance Verification

**After completing maintenance:**
1. Perform all verification steps from CDCCL master list
2. Document verification results in aircraft maintenance log
3. Update DPP system with CDCCL verification status
4. Obtain sign-off from qualified inspector

### 6.4 Verification Documentation

All CDCCL verifications must be recorded with:
- Date and time
- Mechanic name and certification number
- Inspector name and certification number
- Verification results (Pass/Fail)
- Any corrective actions taken

## 7.0 Training Requirements

### 7.1 Mandatory Training

All personnel performing maintenance in CDCCL areas must complete:
- **Course:** AMPEL360-CDCCL-101 "Fuel System CDCCL Awareness"
- **Frequency:** Initial + Annual recurrent
- **Duration:** 4 hours
- **Certification:** Required for sign-off authority

### 7.2 Training Topics

- Regulatory basis for CDCCL
- AMPEL360 CDCCL master list
- Verification procedures
- Documentation requirements
- Consequences of non-compliance

## 8.0 Compliance Tracking

### 8.1 Digital Product Passport (DPP) Integration

CDCCL compliance is tracked via:
- **Real-time verification logging** in DPP system
- **Automated alerts** for overdue verifications
- **Audit trail** of all CDCCL-related maintenance

### 8.2 Reporting

**Monthly CDCCL compliance reports** are generated showing:
- Number of CDCCL verifications performed
- Any non-compliances found and corrected
- Overdue verifications

## 9.0 Non-Compliance Reporting

### 9.1 Immediate Actions

If a CDCCL non-compliance is discovered:
1. **Ground aircraft immediately**
2. **Notify shift supervisor and quality assurance**
3. **Initiate non-conformance report**
4. **Contact Type Certificate Holder engineering**

### 9.2 Investigation

All CDCCL non-compliances require:
- Root cause analysis
- Risk assessment
- Corrective action plan
- Preventive action plan

### 9.3 Authority Notification

CDCCL non-compliances must be reported to airworthiness authorities per:
- **EASA Part 21.3** - Service Difficulty Reporting
- **FAA 14 CFR 21.3** - Reporting of Failures, Malfunctions, and Defects

## 10.0 Revision History

| Revision | Date | Description | Approved By |
|:---------|:-----|:------------|:------------|
| 1.0.0 | 2028-04-01 | Initial release with 10 CDCCL items | EASA, FAA |

---

**CRITICAL:** CDCCL non-compliance can result in fuel tank ignition and catastrophic aircraft loss. All personnel must understand and follow these requirements without exception.

**Document ID:** CDCCL_Master-List-And-Procedures  
**Approval:** EASA Type Certificate Holder Approval Required  
**Next Review:** 2029-04-01 (Annual)
