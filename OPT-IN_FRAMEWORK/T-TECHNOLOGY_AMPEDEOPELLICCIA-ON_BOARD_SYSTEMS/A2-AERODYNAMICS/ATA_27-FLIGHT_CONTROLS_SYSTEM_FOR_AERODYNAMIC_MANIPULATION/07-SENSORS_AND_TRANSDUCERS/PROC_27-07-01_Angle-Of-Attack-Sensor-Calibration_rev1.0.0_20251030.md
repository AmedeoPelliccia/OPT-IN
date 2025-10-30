# PROC_27-07-01: Angle of Attack Sensor Calibration

**Document ID:** PROC_27-07-01_Angle-Of-Attack-Sensor-Calibration_rev1.0.0_20251030  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Task Duration:** 1-2 hours per sensor  
**Personnel:** 1 technician (Level 3, certified for avionics)  
**Safety Critical:** YES

## Scope

Calibration procedure for AoA sensors using precision angle reference fixture.

## Safety Warnings

**⚠️ FLIGHT SAFETY CRITICAL:** Inaccurate AoA data can cause incorrect control law behavior, leading to stall or overspeed conditions.

## Required Equipment

- AoA sensor calibration fixture (precision angle reference)
- Digital multimeter (6.5 digit, calibrated)
- Laptop with calibration software
- Calibration certificate (valid within 12 months)

## Calibration Procedure

### Step 1: Pre-Calibration Check

1. Verify sensor part number matches aircraft configuration.
2. Verify sensor is clean and undamaged.
3. Record sensor serial number and last calibration date.

### Step 2: Mount Sensor in Fixture

1. Mount AoA sensor in calibration fixture.
2. Ensure sensor is level and secure.
3. Connect electrical interface to calibration equipment.

### Step 3: Zero Calibration

1. Set fixture to 0° angle.
2. Record sensor output voltage.
3. Compare to specification: 2.500 V ± 0.010 V.

### Step 4: Multi-Point Calibration

1. Set fixture to calibration angles: -10°, 0°, +10°, +20°.
2. At each angle, record sensor output.
3. Verify linearity: < 0.5% full-scale error.

### Step 5: Accuracy Verification

1. Set fixture to test angle (e.g., +15°).
2. Measure sensor output.
3. Calculate angle from output voltage.
4. Verify angle error: < ±0.5°.

## Acceptance Criteria

- Zero error: < ±0.5°
- Linearity: < 0.5% full scale
- Accuracy: < ±0.5° across range

If out of tolerance, sensor must be replaced.

## Documentation

- Update sensor calibration log
- Attach calibration certificate to aircraft records
- Update DPP (Digital Product Passport)

---

**Document Owner:** Avionics Engineering  
**Next Review:** 2026-10-30
