# SPEC: Flight Control Loading Actuators

**Document ID:** SPEC-ATA116-04-01  
**Revision:** 2.3.0  
**Effective Date:** 2029-01-01  
**Simulator ID:** FFS-001

---

## 1. Purpose

This specification defines the control loading system requirements for the AMPEL360 Full Flight Simulator, providing realistic force feedback on pilot flight controls to replicate the fly-by-wire handling characteristics of the Blended Wing Body aircraft.

---

## 2. System Overview

The Control Loading System applies dynamic forces to the pilot's flight controls (yoke, rudder pedals, throttle quadrant) based on:
- Airspeed and dynamic pressure
- Control surface position and rate
- Fly-by-wire control law feedback
- Failure modes and degraded control states

### 2.1 AMPEL360-Specific Requirements
The tailless BWB configuration with advanced fly-by-wire presents unique control loading challenges:
- **Integrated Control:** Elevons (combined elevator + aileron)
- **Fly-by-Wire Feel:** Artificial control forces (no direct mechanical linkage)
- **Control Law Integration:** Control forces must reflect FBW envelope protection
- **Degraded Modes:** Different force profiles for backup control modes

---

## 3. Technical Specifications

### 3.1 Control Axes

#### Yoke (Pitch/Roll)

| Parameter | Specification |
|-----------|--------------|
| **Type** | Electric servo actuator (dual-axis) |
| **Pitch Range** | ±20° (forward/aft) |
| **Roll Range** | ±90° (left/right) |
| **Max Force (Pitch)** | 150 N (pull), 100 N (push) |
| **Max Force (Roll)** | 80 N (each direction) |
| **Breakout Force** | 3 - 8 N (adjustable) |
| **Gradient** | Dynamic (0.5 - 5 N/degree, speed-dependent) |
| **Bandwidth** | DC to 10 Hz (-3dB) |
| **Latency** | < 20 ms (from host command to force change) |

#### Rudder Pedals

| Parameter | Specification |
|-----------|--------------|
| **Type** | Electric servo actuator (single-axis per pedal) |
| **Range** | ±15° (left/right) |
| **Max Force** | 180 N (per pedal) |
| **Breakout Force** | 5 - 10 N |
| **Gradient** | 3 - 10 N/degree (speed-dependent) |
| **Bandwidth** | DC to 8 Hz (-3dB) |
| **Latency** | < 20 ms |

#### Throttle Quadrant

| Parameter | Specification |
|-----------|--------------|
| **Type** | Electric servo actuator (2 levers) |
| **Range** | 0° (idle) to 75° (full thrust) |
| **Max Force** | 50 N (per lever) |
| **Detents** | Idle, Climb, Max Continuous (programmable) |
| **Gradient** | 0.3 - 1.5 N/degree |
| **Bandwidth** | DC to 5 Hz (-3dB) |
| **Latency** | < 20 ms |

### 3.2 Force Profile Characteristics

#### AMPEL360 BWB Feel System
- **Stick Force per g:** 10 - 15 N/g (adjustable, typical fly-by-wire)
- **Neutral Point:** Dynamically shifted by control laws
- **Force Gradient:** Speed-dependent (higher forces at high speed)
- **Envelope Protection:** Force increase near envelope limits (stall, overspeed)

#### Special Features
- **Control Law Integration:** Forces reflect FBW protections (e.g., α-protection, bank angle limit)
- **Trim Relief:** Yoke force reduces to zero when trimmed
- **Degraded Modes:** Alternative force profiles for direct law, mechanical backup

---

## 4. Actuator Specifications

### 4.1 Electric Servo Actuators

| Parameter | Specification |
|-----------|--------------|
| **Motor Type** | Brushless DC servo motor |
| **Position Encoder** | Absolute, 0.01° resolution |
| **Force Sensor** | Load cell, 0.1 N resolution |
| **Control Loop Rate** | 1000 Hz |
| **Safety Factor** | 2.0× nominal force |

### 4.2 Safety Features
- Redundant position and force sensors
- Overload detection and force limiting
- Emergency release mechanism (pilot can override)
- Independent E-stop integration

---

## 5. Interface Requirements

### 5.1 Host Computer Interface
- **Protocol:** Custom ICD (Ethernet UDP)
- **Data Rate:** 500 Hz update from host
- **Network:** Dedicated control loading VLAN
- **Data Content:**
  - Desired force (per axis)
  - Control position
  - Control law mode
  - Trim position

### 5.2 Control Loading Controller
- **Type:** Real-time embedded controller (Linux PREEMPT_RT)
- **Input Latency:** < 5 ms processing time
- **Output:** Force commands to actuators at 1000 Hz

---

## 6. Force Profile Tables (AMPEL360 BWB)

### 6.1 Pitch Control (Yoke) - Normal Law

| Airspeed (KIAS) | Breakout (N) | Gradient (N/deg) | Max Force (N) |
|-----------------|--------------|------------------|---------------|
| 0 - 100 | 5 | 1.0 | 50 |
| 100 - 200 | 6 | 2.5 | 100 |
| 200 - 300 | 7 | 4.0 | 150 |
| > 300 | 8 | 5.0 | 150 |

### 6.2 Roll Control (Yoke) - Normal Law

| Airspeed (KIAS) | Breakout (N) | Gradient (N/deg) | Max Force (N) |
|-----------------|--------------|------------------|---------------|
| 0 - 100 | 3 | 0.3 | 40 |
| 100 - 200 | 4 | 0.5 | 60 |
| 200 - 300 | 5 | 0.8 | 80 |
| > 300 | 6 | 1.0 | 80 |

---

## 7. Compliance & Qualification

### 7.1 Applicable Standards
- EASA CS-FSTD(A) Issue 2, Section 4.F (Control Loading)
- MIL-STD-1472 (Human Engineering)

### 7.2 Qualification Test References
- **QTG-TEST_4.F.1:** Control Loading Fidelity (force vs. position)
- **QTG-TEST_4.A.1a:** Transport Delay (Latency)

---

## 8. Calibration & Maintenance

### 8.1 Calibration Requirements
- **Frequency:** Semi-annually or after actuator replacement
- **Procedure:** Force sensor calibration, breakout force verification
- **Tools Required:**
  - Calibrated force gauge (PN: T-CL-001)
  - Position encoder verification tool

### 8.2 Maintenance Schedule
- **Daily:** Pre-flight control loading check (verify force feedback on all axes)
- **Monthly:** Actuator lubrication, cable inspection
- **Semi-Annually:** Full force calibration, encoder verification

---

## 9. Traceability

**Source Data:**
- AMPEL360 Fly-by-Wire Control Law Specification (ATA 27)
- Flight Test Control Feel Report

**Related Documents:**
- ATA 27: Flight Controls (source data for control laws)
- ATA 115: Simulator Host Computer Specification

**QTG Tests:**
- QTG-TEST_4.F.1_Control-Loading-Fidelity.md (future)
- QTG-TEST_4.A.1a_Transport-Delay-Latency.md

**Defect Tracking:** See `/06-REGISTRY_AND_LOGS/defects.csv`

---

## 10. Approval

**Author:** Control Loading Systems Engineer  
**Reviewed by:** Chief Simulator Engineer  
**Approved by:** Simulator Engineering Authority  
**Approval Date:** 2028-12-15  

**Signature:** ______________________

---

*Refs: ATA 115, ATA 27, EASA CS-FSTD(A)*
