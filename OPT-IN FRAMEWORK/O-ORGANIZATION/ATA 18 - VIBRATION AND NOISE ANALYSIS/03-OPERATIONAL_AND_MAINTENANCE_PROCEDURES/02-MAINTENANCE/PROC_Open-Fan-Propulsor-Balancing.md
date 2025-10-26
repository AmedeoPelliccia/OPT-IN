# PROC – Open-Fan Propulsor Balancing

**Document ID:** PROC_Open-Fan-Propulsor-Balancing  
**Revision:** 1.0.0  
**Effective Date:** 2028-04-15  
**Status:** Released

---

## 1. Purpose and Scope

This procedure defines the requirements and methodology for balancing open-fan propulsors on AMPEL360 aircraft. Propulsor balancing minimizes vibration, extends component life, and maintains passenger comfort.

**Applicability:** All AMPEL360 aircraft with open-fan propulsion system (ATA 61)

---

## 2. When to Perform Balancing

### 2.1 Scheduled Maintenance

| Interval | Reason |
|----------|--------|
| Every 5,000 FH | Preventive maintenance (ATA 05) |
| Propulsor blade replacement | Restore balance after hardware change |
| Spinner replacement | Restore balance after hardware change |

### 2.2 Unscheduled Maintenance

| Trigger | Threshold |
|---------|-----------|
| AMBER vibration alert | 1× vibration > 0.16 ips |
| Pilot squawk | "Unusual vibration" |
| Trending analysis | EWMA z-score > 3 for 3 flights |

---

## 3. Safety Precautions

### 3.1 Hazards

- **Rotating Propulsor:** Blade strike hazard during engine run
- **Jet Blast:** High-velocity exhaust from engine core
- **Noise:** > 110 dB during engine run (hearing protection required)
- **Foreign Object Debris (FOD):** Loose tools/equipment ingestion

### 3.2 Controls

- **Run-Up Zone:** Conduct in designated engine run area with FOD-free surface
- **Safety Barriers:** 100 ft exclusion zone marked with cones
- **Fire Extinguisher:** CO₂ or Halon, 50 lb capacity, positioned within 25 ft
- **Communication:** Headsets with active noise cancellation for all personnel
- **Personal Protective Equipment (PPE):** Hearing protection (NRR 30+), safety glasses, high-visibility vest

---

## 4. Personnel Requirements

| Role | Qualification | Quantity |
|------|--------------|----------|
| AMT (Lead) | Propulsion systems, 5+ years | 1 |
| AMT (Assistant) | Propulsion systems, 2+ years | 1 |
| Ground Runner | Engine run qualified | 1 |
| Safety Observer | Ground operations certified | 1 |

**Minimum Crew:** 3 (AMT Lead, Ground Runner, Safety Observer)

---

## 5. Equipment and Materials

### 5.1 Vibration Instrumentation

| Item | Part Number | Quantity |
|------|-------------|----------|
| Portable Vibration Analyzer | AP360-T020 | 1 |
| Magnetic-Mount Accelerometers | PCB-356A15-M | 2 |
| Optical Tachometer | MTN-1210 | 1 |
| Tachometer Reflective Tape | 3M-8901 | 1 roll |

### 5.2 Balancing Materials

| Item | Part Number | Quantity |
|------|-------------|----------|
| Balance Weights (5g) | AP360-BW-005 | 10 |
| Balance Weights (10g) | AP360-BW-010 | 10 |
| Balance Weights (15g) | AP360-BW-015 | 5 |
| Adhesive (for weights) | Loctite-496 | 1 tube |
| Primer (for adhesive) | Loctite-770 | 1 bottle |
| Spinner Balance Template | AP360-TMPL-SPIN | 1 |

### 5.3 Tools

| Item | Part Number |
|------|-------------|
| Torque Wrench (0-50 N⋅m) | Snap-On QJFR050 |
| Digital Angle Finder | Wixey WR300 |
| Cleaning Solvent (MEK) | MIL-M-6171 |
| Lint-Free Wipes | Kimwipes |
| Flashlight | - |
| Step Ladder (6 ft) | - |

---

## 6. Pre-Balance Inspection

### 6.1 Visual Inspection

Inspect the following and document any findings:

**Propulsor Blades:**
- [ ] Cracks, nicks, or erosion (minor: < 1 mm depth OK; major: refer to AMM 61-10-00)
- [ ] Leading edge erosion tape condition (replace if > 50% worn)
- [ ] Blade angle consistent across all blades (visual check)

**Spinner:**
- [ ] Cracks or damage
- [ ] Attachment hardware tight (torque check per AMM)
- [ ] Existing balance weights secure (tap test)
- [ ] FOD in spinner cavity (remove any ice, debris)

**Nacelle Mounts:**
- [ ] Loose fasteners (torque check)
- [ ] Cracks in mount structure
- [ ] Rubber isolators (check for deterioration)

**Reject Criteria:**
- If major blade damage found, replace blade before balancing
- If spinner cracked, replace spinner before balancing
- If mount structure damaged, repair before balancing

---

## 7. Baseline Vibration Measurement

### 7.1 Sensor Installation

**Accelerometer #1 (Axial):**
- Location: Forward nacelle mount, axial orientation (aligned with thrust line)
- Mounting: Magnetic mount on machined surface
- Channel: DAU Channel 1

**Accelerometer #2 (Radial):**
- Location: Forward nacelle mount, radial orientation (perpendicular to thrust line)
- Mounting: Magnetic mount on machined surface
- Channel: DAU Channel 2

**Tachometer:**
- Location: Aim at spinner nose (reflective tape on center)
- Distance: 1-2 ft from spinner
- Channel: DAU Tach Input

### 7.2 Engine Run for Baseline

**Run Sequence:**
1. Start engine per AMM 70-21-00
2. Stabilize at idle (N1 = 600 RPM) for 2 minutes
3. Record vibration for 30 seconds
4. Advance to 60% N1 (1000 RPM) for 2 minutes
5. Record vibration for 30 seconds
6. Advance to 80% N1 (1200 RPM) for 2 minutes
7. Record vibration for 30 seconds
8. Retard to idle
9. Shutdown engine

**Safety Notes:**
- Pilot (or ground runner) at controls, qualified for engine runs
- No personnel forward of engine inlet plane
- All loose items secured (no FOD hazard)

### 7.3 Baseline Data Review

**Vibration Analyzer Display:**
- 1× amplitude (synchronous with N1)
- 2× amplitude (second harmonic)
- Phase angle (0-360°, relative to tachometer mark)

**Example Baseline:**
```
N1 = 1200 RPM (20 Hz)
1× Amplitude: 0.22 ips (AMBER, requires balancing)
Phase: 145°
```

**Interpretation:**
- 1× amplitude indicates imbalance severity
- Phase angle indicates imbalance location

---

## 8. Balance Weight Calculation

### 8.1 Single-Plane Balancing Method

**Formula:**
```
Weight (grams) = (Vibration_ips / Sensitivity) × Radius_mm / 10

Sensitivity (empirical for AMPEL360) = 0.015 ips/g at R=300mm
Radius = 300 mm (typical balance plane radius on spinner)
```

**Example:**
```
Vibration = 0.22 ips
Weight = (0.22 / 0.015) × 300 / 10 = 44 grams
```

**Round to Available Weight:** Use 2× 15g + 1× 10g + 1× 5g = 45g

### 8.2 Weight Placement

**Angle Calculation:**
- Place weight at angle opposite to heavy spot
- Heavy spot angle = Phase angle measured
- Weight placement angle = (Phase + 180°) mod 360°

**Example:**
```
Phase = 145° (heavy spot)
Weight angle = (145 + 180) mod 360 = 325°
```

**Using Balance Template:**
1. Position template on spinner with 0° aligned to tachometer mark
2. Locate 325° position on template
3. Mark position with grease pencil

---

## 9. Weight Installation

### 9.1 Surface Preparation

1. Clean bonding area with MEK (Methyl Ethyl Ketone)
2. Allow to air dry (2 minutes)
3. Apply Loctite 770 primer (thin coat)
4. Allow primer to flash off (30 seconds)

### 9.2 Weight Bonding

1. Apply Loctite 496 adhesive to weight back surface (thin, even coat)
2. Press weight firmly onto marked position
3. Hold for 10 seconds
4. Allow to cure for 5 minutes before engine run

**Weight Orientation:**
- Weights must be oriented tangentially (not radially) to minimize aerodynamic drag
- Multiple weights may be stacked at same location if total weight < 50g

---

## 10. Verification Run

### 10.1 Post-Balance Measurement

Repeat engine run sequence (idle, 60%, 80% N1) and record vibration:

**Target:**
```
1× Vibration: < 0.10 ips (GREEN range)
```

**Example Results:**
```
Before Balancing: 0.22 ips at 145°
After Balancing:  0.06 ips at 72°
Improvement: 73% reduction
```

**Acceptance Criteria:**
- 1× vibration < 0.10 ips: **PASS**, proceed to close-up
- 1× vibration 0.10-0.15 ips: **ACCEPTABLE**, close-up with notation
- 1× vibration > 0.15 ips: **FAIL**, iterate balance (see Section 11)

---

## 11. Iterative Balancing (If Required)

If initial balance attempt does not achieve target:

### 11.1 Trim Balance

**If vibration improved but still elevated (0.10-0.15 ips):**
1. Calculate trim weight:
   ```
   Trim weight = Remaining vibration × Original weight / Original vibration
   ```
2. Add trim weight at same location as original weight (or opposite if over-corrected)

**Example:**
```
Remaining vibration: 0.12 ips
Trim weight = 0.12 × 45g / 0.22 = 24g
Add 20g weight (2× 10g) at 325°
```

### 11.2 Re-Balance (If Trim Unsuccessful)

**If vibration did not improve or worsened:**
1. Remove all balance weights
2. Re-inspect propulsor for damaged blade or loose hardware
3. Repeat baseline measurement
4. Recalculate weight and placement
5. Maximum 3 balance attempts; if unsuccessful, escalate to engineering

---

## 12. Documentation and Close-Up

### 12.1 Balance Record

Complete form **F-ATA61-001: Propulsor Balance Record**

**Required Information:**
- Aircraft registration and MSN
- Propulsor position (L or R)
- Propulsor serial number
- Date and time of balance
- Baseline vibration (before)
- Final vibration (after)
- Balance weights installed (location and mass)
- AMT name and license number

### 12.2 Logbook Entry

**Aircraft Maintenance Log:**
```
"Performed open-fan propulsor balancing, [L/R] engine.
Baseline: 0.22 ips. Final: 0.06 ips. Balance weights installed: 
45g at 325°. Run test satisfactory. RTS."
```

**Sign-off:** AMT license, inspector stamp (if required)

### 12.3 DPP Update

Update Digital Product Passport (ATA 95):
- Link: `DPP://MSN-XXX/PROPULSOR-BAL/YYYY-MM-DD`
- Record: Balance weight configuration, vibration reduction

### 12.4 Remove Test Equipment

1. Remove accelerometers and tachometer
2. Remove reflective tape from spinner (clean residue with IPA)
3. Inspect spinner for any damage caused by test equipment
4. Secure cowlings and access panels

---

## 13. Functional Check Flight (If Required)

**When Required:**
- After RED vibration alert (regulation)
- After multiple balance attempts (> 2)
- At discretion of AMT or Engineering

**Flight Profile:**
- Duration: 1 hour minimum
- Altitude: Climb to cruise altitude (FL350)
- Power settings: Idle, cruise, and maximum continuous
- Vibration monitoring: DAU recording active

**Acceptance:**
- Vibration remains in GREEN range throughout flight
- No flight crew squawks

---

## 14. Troubleshooting

### 14.1 Balance Not Achieved After 3 Attempts

**Possible Causes:**
- Damaged propulsor blade (replace blade)
- Loose blade retention (torque check per AMM)
- Bent spinner (replace spinner)
- Gearbox bearing fault (envelope analysis to confirm)

**Action:** Escalate to Engineering for investigation

### 14.2 Vibration Decreases But Phase Shifts Dramatically

**Possible Cause:** Multi-plane imbalance (aft propulsor mount also out of balance)

**Action:** Perform two-plane balance (requires additional sensor at aft mount; consult Engineering)

---

## 15. Training Requirements

- AMT Propulsor Balancing Course: 16 hours (classroom + hands-on)
- Supervised balances: 3 minimum before solo authorization
- Refresher: Every 24 months

---

## 16. Cross-References

- **AMM 61-43-00**: Propulsor Balancing (detailed procedures)
- **AMM 61-10-00**: Propulsor Blade Inspection
- **AMM 70-21-00**: Engine Ground Run
- **ATA 18 LIMITS**: Vibration thresholds
- **ATA 05**: Scheduled maintenance intervals

---

**Document Control:**
- **Next Review:** 2029-04-15
- **Change Authority:** Propulsion Engineering

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
