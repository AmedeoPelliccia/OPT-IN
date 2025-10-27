# Maintenance Planning Document (MPD) - Master Document
**Aircraft Type:** AMPEL360 Blended-Wing Body Hydrogen Aircraft  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Document ID:** MPD_Master-Document_rev1.0.0_20280620

---

## 1.0 Introduction

### 1.1 Purpose
This Maintenance Planning Document (MPD) translates the requirements of the Maintenance Review Board Report (MRBR) into actionable maintenance tasks for operators. It serves as the foundation for the operator's approved maintenance program and provides:
- Detailed task cards for each maintenance activity
- Resource requirements (personnel, tools, consumables)
- Task intervals and applicability
- References to Aircraft Maintenance Manual (AMM) procedures

### 1.2 Regulatory Basis
This MPD is developed in compliance with:
- **FAA:** 14 CFR Part 121.367, 121.368, 121.369
- **EASA:** Part-M, Part-145
- **MRBR:** MRBR_Master-Document_rev1.0.0_20280515

### 1.3 Document Structure
The MPD consists of:
1. **Master Document** (this document): Overview and guidance
2. **Scheduled Maintenance Tasks:** Individual task cards in `/scheduled_maintenance_tasks/`
3. **Zonal Inspection Program:** Zone diagrams and inspection task cards in `/zonal_inspection_program/`

---

## 2.0 Operator's Maintenance Program Development

### 2.1 Program Requirements
Each operator must develop an approved maintenance program by:
1. Adopting all MPD tasks or justifying variations
2. Establishing check packages (A-Check, C-Check, etc.)
3. Implementing a Reliability Program (see `PROC_Reliability-Program-Plan.md`)
4. Integrating with Digital Product Passport (ATA 95) for data recording

### 2.2 Task Grouping into Check Packages
Operators should group tasks into check packages based on:
- Task intervals
- Operational requirements (aircraft downtime)
- Maintenance facility capabilities

**Example Check Structure:**
- **A-Check:** 1000 FH / 6 Months
  - Zonal inspections
  - Hydrogen leak detection calibration
  - Fluid level checks
- **B-Check:** 2000 FH / 12 Months (light structural)
  - Battery capacity check
  - Wing leading edge inspection
  - Routine functional tests
- **C-Check:** 6000 FH / 36 Months (heavy structural)
  - Major structural inspections
  - Engine bearing inspections
  - Cryo-tank insulation inspection

### 2.3 Variations and Escalations
Operators may request variations based on:
- Operational environment (e.g., cold climate operations requiring more frequent inspections)
- Fleet reliability data showing different degradation patterns
- Advanced monitoring capabilities reducing inspection frequency

All variations require approval per `PROC_Maintenance-Program-Escalation-And-Revision.md`.

---

## 3.0 Scheduled Maintenance Tasks

### 3.1 Task Card Format
Each task card contains:
- **Task ID:** ATA chapter reference + sequential number
- **Description:** Clear statement of what is to be done
- **Interval:** Flight hours and/or calendar time
- **Maintenance Philosophy:** HT/OC/CM
- **Personnel Requirements:** Licenses and certifications
- **Man-Hours:** Estimated time to complete
- **Required GSE:** Ground Support Equipment list
- **Aircraft Condition:** Required aircraft state (powered, depowered, etc.)
- **Success Criteria:** Measurable outcomes
- **Source & Justification:** Reference to MRBR section

### 3.2 Task Card Index

| Task ID | Description | ATA | Interval | Man-Hours |
|---------|-------------|-----|----------|-----------|
| 24-33-01 | Solid-CO₂ Battery Capacity Check | 24 | 2000 FH / 12 Mo | 2.0 |
| 28-60-01 | Cryo-Tank Insulation Inspection | 28 | 6000 FH / 36 Mo | 6.0 |
| 53-10-01 | BWB Fuselage Structure NDT | 53 | 12,000 FH / 72 Mo | 40.0 |

**Full task cards are available in:** `/scheduled_maintenance_tasks/`

---

## 4.0 Zonal Inspection Program (ZIP)

### 4.1 Overview
The Zonal Inspection Program divides the aircraft into 15 distinct zones for general visual inspection. Each zone has specific inspection items focusing on:
- Structural condition
- Fluid leaks
- System discrepancies
- Cleanliness and FOD

### 4.2 Zone Definitions
**Master Document:** `ZONAL_Master-Diagrams-And-Tasks.md`  
**Location:** `/zonal_inspection_program/`

### 4.3 Zonal Inspection Interval
- **Typical Interval:** 1000 FH or 6 Months (A-Check level)
- **Variations:** Some zones may require more frequent inspection based on operational experience

---

## 5.0 Integration with Digital Systems

### 5.1 Digital Product Passport (ATA 95)
All maintenance actions shall be recorded in the Digital Product Passport, including:
- Task completion date, time, and location
- Measured parameters and test results
- Findings and corrective actions
- Technician identity and license numbers
- Component serial numbers and part numbers

### 5.2 Onboard Maintenance System (ATA 45)
The OMS provides real-time condition monitoring data that influences maintenance planning:
- Component health status
- Fault codes and diagnostic results
- Prognostics and remaining useful life (RUL) predictions

### 5.3 Model-Based Maintenance (ATA 92)
Predictive models analyze operational data to:
- Adjust maintenance intervals based on actual usage
- Predict component degradation trends
- Optimize maintenance resource allocation

---

## 6.0 Personnel and Training Requirements

### 6.1 Licensing Requirements
Maintenance tasks require specific licenses:
- **B1 License:** Mechanical systems (hydraulics, structures, landing gear)
- **B2 License:** Electrical/avionics systems (batteries, fuel cells, controls)
- **Specialized Training:** Hydrogen systems safety, cryogenic handling, composite repair

### 6.2 Ground Support Equipment (GSE) Certification
All GSE used for maintenance must be:
- Calibrated within validity period
- Approved for use on AMPEL360
- Operated by certified personnel

### 6.3 Safety Requirements
Special safety considerations for AMPEL360:
- **Hydrogen Safety:** All personnel working on ATA 28 systems must complete hydrogen safety training
- **Cryogenic Safety:** Proper PPE for working with LH2 systems
- **High Voltage Safety:** Qualified personnel for ATA 24 battery and fuel cell systems
- **Composite Dust:** Respiratory protection during composite machining/sanding

---

## 7.0 Technical Publications Cross-Reference

### 7.1 Related Documents
- **MRBR:** Maintenance Review Board Report (this MPD's source document)
- **AMM:** Aircraft Maintenance Manual (detailed procedures)
- **IPC:** Illustrated Parts Catalog (component part numbers)
- **SRM:** Structural Repair Manual (repair schemes)
- **WDM:** Wiring Diagram Manual (electrical troubleshooting)

### 7.2 ATA Chapter Cross-References
- **ATA 00:** General information and regulatory compliance
- **ATA 04:** Airworthiness limitations (life-limited parts)
- **ATA 05:** Time limits and maintenance checks (check structure)
- **ATA 45:** Onboard Maintenance System (condition monitoring)
- **ATA 92:** Model-Based Maintenance (predictive analytics)
- **ATA 95:** Digital Product Passport (data recording)

---

## 8.0 Reliability Program Integration

### 8.1 Reliability Monitoring
Operators shall establish a Reliability Program per `PROC_Reliability-Program-Plan.md` to monitor:
- Task effectiveness
- Component failure rates
- Mean time between failures (MTBF)
- Maintenance-induced defects

### 8.2 Program Adjustments
Based on reliability data, operators may propose:
- Interval extensions (if reliability exceeds expectations)
- Interval reductions (if reliability is below expectations)
- Task modifications or additions

All adjustments require regulatory approval.

---

## 9.0 Revision History

| Revision | Date | Description | Approved By |
|----------|------|-------------|-------------|
| 1.0.0 | 2025-10-27 | Initial Release | Chief Maintenance Officer |

---

## 10.0 Regulatory Approvals

| Authority | Approval Date | Reference |
|-----------|---------------|-----------|
| EASA | 2025-10-27 | EASA.21J.XXX |
| FAA | 2025-10-27 | FAA DOA Auth XXX |

---

**End of MPD Master Document**

*For detailed task cards, see: `/scheduled_maintenance_tasks/`*  
*For zonal inspection details, see: `/zonal_inspection_program/`*

*Cross-references: MRBR (source document), ATA_04, ATA_05, ATA_45, ATA_92, ATA_95*
