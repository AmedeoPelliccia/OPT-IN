# SPEC: Sound System and Acoustic Model

**Document ID:** SPEC-ATA116-03-01  
**Revision:** 2.2.0  
**Effective Date:** 2029-01-01  
**Simulator ID:** FFS-001

---

## 1. Purpose

This specification defines the aural cuing system requirements for the AMPEL360 Full Flight Simulator, providing realistic cockpit and exterior sound environments with special emphasis on hybrid-electric propulsion acoustics.

---

## 2. System Overview

The Aural System recreates the soundscape experienced by the flight crew, including:
- Propulsion system sounds (hybrid-electric open-fan)
- Aerodynamic noise (airflow, buffet, stall warning)
- Cockpit systems (avionics, warning tones, callouts)
- Environmental sounds (rain, wind, ground operations)

### 2.1 AMPEL360-Specific Acoustic Challenges
The Blended Wing Body configuration with hybrid-electric open-fan propulsion presents unique acoustic signatures:
- **Silent Taxi Mode:** Battery/fuel-cell operation produces minimal sound
- **Hybrid Mode Transition:** Acoustic signature changes as thermal engines engage
- **Open-Fan Acoustics:** Distinct blade-pass frequency and propulsor whine
- **BWB Aeroacoustics:** Unique airflow patterns around the integrated wing-body

---

## 3. Technical Specifications

### 3.1 Sound System Hardware

| Parameter | Specification |
|-----------|--------------|
| **Audio Channels** | 16 discrete channels (7.1.6 surround + effects) |
| **Amplifier Power** | 100W RMS per channel |
| **Frequency Response** | 20 Hz - 20 kHz (±3 dB) |
| **Dynamic Range** | 100 dB minimum |
| **THD (Total Harmonic Distortion)** | < 0.1% @ 1 kHz |
| **Latency (Host to Speaker)** | < 40 ms |

### 3.2 Speaker Placement

| Location | Quantity | Purpose |
|----------|----------|---------|
| **Ceiling (Overhead)** | 6 | Overhead panel alerts, rain, environmental |
| **Front (L/C/R)** | 3 | Forward propulsion, avionics, windshield effects |
| **Rear (L/R)** | 2 | Aft cabin, rear systems |
| **Subwoofer (LFE)** | 2 | Engine rumble, turbulence, low-frequency effects |
| **Near-Field (Pilot/Copilot)** | 2 | Headset simulation, direct voice alerts |
| **Effects (Ground)** | 1 | Ground operations, gear/flap noises |

### 3.3 Acoustic Model Parameters

| Sound Source | Frequency Range | SPL Range | Dynamic Control |
|--------------|----------------|-----------|-----------------|
| **Open-Fan Propulsors** | 50 Hz - 8 kHz | 60 - 95 dB | RPM-dependent |
| **Airflow (Cabin)** | 100 Hz - 4 kHz | 50 - 70 dB | Airspeed-dependent |
| **Buffet/Stall** | 20 Hz - 500 Hz | 60 - 85 dB | AoA-dependent |
| **Avionics Tones** | 400 Hz - 2 kHz | 65 - 75 dB | Discrete events |
| **Warning Tones** | 800 Hz - 1.5 kHz | 75 - 85 dB | Priority-based |
| **Rain/Wind** | 200 Hz - 10 kHz | 40 - 70 dB | Weather-dependent |

---

## 4. Acoustic Model - AMPEL360 Hybrid Propulsion

### 4.1 Propulsion Modes

#### Silent/Battery Mode (Taxi, APU Equivalent)
- **SPL:** 45 - 55 dB (near silence, cockpit systems only)
- **Frequency:** Low-frequency hum from inverters (100-300 Hz)

#### Fuel-Cell Mode
- **SPL:** 55 - 65 dB (quiet, cooling fans dominant)
- **Frequency:** Broadband white noise (300 Hz - 2 kHz)

#### Hybrid Mode (Thermal + Electric)
- **SPL:** 70 - 85 dB (moderate, open-fan dominant)
- **Frequency:** Blade-pass frequency (BPF) at ~18 blades × RPM
- **Harmonics:** 2×BPF, 3×BPF audible at high thrust

#### Full Thermal Mode (Climb/Cruise)
- **SPL:** 85 - 95 dB (loud, similar to turbofan but with open-fan character)
- **Frequency:** Broadband jet noise + discrete tones
- **Dynamic:** Thrust-dependent modulation

### 4.2 Transition Modeling
- **Mode Changes:** Smooth 2-second crossfade between propulsion modes
- **RPM Ramp:** Real-time interpolation as engine spools up/down
- **Asymmetric Operation:** Independent control of left/right propulsors

---

## 5. Interface Requirements

### 5.1 Host Computer Interface
- **Protocol:** Ethernet (UDP)
- **Update Rate:** 100 Hz (10 ms period)
- **Data Content:**
  - Propulsor RPM (left, right)
  - Airspeed, altitude
  - Flap/gear position
  - Warning/alert states
  - Weather parameters (rain intensity, wind speed)

### 5.2 Audio Processing
- **DSP Platform:** Real-time audio processor (96 kHz sample rate)
- **Effects:** Doppler shift, reverberation, occlusion
- **Spatialization:** 3D positional audio (HRTF-based)

---

## 6. Compliance & Qualification

### 6.1 Applicable Standards
- EASA CS-FSTD(A) Issue 2, Section 4.E (Aural System)
- ISO 3382 (Acoustics - measurement of room acoustic parameters)

### 6.2 Qualification Test References
- **QTG-TEST_4.E.1:** Aural Fidelity (sound level and frequency spectrum)

---

## 7. Calibration & Maintenance

### 7.1 Calibration Requirements
- **Frequency:** Annually or after speaker replacement
- **Procedure:** SPL meter measurements at design eye point
- **Tools Required:**
  - Class 1 SPL meter (PN: T-AU-001)
  - Pink noise generator

### 7.2 Maintenance Schedule
- **Daily:** Audio system functionality check (play test tones)
- **Monthly:** Speaker inspection, cable integrity
- **Annually:** Full acoustic calibration, frequency response verification

---

## 8. Software & Model Packages

### 8.1 Aural Model Package
- **File:** `/04-SOFTWARE_AND_MODELS/02-AURAL_MODEL_PACKAGE/AURAL_Hybrid-Propulsion-Model_v2.1.0.zip`
- **Contents:**
  - Open-fan propulsor sound samples (44.1 kHz, 24-bit WAV)
  - Battery/fuel-cell system sounds
  - DSP presets and mixing matrices
  - Transition curves and crossfade parameters

---

## 9. Traceability

**Source Data:**
- AMPEL360 Flight Test Acoustic Recordings
- Hybrid Propulsion System Acoustic Analysis Report

**Related Documents:**
- ATA 115: Simulator Host Computer Specification
- ATA 71: Power Plant (propulsion source data)

**QTG Tests:**
- QTG-TEST_4.E.1_Aural-Fidelity.md (future)

**Defect Tracking:** See `/06-REGISTRY_AND_LOGS/defects.csv`

---

## 10. Approval

**Author:** Aural Systems Engineer  
**Reviewed by:** Chief Simulator Engineer  
**Approved by:** Simulator Engineering Authority  
**Approval Date:** 2028-12-15  

**Signature:** ______________________

---

*Refs: ATA 115, ATA 71, EASA CS-FSTD(A)*
