# MRBR Appendix B: Structural Inspection Tasks
**Parent Document:** MRBR_Master-Document_rev1.0.0_20280515  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27

---

## B.1 Introduction
This appendix defines the Structural Inspection Program (SIP) for the AMPEL360 Blended-Wing Body (BWB) aircraft. The program leverages embedded Structural Health Monitoring (SHM) sensors combined with periodic Non-Destructive Testing (NDT) to ensure structural integrity throughout the aircraft's operational life.

---

## B.2 Structural Health Monitoring (SHM) System

### B.2.1 SHM Architecture
The AMPEL360 composite structure incorporates:
- **Fiber Optic Strain Sensors:** Distributed along primary load paths
- **Acoustic Emission (AE) Sensors:** Detect crack propagation and impact damage
- **Piezoelectric Sensors:** Monitor structural vibrations and resonance
- **Temperature Sensors:** Track thermal gradients affecting structural integrity

### B.2.2 SHM Data Integration
All SHM data is continuously transmitted to the Onboard Maintenance System (ATA 45) and recorded in the Digital Product Passport (ATA 95). When sensor readings exceed thresholds, maintenance alerts are automatically generated.

### B.2.3 SHM Limitations
While SHM provides continuous monitoring, it has limitations:
- Sensor coverage gaps in non-critical areas
- Inability to detect certain defect types (e.g., delamination in areas without sensors)
- Potential sensor degradation over time

Therefore, **periodic NDT inspections remain mandatory** to validate SHM data and inspect areas not covered by sensors.

---

## B.3 ATA 53 - BWB Fuselage Structure

### Task 53-10-01: BWB Fuselage Primary Structure NDT
- **Description:** Ultrasonic inspection of primary load-bearing composite structure
- **Philosophy:** On-Condition (SHM-augmented)
- **Initial Interval:** 12,000 FH or 72 Months (subject to revision based on SHM data)
- **Man-Hours:** 40.0 hours (per zone)
- **Required Equipment:** 
  - AP360-T050 (Phased Array Ultrasonic Scanner)
  - AP360-T051 (Advanced Composite Analysis Software)
- **Inspection Zones:**
  - Zone 53-A: Center Body Pressure Vessel
  - Zone 53-B: Wing-Body Integration Zone (Primary)
  - Zone 53-C: Aft Pressure Bulkhead
  - Zone 53-D: Forward Equipment Bay Floor
- **Acceptance Criteria:**
  - No delamination > 25mm diameter
  - No through-thickness cracks
  - Porosity < 3% by volume
  - SHM sensor readings correlate with NDT findings within ±10%
- **Justification:** The BWB configuration creates unique load distributions. While SHM provides continuous monitoring, periodic NDT validates sensor accuracy and inspects sensor-blind spots.

### Task 53-20-01: Wing-Body Fairing Inspection
- **Description:** Visual and tap test inspection of aerodynamic fairings
- **Philosophy:** On-Condition
- **Interval:** 4000 FH or 24 Months
- **Man-Hours:** 8.0 hours
- **Required Equipment:** Tap hammer, flashlight
- **Acceptance Criteria:** 
  - No visible cracks or damage
  - No hollow sound indicating delamination
- **Justification:** Fairings are non-structural but aerodynamically critical. Damage affects efficiency.

---

## B.4 ATA 54 - Nacelles and Pylons

### Task 54-10-01: Nacelle Attachment Structure Inspection
- **Description:** Eddy current and visual inspection of nacelle-to-wing attachment points
- **Philosophy:** On-Condition
- **Interval:** 8000 FH or 48 Months
- **Man-Hours:** 12.0 hours per nacelle
- **Required Equipment:** 
  - AP360-T055 (Eddy Current Probe)
  - AP360-T056 (Dye Penetrant Kit - if cracks suspected)
- **Acceptance Criteria:**
  - No cracks at attachment bolt holes
  - No corrosion or fretting
  - Torque check: all fasteners within specification
- **Justification:** Nacelle attachment experiences high cyclic loads. Fatigue cracks can propagate rapidly if undetected.

---

## B.5 ATA 57 - Wings

### Task 57-10-01: Wing Spar Cap Inspection
- **Description:** Ultrasonic inspection of wing spar caps for delamination and impact damage
- **Philosophy:** On-Condition (SHM-augmented)
- **Interval:** 10,000 FH or 60 Months
- **Man-Hours:** 30.0 hours per wing
- **Required Equipment:** AP360-T050 (Phased Array Ultrasonic Scanner)
- **Acceptance Criteria:**
  - No delamination > 15mm diameter
  - No visible impact damage
  - SHM strain readings within baseline ±5%
- **Justification:** Wing spars are primary load-bearing structures. Delamination can lead to catastrophic failure. SHM monitors strain, but NDT validates structural integrity.

### Task 57-30-01: Wing Leading Edge Erosion Inspection
- **Description:** Visual inspection for erosion, impact damage, and lightning strike marks
- **Philosophy:** On-Condition
- **Interval:** 2000 FH or 12 Months
- **Man-Hours:** 4.0 hours per wing
- **Required Equipment:** Flashlight, magnifying glass
- **Acceptance Criteria:** 
  - No erosion exceeding service limits
  - No unrepaired lightning strike damage
- **Justification:** Leading edge is exposed to particle impacts and lightning strikes. Damage affects aerodynamics and can propagate into structure.

---

## B.6 ATA 28 - Hydrogen Tank Structure

### Task 28-61-01: LH2 Tank Outer Shell Inspection
- **Description:** Thermographic and ultrasonic inspection of cryogenic tank outer shell
- **Philosophy:** On-Condition
- **Interval:** 6000 FH or 36 Months
- **Man-Hours:** 20.0 hours
- **Required Equipment:** 
  - AP360-T060 (Thermal Imaging Camera)
  - AP360-T061 (Cryogenic-Compatible UT Probes)
- **Acceptance Criteria:**
  - No thermal anomalies indicating insulation damage
  - No cracks or delamination in composite overwrap
  - Pressure test: hold test pressure for 10 minutes with leak rate < specification
- **Justification:** Cryogenic tank integrity is critical for safety. Thermal cycling can induce micro-cracks in composite overwrap. Combined thermal and ultrasonic inspection provides comprehensive assessment.

---

## B.7 Zonal Inspection Program (ZIP)

### B.7.1 Purpose
Zonal inspections are general visual inspections performed on specific aircraft zones to detect:
- Fluid leaks
- Structural damage
- System discrepancies
- Foreign object debris (FOD)
- Corrosion (metallic components)

### B.7.2 Zone Definitions
The AMPEL360 is divided into 15 primary zones based on structural and systems grouping. Detailed zone diagrams and task cards are provided in:
**Document:** `ZONAL_Master-Diagrams-And-Tasks.md`  
**Location:** `02-MAINTENANCE_PLANNING_DOCUMENT_MPD/zonal_inspection_program/`

### B.7.3 Typical Zonal Inspection Interval
- **Interval:** 1000 FH or 6 Months
- **Man-Hours:** 2-4 hours per zone (varies by zone complexity)
- **Philosophy:** Scheduled inspection with documented findings

---

## B.8 NDT Methods and Standards

### B.8.1 Ultrasonic Testing (UT)
- **Standard:** ASTM E2375 (Ultrasonic Testing of Composite Materials)
- **Frequency:** 5-10 MHz (depends on material thickness)
- **Acceptance Criteria:** Per composite manufacturing specifications

### B.8.2 Eddy Current Testing (ECT)
- **Standard:** ASTM E1004 (Eddy Current Testing of Metallic Aerospace Components)
- **Applicable to:** Metallic fasteners, fittings, and hybrid joints

### B.8.3 Thermographic Inspection
- **Standard:** ASTM E2582 (Thermographic Inspection of Composite Materials)
- **Applicable to:** Large area composite panels, cryogenic tank insulation

### B.8.4 Acoustic Emission (AE) Monitoring
- **Standard:** ASTM E2478 (Acoustic Emission Structural Health Monitoring)
- **Applicable to:** Continuous monitoring of critical structures during flight

---

## B.9 Structural Repair and Modification Tracking

All structural repairs and modifications must be:
1. Approved by the Design Organization (DOA)
2. Recorded in the Digital Product Passport (ATA 95)
3. Subject to post-repair inspection per approved repair scheme
4. Tracked for potential inspection interval adjustments

---

## B.10 Summary of Structural Inspection Tasks

| ATA | Task ID | Description | Philosophy | Interval (FH/Mo) | Man-Hours |
|-----|---------|-------------|------------|------------------|-----------|
| 53-10 | 53-10-01 | BWB Fuselage Primary Structure NDT | OC | 12,000 / 72 | 40.0 |
| 53-20 | 53-20-01 | Wing-Body Fairing Inspection | OC | 4000 / 24 | 8.0 |
| 54-10 | 54-10-01 | Nacelle Attachment Inspection | OC | 8000 / 48 | 12.0 |
| 57-10 | 57-10-01 | Wing Spar Cap Inspection | OC | 10,000 / 60 | 30.0 |
| 57-30 | 57-30-01 | Wing Leading Edge Inspection | OC | 2000 / 12 | 4.0 |
| 28-61 | 28-61-01 | LH2 Tank Shell Inspection | OC | 6000 / 36 | 20.0 |

---

**End of Appendix B**

*Cross-references: ATA_45 (OMS for SHM data), ATA_95 (DPP for structural history), Zonal Inspection Program (ZIP)*
