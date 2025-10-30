# PROC_28-40-21 — Tank Pressure Test and Hydrostatic Test

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Standard procedure for pressure testing and hydrostatic testing of cryogenic hydrogen storage tanks to verify structural integrity.

## Scope

Applies to:
- New tank acceptance testing
- Post-repair verification
- Periodic requalification (per regulatory requirements)

## Safety Requirements

**Hazards:**
- High pressure (test pressure typically 7.5 bar or higher)
- Stored energy release
- Projectile hazard if failure occurs
- Slip and fall (wet surfaces during hydrotest)

**PPE Required:**
- Safety glasses with side shields
- Hard hat
- Safety footwear
- Hearing protection (if pneumatic test)

**Precautions:**
- Establish exclusion zone during pressurization
- Use remote pressurization and monitoring
- Ensure proper venting before approaching
- Never exceed maximum test pressure

## Test Types

### 1. Hydrostatic Proof Test (Initial Qualification)

**Purpose:** Verify tank can withstand 1.5× design pressure without permanent deformation

**Test Pressure:** 1.5 × Maximum Allowable Working Pressure (MAWP)
- Example: MAWP = 5.0 bar → Test = 7.5 bar

**Test Medium:** Clean water or water/glycol mixture (for sub-zero testing)

**Procedure:**
1. Fill tank completely with test medium, purge all air
2. Pressurize slowly (0.5 bar/min maximum rate)
3. Hold at test pressure for 30 minutes minimum
4. Inspect for leaks, weeping, or visible deformation
5. Slowly depressurize and drain
6. Measure for permanent deformation (<5% of elastic deformation)

### 2. Pneumatic Leak Test (Service Verification)

**Purpose:** Verify leak-tightness of tank and fittings

**Test Pressure:** 1.1 × MAWP

**Test Medium:** Dry nitrogen or helium

**Procedure:**
1. Pressurize tank with dry gas to test pressure
2. Hold for 1 hour minimum
3. Monitor pressure for leak-down (<0.1 bar/hr acceptable)
4. Apply soap solution to all welds, fittings, and penetrations
5. Document any leaks found
6. Depressurize slowly before repair

### 3. Vacuum Jacket Integrity Test

**Purpose:** Verify vacuum jacket can maintain insulation performance

**Test:** Helium leak test per PROC_28-40-50

**Acceptance:** Leak rate <1×10⁻⁸ mbar·L/s

## Instrumentation Requirements

- Calibrated pressure gauge (±0.5% accuracy)
- Temperature measurement (RTD or thermocouple)
- Precision timer or data logger
- Strain gauges (for detailed structural test)

## Acceptance Criteria

**Hydrostatic Proof Test:**
- No leaks observed
- No visible permanent deformation
- Measured permanent strain <0.2%
- Pressure hold within ±2% of test pressure

**Pneumatic Leak Test:**
- Pressure drop <0.1 bar over 1-hour hold
- No soap bubble formation at welds/fittings
- No audible leaks

**Vacuum Jacket Test:**
- Leak rate <1×10⁻⁸ mbar·L/s per PROC_28-40-50

## Documentation

Each test must be documented with:
- Tank identification (PN, SN)
- Test date and operator
- Test pressure and hold time
- Test medium and temperature
- Instrumentation calibration dates
- Results (pass/fail with supporting data)
- Inspector signature and stamp
- SHA-256 hash of test report
- Link to DPP entry

## Post-Test Requirements

1. Drain and dry tank thoroughly
2. Perform visual inspection of interior (if accessible)
3. Re-install pressure relief devices
4. Update tank data plate with test date
5. Update [DPP](../09-TRACEABILITY_AND_DPP/PROC_28-40-80_DPP-Entry-And-Record.md) with test results and hash

## Nonconformance

If tank fails any test:
1. Do not pressurize further
2. Isolate tank and mark as nonconforming
3. Initiate NCR per [PROC_28-40-90](../10-NONCONFORMANCE_AND_DEVIATION/PROC_28-40-90_Nonconformance-Handling-And-Engineering-Disposition.md)
4. Engineering disposition required before return to service

## Re-test Requirements

**Periodic Requalification:**
- Hydrostatic test: Every 10 years or per regulation
- Leak test: Every 5 years or after any repair

**After Repair:**
- Any repair affecting primary containment requires full hydrostatic retest
- Fitting replacement requires pneumatic leak test

## References

- [ASME BPVC Section VIII](https://www.asme.org/codes-standards/find-codes-standards/bpvc-viii-1-bpvc-section-viii-rules-construction-pressure-vessels-division-1): Pressure Vessel Code
- [ISO 21010](https://www.iso.org/standard/69653.html): Cryogenic Vessel Requirements
- [DESC_28-40-20: Storage Interface and CoC](DESC_28-40-20_Storage-Interface-And-CofC.md)
- [DATA_28-40-22: Tank Capacity and Limits](DATA_28-40-22_Tank-Capacity-And-Limits.csv)
- [PROC_28-40-50: Helium Leak Test](../06-TESTING_NDT_AND_LEAK_DETECTION/PROC_28-40-50_Helium-Leak-Test-And-Report.md)
- [PROC_28-40-90: Nonconformance Handling](../10-NONCONFORMANCE_AND_DEVIATION/PROC_28-40-90_Nonconformance-Handling-And-Engineering-Disposition.md)

---

*This procedure must be followed for all tank pressure testing activities.*
