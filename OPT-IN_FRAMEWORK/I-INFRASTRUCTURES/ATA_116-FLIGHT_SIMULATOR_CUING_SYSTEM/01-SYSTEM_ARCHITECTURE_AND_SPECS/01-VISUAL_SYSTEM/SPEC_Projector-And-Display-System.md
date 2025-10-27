# SPEC: Projector and Display System

**Document ID:** SPEC-ATA116-01-02  
**Revision:** 2.1.0  
**Effective Date:** 2025-10-27  
**Simulator ID:** FFS-001

---

## 1. Purpose

This specification defines the projector and display system requirements for the AMPEL360 Full Flight Simulator, ensuring seamless, high-brightness, color-accurate visual presentation.

---

## 2. System Overview

The Projector and Display System consists of multiple high-brightness projectors arranged in a panoramic configuration, with automated blending and geometry correction to create a seamless wide field-of-view display.

### 2.1 Configuration
- **3-Projector System:** Left, Center, Right channels
- **Screen Type:** Spherical projection screen, radius 4.5m
- **Screen Material:** High-gain, polarization-preserving
- **Design Eye Point:** Centered on captain's seat

---

## 3. Technical Specifications

### 3.1 Projector Specifications (per unit)

| Parameter | Specification |
|-----------|--------------|
| **Technology** | Laser phosphor (3-chip DLP) |
| **Brightness** | 20,000 lumens minimum |
| **Resolution** | 2560×1600 native (WQXGA) |
| **Contrast Ratio** | 10,000:1 minimum |
| **Lamp Life** | 20,000 hours (laser source) |
| **Color Gamut** | Rec. 709 minimum |
| **Throw Ratio** | 0.8:1 (short throw) |

### 3.2 Display Performance

| Parameter | Specification | Tolerance |
|-----------|--------------|-----------|
| **Color Uniformity (ΔE)** | < 2.0 | ±0.5 |
| **Brightness Uniformity** | > 80% across FOV | - |
| **Geometric Accuracy** | < 2 pixels distortion | - |
| **Blend Zone Width** | 10% overlap per edge | ±2% |

### 3.3 Screen Specifications
- **Total FOV:** 220° horizontal × 80° vertical
- **Screen Gain:** 1.8 (high-gain material)
- **Hot Spot:** < 5% brightness variation

---

## 4. Blending and Alignment

### 4.1 Edge Blending
- Automated soft-edge blending in overlap zones
- Gamma-corrected blending curves
- Real-time blend adjustment via software

### 4.2 Geometric Correction
- Automated warping and keystoning compensation
- Sub-pixel accuracy alignment
- Periodic re-calibration per maintenance schedule

---

## 5. Interface Requirements

### 5.1 Image Generator Interface
- **Input:** DisplayPort 1.4 or HDMI 2.1 per projector
- **Resolution:** 7680×2400 combined (2560×1600 per channel with overlap)
- **Synchronization:** Frame-locked across all channels

### 5.2 Control Interface
- **Network:** Ethernet (SNMP/HTTP for monitoring)
- **Control System:** Integrated with Instructor Operating Station (IOS)

---

## 6. Calibration & Maintenance

### 6.1 Calibration Requirements
- **Frequency:** Quarterly or after lamp/projector replacement
- **Procedure:** See `/03-CALIBRATION_AND_ALIGNMENT/PROC_Visual-Color-And-Geometry-Calibration.md`
- **Tools Required:**
  - Spectroradiometer (PN: T-VS-001)
  - Alignment software (included in IOS)

### 6.2 Maintenance Schedule
- **Daily:** Visual inspection, no artifacts
- **Monthly:** Brightness check, lens cleaning
- **Quarterly:** Full color and geometry calibration
- **Annual:** Lamp replacement (if brightness < 80% nominal)

---

## 7. Compliance & Qualification

### 7.1 Applicable Standards
- EASA CS-FSTD(A) Issue 2, Section 4.C (Visual System)
- ISO 9241-305 (Display ergonomics - optical metrics)

### 7.2 Qualification Test References
- **QTG-TEST_4.C.2b:** Visual Scene Fidelity (includes brightness and color uniformity)

---

## 8. Safety & Environmental

### 8.1 Laser Safety
- **Class:** Class 1 laser product (IEC 60825-1)
- **Interlocks:** Projector shutters close if access panels opened
- **Signage:** "Laser Product" labels per regulatory requirements

### 8.2 Environmental
- **Operating Temperature:** 10°C to 35°C
- **Humidity:** 20% to 80% RH (non-condensing)
- **Cooling:** Forced air, exhaust to HVAC system

---

## 9. Traceability

**Source Data:**
- Projector Manufacturer Specifications
- EASA CS-FSTD(A) Visual System Requirements

**Related Documents:**
- SPEC_Image-Generator-System.md (upstream)
- PROC_Visual-Color-And-Geometry-Calibration.md

**QTG Tests:**
- QTG-TEST_4.C.2b_Visual-Scene-Fidelity.md

**Defect Tracking:** See `/06-REGISTRY_AND_LOGS/defects.csv`

---

## 10. Approval

**Author:** Visual Systems Engineer  
**Reviewed by:** Chief Simulator Engineer  
**Approved by:** Simulator Engineering Authority  
**Approval Date:** 2025-10-27  

**Signature:** ______________________

---

*Refs: ATA 115, ATA 116, EASA CS-FSTD(A)*
