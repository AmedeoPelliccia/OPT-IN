# MRBR Appendix A: Systems and Powerplant Maintenance Tasks
**Parent Document:** MRBR_Master-Document_rev1.0.0_20280515  
**Revision:** 1.0.0  
**Effective Date:** 2028-05-15

---

## A.1 Introduction
This appendix provides detailed maintenance task definitions for all systems (ATA 20-49) and powerplant (ATA 70-80) chapters of the AMPEL360 aircraft. Each task includes:
- Task identification and description
- Maintenance philosophy (HT/OC/CM)
- Initial interval
- Required resources
- Technical justification

---

## A.2 ATA 24 - Electrical Power System

### Task 24-33-01: Solid-CO₂ Battery Capacity Check
- **Description:** Perform automated capacity check using Battery Service Tool
- **Philosophy:** On-Condition
- **Interval:** 2000 FH or 12 Months
- **Man-Hours:** 2.0 hours
- **Required GSE:** AP360-T002 (Solid-CO₂ Battery Service Tool)
- **Acceptance Criteria:** SOH > 85% for all modules
- **Escalation:** If SOH < 85%, refer to AMM 24-33-00 for corrective action
- **Justification:** Solid-state CO₂ battery technology is susceptible to gradual capacity loss due to charge cycling and thermal stress. Early detection prevents in-flight power interruptions.

### Task 24-60-01: Fuel Cell Stack Performance Test
- **Description:** Measure voltage, current, and hydrogen consumption at defined load points
- **Philosophy:** On-Condition
- **Interval:** 4000 FH or 24 Months
- **Man-Hours:** 4.0 hours
- **Required GSE:** AP360-T015 (Fuel Cell Diagnostic Tool)
- **Acceptance Criteria:** 
  - Voltage drop < 5% from baseline
  - H2 consumption within ±10% of specification
- **Justification:** Membrane degradation is a known failure mode. Performance testing detects degradation before it impacts operational capability.

---

## A.3 ATA 28 - Fuel (Hydrogen Storage)

### Task 28-60-01: Cryo-Tank Insulation Inspection
- **Description:** Verify vacuum integrity and perform thermal performance test
- **Philosophy:** On-Condition
- **Interval:** 6000 FH or 36 Months
- **Man-Hours:** 6.0 hours
- **Required GSE:** 
  - AP360-T020 (Vacuum Pressure Gauge)
  - AP360-T021 (Thermal Imaging Camera)
- **Acceptance Criteria:** 
  - Vacuum pressure < 10⁻⁵ mbar
  - Boil-off rate < specification
- **Justification:** Multi-layer insulation (MLI) degradation leads to increased hydrogen boil-off, reducing range and creating potential safety hazards. Periodic verification ensures thermal performance remains within safe limits.

### Task 28-40-01: Hydrogen Leak Detection System Calibration
- **Description:** Calibrate all H2 sensors and perform functional test with known concentration gas
- **Philosophy:** Hard Time
- **Interval:** 1000 FH or 6 Months
- **Man-Hours:** 3.0 hours
- **Required GSE:** AP360-T018 (Hydrogen Calibration Gas Kit)
- **Acceptance Criteria:** All sensors detect 1000 ppm H2 within ±5% accuracy
- **Justification:** Hydrogen leak detection is a primary safety system. Sensor drift over time can lead to false negatives, creating catastrophic risk.

---

## A.4 ATA 29 - Hydraulic Power

### Task 29-10-01: Electro-Hydraulic Actuator Performance Test
- **Description:** Measure actuator response time, pressure, and flow rate under simulated flight loads
- **Philosophy:** On-Condition with PHM
- **Interval:** 3000 FH or 18 Months
- **Man-Hours:** 5.0 hours
- **Required GSE:** AP360-T025 (Hydraulic Test Rig)
- **Acceptance Criteria:**
  - Response time within 5% of baseline
  - Pressure deviation < 50 psi
  - Flow rate within ±10%
- **Justification:** Actuator seal wear and valve degradation are gradual processes. Performance testing validates PHM model predictions and detects early degradation.

---

## A.5 ATA 72 - Engine (Turboelectric Propulsion)

### Task 72-00-01: Turbine Blade Borescope Inspection
- **Description:** Visual inspection of turbine blades using borescope for erosion, cracking, and deposits
- **Philosophy:** On-Condition
- **Interval:** 5000 FH or 30 Months
- **Man-Hours:** 8.0 hours
- **Required GSE:** AP360-T030 (Digital Borescope Kit)
- **Acceptance Criteria:** 
  - No cracks > 2mm
  - Erosion within service limits
  - No foreign object damage
- **Justification:** While turbine blade life is monitored continuously via operating temperature and stress models (ATA 92), periodic visual inspection validates model predictions and detects anomalies.

### Task 72-10-01: Electric Motor Bearing Inspection
- **Description:** Remove motor housing and inspect bearings for wear, contamination, and lubrication condition
- **Philosophy:** On-Condition
- **Interval:** 6000 FH or 36 Months
- **Man-Hours:** 10.0 hours
- **Required GSE:** AP360-T035 (Bearing Inspection Kit)
- **Acceptance Criteria:** 
  - No visible wear or pitting
  - Lubrication within specification
  - Bearing clearance within limits
- **Justification:** Electric motors have minimal wear but bearings are a primary failure mode. Inspection detects early degradation.

---

## A.6 ATA 73 - Engine Fuel and Control (Hydrogen Delivery)

### Task 73-10-01: Hydrogen Flow Control Valve Functional Test
- **Description:** Test valve response, flow accuracy, and leak integrity
- **Philosophy:** On-Condition
- **Interval:** 2000 FH or 12 Months
- **Man-Hours:** 4.0 hours
- **Required GSE:** AP360-T040 (Flow Test Bench)
- **Acceptance Criteria:**
  - Valve response time < 100ms
  - Flow accuracy ±2%
  - No external leakage
- **Justification:** Precise hydrogen flow control is critical for fuel cell and combustion efficiency. Valve degradation can lead to performance loss or safety issues.

---

## A.7 Summary of Systems Tasks

| ATA | Task ID | Description | Philosophy | Interval (FH/Mo) |
|-----|---------|-------------|------------|------------------|
| 24-33 | 24-33-01 | Battery Capacity Check | OC | 2000 / 12 |
| 24-60 | 24-60-01 | Fuel Cell Performance Test | OC | 4000 / 24 |
| 28-60 | 28-60-01 | Cryo-Tank Insulation Inspection | OC | 6000 / 36 |
| 28-40 | 28-40-01 | H2 Leak Detection Calibration | HT | 1000 / 6 |
| 29-10 | 29-10-01 | Actuator Performance Test | OC | 3000 / 18 |
| 72-00 | 72-00-01 | Turbine Blade Inspection | OC | 5000 / 30 |
| 72-10 | 72-10-01 | Electric Motor Bearing Inspection | OC | 6000 / 36 |
| 73-10 | 73-10-01 | H2 Flow Valve Test | OC | 2000 / 12 |

---

## A.8 Integration with Digital Product Passport (ATA 95)
All maintenance task results shall be recorded in the Digital Product Passport, including:
- Task completion date and time
- Measured parameters (SOH, pressure, flow, etc.)
- Findings and corrective actions
- Technician identity and license number

This data feeds into the PHM analytics models (ATA 95 / 05-ANALYTICS_AND_MODELS) to refine predictive maintenance algorithms.

---

**End of Appendix A**

*Cross-references: ATA_92 (Model-Based Maintenance), ATA_95 (Digital Product Passport), AMM sections for each ATA chapter*
