# PROC_28-40-40 — Sensor Calibration and Traceability

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Defines calibration procedures, intervals, and traceability requirements for cryogenic system sensors and instrumentation.

## Scope

Applies to all sensors measuring:
- Temperature (RTDs, thermocouples)
- Pressure (transducers, gauges)
- Level (capacitance, differential pressure)
- Flow (mass flow, volumetric)

## Calibration Requirements

**Frequency:**
- Temperature sensors: 12 months
- Pressure transducers: 12 months
- Level sensors: 24 months
- Flow meters: 12 months

**Standards:**
All calibrations must be traceable to NIST or equivalent national standards.

**Calibration Points:**
Minimum 5 points across operating range, including:
- Zero/minimum
- 25% of span
- 50% of span (mid-range)
- 75% of span
- 100% of span (full scale)

## Acceptance Criteria

**Accuracy Requirements:**
- Temperature: ±0.5°C or ±0.5% of reading, whichever is greater
- Pressure: ±0.5% of full scale
- Level: ±2% of full scale
- Flow: ±2% of reading

## Documentation

Each calibration record must include:
- Sensor identification (PN, SN, location)
- Calibration date and next due date
- Standard equipment used (with cal cert number)
- As-found and as-left readings
- Out-of-tolerance conditions (if any)
- Technician name and certification number
- SHA-256 hash of calibration certificate
- DPP traceability entry

## References

- DATA_28-40-41: Sensor Specifications and Calibration Intervals
- ISO/IEC 17025: Laboratory Accreditation Requirements

---

*All sensors must have current calibration before system operation.*
