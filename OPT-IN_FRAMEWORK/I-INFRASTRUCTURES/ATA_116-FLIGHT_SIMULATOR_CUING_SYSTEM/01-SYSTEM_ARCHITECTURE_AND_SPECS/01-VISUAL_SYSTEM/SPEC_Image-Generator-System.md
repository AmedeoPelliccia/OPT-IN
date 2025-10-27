# SPEC: Image Generator (IG) System Specification

**Document ID:** SPEC-ATA116-01-01  
**Revision:** 3.0.0  
**Effective Date:** 2025-10-27  
**Simulator ID:** FFS-001

---

## 1. Purpose

This specification defines the Image Generator (IG) system requirements for the AMPEL360 Full Flight Simulator, ensuring compliance with EASA CS-FSTD(A) Level D visual fidelity standards.

---

## 2. System Overview

The Image Generator system produces the out-of-cockpit visual scene, rendering terrain, airports, weather, and traffic in real-time with high fidelity and low latency.

### 2.1 Key Features
- Multi-channel rendering for wide field-of-view
- Real-time weather effects (TrueSky v5+)
- AMPEL360-specific BWB visual characteristics
- Wing flex and ground effect visualization
- Open-fan propulsor visual representation

---

## 3. Technical Specifications

### 3.1 Performance Requirements

| Parameter | Specification | Tolerance |
|-----------|--------------|-----------|
| **Resolution (per channel)** | 7680×2400 pixels | ±0% |
| **Frame Rate** | 60 Hz | ±0.1 Hz |
| **Max Transport Delay** | 40 ms | +10 ms |
| **Number of Channels** | 3 (left, center, right) | - |
| **Total Field of View** | 220° horizontal × 80° vertical | ±2° |
| **Rendering Pipeline** | Physically Based Rendering (PBR) | - |

### 3.2 Visual Database
- **Coverage:** Worldwide, with high-detail airports (>500 airports at Level 4)
- **Terrain Resolution:** 5m/pixel for training areas
- **Texture Resolution:** Up to 4K for critical surfaces
- **Cultural Features:** Buildings, roads, landmarks per EASA requirements

### 3.3 Weather Effects
- Rain, snow, fog, haze
- Cloud layers (up to 8 layers)
- Lightning and precipitation
- Dynamic time-of-day and seasonal variations

### 3.4 Special Visual Effects (AMPEL360-Specific)
- **Wing Flex:** Real-time wing bending visualization during maneuvers
- **Ground Effect:** Visual cues for BWB ground proximity
- **Propulsor Effects:** Rotating fan blades, exhaust distortion
- **Lighting:** Navigation lights, landing lights, strobes

---

## 4. Interface Requirements

### 4.1 Host Computer Interface
- **Protocol:** ARINC 610C / DIS (Distributed Interactive Simulation)
- **Data Rate:** 1000 Hz update rate from host
- **Network:** 10 Gigabit Ethernet

### 4.2 Projector Interface
- **Output:** DisplayPort 1.4 or HDMI 2.1
- **Color Depth:** 10-bit per channel (HDR capable)
- **Synchronization:** Genlock for multi-projector alignment

---

## 5. Compliance & Qualification

### 5.1 Applicable Standards
- EASA CS-FSTD(A) Issue 2, Section 4.C (Visual System)
- ARINC 610C (Visual System Interface)
- ISO/IEC 9241 (Display ergonomics)

### 5.2 Qualification Test References
- **QTG-TEST_4.C.2b:** Visual Scene Fidelity
- **QTG-TEST_4.A.1a:** Transport Delay (Latency)

---

## 6. Operational Constraints

### 6.1 Environmental
- **Operating Temperature:** 18°C to 25°C
- **Humidity:** 30% to 60% RH (non-condensing)
- **Ambient Light:** <1 lux in simulator bay

### 6.2 Maintenance
- Regular calibration per `/03-CALIBRATION_AND_ALIGNMENT/schedule.csv`
- Software updates managed via `/04-SOFTWARE_AND_MODELS/01-IMAGE_GENERATOR_SW/`

---

## 7. Traceability

**Source Data:**
- AMPEL360 Aircraft Visual Model v2.3
- Flight Test Visual Reference Data Package

**Related Documents:**
- ATA 115: Simulator Host Computer Specification
- ATA 27: Flight Controls (source for wing flex data)

**QTG Tests:**
- QTG-TEST_4.C.2b_Visual-Scene-Fidelity.md
- QTG-TEST_4.A.1a_Transport-Delay-Latency.md

**Defect Tracking:** See `/06-REGISTRY_AND_LOGS/defects.csv`

---

## 8. Approval

**Author:** Visual Systems Engineer  
**Reviewed by:** Chief Simulator Engineer  
**Approved by:** Simulator Engineering Authority  
**Approval Date:** 2025-10-27  

**Signature:** ______________________

---

*Refs: ATA 115, ATA 27, EASA CS-FSTD(A)*
