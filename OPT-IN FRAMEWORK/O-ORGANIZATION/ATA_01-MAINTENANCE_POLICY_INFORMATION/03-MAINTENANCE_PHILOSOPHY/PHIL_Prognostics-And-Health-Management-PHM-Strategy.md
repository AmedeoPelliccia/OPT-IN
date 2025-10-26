# PHM Strategy
**Revision:** 1.0.0

## 1.0 Introduction
The AMPEL360 maintenance program is fundamentally data-driven. The Prognostics and Health Management (PHM) strategy moves beyond traditional scheduled maintenance by leveraging on-board sensor data, analytical models, and the Digital Product Passport (DPP) to predict impending failures.

## 2.0 Key Systems under PHM
The following systems are primary candidates for PHM, with the goal of replacing hard-time component replacements with on-condition prognostics:
- **ATA 24-33 (Solid-CO₂ Batteries):** Remaining Useful Life (RUL) models predict cell degradation based on charge cycles, temperature profiles, and internal resistance.
- **ATA 29 (Hydraulic Power):** Actuator performance degradation is monitored by analyzing pressure, flow, and response times.
- **ATA 72 (Engine):** Turbine blade life is estimated using real-time operating temperature and stress data, rather than just flight cycles.

## 3.0 Data Architecture
- **Data Source:** On-board Central Maintenance System (CMS - ATA 45).
- **Analytical Models:** Reside in the ground-based infrastructure, as defined in `ATA 95 / 05-ANALYTICS_AND_MODELS`.
- **Actionable Insights:** When a component's RUL falls below a defined threshold, a maintenance task is automatically generated and pushed to the operator's planning system.

## 4.0 PHM Workflow

### 4.1 Data Collection Phase
**Sensors → OMS → DPP**
- Continuous monitoring of critical parameters:
  - Battery: voltage, current, temperature, internal resistance, charge/discharge cycles
  - Actuators: pressure, flow rate, response time, position accuracy
  - Turbines: EGT (Exhaust Gas Temperature), N1/N2 speeds, vibration, fuel flow
- Data transmitted to Onboard Maintenance System (OMS - ATA 45)
- Data stored in Digital Product Passport (DPP - ATA 95) with cryptographic integrity

### 4.2 Analytics Phase
**DPP → Ground Analytics → PHM Models**
- Data extracted from DPP and fed into ground-based analytics platform
- Physics-based and machine learning models analyze degradation patterns
- Models calibrated using fleet-wide data for improved accuracy

#### 4.2.1 Physics-Based Models
**Example: Battery RUL**
- **Input Parameters:** Charge cycles, depth of discharge, temperature history, internal resistance
- **Model:** Electrochemical degradation equations predict capacity loss over time
- **Output:** Estimated RUL in flight hours and calendar time

**Example: Turbine Blade Life**
- **Input Parameters:** Operating temperature, stress cycles, erosion rate
- **Model:** Creep and fatigue life models predict crack initiation
- **Output:** Estimated RUL in flight cycles

#### 4.2.2 Machine Learning Models
**Example: Actuator Degradation**
- **Training Data:** Historical actuator performance from fleet
- **Features:** Response time trends, pressure deviations, seal wear indicators
- **Algorithm:** Recurrent Neural Network (RNN) for time-series prediction
- **Output:** Probability of failure within next 500 FH

### 4.3 Decision Phase
**PHM Models → Maintenance Planning**
- **Threshold Logic:**
  - **Green:** RUL > 1000 FH or 6 months → No action
  - **Yellow:** RUL 500-1000 FH or 3-6 months → Plan maintenance at next convenient opportunity
  - **Red:** RUL < 500 FH or 3 months → Schedule immediate maintenance
- Maintenance task automatically generated in planning system
- Task includes predicted failure mode and recommended action

### 4.4 Execution Phase
**Maintenance Planning → Technician → DPP Update**
- Technician performs maintenance based on PHM recommendation
- Component removed or repaired as indicated
- Findings recorded in DPP (e.g., actual condition vs. predicted)
- Feedback loop: Actual findings refine PHM models

---

## 5.0 Key PHM Applications

### 5.1 Battery Prognostics (ATA 24-33)

#### Model Description
**Type:** Physics-based electrochemical model with ML enhancement

**Input Parameters:**
- Charge/discharge cycles (count and depth)
- Operating temperature history
- Internal resistance trend
- Voltage sag under load

**Degradation Mechanisms Modeled:**
- Solid electrolyte interface (SEI) layer growth
- Active material loss
- Electrolyte decomposition
- Lithium plating (under rapid charge conditions)

**Output:**
- State of Health (SOH): Current capacity / Original capacity
- Remaining Useful Life (RUL): Predicted FH until SOH < 85%
- Confidence Interval: ±10% RUL prediction accuracy

**Validation:**
- Model validated against laboratory accelerated aging tests
- In-service validation: Compare predicted vs. actual SOH at scheduled capacity checks

#### Maintenance Impact
- **Traditional:** Replace battery at 8000 FH (hard-time)
- **PHM-Enabled:** Replace battery when RUL < 500 FH (predicted by model)
- **Benefit:** Average battery life extended by 15-25% through optimized usage and timely replacement

---

### 5.2 Actuator Prognostics (ATA 29)

#### Model Description
**Type:** Hybrid physics-based and data-driven model

**Input Parameters:**
- Response time (command to position achieved)
- Pressure drop across actuator
- Flow rate
- Position accuracy
- Temperature
- Cycle count

**Degradation Mechanisms Modeled:**
- Seal wear (leads to internal leakage)
- Valve spool wear (affects response time)
- Contamination (increases friction)

**Output:**
- Performance Index: 0-100 (100 = new actuator performance)
- RUL: Predicted FH until Performance Index < 70
- Recommended Action: Overhaul, replace, or monitor

**Validation:**
- Model trained on 1000+ actuator teardown reports
- Continuously refined with in-service performance data

#### Maintenance Impact
- **Traditional:** Overhaul actuator at 6000 FH (hard-time)
- **PHM-Enabled:** Overhaul when Performance Index < 70 (typically 7000-9000 FH)
- **Benefit:** 20-30% reduction in actuator overhauls, improved dispatch reliability

---

### 5.3 Turbine Blade Life Prediction (ATA 72)

#### Model Description
**Type:** Physics-based creep and fatigue model

**Input Parameters:**
- Exhaust Gas Temperature (EGT) per flight phase
- N1/N2 rotor speeds
- Flight cycle count (takeoff, climb, cruise, descent)
- Time at temperature

**Degradation Mechanisms Modeled:**
- Creep (time-dependent deformation at high temperature)
- Low-cycle fatigue (thermal cycling)
- High-cycle fatigue (vibrational stress)
- Erosion and oxidation

**Output:**
- Creep Life Fraction (CLF): Consumed life / Total life
- RUL: Predicted flight cycles until CLF = 1.0
- Inspection Priority: Blades operating at highest stress

**Validation:**
- Model validated against engine manufacturer's certified blade life models
- Periodic borescope inspections validate model predictions

#### Maintenance Impact
- **Traditional:** Blade inspection every 5000 FH, replacement at 20,000 FH (hard-time)
- **PHM-Enabled:** Inspection interval adjusted based on actual operating severity (4000-7000 FH), replacement at CLF = 0.95
- **Benefit:** Optimized blade life utilization, reduced unnecessary inspections on lightly-stressed engines

---

## 6.0 PHM Infrastructure

### 6.1 Data Pipeline
```
[Aircraft Sensors] 
    ↓
[Onboard Maintenance System - ATA 45]
    ↓
[Digital Product Passport - ATA 95]
    ↓
[Ground Analytics Platform]
    ↓
[PHM Models (ATA 95 / 05-ANALYTICS_AND_MODELS)]
    ↓
[Maintenance Planning System]
    ↓
[Technician Work Order]
    ↓
[Feedback to DPP]
```

### 6.2 Computing Resources
- **Onboard:** Limited to data collection and basic threshold monitoring
- **Ground:** Heavy computational analytics, model training, fleet-wide data fusion

### 6.3 Data Security
- All PHM data is cryptographically signed and stored in DPP
- Access control per RBAC policy (ATA 95 / 02-IDENTITY_AND_AUTHENTICATION)
- Operator data isolated from other operators (multi-tenant security)

---

## 7.0 PHM Maturity Roadmap

### Phase 1: Initial Operating Capability (IOC) - Year 1-2
- **Scope:** PHM active for ATA 24-33 (batteries) only
- **Capability:** Basic RUL prediction with wide confidence intervals
- **Action:** Generate alerts, but scheduled maintenance still performed

### Phase 2: Expanded PHM - Year 3-4
- **Scope:** Add ATA 29 (actuators) and ATA 72 (turbines)
- **Capability:** Improved models with fleet data integration
- **Action:** Reduce scheduled inspection frequency by 20%

### Phase 3: Mature PHM - Year 5+
- **Scope:** Full PHM coverage of all primary systems
- **Capability:** High-confidence RUL predictions (±5% accuracy)
- **Action:** Transition from scheduled to purely condition-based maintenance for select systems

---

## 8.0 Continuous Improvement

### 8.1 Model Refinement Process
- **Quarterly:** Review PHM predictions vs. actual findings
- **Annually:** Recalibrate models with updated fleet data
- **As-Needed:** Update models if new failure modes emerge

### 8.2 Operator Collaboration
- Fleet-wide data sharing (anonymized) improves model accuracy
- Operators contribute operational profiles for model training
- Shared benefits: All operators benefit from improved models

### 8.3 Technology Insertion
- Integrate new sensor technologies as they mature
- Adopt advanced ML techniques (e.g., deep learning, federated learning)
- Continuous benchmarking against industry best practices

---

## 9.0 Regulatory Compliance

### 9.1 Approval Basis
- PHM program approved as part of Maintenance Program (per MRBR)
- Reliability Program monitors PHM effectiveness
- Regular reporting to regulatory authority (EASA, FAA)

### 9.2 Fallback Provisions
If PHM system fails or data quality degrades:
- Revert to scheduled maintenance per MPD
- Investigate root cause of PHM failure
- Restore PHM capability before resuming predictive maintenance

---

## 10.0 Cross-References
- **ATA 45:** Onboard Maintenance System (data source)
- **ATA 92:** Model-Based Maintenance (detailed PHM algorithms)
- **ATA 95:** Digital Product Passport (data lake and analytics)
- **MRBR:** Maintenance Review Board Report (PHM application approvals)
- **PROC_Reliability-Program-Plan.md:** PHM effectiveness monitoring

---

**End of PHM Strategy Document**

*PHM is an evolving capability. This document will be updated as the program matures.*
