# Maintenance Program Manual (MPM)
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Document ID:** MPM_Master-Document

---

## 1.0 Introduction

### 1.1 Purpose
This Maintenance Program Manual (MPM) defines the scheduled maintenance program for the AMPEL360 aircraft. It consolidates requirements from:
- **Maintenance Planning Document (MPD)** - ATA 01
- **Airworthiness Limitations Section (ALS)** - ATA 04

And organizes them into executable, recurring maintenance checks.

### 1.2 Scope
This manual covers:
- A-Checks (light maintenance checks)
- C-Checks (heavy maintenance checks)
- S-Checks (structural inspection checks)

### 1.3 Regulatory Basis
- FAA AC 120-16: "Air Carrier Maintenance Programs"
- EASA Part-M: "Continuing Airworthiness Requirements"
- ATA MSG-3: "Operator/Manufacturer Scheduled Maintenance Development"

### 1.4 Approval
This maintenance program is approved by the National Aviation Authority (NAA) and must be followed by all operators of AMPEL360 aircraft.

---

## 2.0 Maintenance Check Philosophy

### 2.1 Check Structure
The maintenance program is structured into three primary check types:

**A-Checks (Light Checks)**
- Interval: 1000-2000 Flight Hours (FH)
- Duration: 8-16 hours
- Location: Line maintenance facility
- Scope: Visual inspections, operational checks, servicing

**C-Checks (Heavy Checks)**
- Interval: 4000-8000 Flight Hours (FH)
- Duration: 1-2 weeks
- Location: Heavy maintenance facility
- Scope: Detailed inspections, component replacements, major servicing

**S-Checks (Structural Checks)**
- Interval: 10000+ Flight Cycles (FC)
- Duration: 2-4 weeks
- Location: Heavy maintenance facility with NDT capability
- Scope: Structural inspections, fatigue critical items, ALS compliance

### 2.2 Interval Basis
Tasks are scheduled based on:
- **FH (Flight Hours):** Cumulative aircraft flight hours
- **FC (Flight Cycles):** Cumulative takeoff/landing cycles
- **CAL (Calendar):** Time-based (days/months) since last accomplishment

### 2.3 Tolerance Policy
All intervals include explicit tolerance:

```yaml
interval:
  basis: FH
  value: 1000
  tolerance:
    plus: 100    # Can be performed up to 100 FH late
    minus: 0     # Must not be performed early without approval
```

---

## 3.0 Work Package Organization

### 3.1 A-Check Packages
| Package ID | Interval (FH) | Duration | Location |
| :--- | :--- | :--- | :--- |
| A-CHECK_Work-Package-A01 | 1000 | 12 hours | Line maintenance |
| A-CHECK_Work-Package-A02 | 2000 | 16 hours | Line maintenance |

### 3.2 C-Check Packages
| Package ID | Interval (FH) | Duration | Location |
| :--- | :--- | :--- | :--- |
| C-CHECK_Work-Package-C01 | 4000 | 10 days | Heavy maintenance |

### 3.3 S-Check Packages
| Package ID | Interval (FC) | Duration | Location |
| :--- | :--- | :--- | :--- |
| S-CHECK_Work-Package-S01 | 10000 | 14 days | Heavy maintenance + NDT |
| S-CHECK_Work-Package-S02 | 20000 | 21 days | Heavy maintenance + NDT |

---

## 4.0 Task Traceability

### 4.1 Source Documents
All tasks in this maintenance program originate from:
- MPD (Maintenance Planning Document) - ATA 01
- ALS (Airworthiness Limitations Section) - ATA 04

### 4.2 Traceability Matrix
The complete traceability from source task to check package is maintained in:
`TRACE_Matrix-MPD-ALS-to-Checks.csv`

### 4.3 Coverage Verification
Automated CI checks verify:
1. All MPD tasks are assigned to at least one check package
2. All ALS tasks are assigned to at least one check package
3. No tasks are duplicated across packages (unless intentional)
4. All intervals comply with source document requirements

---

## 5.0 Program Execution

### 5.1 Scheduling
Maintenance scheduling is based on aircraft utilization:
- Flight Hours (FH) tracked via Flight Data Recording
- Flight Cycles (FC) tracked via Flight Data Recording
- Calendar days tracked via maintenance tracking system

### 5.2 Pre-Check Planning
Before each check, the following must be verified:
- Aircraft is within interval tolerance
- Required parts and materials are available
- Required Ground Support Equipment (GSE) is available
- Qualified personnel are scheduled
- Hangar space is reserved (for C/S checks)

### 5.3 Execution
Each check package includes:
- Complete task list with AMM references
- Sign-off requirements for each task
- Special tooling requirements
- Estimated labor hours

### 5.4 Post-Check Release
Aircraft can only be released to service when:
- All tasks in the package are completed
- All findings are resolved or deferred per MEL
- Aircraft technical log is updated
- Maintenance tracking system is updated

---

## 6.0 Program Customization

### 6.1 Deviation Requests
Operators may request deviations from this program through the formal process defined in:
`PROC_Program-Deviation-Request.md`

### 6.2 Approved Deviations
All approved deviations are tracked in:
`LOG_Approved-Deviations.csv`

### 6.3 NAA Approval Required
Any deviation that affects:
- ALS task intervals or content
- Safety-critical inspection intervals
- Structural inspection requirements

Must be approved by the NAA before implementation.

---

## 7.0 References

### 7.1 Source Documents
- [ATA 01 - MAINTENANCE POLICY INFORMATION](../../../O-ORGANIZATION/ATA%2001%20-%20MAINTENANCE%20POLICY%20INFORMATION/README.md): Maintenance Planning Document (MPD)
- [ATA 04 - AIRWORTHINESS LIMITATIONS](../../../O-ORGANIZATION/ATA%2004%20-%20AIRWORTHINESS%20LIMITATIONS/README.md): Airworthiness Limitations Section (ALS)
- [ATA 12 - SERVICING](../../../P-PROGRAM/ATA%2012%20-%20SERVICING/README.md): Servicing procedures

### 7.2 Related Documents
- [AMM (Aircraft Maintenance Manual)](../../../T-TECHNOLOGY%20(AMEDEOPELLICCIA%20-%20ON%20BOARD%20SYS)/README.md) - for task procedures
- IPC (Illustrated Parts Catalog) - for part numbers
- SRM (Structural Repair Manual) - for structural repairs
- TSM (Troubleshooting Manual) - for fault isolation

### 7.3 Regulatory References
- FAA AC 120-16
- EASA Part-M
- ATA MSG-3

---

## 8.0 Revision History

| Revision | Date | Description | Approved By |
| :--- | :--- | :--- | :--- |
| 1.0.0 | 2025-10-27 | Initial release | NAA |

---

*Cross-references: [ATA 01](../../../O-ORGANIZATION/ATA%2001%20-%20MAINTENANCE%20POLICY%20INFORMATION/README.md) (MPD), [ATA 04](../../../O-ORGANIZATION/ATA%2004%20-%20AIRWORTHINESS%20LIMITATIONS/README.md) (ALS), [ATA 12](../../../P-PROGRAM/ATA%2012%20-%20SERVICING/README.md) (Servicing), [ATA 45](../../../T-TECHNOLOGY%20(AMEDEOPELLICCIA%20-%20ON%20BOARD%20SYS)/I2-INFORMATION&INTELLIGENCE/ATA%2045%20-%20ONBOARD%20MAINTENANCE%20SYSTEMS%20(OMS)/README.md) (OMS)*
