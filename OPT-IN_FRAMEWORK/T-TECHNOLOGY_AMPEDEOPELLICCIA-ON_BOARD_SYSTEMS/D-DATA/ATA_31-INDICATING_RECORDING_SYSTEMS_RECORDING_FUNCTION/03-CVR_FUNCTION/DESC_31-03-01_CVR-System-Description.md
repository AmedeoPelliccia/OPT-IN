# DESC_31-03-01 — CVR System Description

**Document ID:** DESC_31-03-01  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Chapter:** ATA 31 - Indicating & Recording Systems (Recording Function)

## 1.0 Purpose

This document provides a comprehensive technical description of the Cockpit Voice Recorder (CVR) system for AMPEL360 aircraft, including system architecture, audio channel specifications, acoustic performance, and crash survivability features.

## 2.0 System Overview

### 2.1 CVR Unit Specifications

- **Manufacturer:** [TBD - specify manufacturer]
- **Part Number:** CVR-PN-200
- **TSO Compliance:** TSO-C123a
- **Software Baseline:** Version 1.2.3 (SHA-256: [TBD])
- **Recording Capacity:** 2 hours minimum (4 hours actual)
- **Audio Format:** 16-bit PCM, 16 kHz sampling
- **Channels:** 4 independent audio channels
- **Crash Survivability:** Per TSO-C123a and ED-112

### 2.2 Functional Description

The CVR system continuously records cockpit audio from multiple sources including boom microphones (captain and first officer), cockpit area microphones, and radio transmissions. Audio is digitized, compressed, and stored in crash-protected solid-state memory. The system ensures audio quality meets intelligibility requirements for accident investigation.

## 3.0 Audio Channel Configuration

### 3.1 Channel Assignment

| Channel | Source | Description |
|---------|--------|-------------|
| CH-1 | Captain Boom Microphone | Captain headset audio |
| CH-2 | First Officer Boom Microphone | First Officer headset audio |
| CH-3 | Cockpit Area Microphone (overhead) | Ambient cockpit audio |
| CH-4 | Cockpit Area Microphone (center console) | Ambient cockpit audio + radio |

### 3.2 Audio Specifications

- **Sampling Rate:** 16 kHz per channel
- **Bit Depth:** 16-bit linear PCM
- **Frequency Response:** 300 Hz to 8 kHz (±3 dB)
- **Dynamic Range:** >80 dB
- **Signal-to-Noise Ratio:** >45 dB
- **Total Harmonic Distortion:** <1%

### 3.3 Microphone Specifications

**Boom Microphones (CH-1, CH-2):**
- Type: Electret condenser with noise-cancelling
- Sensitivity: -40 dB ±3 dB (ref. 1V/Pa)
- Impedance: 2.2 kΩ
- Calibration interval: 24 months

**Area Microphones (CH-3, CH-4):**
- Type: Omnidirectional electret condenser
- Sensitivity: -38 dB ±3 dB (ref. 1V/Pa)
- Frequency response: 100 Hz to 10 kHz
- Calibration interval: 24 months

## 4.0 System Architecture

### 4.1 Hardware Components

1. **CVR Unit (Crash-Protected)**
   - Crash-protected memory module (2+ hour capacity)
   - 4-channel audio acquisition electronics
   - Audio compression processor
   - Power supply with backup battery (10+ minutes)
   - Underwater locator beacon (ULB)

2. **Audio Interfaces**
   - 4 balanced microphone inputs
   - Radio transmission monitoring (via audio panel)
   - Cockpit loudspeaker monitoring
   - Test/playback interface

3. **Installation Hardware**
   - Shock mount assembly
   - Audio connectors (XLR or equivalent)
   - Mounting brackets

### 4.2 Software Architecture

- **Audio Capture:** Real-time 4-channel acquisition
- **Compression:** Adaptive compression (3:1 typical)
- **Storage Management:** Circular buffer, 2-hour retention minimum
- **Erase Inhibit:** Auto-disable overwrite after crash sensor trigger
- **Built-In Test:** Continuous monitoring of all channels

**Software Assurance:** DAL-B per DO-178C

## 5.0 Recording and Storage

### 5.1 Recording Duration

- **Minimum:** 2 hours per ICAO Annex 6 and TSO-C123a
- **Actual:** 4 hours (provides margin)
- **Overwrite:** Continuous circular buffer (oldest data overwritten)
- **Erase Inhibit:** Triggered by crash sensor or manual command

### 5.2 Audio Quality Assurance

Continuous monitoring ensures:
- All 4 channels recording properly
- Audio levels within operating range
- No clipping or saturation
- Frequency response within specification
- SNR adequate for intelligibility

BIT faults annunciated on cockpit display.

## 6.0 Environmental Qualification

### 6.1 DO-160 Compliance

CVR unit qualified to RTCA DO-160:

- **Temperature:** -55°C to +70°C (operating)
- **Altitude:** 0 to 55,000 ft
- **Vibration:** Category U (severe vibration)
- **Shock:** Category B (crash shock 3,400g)
- **Fire Resistance:** 1,100°C for 1 hour minimum
- **Water Immersion:** 20,000 ft depth for 30 days
- **EMI/EMC:** Categories B

Evidence: REC-ENV-31-001

### 6.2 Crash Survivability

Crash-protected memory module survives same conditions as FDR (see DESC_31-02-01 Section 5.2).

### 6.3 ED-112 Compliance

System complies with EUROCAE ED-112 Minimum Operational Performance Standards for CVR:
- Audio intelligibility requirements
- Recording duration
- Crash survivability
- Underwater locator beacon performance

## 7.0 Acoustic Testing

### 7.1 Speech Intelligibility

Per ED-112, CVR audio must achieve:
- **Intelligibility Score:** ≥80% in standard listening tests
- **Test Method:** Modified Rhyme Test (MRT) or Diagnostic Rhyme Test (DRT)
- **Test Frequency:** Initial qualification + after repair/modification

See DATA_31-03-02 for test results.

### 7.2 Background Noise Rejection

- Cockpit ambient noise: 85 dB SPL typical
- SNR requirement: ≥40 dB for boom mics
- Noise-cancelling microphones reduce engine/airflow noise

### 7.3 Test Results Summary

| Channel | SNR (dB) | Intelligibility (%) | THD (%) | Status |
|---------|----------|---------------------|---------|--------|
| CH-1 (Capt) | 47 | 92 | 0.6 | Pass |
| CH-2 (FO) | 46 | 90 | 0.7 | Pass |
| CH-3 (Area 1) | 43 | 87 | 0.8 | Pass |
| CH-4 (Area 2) | 45 | 89 | 0.7 | Pass |

## 8.0 Power Requirements

- **Primary Power:** 28 VDC (18-32 VDC range)
- **Typical Current:** 0.3 A
- **Peak Current:** 0.6 A
- **Backup Battery:** 10+ minutes recording after power loss
- **Power Input:** Via dedicated circuit breaker (flight-essential bus)

## 9.0 Installation

### 9.1 Location

CVR unit installed in aft fuselage tail cone (co-located with FDR):
- Most survivable location in crash
- Accessible for maintenance and download
- Shock-mounted to primary structure

### 9.2 Microphone Installation

- **Boom Mics:** Integrated into pilot headsets (certified headset assemblies)
- **Area Mic 1:** Overhead panel (between pilot seats)
- **Area Mic 2:** Center console (near audio panel)

Microphone wiring:
- Shielded twisted-pair per ATA 20
- Routed away from high-current/RF sources
- Lightning strike protection bonding

## 10.0 Maintenance and Testing

### 10.1 Scheduled Inspections

- **Daily:** Pre-flight BIT check
- **100 flight hours:** Audio quality verification
- **Annual:** Download test and acoustic verification
- **24 months:** Microphone calibration
- **5 years:** Detailed inspection and battery replacement

### 10.2 Functional Test

Annual functional test procedure:
1. Connect test headset to each microphone input
2. Play calibrated audio signal (1 kHz tone + speech)
3. Download 5 minutes of test recording
4. Analyze audio: levels, frequency response, SNR, intelligibility
5. Document results in aircraft logbook

### 10.3 Built-In Test (BIT)

Continuous BIT monitors:
- Audio signal presence on all channels
- Recording status
- Memory integrity
- Time synchronization
- Power supply voltage

## 11.0 Privacy and Access Control

### 11.1 Regulatory Requirements

- CVR recordings contain sensitive pilot communications
- Access restricted per FAA/EASA regulations
- Used only for safety/accident investigation
- Protected from disclosure per 14 CFR 135.609

### 11.2 Access Policy

CVR audio access restricted to:
- Accident investigation authorities (NTSB, BEA, etc.)
- Flight Safety personnel (with authorization)
- Maintenance personnel (for technical troubleshooting only)

See DATA_31-04-02 for detailed access control policy.

## 12.0 Erase Inhibit Function

### 12.1 Automatic Erase Inhibit

CVR automatically disables overwrite when:
- Crash sensor detects impact >3g longitudinal
- Loss of electrical power (emergency landing)
- Manual erase inhibit button pressed

### 12.2 Manual Erase

CVR may only be erased:
- By authorized maintenance personnel
- After confirmation no incident/accident occurred
- With appropriate authorization and documentation
- Never within 60 minutes of flight completion (per regulation)

## 13.0 Download and Chain-of-Custody

See PROC_31-03-01 for detailed CVR download and chain-of-custody procedures.

Key points:
- Same download tool as FDR (CVR-Extract module)
- SHA-256 hashes for all audio files
- Strict custody documentation
- Investigator authority for accident/incident downloads

## 14.0 Regulatory Compliance

This CVR system complies with:
- ICAO Annex 6, Part I, Chapter 6
- FAA 14 CFR 121.359, 135.151
- EASA CS 25.1457
- TSO-C123a
- EUROCAE ED-112
- DO-160 (environmental)
- DO-178C (software)

Compliance matrix: DATA_31-01-02

## 15.0 References

- CVR-SPEC-31-001: Cockpit Voice Recorder System Specification
- REC-ARCH-31-001: Recording System Architecture Document
- REC-SAS-31-001: Software Accomplishment Summary (DO-178C)
- REC-ENV-31-001: Environmental Qualification Evidence (DO-160)
- EUROCAE ED-112: Minimum Operational Performance Standards for CVR
- TSO-C123a: Cockpit Voice Recorder Systems

---

**Approval History:**

| Authority | Status | Date | Signature |
|-----------|--------|------|-----------|
| Data Systems Engineering | Released | 2025-10-30 | [Digital Signature] |
| Airworthiness Engineering | Approved | 2025-10-30 | [Digital Signature] |

---

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
