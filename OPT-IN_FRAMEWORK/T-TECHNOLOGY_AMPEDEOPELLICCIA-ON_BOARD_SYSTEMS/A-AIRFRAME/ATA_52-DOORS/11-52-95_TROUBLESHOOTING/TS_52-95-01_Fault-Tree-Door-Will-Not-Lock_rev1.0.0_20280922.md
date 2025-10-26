# Troubleshooting: 52-95-01 - Fault Tree - Door Will Not Lock
**Revision:** 1.0.0
**Effective Date:** 2028-09-22

## 1. Symptom
Door closes but will not lock. Lock indicator does not illuminate or shows "UNLOCKED" status.

## 2. Safety Precautions
⚠️ **CRITICAL:** Aircraft is NOT airworthy with door not locked. Do not release for flight.
⚠️ **WARNING:** Verify slide is disarmed before troubleshooting.

## 3. Fault Tree

```
DOOR WILL NOT LOCK
│
├─[1] MECHANICAL OBSTRUCTION
│   ├─[1.1] Foreign object in latch mechanism
│   │   └─ Action: Inspect and remove FOD
│   ├─[1.2] Latch pin misaligned
│   │   └─ Action: Check rigging per PROC_52-10-01
│   ├─[1.3] Worn or damaged latch components
│   │   └─ Action: Inspect per DATA_52-50-01, replace as required
│   └─[1.4] Door misrigged
│       └─ Action: Re-rig door per PROC_52-10-01
│
├─[2] ELECTRICAL FAULT
│   ├─[2.1] Lock motor failure
│   │   ├─ Check: Motor operation (should draw 3-5A when operating)
│   │   └─ Action: Replace motor if faulty
│   ├─[2.2] Position sensor failure
│   │   ├─ Check: Sensor output (3.0 mm gap when locked per DATA_52-70-02)
│   │   └─ Action: Replace sensor if out of spec
│   ├─[2.3] Wiring fault
│   │   ├─ Check: Continuity and insulation resistance
│   │   └─ Action: Repair wiring per AMM
│   └─[2.4] Circuit breaker tripped
│       ├─ Check: CB panel - reset if tripped
│       └─ Action: Investigate cause if repeatedly trips
│
├─[3] HYDRAULIC/PNEUMATIC FAULT (if applicable)
│   ├─[3.1] Low system pressure
│   │   ├─ Check: System pressure (should be 3000 psi nominal)
│   │   └─ Action: Restore pressure, check for leaks
│   ├─[3.2] Actuator failure
│   │   ├─ Check: Actuator operation and leakage
│   │   └─ Action: Replace actuator if faulty
│   └─[3.3] Valve malfunction
│       ├─ Check: Valve operation (continuity and resistance)
│       └─ Action: Replace valve if faulty
│
├─[4] CONTROL SYSTEM FAULT
│   ├─[4.1] Control module failure
│   │   ├─ Check: Built-in test (BIT) codes
│   │   └─ Action: Replace module if BIT fails
│   ├─[4.2] Software fault
│   │   ├─ Check: Software version and configuration
│   │   └─ Action: Reload software per AMM
│   └─[4.3] Interlock active
│       ├─ Check: Interlock conditions per DESC_52-80-01
│       └─ Action: Clear interlock condition
│
└─[5] STRUCTURAL ISSUE
    ├─[5.1] Door frame damage/distortion
    │   ├─ Check: Frame alignment and condition
    │   └─ Action: Repair per SRM or engineering disposition
    └─[5.2] Threshold damage
        ├─ Check: Threshold condition per INSP_52-90-01
        └─ Action: Repair or replace threshold
```

## 4. Systematic Troubleshooting Procedure

### Step 1: Initial Checks (5 minutes)
1. Verify door closes fully (no gap between door and frame)
2. Check for obvious obstructions or FOD
3. Verify circuit breaker not tripped
4. Check EICAS for fault codes

### Step 2: Mechanical Inspection (15 minutes)
1. Inspect latch mechanism for damage or wear
2. Check latch pin alignment and engagement depth (should be 20±1 mm)
3. Measure latch backlash (should be ≤2°)
4. Verify no interference or binding throughout lock travel

### Step 3: Electrical Tests (15 minutes)
1. Check lock motor operation and current draw
2. Verify position sensor output
3. Test wiring continuity and insulation
4. Check control signals at door controller

### Step 4: System Tests (10 minutes)
1. For hydraulic systems: verify pressure and actuator operation
2. Check control module BIT codes
3. Verify no active interlocks

### Step 5: Corrective Action
1. Correct identified fault
2. Perform functional test (3 cycles minimum)
3. Verify all indications correct
4. Complete ATP_52-A1-01 if major work performed

## 5. Common Solutions

| Problem | Most Likely Cause | Quick Fix |
|---------|-------------------|-----------|
| Door won't lock after maintenance | Latch misrigged | Re-rig per PROC_52-10-01 |
| Intermittent lock failure | Position sensor drift | Adjust or replace sensor |
| Lock motor runs but no movement | Worn latch components | Replace per DATA_52-50-01 |
| No electrical power to lock | Circuit breaker tripped | Reset CB, investigate cause |

## 6. If Problem Persists
1. Contact Engineering Support
2. Generate detailed discrepancy report with all test results
3. Consider engineering evaluation for structural issues
4. Do NOT attempt unauthorized repairs

## 7. Documentation Requirements
- Record all tests performed and results
- Document corrective actions taken
- Update aircraft log
- If sensor/component replaced, record serial numbers

**Technician:** _________________ Date: _______
**Inspector:** __________________ Date: _______

## 8. References
- AMM 52-10-00, 52-80-00
- PROC_52-10-01: Rigging and Sealing
- DATA_52-50-01: Mechanism Limits
- DATA_52-70-02: Indication Matrix
- DESC_52-80-01: Power and Interlock Logic
- SRM 52-00-00
