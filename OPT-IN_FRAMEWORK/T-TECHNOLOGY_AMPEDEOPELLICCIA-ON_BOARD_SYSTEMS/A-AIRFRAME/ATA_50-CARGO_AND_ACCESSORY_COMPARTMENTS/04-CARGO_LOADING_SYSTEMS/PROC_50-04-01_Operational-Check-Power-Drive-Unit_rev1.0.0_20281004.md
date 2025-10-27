# Procedure: 50-04-01 - Operational Check of Power Drive Unit

**Document ID:** PROC_50-04-01_Operational-Check-Power-Drive-Unit_rev1.0.0_20281004  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27

## 1. Scope
This procedure covers the operational check of the cargo compartment power drive unit (PDU) used to operate the motorized cargo handling system.

## 2. Applicable Aircraft
AMPEL360 BWB aircraft equipped with powered cargo handling system (optional equipment)

## 3. Interval
- After maintenance on cargo handling system
- Every 500 flight hours
- As required by troubleshooting procedures

## 4. Prerequisites
- Aircraft on ground
- Aircraft electrical power available (28VDC or 115VAC as applicable)
- Cargo compartment empty
- PDU control panel accessible

## 5. Required Tools
- Multimeter
- Current clamp meter
- Stopwatch
- Standard hand tools per AMM 20-00-00

## 6. Safety Precautions
**WARNING:** The cargo handling system includes moving parts that can cause injury. Ensure all personnel are clear of the cargo handling area before operating the system.

**CAUTION:** Do not operate the PDU for more than 2 minutes continuously to avoid overheating.

## 7. Procedure

### 7.1 Pre-operational Checks
1. Verify aircraft electrical power is available and within limits:
   - 28VDC ± 2V, or
   - 115VAC, 400Hz ± 10Hz
2. Visually inspect PDU for:
   - Damage or loose hardware
   - Fluid leaks (hydraulic models)
   - Worn or damaged cables
   - Proper mounting security
3. Check cargo compartment is clear of obstructions
4. Verify emergency stop button is functional

### 7.2 PDU Functional Test
1. **Control panel test:**
   - Power ON the PDU control panel
   - Verify all indicator lights illuminate and then extinguish (self-test)
   - Verify control panel display is clear and readable

2. **Motor run test (no load):**
   - Select FORWARD mode on control panel
   - Press and hold RUN button
   - Verify motor starts within 2 seconds
   - Listen for unusual noise or vibration
   - Monitor motor current: Should be 8-12A for electric PDU
   - Run for 30 seconds
   - Release RUN button, verify motor stops

3. **Reverse operation test:**
   - Select REVERSE mode on control panel
   - Press and hold RUN button
   - Verify motor operates smoothly in reverse
   - Monitor motor current
   - Run for 30 seconds
   - Release RUN button, verify motor stops

4. **Load test:**
   - Place test load (100kg minimum) on cargo handling roller system
   - Select FORWARD mode
   - Press and hold RUN button
   - Verify load moves smoothly without jerking
   - Monitor motor current: Should increase by 3-5A under load
   - Verify load speed is approximately 0.3 m/s
   - Stop load and reverse direction
   - Verify smooth operation in reverse
   - Return load to original position

### 7.3 Emergency Stop Test
1. With system running (no load):
   - Press emergency stop button
   - Verify motor stops immediately (< 1 second)
   - Verify indicator light shows EMERGENCY STOP
2. Reset emergency stop button
3. Verify system can be restarted normally

### 7.4 Electrical Measurements
1. **Motor current draw:**
   - No load: _____ A (spec: 8-12A)
   - Under load: _____ A (spec: 12-17A)
   
2. **Supply voltage:**
   - At PDU input: _____ VDC or VAC
   
3. **Control voltage:**
   - Control panel supply: _____ VDC (spec: 28 ± 2V)

## 8. Acceptance Criteria
- Motor starts within 2 seconds of command
- No unusual noise or vibration
- Current draw within specified limits
- Load moves smoothly at specified speed
- Emergency stop functions correctly
- All indicator lights operate correctly
- No fluid leaks (hydraulic models)

## 9. Troubleshooting
| Symptom | Possible Cause | Action |
|---------|---------------|--------|
| Motor won't start | No power | Check power supply and circuit breakers |
| High current draw | Motor binding | Inspect motor and drive components |
| Slow load movement | Low voltage | Check power supply voltage |
| Jerky operation | Control fault | Check control panel and wiring |

## 10. Documentation
1. Record all measurements on Form ATA50-PDU-01
2. Record pass/fail status
3. Document any discrepancies
4. Update aircraft maintenance records

## 11. References
- AMM 50-04-00 Cargo Loading Systems
- Component Maintenance Manual PDU-100
- Wiring Diagram Manual 50-04-01
