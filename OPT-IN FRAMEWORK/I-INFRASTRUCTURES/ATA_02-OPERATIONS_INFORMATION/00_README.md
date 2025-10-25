# ATA 02 - OPERATIONS INFORMATION (GROUND-BASED OPS)

## Overview

This directory contains all flight and ground operations information for the AMPEL360 aircraft. The structure adheres to the following governance principles:

## Governance Principles

### Controlled Metadata
Every artifact (`.md`, `.json`, etc.) is accompanied by a `.meta.yaml` sidecar file detailing its revision, effectivity, approvals, and a SHA256 checksum for integrity.

### Directory Governance
Each directory contains an `INDEX.meta.yaml` file that specifies the owner, approval status, and effective date for the enclosed set of documents.

### Data Integrity
All critical data packages for EFB use (performance, weight & balance) are cryptographically signed (`.sig` detached signature) and their hashes are published in the root `/checksums/SHA256SUMS.txt` manifest.

### Procedural Integrity
All FCOM Non-Normal Procedures (NNP) are linked one-to-one with their corresponding QRH checklist. The QRH page reference is included in the NNP footer.

### Cross-Referencing
Document footers contain explicit cross-references to related safety, monitoring, or procedural information (e.g., fire detection ATA codes, GSE interface documents).

### Canonical Source
The QRH is generated from a canonical source XML file. The Markdown document is a controlled build artifact optimized for GitHub readability.

# Hyperlinkable index — `I-INFRASTRUCTURES/ATA_02-OPERATIONS_INFORMATION`

* [`00_README.md`](00_README.md)
* [`INDEX.meta.yaml`](INDEX.meta.yaml)
* **checksums**

  * [`/checksums/SHA256SUMS.txt`](checksums/SHA256SUMS.txt)

## 01 — FCOM · Flight Crew Operating Manual

* [`/01-FCOM-Flight_Crew_Operating_Manual/INDEX.meta.yaml`](01-FCOM-Flight_Crew_Operating_Manual/INDEX.meta.yaml)
* **LIMITATIONS**

  * [`FCOM-LIMITATIONS_General.md`](01-FCOM-Flight_Crew_Operating_Manual/LIMITATIONS/FCOM-LIMITATIONS_General.md)
  * [`FCOM-LIMITATIONS_General.md.meta.yaml`](01-FCOM-Flight_Crew_Operating_Manual/LIMITATIONS/FCOM-LIMITATIONS_General.md.meta.yaml)
  * [`FCOM-LIMITATIONS_Operational_Minima.md`](01-FCOM-Flight_Crew_Operating_Manual/LIMITATIONS/FCOM-LIMITATIONS_Operational_Minima.md)
  * [`FCOM-LIMITATIONS_Operational_Minima.md.meta.yaml`](01-FCOM-Flight_Crew_Operating_Manual/LIMITATIONS/FCOM-LIMITATIONS_Operational_Minima.md.meta.yaml)
* **NORMAL_PROCEDURES**

  * *(files with `.meta.yaml` sidecars)* — [`/01-FCOM-Flight_Crew_Operating_Manual/NORMAL_PROCEDURES/`](01-FCOM-Flight_Crew_Operating_Manual/NORMAL_PROCEDURES/)
* **NON-NORMAL_PROCEDURES**

  * [`INDEX.meta.yaml`](01-FCOM-Flight_Crew_Operating_Manual/NON-NORMAL_PROCEDURES/INDEX.meta.yaml)
  * [`NNP_CB_RESET_POLICY.md`](01-FCOM-Flight_Crew_Operating_Manual/NON-NORMAL_PROCEDURES/NNP_CB_RESET_POLICY.md)
  * [`NNP_CB_RESET_POLICY.md.meta.yaml`](01-FCOM-Flight_Crew_Operating_Manual/NON-NORMAL_PROCEDURES/NNP_CB_RESET_POLICY.md.meta.yaml)
  * [`NNP_24-33_Battery_Thermal_Runaway.md`](01-FCOM-Flight_Crew_Operating_Manual/NON-NORMAL_PROCEDURES/NNP_24-33_Battery_Thermal_Runaway.md)
  * [`NNP_24-33_Battery_Thermal_Runaway.md.meta.yaml`](01-FCOM-Flight_Crew_Operating_Manual/NON-NORMAL_PROCEDURES/NNP_24-33_Battery_Thermal_Runaway.md.meta.yaml)
  * [`NNP_26-40_H2_Leak_In_Flight.md`](01-FCOM-Flight_Crew_Operating_Manual/NON-NORMAL_PROCEDURES/NNP_26-40_H2_Leak_In_Flight.md)
  * [`NNP_26-40_H2_Leak_In_Flight.md.meta.yaml`](01-FCOM-Flight_Crew_Operating_Manual/NON-NORMAL_PROCEDURES/NNP_26-40_H2_Leak_In_Flight.md.meta.yaml)
* **SYSTEM_DESCRIPTIONS**

  * [`SYS_42-60_QIS_Scheduler_Overview.md`](01-FCOM-Flight_Crew_Operating_Manual/SYSTEM_DESCRIPTIONS/SYS_42-60_QIS_Scheduler_Overview.md)
  * [`SYS_42-60_QIS_Scheduler_Overview.md.meta.yaml`](01-FCOM-Flight_Crew_Operating_Manual/SYSTEM_DESCRIPTIONS/SYS_42-60_QIS_Scheduler_Overview.md.meta.yaml)

## 02 — QRH · Quick Reference Handbook

* [`/02-QRH-Quick_Reference_Handbook/INDEX.meta.yaml`](02-QRH-Quick_Reference_Handbook/INDEX.meta.yaml)
* [`AMPEL360_QRH_Digital.md`](02-QRH-Quick_Reference_Handbook/AMPEL360_QRH_Digital.md)
* [`AMPEL360_QRH_Digital.md.meta.yaml`](02-QRH-Quick_Reference_Handbook/AMPEL360_QRH_Digital.md.meta.yaml)
* [`AMPEL360_QRH_Digital.sig`](02-QRH-Quick_Reference_Handbook/AMPEL360_QRH_Digital.sig)
* **source_data**

  * [`qrh_procedures.xml`](02-QRH-Quick_Reference_Handbook/source_data/qrh_procedures.xml)

## 03 — FPERF · Performance

* [`/03-FPERF-Performance/INDEX.meta.yaml`](03-FPERF-Performance/INDEX.meta.yaml)
* **data_packages**

  * [`manifest.meta.yaml`](03-FPERF-Performance/data_packages/manifest.meta.yaml)
  * [`takeoff_performance.json`](03-FPERF-Performance/data_packages/takeoff_performance.json)
  * [`takeoff_performance.json.sig`](03-FPERF-Performance/data_packages/takeoff_performance.json.sig)

## 04 — WBM · Weight and Balance

* [`/04-WBM-Weight_and_Balance/INDEX.meta.yaml`](04-WBM-Weight_and_Balance/INDEX.meta.yaml)
* **data**

  * [`basic_empty_weight_config.json`](04-WBM-Weight_and_Balance/data/basic_empty_weight_config.json)
  * [`basic_empty_weight_config.json.sig`](04-WBM-Weight_and_Balance/data/basic_empty_weight_config.json.sig)
  * [`cg_envelope_BWB.json`](04-WBM-Weight_and_Balance/data/cg_envelope_BWB.json)
  * [`cg_envelope_BWB.json.sig`](04-WBM-Weight_and_Balance/data/cg_envelope_BWB.json.sig)

## 05 — MEL · Minimum Equipment List

* [`/05-MEL-Minimum_Equipment_List/INDEX.meta.yaml`](05-MEL-Minimum_Equipment_List/INDEX.meta.yaml)
* [`CDL_Configuration_Deviation_List.md`](05-MEL-Minimum_Equipment_List/CDL_Configuration_Deviation_List.md)
* [`CDL_Configuration_Deviation_List.md.meta.yaml`](05-MEL-Minimum_Equipment_List/CDL_Configuration_Deviation_List.md.meta.yaml)
* [`NEF_Non_Essential_Furnishings.md`](05-MEL-Minimum_Equipment_List/NEF_Non_Essential_Furnishings.md)
* [`NEF_Non_Essential_Furnishings.md.meta.yaml`](05-MEL-Minimum_Equipment_List/NEF_Non_Essential_Furnishings.md.meta.yaml)

## 06 — Ground Operations Manual

* [`/06-GROUND_OPS-Ground_Operations_Manual/INDEX.meta.yaml`](06-GROUND_OPS-Ground_Operations_Manual/INDEX.meta.yaml)
* [`00-Training_&_PPE.md`](06-GROUND_OPS-Ground_Operations_Manual/00-Training_%26_PPE.md)
* [`00-Training_&_PPE.md.meta.yaml`](06-GROUND_OPS-Ground_Operations_Manual/00-Training_%26_PPE.md.meta.yaml)
* **01-Refueling_and_Offload**

  * **LH2_Cryogenic_Refueling**

    * [`INDEX.meta.yaml`](06-GROUND_OPS-Ground_Operations_Manual/01-Refueling_and_Offload/LH2_Cryogenic_Refueling/INDEX.meta.yaml)
    * [`LH2_Area_Monitoring_O2_H2_Sensors.md`](06-GROUND_OPS-Ground_Operations_Manual/01-Refueling_and_Offload/LH2_Cryogenic_Refueling/LH2_Area_Monitoring_O2_H2_Sensors.md)
    * [`LH2_Area_Monitoring_O2_H2_Sensors.md.meta.yaml`](06-GROUND_OPS-Ground_Operations_Manual/01-Refueling_and_Offload/LH2_Cryogenic_Refueling/LH2_Area_Monitoring_O2_H2_Sensors.md.meta.yaml)


## Document Types

### Flight Crew Operating Manual (FCOM)
The primary "how-to" guide for pilots. Contains detailed system descriptions from an operational perspective, plus all normal, abnormal, and emergency procedures.

**Critically important and complex.** Includes entirely new sections on:
- **Energy Orchestration:** Procedures for selecting and monitoring modes (e.g., max efficiency, max power boost, silent taxi).
- **Hydrogen System Management:** Pre-flight checks, in-flight monitoring of cryogenic tank pressure and temperature, and fuel cell operation.
- **CO₂ Capture System:** Procedures for activating, monitoring, and troubleshooting the capture and liquefaction process.
- **BWB Handling:** Specific techniques for taxi, takeoff, and landing, accounting for unique ground effect and control response characteristics.

### Quick Reference Handbook (QRH)
A condensed, checklist-style version of the FCOM's non-normal procedures, designed for rapid use in the cockpit during emergencies.

Contains novel, non-traditional emergency checklists such as:
- `H2 LEAK ON GROUND / IN FLIGHT`
- `SOLID-CO2 BATTERY THERMAL RUNAWAY`
- `POWERTRAIN ORCHESTRATOR FAULT`
- `CO2 CAPTURE SYS LEAK / OVERPRESS`

### Performance Manual (FPERF)
Contains all certified performance data for calculating takeoff, cruise, and landing performance under various conditions.

**Multi-dimensional performance data** depends on:
- Battery State of Charge (SOC)
- Available H₂ quantity and fuel cell output
- Selected energy orchestration mode

### Weight and Balance Manual (WBM)
Contains all data and procedures for calculating the aircraft's weight and center of gravity (CG).

**Key operational challenge** accounting for:
- **BWB Loading:** Unique and sensitive loading requirements
- **Multiple Consumables:** SAF, liquid H₂ (LH₂), and captured liquid CO₂
- **In-flight CG Shift:** Active FMS calculation as fuels are consumed and CO₂ is stored

### Master Minimum Equipment List (MMEL) / Minimum Equipment List (MEL)
Specifies which aircraft systems or components may be inoperative for dispatch.

Includes unique dispatch limitations for:
- **Fuel Cell Stacks:** Minimum number required for dispatch
- **Battery Modules:** Minimum operative modules and required SOC
- **CO₂ Capture System:** Dispatch with system inoperative
- **IMA Modules:** Relief for quantum-inspired OS failures

### Ground Operations & Handling Manual
Primary reference for ground crews covering towing, parking, mooring, and servicing.

Contains mission-critical procedures:
- **Cryogenic H₂ Refueling:** Safety protocols, GSE interface, thermal stabilization
- **Liquid CO₂ Offloading:** GSE interface for CO₂ removal
- **BWB Ground Maneuvering:** Towing and gate alignment diagrams

## Related ATA Chapters

- ATA 03: SUPPORT INFORMATION (GROUND SUPPORT EQUIPMENT - GSE)
- ATA 10: PARKING, MOORING, STORAGE & RETURN TO SERVICE
- ATA 13: HARDWARE AND GENERAL TOOLS

## Navigation

[↑ I-INFRASTRUCTURES](../README.md) | [🏠 Repository Root](../../../README.md)

---

*Part of the AMPEL360 OPT-IN Framework - I-INFRASTRUCTURES*
