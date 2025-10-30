# DESC_31-02-01 — FDR System Description

**Document ID:** DESC_31-02-01  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Chapter:** ATA 31 - Indicating & Recording Systems (Recording Function)

**Related Documents:** [PROC_31-02-01](PROC_31-02-01_FDR-Download-And-Preservation-Procedure.md) • [DATA_31-02-02](DATA_31-02-02_Mandatory-FDR-Parameters.csv) • [TESTPLAN_31-05-01](../05-QUALIFICATION_AND_TEST/TESTPLAN_31-05-01_FDR-CVR-Qualification-Plan.md)

## 1.0 Purpose

This document provides a comprehensive technical description of the Flight Data Recorder (FDR) system for AMPEL360 aircraft, including system architecture, hardware/software specifications, data acquisition, parameter mapping, and crash survivability features.

## 2.0 System Overview

### 2.1 FDR Unit Specifications

- **Manufacturer:** [TBD - specify manufacturer]
- **Part Number:** FDR-PN-100
- **TSO Compliance:** [TSO-C124a](https://www.faa.gov/aircraft/air_cert/design_approvals/tso/aircraft/)
- **Software Baseline:** Version 1.2.3 (SHA-256: [TBD])
- **Recording Capacity:** 25 hours minimum
- **Data Format:** [ARINC 717](https://www.aviation-ia.com/arinc-standards)
- **Crash Survivability:** Per TSO-C124a requirements

### 2.2 Functional Description

The FDR system continuously records flight parameters from aircraft systems via multiple data bus interfaces. Recorded data is stored in crash-protected solid-state memory capable of surviving impact forces, fire, and deep-sea immersion. The system ensures data integrity through redundant storage and continuous self-monitoring.

## 3.0 System Architecture

### 3.1 Hardware Components

1. **FDR Unit (Crash-Protected)**
   - Crash-protected memory module (25+ hour capacity)
   - Signal conditioning and acquisition electronics
   - Power supply with backup battery (10+ minutes)
   - Underwater locator beacon (ULB) interface
   - Data interface module

2. **Data Bus Interfaces**
   - ARINC 429 inputs (multiple channels)
   - ARINC 717 interface
   - AFDX/ARINC 664 interface
   - Discrete analog/digital inputs
   - Time synchronization input (GPS/GNSS)

3. **Installation Hardware**
   - Shock mount assembly
   - Electrical connectors (crash-protected)
   - Mounting brackets (certified to primary structure)

### 3.2 Software Architecture

- **Operating System:** Real-time embedded OS
- **Data Acquisition Module:** Handles all input interfaces
- **Parameter Encoding Module:** ARINC 717 frame generation
- **Storage Management:** Circular buffer with overwrite protection
- **Built-In Test (BIT):** Continuous self-monitoring
- **Download Interface:** USB/Ethernet extraction interface

**Software Assurance:** DAL-B per [DO-178C](https://www.rtca.org/) (see REC-SAS-31-001)

## 4.0 Parameter Recording

### 4.1 Mandatory Parameters

The FDR records all mandatory parameters per [ICAO Annex 6](https://www.icao.int/safety/airnavigation/NationalityMarks/annexes_booklet_en.pdf) and [FAA 14 CFR §121.344](https://www.ecfr.gov/current/title-14/section-121.344) requirements. See **[DATA_31-02-02_Mandatory-FDR-Parameters.csv](DATA_31-02-02_Mandatory-FDR-Parameters.csv)** for complete list including:

- Flight control positions (pitch, roll, yaw)
- Engine parameters (N1, N2, EPR, EGT, fuel flow)
- Air data (airspeed, altitude, vertical speed, AOA, TAT)
- Attitude (pitch, roll, heading)
- Navigation (GPS position, groundspeed, track)
- System status (warnings, mode annunciations)

Total: 88+ parameters

### 4.2 Sampling Rates

- **High-rate parameters (8-16 Hz):** Flight control surfaces, attitude
- **Medium-rate parameters (1-4 Hz):** Engine, air data, navigation
- **Low-rate parameters (0.25-1 Hz):** System status, discrete events

### 4.3 Data Format

**[ARINC 717](https://www.aviation-ia.com/arinc-standards) Frame Structure:**
- Frame rate: 1 frame/second (adjustable)
- Subframe rate: 4 subframes/second
- Word size: 12 bits
- Encoding: Binary, BCD, BNR per ARINC specification

## 5.0 Environmental Qualification

### 5.1 DO-160 Compliance

The FDR unit is qualified to RTCA DO-160 environmental categories:

- **Temperature:** -55°C to +70°C (operating), Category A2
- **Altitude:** 0 to 55,000 ft, Category A
- **Vibration:** Category U (severe vibration)
- **Shock:** Category B (crash shock 3,400g for 6.5ms)
- **Fire Resistance:** 1,100°C for 1 hour minimum
- **Water Immersion:** 20,000 ft depth for 30 days
- **EMI/EMC:** Categories B (per sections 15-25)

Evidence: REC-ENV-31-001

### 5.2 Crash Survivability

The crash-protected memory module survives:
- **Impact:** 3,400g for 6.5ms (half-sine pulse)
- **Penetration:** 500 lb steel pin impact
- **Static Crush:** 5,000 lb for 5 minutes
- **Fire:** 1,100°C ±80°C for 1 hour
- **Deep Sea:** 20,000 ft (6 km) for 30 days

## 6.0 Power Requirements

- **Primary Power:** 28 VDC (18-32 VDC range)
- **Typical Current:** 0.5 A
- **Peak Current:** 1.0 A (during download)
- **Backup Battery:** 10+ minutes recording after power loss
- **Power Input:** Via dedicated circuit breaker (flight-essential bus)

## 7.0 Installation

### 7.1 Location

FDR unit installed in aft fuselage tail cone section (most survivable location in crash):
- Protected from direct fire exposure
- Accessible for maintenance and download
- Shock-mounted to primary structure
- Clear of hydraulic lines and fuel tanks

### 7.2 Wiring

All wiring follows ATA 20 standards:
- Shielded twisted-pair for data buses
- Redundant power feeds
- Lightning strike protection bonding
- Proper separation from high-voltage systems

## 8.0 Maintenance and Testing

### 8.1 Scheduled Inspections

- **Daily:** Pre-flight BIT check (pilot/crew action)
- **100 flight hours:** Visual inspection of unit and connectors
- **Annual:** Download test and parameter validation
- **5 years:** Detailed inspection and battery replacement

### 8.2 Built-In Test (BIT)

Continuous BIT monitors:
- Memory integrity
- Data bus signal quality
- Time synchronization status
- Power supply voltage
- Recording status

Faults annunciated on cockpit display (EICAS/FWC).

### 8.3 Download Testing

Annual download test procedure (see PROC_31-02-01):
1. Connect download tool
2. Extract last 8 hours of data
3. Verify parameter completeness
4. Check time synchronization
5. Compute and verify SHA-256 checksums
6. Document test in aircraft logbook

## 9.0 Safety Considerations

### 9.1 Failure Modes

| Failure Mode | Effect | Probability | Detection | Mitigation |
|--------------|--------|-------------|-----------|------------|
| Power loss | Recording stops | Unlikely | BIT + cockpit annunciation | Backup battery provides 10+ min |
| Memory corruption | Data loss (partial) | Rare | BIT + cyclic redundancy check | Redundant storage sectors |
| Data bus fault | Parameter loss | Possible | BIT + parameter validation | Multiple bus inputs for critical params |
| Software fault | Recording stops or corrupted | Rare | BIT + watchdog timer | DO-178C DAL-B assurance |

### 9.2 Hazard Mitigation

- **Loss of recording capability:** Detected by BIT and annunciated to crew; maintenance action required before next flight
- **Data corruption:** Prevented by error detection/correction codes and redundant storage
- **Crash damage:** Mitigated by crash-protected memory module design and survivability testing
- **Unauthorized access:** Download port protected; extraction requires tool + access control

## 10.0 Data Integrity

### 10.1 Error Detection

- Cyclic redundancy check (CRC) on all recorded frames
- Parity checking on data bus inputs
- Memory scrubbing (continuous background check)

### 10.2 Time Synchronization

- Primary: GPS/GNSS time (UTC)
- Backup: Internal crystal oscillator (drift compensated)
- Accuracy: ±10 milliseconds (GPS-synced)
- Time stamp: Every frame includes UTC timestamp

### 10.3 Checksums

All downloaded data includes SHA-256 checksums:
- Computed during download by extraction tool
- Recorded in download manifest (see EXAMPLE_31-08-01)
- Enables verification of evidence integrity

## 11.0 Regulatory Compliance

This FDR system complies with:
- ICAO Annex 6, Part I, Chapter 6
- FAA 14 CFR 121.343, 121.344, 121.344a
- EASA CS 25.1459
- TSO-C124a
- ARINC 717
- DO-160 (environmental)
- DO-178C (software)
- DO-254 (hardware)

Compliance matrix: DATA_31-01-02

## 12.0 References

- FDR-SPEC-31-001: Flight Data Recorder System Specification
- REC-ARCH-31-001: Recording System Architecture Document
- REC-SAS-31-001: Software Accomplishment Summary (DO-178C)
- REC-ENV-31-001: Environmental Qualification Evidence (DO-160)
- ARINC 717: Flight Data Recorder Systems
- TSO-C124a: Flight Data Recorder Systems

---

**Approval History:**

| Authority | Status | Date | Signature |
|-----------|--------|------|-----------|
| Data Systems Engineering | Released | 2025-10-30 | [Digital Signature] |
| Airworthiness Engineering | Approved | 2025-10-30 | [Digital Signature] |

---

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
