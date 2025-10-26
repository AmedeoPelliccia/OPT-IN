# SPEC: 6-DOF Motion Platform Specification

**Document ID:** SPEC-ATA116-02-01  
**Revision:** 2.5.0  
**Effective Date:** 2029-01-01  
**Simulator ID:** FFS-001

---

## 1. Purpose

This specification defines the six-degree-of-freedom (6-DOF) motion platform requirements for the AMPEL360 Full Flight Simulator, providing realistic motion cues for Level D qualification.

---

## 2. System Overview

The motion platform is a synergistic hexapod (Stewart platform) configuration providing motion in all six degrees of freedom: surge, sway, heave, roll, pitch, and yaw.

### 2.1 Key Features
- Electric actuators for smooth, precise motion
- Advanced washout algorithms for sustained motion illusion
- AMPEL360 BWB-specific motion tuning
- Low latency response to host commands

---

## 3. Technical Specifications

### 3.1 Motion Envelope

| Degree of Freedom | Range | Maximum Rate | Maximum Acceleration |
|-------------------|-------|--------------|---------------------|
| **Surge (X)** | ±1.2 m | ±1.5 m/s | ±18 m/s² |
| **Sway (Y)** | ±1.0 m | ±1.5 m/s | ±18 m/s² |
| **Heave (Z)** | ±0.8 m | ±1.2 m/s | ±20 m/s² (±2g) |
| **Roll (φ)** | ±25° | ±30°/s | ±400°/s² |
| **Pitch (θ)** | ±22° | ±30°/s | ±400°/s² |
| **Yaw (ψ)** | ±22° | ±30°/s | ±400°/s² |

### 3.2 Performance Characteristics

| Parameter | Specification |
|-----------|--------------|
| **Payload Capacity** | 8,000 kg (simulator cockpit + crew) |
| **Motion Bandwidth** | DC to 5 Hz (-3dB) |
| **Transport Delay** | < 50 ms (from host command to first detectable motion) |
| **Repeatability** | ±0.5 mm (position), ±0.1° (attitude) |
| **Noise Level** | < 70 dBA at pilot position |

---

## 4. Actuator Specifications

### 4.1 Electric Actuator Details (per actuator, 6 total)

| Parameter | Specification |
|-----------|--------------|
| **Type** | Electric ball-screw with servo motor |
| **Stroke Length** | 1500 mm |
| **Max Force** | 50 kN |
| **Max Speed** | 500 mm/s |
| **Position Encoder** | Absolute, 0.01 mm resolution |
| **Safety Load Factor** | 2.5× nominal |

### 4.2 Safety Features
- Redundant position sensors per actuator
- Independent emergency stop system
- Hydraulic/mechanical end-stop limiters
- Overload detection and fault response

---

## 5. Washout Algorithm

### 5.1 Classical Washout Parameters (Tuned for AMPEL360 BWB)
- **High-Pass Filters:** Translational channels (surge, sway, heave)
- **Low-Pass Filters:** Rotational channels (roll, pitch, yaw)
- **Adaptive Gains:** Dynamic adjustment based on flight phase

### 5.2 Motion Cueing Philosophy
- Prioritize onset cues for rapid control inputs
- Sustained motion for extended maneuvers (e.g., turns, climbs)
- BWB-specific tuning for unique handling characteristics (tailless, wide-body)

---

## 6. Interface Requirements

### 6.1 Host Computer Interface
- **Protocol:** Custom ICD (see `ICD_Host-To-Motion-Controller.md`)
- **Data Rate:** 1000 Hz update from host
- **Network:** Dedicated 10 Gigabit Ethernet link
- **Data Content:**
  - Aircraft state (position, velocity, acceleration, attitude, rates)
  - Pilot control inputs
  - Environmental data (turbulence, wind)

### 6.2 Motion Controller
- **Type:** Real-time embedded controller (Linux PREEMPT_RT)
- **Input Latency:** < 5 ms processing time
- **Output:** Position commands to 6 actuators at 1000 Hz

---

## 7. Compliance & Qualification

### 7.1 Applicable Standards
- EASA CS-FSTD(A) Issue 2, Section 4.D (Motion System)
- ISO 9241-1 (Motion platform safety)

### 7.2 Qualification Test References
- **QTG-TEST_4.D.1a:** Motion Onset Cues
- **QTG-TEST_4.A.1a:** Transport Delay (Latency)

---

## 8. Calibration & Maintenance

### 8.1 Calibration Requirements
- **Frequency:** Semi-annually or after major maintenance
- **Procedure:** See `/03-CALIBRATION_AND_ALIGNMENT/PROC_Motion-Platform-Washout-Tuning.md`

### 8.2 Maintenance Schedule
- **Daily:** Pre-flight motion check (full range of motion sweep)
- **Weekly:** Actuator lubrication inspection
- **Monthly:** Position encoder calibration verification
- **Semi-Annually:** Full washout algorithm tuning validation

---

## 9. Safety & Emergency Procedures

### 9.1 Emergency Stop
- Red E-Stop buttons at instructor station and simulator entrance
- Immediate halt of all motion (deceleration < 0.5g)
- Automatic return to neutral (level) position

### 9.2 Fault Response
- Actuator failure → immediate safe shutdown, motion freeze
- Power loss → battery backup for controlled descent to neutral
- Encoder mismatch → halt motion, alarm to instructor

---

## 10. Traceability

**Source Data:**
- AMPEL360 Flight Test Motion Data
- BWB Handling Qualities Report

**Related Documents:**
- ICD_Host-To-Motion-Controller.md
- ATA 27: Flight Controls (source data)

**QTG Tests:**
- QTG-TEST_4.D.1a_Motion-Onset-Cues.md
- QTG-TEST_4.A.1a_Transport-Delay-Latency.md

**Defect Tracking:** See `/06-REGISTRY_AND_LOGS/defects.csv`

---

## 11. Approval

**Author:** Motion Systems Engineer  
**Reviewed by:** Chief Simulator Engineer  
**Approved by:** Simulator Engineering Authority  
**Approval Date:** 2028-12-15  

**Signature:** ______________________

---

*Refs: ATA 115, ATA 27, EASA CS-FSTD(A)*
