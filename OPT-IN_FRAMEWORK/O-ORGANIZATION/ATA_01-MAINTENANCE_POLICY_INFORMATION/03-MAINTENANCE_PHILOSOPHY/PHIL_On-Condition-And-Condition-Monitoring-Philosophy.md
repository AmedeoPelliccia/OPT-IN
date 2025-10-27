# On-Condition and Condition-Monitoring Philosophy
**Aircraft Type:** AMPEL360 Blended-Wing Body Hydrogen Aircraft  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27

---

## 1.0 Introduction

### 1.1 Purpose
This document defines the philosophical and technical framework for On-Condition (OC) and Condition-Monitoring (CM) maintenance strategies employed on the AMPEL360 aircraft. These strategies represent a fundamental shift from traditional time-based maintenance to data-driven, condition-based approaches.

### 1.2 Regulatory Context
The application of OC and CM maintenance is governed by:
- **FAA:** AC 120-16 (Air Carrier Maintenance Programs)
- **EASA:** Part-M Subpart I (Continuing Airworthiness Management)
- **MSG-3:** Maintenance Steering Group methodology
- **ATA Spec 2300:** Digital maintenance data standards

---

## 2.0 Maintenance Philosophy Definitions

### 2.1 On-Condition (OC) Maintenance
**Definition:** Maintenance performed when inspection or test results indicate that a component's condition has degraded beyond acceptable limits, but before functional failure occurs.

**Key Characteristics:**
- Scheduled inspections/tests at defined intervals
- Component removal/repair based on measured condition, not fixed calendar/flight hour limits
- Requires measurable degradation parameters
- Enables continued operation if condition remains acceptable

**Example Application:**
- Battery State of Health (SOH) testing
- Actuator performance testing
- Structural Non-Destructive Testing (NDT)

### 2.2 Condition-Monitoring (CM) Maintenance
**Definition:** Continuous or periodic monitoring of component condition without mandatory scheduled removal. Maintenance is triggered only when monitoring data indicates unacceptable degradation.

**Key Characteristics:**
- Continuous or automated periodic monitoring
- Real-time or near-real-time data analysis
- Alert-based maintenance initiation
- No fixed inspection intervals (monitoring is continuous)

**Example Application:**
- Hydrogen leak detection (continuous sensor monitoring)
- Structural Health Monitoring (SHM) sensors
- Fuel cell performance parameters (logged by OMS)

### 2.3 Distinction from Hard-Time (HT) Maintenance
**Hard-Time (HT) Maintenance:** Component is removed/overhauled at a fixed interval regardless of condition.

| Aspect | Hard-Time | On-Condition | Condition-Monitoring |
|--------|-----------|--------------|----------------------|
| Removal Trigger | Fixed interval | Inspection result | Sensor threshold |
| Data-Driven | No | Yes | Yes |
| Continuous Monitoring | No | No | Yes |
| Inspection Required | N/A | Yes (scheduled) | Optional (automated) |
| Predictability | High | Medium | High (with analytics) |

---

## 3.0 Technical Enablers for OC/CM

### 3.1 Onboard Maintenance System (OMS - ATA 45)
The OMS continuously collects, processes, and stores data from thousands of sensors:
- **System health parameters:** Pressure, temperature, voltage, current, flow
- **Performance metrics:** Response times, efficiency, power consumption
- **Fault codes:** Automated diagnostics with built-in test (BIT)
- **Trend data:** Historical tracking for degradation analysis

**Data Flow:**
1. Sensors → OMS data acquisition
2. OMS processing → Threshold checks
3. Alerts/faults → Cockpit and ground maintenance systems
4. Data storage → Digital Product Passport (DPP - ATA 95)

### 3.2 Digital Product Passport (DPP - ATA 95)
The DPP provides:
- **Component lifecycle history:** Birth to current state
- **Maintenance event ledger:** Immutable record of all actions
- **Operating condition history:** Usage profiles for each component
- **Predictive analytics input:** Data for PHM algorithms

### 3.3 Structural Health Monitoring (SHM)
Embedded sensors in composite structures:
- **Fiber Optic Sensors:** Strain measurement along primary load paths
- **Acoustic Emission Sensors:** Detect crack initiation and propagation
- **Piezoelectric Sensors:** Monitor structural vibrations and resonance

SHM enables CM for structures that traditionally required scheduled NDT inspections.

### 3.4 Advanced Diagnostics Tools
Ground-based diagnostic tools provide detailed component assessment:
- **Battery Service Tool (AP360-T002):** Automated SOH assessment
- **Fuel Cell Diagnostic Tool (AP360-T015):** Performance mapping
- **Phased Array Ultrasonic Scanner (AP360-T050):** High-resolution NDT

---

## 4.0 Decision Logic for Maintenance Philosophy Selection

### 4.1 MSG-3 Decision Tree Simplification
The MSG-3 process determines the appropriate maintenance philosophy for each component:

```
Is failure evident to crew during normal operation?
├─ Yes → Can functional failure be prevented by scheduled task?
│         ├─ Yes → Can condition be measured?
│         │        ├─ Yes → Is continuous monitoring feasible?
│         │        │        ├─ Yes → CONDITION-MONITORING (CM)
│         │        │        └─ No  → ON-CONDITION (OC)
│         │        └─ No  → HARD-TIME (HT) or redesign
│         └─ No  → No scheduled maintenance
└─ No  → Safety consequence requires scheduled inspection
          └─ (Follow hidden failure logic)
```

### 4.2 AMPEL360 Specific Considerations

#### Hydrogen Systems (ATA 28)
**Philosophy:** Primarily CM with HT for safety-critical sensors
- **Rationale:** Hydrogen safety requires continuous leak monitoring. Sensor calibration uses HT due to safety criticality.

#### Composite Structures (ATA 50-57)
**Philosophy:** CM (SHM) with OC (NDT) validation
- **Rationale:** SHM provides continuous monitoring, but periodic NDT validates sensor accuracy and covers sensor blind spots.

#### Battery Systems (ATA 24-33)
**Philosophy:** OC (capacity testing) with CM (voltage/temperature monitoring)
- **Rationale:** Capacity degradation is gradual and measurable. Continuous voltage/temperature monitoring detects anomalies.

#### Fuel Cells (ATA 24-60)
**Philosophy:** OC (performance testing) with CM (efficiency monitoring)
- **Rationale:** Membrane degradation is gradual. Performance testing provides detailed assessment.

---

## 5.0 Benefits of OC/CM Maintenance

### 5.1 Economic Benefits
- **Reduced Unnecessary Maintenance:** Components not removed until condition warrants
- **Optimized Spare Parts Inventory:** Predictable component removal based on condition trends
- **Reduced Aircraft Downtime:** Maintenance performed only when needed
- **Extended Component Life:** Components not discarded at fixed intervals

### 5.2 Safety Benefits
- **Data-Driven Decisions:** Maintenance based on actual condition, not statistical averages
- **Early Anomaly Detection:** CM detects degradation before functional failure
- **Reduced Maintenance Errors:** Less frequent disassembly/reassembly reduces human error opportunities

### 5.3 Operational Benefits
- **Increased Availability:** Aircraft not grounded for unnecessary scheduled maintenance
- **Flexible Maintenance Scheduling:** Tasks performed based on condition, allowing better resource planning

---

## 6.0 OC/CM Implementation Requirements

### 6.1 Data Quality and Integrity
Success of OC/CM depends on:
- **Sensor Accuracy:** Calibrated sensors with known accuracy bounds
- **Data Completeness:** No gaps in monitoring coverage
- **Data Security:** Protection against tampering (cryptographic integrity in DPP)

### 6.2 Threshold Definition
Each monitored parameter requires:
- **Baseline Value:** New/overhauled component reference condition
- **Alert Threshold:** Condition requiring investigation
- **Action Threshold:** Condition requiring corrective action
- **Statistical Confidence:** Defined false positive/negative rates

**Example: Battery SOH**
- Baseline: 100% (new battery)
- Alert Threshold: 90% (monitor more frequently)
- Action Threshold: 85% (perform corrective action per AMM)
- Statistical Confidence: 95% (threshold accounts for measurement uncertainty)

### 6.3 Personnel Training
Maintenance technicians require training in:
- **Data Interpretation:** Understanding sensor outputs and trends
- **Diagnostic Tools:** Proper use of advanced test equipment
- **Decision-Making:** When to defer vs. perform maintenance based on data

### 6.4 Regulatory Oversight
OC/CM programs require:
- **Initial Approval:** Authority approval of maintenance program
- **Reliability Program:** Continuous monitoring of OC/CM effectiveness (see `PROC_Reliability-Program-Plan.md`)
- **Program Adjustments:** Formal process for threshold or interval changes

---

## 7.0 Failure Scenarios and Mitigation

### 7.1 Sensor Failure
**Risk:** Loss of CM capability if sensor fails
**Mitigation:**
- Redundant sensors for critical parameters
- Automatic sensor health checks
- Revert to OC (scheduled inspection) if sensor fails

### 7.2 Data Transmission Failure
**Risk:** Loss of monitoring data from aircraft to ground
**Mitigation:**
- Onboard data storage (maintain 30 days on OMS)
- Automatic upload when connectivity restored
- Manual download capability via maintenance tablet

### 7.3 False Positives/Negatives
**Risk:** Incorrect maintenance triggering or missed degradation
**Mitigation:**
- Conservative thresholds (favor false positive over false negative)
- Human review of automated alerts
- Periodic validation of thresholds against actual findings

---

## 8.0 Transition from Traditional to OC/CM

### 8.1 Early Service Period
During the first 2 years of service:
- **Conservative Intervals:** Initial OC intervals are shorter to gather reliability data
- **Dual Approach:** CM monitoring active, but scheduled OC inspections still performed
- **Data Collection:** Intensive data gathering for PHM model refinement

### 8.2 Maturity Period
After sufficient operational data (typically 50,000 fleet flight hours):
- **Interval Extensions:** OC intervals extended based on reliability data
- **Increased CM Reliance:** Reduce scheduled OC inspections where CM proves effective
- **Model Refinement:** PHM algorithms updated with actual service data

### 8.3 Continuous Improvement
- Quarterly reliability reviews
- Annual maintenance program optimization
- Five-year comprehensive MSG-3 re-evaluation

---

## 9.0 Cross-References
- **MRBR:** Maintenance Review Board Report (defines initial OC/CM applications)
- **MPD:** Maintenance Planning Document (detailed task cards)
- **ATA 45:** Onboard Maintenance System (data source)
- **ATA 92:** Model-Based Maintenance (PHM algorithms)
- **ATA 95:** Digital Product Passport (data recording and analytics)
- **PROC_Reliability-Program-Plan.md:** Reliability monitoring process

---

**End of On-Condition and Condition-Monitoring Philosophy Document**

*This document establishes the framework. Specific component applications are detailed in the MRBR and MPD.*
