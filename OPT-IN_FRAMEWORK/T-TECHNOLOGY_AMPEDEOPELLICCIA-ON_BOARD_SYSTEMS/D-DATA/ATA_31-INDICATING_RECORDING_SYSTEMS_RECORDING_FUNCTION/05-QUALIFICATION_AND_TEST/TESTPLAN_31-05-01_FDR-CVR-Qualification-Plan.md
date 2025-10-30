# TESTPLAN_31-05-01 — FDR/CVR Qualification Plan

**Document ID:** TESTPLAN_31-05-01  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Chapter:** ATA 31 - Indicating & Recording Systems (Recording Function)

## 1.0 Purpose

This test plan defines the qualification and verification testing required for FDR/CVR recording systems to demonstrate compliance with TSO-C124a, TSO-C123a, DO-160, DO-178C, ED-112, and ARINC 717 requirements.

## 2.0 Scope

Testing covers:
- Environmental qualification (DO-160)
- Crash survivability
- Data recording and integrity
- Audio quality and intelligibility (CVR)
- Software verification (DO-178C DAL-B)
- Parameter accuracy and sampling rates (FDR)
- Tool qualification (download tools)

## 3.0 Test Objectives

1. Demonstrate FDR/CVR units meet all regulatory requirements
2. Verify crash-protected memory survives impact, fire, and immersion
3. Validate FDR parameter mapping and data format (ARINC 717)
4. Confirm CVR audio quality and intelligibility (ED-112)
5. Verify download tools extract data without corruption
6. Validate chain-of-custody procedures

## 4.0 Environmental Qualification Tests (DO-160)

### 4.1 Temperature Tests

**Test:** DO-160 Section 4 & 5
- Low temperature: -55°C operational
- High temperature: +70°C operational
- Temperature shock: Rapid transition -55°C to +70°C

**Acceptance:** Unit operates throughout temperature range, no degradation

### 4.2 Altitude Tests

**Test:** DO-160 Section 4.6
- Operating altitude: 0 to 55,000 ft

**Acceptance:** Unit operates at all altitudes, no pressure-related failures

### 4.3 Vibration Tests

**Test:** DO-160 Section 8, Category U (severe)
- Random vibration: Per Category U profile
- Duration: 3 hours per axis

**Acceptance:** Unit functions during and after vibration, no structural damage

### 4.4 Shock Tests (Crash Survivability)

**Test:** DO-160 Section 7, Category B
- Impact: 3,400g for 6.5ms (half-sine pulse)
- Penetration: 500 lb steel pin impact
- Static crush: 5,000 lb for 5 minutes

**Acceptance:** Crash-protected memory module survives, data recoverable

### 4.5 Fire Resistance

**Test:** TSO-C124a/C123a fire test
- Fire exposure: 1,100°C ±80°C for 1 hour
- Post-fire immersion: 2.5 hours in water

**Acceptance:** Memory module survives, data recoverable

### 4.6 Water Immersion (Deep Sea)

**Test:** TSO-C124a/C123a immersion test
- Depth: 20,000 ft (6,000 m) for 30 days
- Temperature: 2°C

**Acceptance:** Memory module survives, data recoverable, ULB functions for 30 days

### 4.7 EMI/EMC Tests

**Test:** DO-160 Sections 15-25, Category B
- Conducted emissions
- Radiated emissions
- Conducted susceptibility
- Radiated susceptibility

**Acceptance:** Unit meets Category B limits, no interference with aircraft systems

## 5.0 FDR Functional Tests

### 5.1 Parameter Recording Test

**Objective:** Verify all mandatory parameters recorded correctly

**Procedure:**
1. Connect FDR to test harness with simulated aircraft inputs
2. Inject known parameter values per ARINC 717 encoding
3. Record for 30 minutes
4. Download and decode data
5. Compare decoded values with injected values

**Acceptance:** All 88+ mandatory parameters recorded with <1% error

### 5.2 Sampling Rate Verification

**Objective:** Verify parameter sampling rates meet requirements

**Procedure:**
1. Inject time-varying signals at known frequencies
2. Record and download
3. Analyze sampling intervals for each parameter

**Acceptance:** All parameters sampled at specified rates ±5%

### 5.3 Data Format Compliance

**Objective:** Verify ARINC 717 frame structure

**Procedure:**
1. Decode raw FDR data
2. Validate frame structure, subframe rate, word size
3. Check synchronization words
4. Verify CRC checksums

**Acceptance:** 100% compliance with ARINC 717 specification

### 5.4 Time Synchronization Test

**Objective:** Verify UTC time accuracy

**Procedure:**
1. Connect FDR to GPS time source
2. Record for 8 hours
3. Compare FDR timestamps with GPS reference
4. Measure drift and accuracy

**Acceptance:** Time accuracy ±10ms, drift <1ms/hour

### 5.5 Power Interruption Test

**Objective:** Verify recording continues with backup battery

**Procedure:**
1. Start recording
2. Remove primary power
3. Continue recording on backup battery for 15 minutes
4. Restore power
5. Download and verify data

**Acceptance:** No data loss during power interruption, backup lasts 10+ minutes

## 6.0 CVR Functional Tests

### 6.1 Audio Quality Test

**Objective:** Verify audio SNR, frequency response, THD

**Procedure:**
1. Connect calibrated audio source to each microphone input
2. Inject test signals: 1 kHz tone, pink noise, speech
3. Record for 5 minutes per channel
4. Download and analyze audio

**Measurements:**
- SNR (signal-to-noise ratio)
- Frequency response (300 Hz to 8 kHz)
- THD (total harmonic distortion)

**Acceptance:**
- SNR >40 dB (boom mics), >35 dB (area mics)
- Frequency response ±3 dB across 300 Hz to 8 kHz
- THD <1%

### 6.2 Speech Intelligibility Test

**Objective:** Verify speech intelligibility per ED-112

**Procedure:**
1. Record standardized speech samples (MRT or DRT word lists)
2. Playback to test subjects (minimum 10 listeners)
3. Score word recognition accuracy
4. Calculate intelligibility percentage

**Acceptance:** Intelligibility score ≥80% for all channels

### 6.3 CVR Erase Inhibit Test

**Objective:** Verify erase inhibit function

**Procedure:**
1. Start recording
2. Trigger crash sensor (simulate impact)
3. Verify erase inhibit engages
4. Attempt to overwrite data
5. Verify data protected

**Acceptance:** Erase inhibit engages within 100ms, data protected from overwrite

### 6.4 Underwater Locator Beacon Test

**Objective:** Verify ULB functions in water

**Procedure:**
1. Submerge CVR unit in water
2. Monitor ULB signal at 37.5 kHz
3. Measure signal strength and duration

**Acceptance:** ULB activates within 2 seconds, operates for 30+ days

## 7.0 Software Verification (DO-178C)

### 7.1 Software Testing

**Objective:** Verify software per DO-178C DAL-B requirements

**Activities:**
- Requirements-based testing
- Structural coverage analysis (MC/DC)
- Robustness testing
- Integration testing

**Deliverables:**
- Software Accomplishment Summary (SAS)
- Software Test Report
- Coverage analysis report

**Acceptance:** 100% requirements coverage, 100% MC/DC coverage for DAL-B

### 7.2 Tool Qualification

**Objective:** Qualify download tools per DO-178C TQL-5

**Procedure:**
1. Define tool operational requirements
2. Verify tool output correctness (checksum validation)
3. Document tool usage constraints
4. Perform tool testing per TQL-5

**Deliverables:**
- Tool Qualification Plan
- Tool Operational Requirements
- Tool Qualification Summary

**Acceptance:** Tool qualified to TQL-5, approved for use

## 8.0 Integration and System Tests

### 8.1 End-to-End Recording Test

**Objective:** Verify complete recording chain (aircraft to download)

**Procedure:**
1. Install FDR/CVR in aircraft or iron bird
2. Perform simulated flight profile (taxi, takeoff, cruise, landing)
3. Record all parameters and audio
4. Download data after flight
5. Analyze completeness and quality

**Acceptance:** All data recorded correctly, download successful, no anomalies

### 8.2 Download Tool Verification

**Objective:** Verify download tool extracts data correctly

**Procedure:**
1. Download FDR/CVR data
2. Compute SHA-256 checksums
3. Download same data again
4. Compare checksums (must match)

**Acceptance:** Checksums match, no data corruption

### 8.3 Chain-of-Custody Procedure Test

**Objective:** Validate custody procedures

**Procedure:**
1. Perform download per PROC_31-02-01 or PROC_31-03-01
2. Document chain-of-custody
3. Seal media
4. Transfer to archive
5. Verify at archive

**Acceptance:** Complete custody documentation, seal intact, checksums verified

## 9.0 Regression Testing

After any hardware or software modification:
1. Re-run subset of qualification tests
2. Verify no regression in functionality
3. Document regression test results

Minimum regression tests:
- Parameter recording (FDR)
- Audio quality (CVR)
- Download verification
- Checksum validation

## 10.0 Test Records and Evidence

For each test:
- Test procedure document
- Test setup description and photos
- Test data (raw and analyzed)
- Test report with pass/fail status
- Nonconformances and resolutions
- Approval signatures

All test records archived in DPP repository.

See DATA_31-05-02 for test matrix and failure criteria.

---

**Approval History:**

| Authority | Status | Date | Signature |
|-----------|--------|------|-----------|
| Data Systems Engineering | Released | 2025-10-30 | [Digital Signature] |
| Quality Assurance | Approved | 2025-10-30 | [Digital Signature] |
| Airworthiness Engineering | Approved | 2025-10-30 | [Digital Signature] |

---

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
