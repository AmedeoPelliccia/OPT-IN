# Aircraft Weighing on Load Cells

## Procedure Metadata
- **Procedure ID:** PROC_Aircraft-Weighing-On-Load-Cells
- **Revision:** rev1.5.0
- **Date:** 2028-07-15
- **Category:** WEIGHING
- **Owner:** Weight & Balance Engineer

---

## 1. Scope

This procedure establishes the method for determining the Basic Empty Weight (BEW) and Center of Gravity (CG) of the AMPEL360 aircraft using calibrated platform load cells, achieving a combined uncertainty (U95) of ≤ 0.1% BEW.

---

## 2. References

- ATA 06: Dimensions and Areas (arm definitions)
- ATA 07: Lifting and Shoring (jacking procedures)
- `PROC_Aircraft-Leveling-Using-Laser-Tracker_rev1.1.0_20280710.md`
- `DATA_Standard-Weighing-Configuration-Definition.md`
- `DATA_Corrections-Tables_rev1.0.0_20280701.csv`
- `DATA_Uncertainty-Budget_rev1.0.0_20280701.csv`
- FAA AC 120-27F
- SAE AIR1750D

---

## 3. Prerequisites

### 3.1 Personnel
- Minimum 3 certified Weight & Balance technicians
- 1 Weight & Balance Engineer (supervisor)
- 1 Quality Assurance inspector

### 3.2 Equipment
- Platform load cells (3 minimum: nose, main L, main R)
  - Capacity: ≥ 100,000 kg each
  - Resolution: ≤ 0.2 kg
  - Calibration: Current (within 12 months)
- Data acquisition system
- Environmental monitoring equipment
  - Precision thermometer (± 0.5°C)
  - Precision barometer (± 1 hPa)
  - Precision hygrometer (± 2% RH)
  - Anemometer (± 0.1 kt)
- Aircraft jacks (per ATA 07)
- Leveling equipment (per leveling procedure)

### 3.3 Aircraft Configuration
- Aircraft must be in "Standard Weighing Configuration" per `DATA_Standard-Weighing-Configuration-Definition.md`
- Aircraft must be leveled per `PROC_Aircraft-Leveling-Using-Laser-Tracker_rev1.1.0_20280710.md`

---

## 4. Safety Precautions

- All personnel must maintain safe distance from aircraft during lowering onto load cells
- Load cells must be verified for proper capacity and safety factor (≥ 2:1)
- Emergency jacking procedures must be reviewed and equipment available
- Safety barriers must be established around work area
- No personnel allowed under or on aircraft during measurements
- **ABORT CRITERIA:** Cease operation immediately if:
  - Wind > 2 kt
  - Any jack/cell shows instability
  - Aircraft level exceeds ± 0.05°
  - Any unexpected vibration is detected

---

## 5. Environmental Requirements

| Parameter | Requirement | Verification Method |
|-----------|-------------|---------------------|
| Temperature | 18°C to 27°C | Calibrated thermometer |
| Barometric Pressure | 950 hPa to 1050 hPa | Calibrated barometer |
| Relative Humidity | Record only | Calibrated hygrometer |
| Wind | ≤ 2 knots | Anemometer |
| Doors | CLOSED | Visual inspection |

**Monitor environmental conditions continuously throughout procedure.**

---

## 6. Procedure Steps

### 6.1 Pre-Weighing Setup

**Step 1:** Verify aircraft configuration
- Complete configuration checklist from `DATA_Standard-Weighing-Configuration-Definition.md`
- Document any deviations
- Calculate configuration hash
- Configuration hash: _____________

**Step 2:** Verify and record environmental conditions
- Ambient temperature: _______ °C ☐ Within limits
- Barometric pressure: _______ hPa ☐ Within limits
- Relative humidity: _______ % (for correction calculation)
- Wind speed: _______ kt ☐ ≤ 2 kt
- Hangar doors: ☐ CLOSED

**Step 3:** Verify aircraft is properly leveled
- Leveling performed per PROC_Aircraft-Leveling-Using-Laser-Tracker
- Pitch: _______ ° (within ± 0.05°: ☐ YES)
- Roll: _______ ° (within ± 0.05°: ☐ YES)
- Leveling stability verified: ☐ YES

**Step 4:** Position and verify load cells
- Position load cells under designated weight points:
  - Nose gear: FS = _______ m (from ATA 06)
  - Main gear left: FS = _______ m (from ATA 06)
  - Main gear right: FS = _______ m (from ATA 06)
- Verify load cells:
  - Calibration current: ☐ YES (all cells)
  - Capacity adequate: ☐ YES (all cells)
  - Level and stable: ☐ YES (all cells)
  - Zeroed: ☐ YES (all cells)

**Step 5:** Connect data acquisition system
- Connect all load cells to DAQ
- Verify communication: ☐ YES
- Zero all channels
- Perform system self-test: ☐ PASS

### 6.2 Aircraft Lowering

**Step 6:** Clear all personnel from aircraft and vicinity
- Visual inspection: All personnel clear: ☐ YES
- All equipment removed from aircraft: ☐ YES
- Safety barriers in place: ☐ YES

**Step 7:** Lower aircraft onto load cells
- **SLOW AND CONTROLLED LOWERING**
- Lower simultaneously at all jack points
- Monitor load cell readings continuously
- **STOP** if any cell exceeds expected reading by > 10%
- Ensure aircraft contacts all load cells simultaneously

**Step 8:** Complete lowering and jack removal
- Verify all weight transferred to load cells
- Remove jacks carefully (do not disturb aircraft)
- Store jacks clear of work area
- Final visual inspection: Aircraft stable on cells: ☐ YES

### 6.3 Stabilization and Initial Measurement

**Step 9:** Stabilization check
- **After lowering onto cells, wait 10 min. Record readings.**
- Initial reading (t=0): _______ kg (Time: _______)
- Reading after 10 min (t=10): _______ kg (Time: _______)
- **Wait 2 more min.**
- Reading after 12 min (t=12): _______ kg (Time: _______)
- Calculate drift: _______ kg (_______ % of total weight)
- **Acceptance:** Readings must not drift by more than 0.02% of total weight
- Drift check: ☐ PASS (≤ 0.02%)  ☐ FAIL (> 0.02%)
- **If drift exceeds limit, re-level aircraft and troubleshoot.**

**Step 10:** Record stabilized weight measurements
- Nose gear: _______ kg
- Main gear left: _______ kg
- Main gear right: _______ kg
- **Total (raw):** _______ kg
- Verify sum of individual cells = total: ☐ YES

### 6.4 Repeatability Verification

**Step 11:** Repeatability check
- **After initial weighing, lift aircraft fully clear of scales, then lower again.**
- Carefully jack aircraft clear of all load cells
- Allow 5 minutes settling time
- Re-zero load cells
- Lower aircraft onto cells using same procedure (Steps 7-8)
- Wait 10 minutes for stabilization
- Record second weighing:
  - Nose gear: _______ kg
  - Main gear left: _______ kg
  - Main gear right: _______ kg
  - **Total (second):** _______ kg
- Calculate difference from first weighing:
  - Difference: _______ kg (_______ %)
- **Acceptance:** The new stabilized total weight must be within 0.05% of the first reading
- Repeatability check: ☐ PASS (≤ 0.05%)  ☐ FAIL (> 0.05%)

**Step 12:** Select final measurements
- If both weighings pass repeatability check, use average
- If repeatability fails, investigate and repeat
- Final raw measurements:
  - Nose gear: _______ kg
  - Main gear left: _______ kg
  - Main gear right: _______ kg
  - **Total raw weight:** _______ kg

### 6.5 Corrections Application

**Step 13:** Calculate and apply corrections
Reference: `DATA_Corrections-Tables_rev1.0.0_20280701.csv`

| Correction Item | Δ Mass (kg) | Arm (m) | Δ Moment (kg·m) |
|-----------------|-------------|---------|-----------------|
| Potable water | | | |
| Helium inerting mass | | | |
| Battery SOC | | | |
| Removable equipment | | | |
| Air buoyancy | | | |
| **Total corrections** | | | |

**Step 14:** Calculate corrected weight and CG
- **Basic Empty Weight (BEW):**
  - \(W_{BEW} = W_{raw} + \sum \Delta W_i\)
  - \(W_{BEW}\) = _______ kg

- **Center of Gravity (CG), Fuselage Station:**
  - \(x_{CG} = \frac{\sum (W_i \cdot x_i) + \sum (\Delta W_i \cdot x_i)}{W_{BEW}}\)
  - \(x_{CG}\) = _______ m (FS)

- **Center of Gravity (CG), % MAC:**
  - Reference from ATA 06:
    - Leading edge of MAC: \(x_{LE,MAC}\) = _______ m (FS)
    - Mean Aerodynamic Chord: MAC = _______ m
  - \(\%MAC = 100 \cdot \frac{x_{CG} - x_{LE,MAC}}{MAC}\)
  - \(\%MAC\) = _______ %

### 6.6 Uncertainty Analysis

**Step 15:** Calculate combined uncertainty
Reference: `DATA_Uncertainty-Budget_rev1.0.0_20280701.csv`

- Calculate individual uncertainty contributions
- Combine per RSS (Root Sum Square) method
- Expand to U95 (k=2 coverage factor)
- **Combined Uncertainty (U95):** _______ kg (_______ % BEW)
- **Acceptance:** U95 ≤ 0.1% BEW
- Uncertainty check: ☐ PASS (≤ 0.1%)  ☐ FAIL (> 0.1%)

---

## 7. Post-Weighing Activities

**Step 16:** Remove aircraft from load cells
- Jack aircraft per ATA 07
- Remove load cells
- Lower aircraft to normal position
- Remove leveling equipment

**Step 17:** Data verification
- Independent calculation verification: ☐ COMPLETE
- All measurements within expected range: ☐ YES
- All checks passed: ☐ YES

**Step 18:** Generate reports
- Complete weighing report template: ☐ DONE
- Generate JSON payload for ATA 95: ☐ DONE
- Validate JSON against schema: ☐ PASS
- Generate signed PDF: ☐ DONE
- Update weighing history log: ☐ DONE

---

## 8. Acceptance Criteria

All of the following must be satisfied:

✓ Aircraft in Standard Weighing Configuration  
✓ Aircraft leveled within ± 0.05° (pitch and roll)  
✓ Environmental conditions within limits  
✓ Stabilization drift ≤ 0.02% of total weight  
✓ Repeatability difference ≤ 0.05% of first reading  
✓ Combined uncertainty (U95) ≤ 0.1% BEW  
✓ All calculations verified independently  
✓ All documentation complete  

---

## 9. Data Recording Template

### Raw Measurements
| Position | Weight (kg) | Arm (m, FS) | Moment (kg·m) |
|----------|-------------|-------------|---------------|
| Nose | | | |
| Main L | | | |
| Main R | | | |
| **TOTAL** | | | |

### Corrections
| Item | Δ Weight (kg) | Arm (m, FS) | Δ Moment (kg·m) |
|------|---------------|-------------|-----------------|
| | | | |
| **TOTAL** | | | |

### Final Results
- **BEW:** _______ kg
- **CG (FS):** _______ m
- **CG (%MAC):** _______ %
- **U95:** _______ % BEW

---

## 10. Troubleshooting

| Issue | Possible Cause | Corrective Action |
|-------|----------------|-------------------|
| Excessive drift during stabilization | Aircraft settling on cells | Allow more settling time; verify cell stability |
| Poor repeatability | Aircraft position changed | Re-verify leveling; ensure identical lowering procedure |
| Uncertainty exceeds limit | Measurement inconsistency | Review all measurements; recalibrate equipment |
| Load cell overload | Incorrect capacity | Verify cell specifications; redistribute weight |
| Environmental out of limits | External conditions | Wait for conditions to stabilize; adjust HVAC |

---

## 11. Revision History

| Revision | Date | Changes | Approved By |
|----------|------|---------|-------------|
| rev1.0.0 | 2028-06-01 | Initial release | WBE-001 |
| rev1.1.0 | 2028-06-15 | Added stabilization check | WBE-001 |
| rev1.2.0 | 2028-06-22 | Enhanced repeatability procedure | WBE-001 |
| rev1.3.0 | 2028-06-28 | Added abort criteria | WBE-001 |
| rev1.4.0 | 2028-07-05 | Updated correction references | WBE-001 |
| rev1.5.0 | 2028-07-15 | Finalized for certification | WBE-001, QA-001 |

---

## 12. Completion Sign-Off

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Technician (Lead) | | | |
| Weight & Balance Engineer | | | |
| Quality Assurance | | | |

---

**Procedure Complete.**

*This procedure complies with FAA AC 120-27F and SAE AIR1750D standards and meets ATA 08 requirements for precision aircraft weighing.*
