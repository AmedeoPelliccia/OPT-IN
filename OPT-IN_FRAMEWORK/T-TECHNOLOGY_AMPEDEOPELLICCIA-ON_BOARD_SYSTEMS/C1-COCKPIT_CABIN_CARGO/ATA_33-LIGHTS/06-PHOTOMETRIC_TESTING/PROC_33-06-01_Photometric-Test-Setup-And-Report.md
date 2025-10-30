# PROC_33-06-01: Photometric Test Setup and Report

---

### Document Control
- **Document ID:** PROC_33-06-01
- **Revision:** A
- **Effective Date:** 2025-10-30

---

## 1. Scope
Procedure for photometric testing of aircraft lighting with calibrated instruments and test reporting.

## 2. Regulatory Basis
- FAA 14 CFR Part 25.1389-1395 (position lights)
- SAE AS8037 (exterior lighting)
- SAE AS8038 (interior lighting)

## 3. Test Equipment

### 3.1 Required Instruments
- **Illuminance Meter:** NIST-traceable calibration, 0.01 lux resolution
- **Spectroradiometer:** For color measurement (CCT, CRI, CIE coordinates)
- **Goniophotometer:** For angular distribution (exterior lights)
- **Integrating Sphere:** For total luminous flux (optional)

### 3.2 Calibration Requirements
- **Traceability:** NIST or equivalent national standards body
- **Calibration Interval:** Annual or per manufacturer recommendation
- **Calibration Certificate:** Must include serial number, calibration date, due date, uncertainty
- **Verification:** Pre-test verification with check standard

## 4. Test Setup

### 4.1 Environmental Conditions
- **Temperature:** 20-25°C (68-77°F)
- **Humidity:** <70% RH
- **Dark Room:** <0.5 lux ambient (for interior lighting tests)

### 4.2 Test Rig Configuration
- Light mounted in representative aircraft configuration
- Power supply: 28VDC ±0.1V (regulated)
- Warmup: 30 minutes minimum before measurement

### 4.3 Measurement Distance
- **Interior lights:** Per specification (typically 400mm for reading lights)
- **Exterior lights:** Per FAA/SAE standard (varies by light type)

## 5. Test Procedure

### 5.1 Illuminance Measurement
1. Position photometer at specified distance and angle
2. Zero instrument (if applicable)
3. Energize light, allow stabilization
4. Record illuminance reading
5. Repeat for multiple points (grid pattern for area lighting)
6. Calculate average, min, max, uniformity ratio

### 5.2 Color Measurement
1. Position spectroradiometer
2. Measure spectral distribution
3. Calculate CCT, CRI (Ra), CIE chromaticity coordinates
4. Verify within specification limits

### 5.3 Angular Distribution (Exterior Lights)
1. Mount light in goniophotometer
2. Measure intensity at angular intervals (e.g., every 5°)
3. Plot polar distribution
4. Verify compliance with regulatory coverage zones

## 6. Test Report

### 6.1 Required Information
- Test ID and date
- Light assembly part number and serial number
- Test engineer/technician name
- Instrument details (manufacturer, model, S/N, calibration ID, calibration due date)
- Environmental conditions
- Power supply voltage
- Measurement data (tabular and/or graphical)
- Pass/Fail determination with limits
- Deviations or anomalies
- SHA-256 hash of raw data files and photographs

### 6.2 Report Template
See EXAMPLE_33-15-01_Photometric-Test-Report.csv

## 7. Data Archival

### 7.1 Retention
- Test reports: Permanent (life of aircraft type)
- Raw data files: 7 years minimum
- Photographs: 7 years minimum

### 7.2 Integrity
- All data files include SHA-256 hash
- Stored in configuration-controlled repository

## 8. Measurement Uncertainty

Typical measurement uncertainties:
- **Illuminance:** ±3-5%
- **CCT:** ±50K
- **CRI:** ±2 Ra
- **Luminous Intensity:** ±5%

Record uncertainty in test report.

---

**END OF PROCEDURE**
