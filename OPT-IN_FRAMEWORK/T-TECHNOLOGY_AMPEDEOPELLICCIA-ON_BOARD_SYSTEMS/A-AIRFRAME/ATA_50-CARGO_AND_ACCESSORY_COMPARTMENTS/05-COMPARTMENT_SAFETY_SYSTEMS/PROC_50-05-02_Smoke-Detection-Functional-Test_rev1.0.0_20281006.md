# Procedure: 50-05-02 - Smoke Detection Functional Test

**Document ID:** PROC_50-05-02_Smoke-Detection-Functional-Test_rev1.0.0_20281006  
**Revision:** 1.0.0  
**Effective Date:** 2028-10-06

## 1. Scope
This procedure covers the functional test of cargo compartment smoke detection systems to verify proper operation and response time.

## 2. Applicable Aircraft
All AMPEL360 BWB aircraft

## 3. Interval
- Every 500 flight hours or 6 months, whichever comes first
- After smoke detector replacement
- After fire protection system maintenance
- As required by troubleshooting procedures

## 4. Prerequisites
- Aircraft power ON
- Fire suppression bottle squibs safetied/disconnected per AMM 26-21-01
- Flight crew or ground test personnel available in cockpit
- Maintenance personnel in cargo compartment

## 5. Required Equipment
- Calibrated smoke source (Aerosol type per spec GSE-SMOKE-01)
- Stopwatch
- Communication system (intercom or radio)
- Camera for documentation (optional but recommended)

## 6. Safety Precautions
**WARNING:** Fire suppression squibs MUST be safetied/disconnected before testing to prevent accidental discharge.

**CAUTION:** Notify all personnel before test to prevent false emergency response.

**CAUTION:** Test smoke may trigger building fire alarms if aircraft is in enclosed hangar. Coordinate with facility management.

## 7. Procedure

### 7.1 Pre-Test Setup
1. **Coordinate with flight deck:**
   - Notify of impending smoke detector test
   - Verify fire detection system is in normal operating mode
   - Confirm fire suppression squibs are safetied
   - Establish clear communication protocol

2. **Verify test equipment:**
   - Check smoke source aerosol can is not expired
   - Verify smoke source meets GSE-SMOKE-01 specification
   - Test stopwatch function
   - Ensure adequate lighting in compartment

3. **Record initial conditions:**
   - Smoke detector status on EICAS: _____ (should show "NORMAL")
   - Fire warning lights: _____ (should be "OFF")
   - Compartment temperature: _____ °C
   - Time: _____

### 7.2 Functional Test - Forward Cargo Compartment

#### Detector Loop A
1. **Locate detector inlet:**
   - Forward cargo compartment has 2 detector loops (A and B)
   - Loop A inlet is located at station FS 17.5, port side ceiling
   
2. **Introduce smoke:**
   - Position smoke source 10-15 cm from detector inlet
   - Start stopwatch simultaneously
   - Actuate smoke source for 2-3 seconds
   - Maintain smoke flow for additional 5 seconds if no alarm

3. **Monitor response:**
   - Watch for cockpit fire warning light illumination
   - Listen for aural warning
   - Record time to alarm activation: _____ seconds (spec: ≤ 60 sec)
   - Verify EICAS message "FIRE FWD CARGO" appears
   - Verify master warning activates

4. **Allow system to clear:**
   - Stop smoke introduction
   - Open compartment ventilation (if available)
   - Wait for smoke to dissipate (typically 2-3 minutes)
   - Verify warning indications extinguish
   - Record time for alarm to clear: _____ seconds

#### Detector Loop B
5. Repeat test procedure for Loop B
   - Loop B inlet is located at station FS 20.0, starboard side ceiling
   - Record all measurements

### 7.3 Functional Test - Aft Cargo Compartment
1. Repeat full test procedure for aft cargo compartment
   - Aft compartment has 2 detector loops (A and B)
   - Loop A: FS 34.0, port side
   - Loop B: FS 36.5, starboard side
2. Record all measurements for each loop

### 7.4 System Response Verification
After each detector test, verify in cockpit:
1. Fire warning light illuminated (specific compartment)
2. Master warning light illuminated
3. Aural warning activated (continuous or pulsing tone)
4. EICAS message correct and specific to compartment
5. Fire suppression armed indication (but NOT discharged)
6. OMS/MAINT page shows correct system status

### 7.5 Post-Test Verification
1. **Verify all systems reset:**
   - All fire warning lights OFF
   - No residual EICAS messages
   - System status shows NORMAL on OMS
   
2. **Reconnect fire suppression squibs:**
   - Remove safety devices per AMM 26-21-01
   - Verify squib connections secure
   - Perform suppression system built-in-test (BITE)
   - Verify BITE passes

## 8. Acceptance Criteria
- Alarm activates within 60 seconds of smoke introduction
- All cockpit indications correct and specific to tested compartment
- Aural warning activates
- EICAS message correct
- System clears within 5 minutes after smoke removal
- All indications extinguish when smoke clears
- Fire suppression system arms but does not discharge

## 9. Test Results Summary
| Detector | Alarm Time (sec) | EICAS OK | Aural OK | Lights OK | Clear Time (sec) | Pass/Fail |
|----------|------------------|----------|----------|-----------|------------------|-----------|
| FWD Loop A | | | | | | |
| FWD Loop B | | | | | | |
| AFT Loop A | | | | | | |
| AFT Loop B | | | | | | |

## 10. Pass/Fail Criteria
- **PASS:** Alarm activates within 60 seconds and all indications are correct
- **FAIL:** Alarm fails to activate, is delayed >60s, or indications are incorrect

## 11. Troubleshooting
| Problem | Possible Cause | Action |
|---------|---------------|--------|
| No alarm | Detector failure | Replace detector per AMM 26-12-00 |
| Slow response (>60s) | Weak smoke source or airflow issue | Check smoke source, verify detector clear |
| Wrong EICAS message | System wiring fault | Troubleshoot per AMM 26-12-01 |
| No aural warning | Cockpit speaker/buzzer fault | Troubleshoot per AMM 25-61-00 |
| Won't clear | Smoke residue in detector | Flush detector per AMM 26-12-02 |

## 12. Documentation
1. Record all measurements on Form ATA50-SMOKE-01
2. Record pass/fail for each detector loop
3. Attach OMS snapshot showing system status
4. Photograph cockpit indications (if camera available)
5. Document any corrective actions taken
6. Update aircraft maintenance records
7. Inspector sign-off required

## 13. Return to Service
Aircraft may return to service only after:
- All detector loops test satisfactorily
- Fire suppression squibs reconnected and verified
- Suppression system BITE passes
- All documentation complete
- Inspector sign-off obtained

## 14. References
- AMM 26-12-00 Smoke Detection System
- AMM 26-21-01 Fire Suppression System
- AMM 25-61-00 Audio Warning Systems
- GSE-SMOKE-01 Test Smoke Source Specification
- CS-25.858 Cargo Compartment Fire Detection
