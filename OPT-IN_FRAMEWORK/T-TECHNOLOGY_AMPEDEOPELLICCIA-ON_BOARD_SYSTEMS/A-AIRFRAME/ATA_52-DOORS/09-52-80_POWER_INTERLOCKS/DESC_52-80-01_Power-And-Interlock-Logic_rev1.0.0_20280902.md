# Description: 52-80-01 - Power and Interlock Logic
**Revision:** 1.0.0
**Effective Date:** 2028-09-02

## 1. Overview
This document describes the electrical power distribution and interlock logic for door systems on the AMPEL360 aircraft.

## 2. Power Sources
- Primary: 28 VDC from main bus
- Backup: Emergency battery bus (30 minutes minimum)
- Ground service: External GPU compatible

## 3. Interlock Logic

### 3.1 Door Opening Interlocks
Door opening is inhibited when:
- Cabin differential pressure > 0.5 kPa
- Landing gear not extended (for main doors)
- Aircraft speed > 80 knots (ground speed sensor)
- Parking brake not set (for powered cargo doors)

### 3.2 Door Closing Interlocks
Door closing is inhibited when:
- Obstruction detected (pressure sensors)
- Emergency slide armed (for main doors)
- Maintenance mode active

### 3.3 Slide Arming Interlocks
Slide cannot be armed when:
- Door not fully closed and locked
- Ground service mode active
- Override switch activated (maintenance)

## 4. Power Distribution
```
Main Bus (28 VDC)
├── Door Position Sensors (continuous)
├── Door Locks (momentary, 5A max)
├── Power Door Motors (15A max per door)
├── Warning Lights (2A total)
└── Control Logic Units (3A total)
```

## 5. Circuit Protection
- Each door circuit protected by individual circuit breaker
- Overload protection: 150% rated current for 2 minutes
- Short circuit protection: instantaneous trip at 500% rated current

## 6. Failure Modes
- Loss of primary power: Automatic switchover to emergency bus
- Sensor failure: Default to "unsafe" state (door indicated as open)
- Interlock failure: Manual override available with maintenance authorization

## 7. Testing and Verification
- Functional test required after any electrical work
- Interlock verification per ATP_52-A1-01
- Ground testing only - never defeat interlocks in flight configuration

## 8. References
- AMM 52-80-00
- Electrical Load Analysis Report ELAR-52-001
- System Safety Assessment SSA-52-001
