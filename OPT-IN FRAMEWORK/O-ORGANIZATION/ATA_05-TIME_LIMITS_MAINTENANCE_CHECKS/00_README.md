# ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS

**Purpose:**  
This chapter defines the operator's approved scheduled maintenance program. It takes the individual maintenance requirements from the Maintenance Planning Document (MPD in ATA 01) and the mandatory limitations from the Airworthiness Limitations Section (ALS in ATA 04) and organizes them into logical, scheduled work packages (e.g., A-Checks, C-Checks).

---

## Governance & Purpose

**Operational Scheduling:** This is the master schedule of maintenance. It groups hundreds of individual tasks into efficient, recurring checks to minimize downtime.

**Regulatory Approval:** The maintenance program defined in this chapter must be approved by the operator's National Aviation Authority (NAA).

**Traceability Hub:** This chapter's core function is to provide a clear, auditable trail showing that every requirement from ATA 01 and ATA 04 is accomplished within its specified interval.

**Program Management:** It contains the procedures for managing the execution of the maintenance program, including variations and tracking.

---

## Structure

- [01-MAINTENANCE_PROGRAM_MANUAL](01-MAINTENANCE_PROGRAM_MANUAL/)  
  Maintenance Program Manual (MPM) with organized check packages (A/C/S).

- [02-TRACEABILITY_AND_COMPLIANCE](02-TRACEABILITY_AND_COMPLIANCE/)  
  Traceability matrices linking MPD/ALS tasks to check packages.

- [03-PROGRAM_CUSTOMIZATION_AND_DEVIATIONS](03-PROGRAM_CUSTOMIZATION_AND_DEVIATIONS/)  
  Procedures for program deviations and approved customizations.

---

## Governance (minimal, enforceable)

- **Regulatory basis:** NAA-approved program. ALS items are non-escalable.
- **Intervals:** Defined per package; tolerance explicit:
  ```yaml
  interval: { basis: FH|FC|CAL, value: <int>, tolerance: { plus: <int>, minus: <int> } }
  ```

---

## Core Principles

1. **Complete Coverage**  
   Every task from ATA 01 (MPD) and ATA 04 (ALS) must appear in at least one check package.

2. **Audit Traceability**  
   The traceability matrix (`TRACE_Matrix-MPD-ALS-to-Checks.csv`) provides the linkage from source requirement to accomplishment.

3. **Interval Management**  
   All intervals are expressed in Flight Hours (FH), Flight Cycles (FC), or Calendar (CAL) with explicit tolerance.

4. **Regulatory Compliance**  
   Maintenance program requires NAA approval. Changes must be submitted through formal deviation request process.

---

## Related Documents

| File | Description |
| :--- | :--- |
| [`MPM_Master-Document_rev1.0.0_20280701.md`](01-MAINTENANCE_PROGRAM_MANUAL/MPM_Master-Document_rev1.0.0_20280701.md) | Master Maintenance Program Manual |
| [`A-CHECK_Program-Definition.md`](01-MAINTENANCE_PROGRAM_MANUAL/01-A-CHECKS/A-CHECK_Program-Definition.md) | A-Check program overview and philosophy |
| [`C-CHECK_Program-Definition.md`](01-MAINTENANCE_PROGRAM_MANUAL/02-C-CHECKS/C-CHECK_Program-Definition.md) | C-Check program overview and philosophy |
| [`S-CHECK_Program-Definition.md`](01-MAINTENANCE_PROGRAM_MANUAL/03-STRUCTURAL_CHECKS_S-CHECKS/S-CHECK_Program-Definition.md) | Structural Check program overview |
| [`TRACE_Matrix-MPD-ALS-to-Checks.csv`](02-TRACEABILITY_AND_COMPLIANCE/TRACE_Matrix-MPD-ALS-to-Checks.csv) | Complete traceability matrix |
| [`PROC_Program-Deviation-Request.md`](03-PROGRAM_CUSTOMIZATION_AND_DEVIATIONS/PROC_Program-Deviation-Request.md) | Program deviation request procedure |

---

## Validation and Audit Controls

* **Traceability Verification:** Automated checks ensure all MPD/ALS tasks are referenced in check packages.
* **Interval Compliance:** CI validation confirms all intervals match approved limits.
* **Metadata Integrity:** All work packages have `.meta.yaml` sidecars with checksums.
* **Audit Readiness:** Complete revision history maintained in version control.

---

**Cross-references:** 
- [ATA 01 - MAINTENANCE POLICY INFORMATION](../ATA%2001%20-%20MAINTENANCE%20POLICY%20INFORMATION/README.md) (MPD source)
- [ATA 04 - AIRWORTHINESS LIMITATIONS](../ATA%2004%20-%20AIRWORTHINESS%20LIMITATIONS/README.md) (ALS source)
- [ATA 12 - SERVICING](../../P-PROGRAM/ATA%2012%20-%20SERVICING/README.md) (Servicing procedures)
- [ATA 45 - ONBOARD MAINTENANCE SYSTEMS](../../T-TECHNOLOGY%20(AMEDEOPELLICCIA%20-%20ON%20BOARD%20SYS)/I2-INFORMATION&INTELLIGENCE/ATA%2045%20-%20ONBOARD%20MAINTENANCE%20SYSTEMS%20(OMS)/README.md) (OMS)

---

## Navigation

[↑ O-ORGANIZATION](../README.md)

### Related Sections

- [ATA_00-GENERAL](../ATA_00-GENERAL/README.md)
- [ATA_01-MAINTENANCE_POLICY_INFORMATION](../ATA_01-MAINTENANCE_POLICY_INFORMATION/README.md)
- [ATA_04-AIRWORTHINESS_LIMITATIONS](../ATA_04-AIRWORTHINESS_LIMITATIONS/README.md)
- [ATA_18-VIBRATION_AND_NOISE_ANALYSIS](../ATA_18-VIBRATION_AND_NOISE_ANALYSIS/README.md)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
