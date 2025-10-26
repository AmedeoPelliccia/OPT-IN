# Aircraft Leveling Using Laser Tracker

## Procedure Metadata
- **Procedure ID:** PROC_Aircraft-Leveling-Using-Laser-Tracker
- **Revision:** rev1.1.0
- **Date:** 2028-07-10
- **Category:** LEVELING
- **Owner:** Weight & Balance Engineer

---

## 1. Scope

This procedure establishes the method for leveling the AMPEL360 aircraft to the required precision of ± 0.05° in both pitch and roll axes using laser tracker technology.

---

## 2. References

- ATA 06: Dimensions and Areas (datum definitions)
- ATA 07: Lifting and Shoring (jacking procedures)
- `DATA_Standard-Weighing-Configuration-Definition.md`
- FAA AC 120-27F
- SAE AIR1750D

---

## 3. Prerequisites

### 3.1 Personnel
- Minimum 2 certified Weight & Balance technicians
- 1 Weight & Balance Engineer (supervisor)

### 3.2 Equipment
- Laser tracker system (calibrated within 12 months)
- Precision electronic levels (backup, ± 0.01° resolution)
- Aircraft jacks (per ATA 07)
- Reference point targets (reflective or SMR type)
- Environmental monitoring equipment
  - Thermometer (± 0.5°C accuracy)
  - Barometer (± 1 hPa accuracy)
  - Anemometer (± 0.1 kt accuracy)

### 3.3 Documentation
- Aircraft structural drawings (ATA 06 datum locations)
- Previous leveling reports (if available)
- This procedure

---

## 4. Safety Precautions

- Aircraft must be properly jacked per ATA 07 procedures
- Safety barriers must be established around work area
- No personnel allowed under aircraft during leveling adjustments
- All jacks must be on solid, level ground
- Emergency lowering procedures must be reviewed before start

---

## 5. Environmental Requirements

| Parameter | Requirement | Verification Method |
|-----------|-------------|---------------------|
| Temperature | 18°C to 27°C | Calibrated thermometer |
| Barometric Pressure | 950 hPa to 1050 hPa | Calibrated barometer |
| Wind | ≤ 2 knots | Anemometer |
| Doors | CLOSED | Visual inspection |
| Lighting | Adequate | Visual verification |

**ABORT CRITERIA:** If any environmental parameter is out of tolerance, STOP procedure and document reason.

---

## 6. Procedure Steps

### 6.1 Initial Setup

**Step 1:** Position aircraft in hangar on level floor
- Verify hangar doors are CLOSED
- Verify floor is clean and free of debris
- Mark aircraft position for reference

**Step 2:** Jack aircraft per ATA 07 procedures
- Use approved jacking points
- Jack to height appropriate for leveling (landing gear unloaded but not fully extended)
- Ensure all jacks are stable and locked

**Step 3:** Verify environmental conditions
- Record ambient temperature: _______ °C
- Record barometric pressure: _______ hPa
- Record wind speed: _______ kt
- Confirm all doors CLOSED: ☐

### 6.2 Laser Tracker Setup

**Step 4:** Set up laser tracker
- Position tracker for optimal view of all reference points
- Allow 30-minute warm-up period
- Verify calibration certificate is current

**Step 5:** Identify reference points per ATA 06
- **Primary Longitudinal Datum:** Fuselage Station 0 (FS 0)
- **Lateral Datum:** Aircraft centerline
- **Vertical Datum:** Lower wing skin reference plane
- Install reflective targets at designated reference points

**Step 6:** Initialize laser tracker
- Establish coordinate system aligned with aircraft datums
- Zero tracker to primary reference point
- Verify tracker stability (no drift for 5 minutes)

### 6.3 Initial Measurement

**Step 7:** Measure current aircraft attitude
- Scan all reference points
- Calculate pitch angle: _______ °
- Calculate roll angle: _______ °
- Document initial attitude

**Target:** Pitch = 0.00° ± 0.05°, Roll = 0.00° ± 0.05°

### 6.4 Leveling Adjustments

**Step 8:** Calculate required jack adjustments
- Determine which jacks require adjustment
- Calculate adjustment magnitude (mm)
- **CAUTION:** Maximum single adjustment = 10 mm

**Step 9:** Make incremental adjustments
- Adjust one jack at a time
- Maximum adjustment per iteration: 5 mm
- Allow 2 minutes settling time after each adjustment
- Re-measure with laser tracker

**Step 10:** Repeat until within tolerance
- Continue iterative adjustments
- Approach target gradually
- Verify stability after each adjustment

### 6.5 Final Verification

**Step 11:** Perform stability check
- Measure attitude
- Wait 10 minutes
- Re-measure attitude
- **Acceptance:** No drift > 0.01° in 10 minutes

**Step 12:** Independent verification (backup method)
- Use precision electronic levels at designated points
- Compare with laser tracker measurements
- **Acceptance:** Agreement within 0.02°

**Step 13:** Document final attitude
- Final pitch: _______ ° (within ± 0.05°: ☐ YES  ☐ NO)
- Final roll: _______ ° (within ± 0.05°: ☐ YES  ☐ NO)
- Stability verified: ☐ YES  ☐ NO
- Independent verification: ☐ PASS  ☐ FAIL

### 6.6 Lock Configuration

**Step 14:** Lock aircraft in leveled position
- Engage all jack locks
- Install gust locks (if applicable)
- Mark jack positions for reference
- **DO NOT** lower jacks until weighing is complete

**Step 15:** Verify configuration is maintained
- Visual inspection of all jacks
- Re-check one reference point with laser tracker
- Confirm no movement

---

## 7. Acceptance Criteria

✓ Pitch: 0.00° ± 0.05°  
✓ Roll: 0.00° ± 0.05°  
✓ Stability: No drift > 0.01° in 10 minutes  
✓ Independent verification: Agreement within 0.02°  
✓ Environmental conditions: All within limits  
✓ Configuration locked and verified  

---

## 8. Documentation

Complete the following and attach to weighing report:

- [ ] Environmental condition log
- [ ] Initial and final attitude measurements
- [ ] Adjustment log (all jack movements)
- [ ] Laser tracker measurement data
- [ ] Independent verification measurements
- [ ] Photographs of setup and reference points

---

## 9. Troubleshooting

| Issue | Possible Cause | Corrective Action |
|-------|----------------|-------------------|
| Cannot achieve tolerance | Floor not level | Re-position aircraft; verify floor levelness |
| Drift during stability check | Jacks settling | Allow longer settling time; re-level |
| Laser tracker unstable | Environmental disturbance | Check for air currents; verify tracker setup |
| Measurements don't agree | Target misalignment | Re-install targets; verify datum locations |

---

## 10. Completion Sign-Off

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Technician 1 | | | |
| Technician 2 | | | |
| Weight & Balance Engineer | | | |

---

**Procedure Complete. Aircraft ready for weighing.**

*This procedure complies with ATA 08 requirements and industry standards.*
