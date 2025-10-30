# PROC_28-60-02 — LH₂ Tank Hydrostatic Pressure Test
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Owner:** Cryogenic Systems Engineering

---

## 1. Purpose

This procedure defines the method for performing hydrostatic pressure testing of liquid hydrogen storage tanks to verify structural integrity and leak tightness.

---

## 2. Scope

This procedure applies to:
- New tank fabrication acceptance testing
- Post-repair pressure testing
- Periodic recertification testing (if required)

---

## 3. Safety

### 3.1 Hazards

⚠️ **DANGER**: High pressure testing can cause catastrophic failure if not properly controlled.

- Pressure vessel burst hazard
- High-pressure water jet hazard
- Slip/trip hazard from water spillage
- Cold injury from rapid decompression

### 3.2 Personal Protective Equipment (PPE)

- Safety glasses with side shields
- Hard hat
- Steel-toed safety boots
- Hearing protection
- Face shield (for personnel at test fixture)

### 3.3 Safety Barriers

- Establish 10-meter safety perimeter during test
- Barricades and warning signs required
- Only authorized personnel in test area
- Emergency stop button accessible

---

## 4. Prerequisites

### 4.1 Equipment and Materials

- Calibrated pressure gauge (0-25 bar range, ±0.25% accuracy)
- Calibrated data logger (if automated)
- Pressure pump (manual or automated)
- High-pressure hoses and fittings (rated >20 bar)
- Deionized water or distilled water (test medium)
- Temperature measurement device (±0.5°C)
- Test fixture and restraints
- Leak detection materials (dye, soap solution, or visual inspection)

### 4.2 Calibration Verification

- Pressure gauge calibration within last 6 months
- Calibration certificate available and verified
- Data logger (if used) calibration current

### 4.3 Documentation

- Test procedure (this document)
- Tank drawing and specification
- Previous test records (if retesting)
- Work order or test plan authorization

### 4.4 Personnel Qualifications

- Test technician: PRESS-TEST authorization required
- Quality inspector: AS9100 qualified
- Test engineer: Approval signature authority

---

## 5. Test Conditions

### 5.1 Environmental

- Ambient temperature: 15-30°C
- Humidity: Not critical
- Test location: Approved pressure test facility

### 5.2 Test Parameters

| Parameter | Value | Units |
|-----------|-------|-------|
| Test Pressure | 15 | bar |
| Hold Time | 10 | minutes |
| Pressurization Rate | ≤ 0.5 | bar/min |
| Depressurization Rate | ≤ 1.0 | bar/min |
| Test Medium | Water (deionized/distilled) | - |

### 5.3 Acceptance Criteria

- No leakage detected
- No visible deformation or distortion
- Pressure drop during hold ≤ 0.2 bar (corrected for temperature)
- No audible sounds indicating structural distress

---

## 6. Procedure

### 6.1 Pre-Test Inspection

1. Visually inspect tank for pre-existing damage
2. Document any anomalies with photographs
3. Verify all ports and fittings are properly sealed except fill port
4. Install pressure gauge and relief device (if used)
5. Position tank in test fixture with proper restraints
6. Install safety barriers and signage

### 6.2 Filling

1. Connect fill line to tank fill port
2. Verify vent ports are open (if multiple ports)
3. Begin filling with water slowly
4. Vent air as tank fills
5. Fill until completely full (no air pockets)
6. Close vent ports
7. Disconnect fill line

### 6.3 Pressurization

1. Connect pressure pump to tank
2. Verify all personnel outside safety perimeter
3. Record initial pressure and temperature
4. Begin pressurization at ≤0.5 bar/min
5. Monitor for leaks continuously during pressurization
6. **STOP IMMEDIATELY** if any leakage or anomaly observed
7. Continue to test pressure (15 bar)
8. Verify pressure gauge readings

### 6.4 Hold Period

1. Isolate tank from pump (close isolation valve)
2. Start timer for 10-minute hold period
3. Record pressure and temperature every minute
4. Inspect all visible surfaces for:
   - Leakage (dye bleeding, water seepage)
   - Deformation (visual distortion)
   - Unusual sounds
5. Photograph any suspected anomalies

### 6.5 Depressurization

1. After hold period complete, slowly open vent valve
2. Depressurize at ≤1.0 bar/min
3. Monitor tank for any changes during depressurization
4. When at atmospheric pressure, disconnect test equipment
5. Drain water completely from tank
6. Dry interior (compressed air purge or vacuum dry)

### 6.6 Post-Test Inspection

1. Visually inspect all surfaces
2. Compare to pre-test condition
3. Measure critical dimensions if required
4. Perform helium leak test (see PROC_28-60-07)

---

## 7. Data Recording

### 7.1 Pre-Test Data

- Tank ID: ________________
- Test date: ________________
- Ambient temp: ________ °C
- Test technician: ________________
- QA inspector: ________________

### 7.2 Test Data

| Time (min) | Pressure (bar) | Temperature (°C) | Observations |
|------------|----------------|------------------|--------------|
| 0 | | | |
| 1 | | | |
| 2 | | | |
| ... | | | |
| 10 | | | |

### 7.3 Test Results

- Maximum pressure achieved: ________ bar
- Hold time: ________ minutes
- Pressure drop (temperature corrected): ________ bar
- Leakage observed: ☐ Yes ☐ No
- Deformation observed: ☐ Yes ☐ No
- Test outcome: ☐ Pass ☐ Fail

---

## 8. Disposition

### 8.1 Pass Criteria

If all acceptance criteria met:
- Mark test as PASS
- Affix pressure test date label on tank
- Proceed to helium leak test
- Release for next manufacturing step or service

### 8.2 Fail Criteria

If any acceptance criterion not met:
- Mark test as FAIL
- Quarantine tank (red tag)
- Generate Nonconformance Report (NCR)
- Engineering review required for disposition
- Do not proceed to next step

### 8.3 Retesting

If rework performed:
- Repeat full procedure after rework completion
- Document retest in new test report
- Reference original NCR

---

## 9. Documentation

### 9.1 Required Records

- Completed test data sheet
- Pressure vs. time chart (if automated)
- Pre-test and post-test photographs
- Calibration certificates (pressure gauge)
- Nonconformance reports (if applicable)

### 9.2 Report Distribution

- Tank traveler/history file
- Quality records database
- Customer (if required by contract)

---

## 10. References

- ASME BPVC Section VIII: Pressure vessel testing
- ISO 24490: Cryogenic vessels — Insulated pressure vessels
- Tank design specification: DESC_28-60-02

---

## 11. Revision History

| Revision | Date | Author | Description |
|----------|------|--------|-------------|
| 1.0.0 | 2025-10-30 | Cryogenic Systems Engineering | Initial release |

---

## 12. Approvals

**Prepared by:** Test Engineering  
**Reviewed by:** Quality Assurance, Safety Engineering  
**Approved by:** Chief Engineer - Cryogenic Systems  
**Date:** 2025-10-30

---

*This document is part of ATA 28-60-00 — Cryogenic H₂ Storage and Distribution*
