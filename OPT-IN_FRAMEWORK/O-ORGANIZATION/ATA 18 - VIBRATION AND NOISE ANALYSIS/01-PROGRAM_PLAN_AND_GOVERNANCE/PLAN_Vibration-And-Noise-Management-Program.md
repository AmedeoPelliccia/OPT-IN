# PLAN – Vibration and Noise Management Program

**Document ID:** PLAN_Vibration-And-Noise-Management-Program  
**Revision:** 1.0.0  
**Effective Date:** 2028-04-15  
**Status:** Released

---

## 1. Program Objectives

The Vibration and Noise Management Program establishes a comprehensive framework for monitoring, analyzing, and managing vibration and acoustic characteristics across the AMPEL360 fleet to ensure:

### 1.1 Safety
- Early detection of propulsion system anomalies (open-fan propulsors, gearboxes, turbines)
- Identification of structural integrity issues and potential flutter conditions
- Prevention of catastrophic failures through condition-based monitoring

### 1.2 Efficiency
- Optimized maintenance scheduling through predictive analytics
- Reduction of unscheduled maintenance events
- Extended component life through proactive intervention
- Integration with Model-Based Maintenance (ATA 92)

### 1.3 Comfort
- Maintenance of cabin acoustic levels within certification limits
- Support for active noise-cancellation (ANC) systems
- Continuous improvement of passenger experience

---

## 2. Data Acquisition and Processing

### 2.1 On-Board Data Flow

```
Sensors → Data Acquisition Unit (DAU) → Centralized Maintenance System (ATA 45) → Real-time Alerts
```

**Process Flow:**
1. **Sensor Data Acquisition**: Continuous sampling from vibration and acoustic sensors
2. **Real-Time Processing**: DAU performs onboard feature extraction and anomaly detection
3. **Alert Generation**: CMS generates alerts for amber/red threshold exceedances
4. **Flight Crew Notification**: EICAS/ECAM displays alert conditions requiring action
5. **Data Recording**: Full waveform data stored for post-flight analysis

### 2.2 Ground Data Flow

```
Aircraft Data Download (≤ 24h) → Analytics Platform → Trending Database → DPP Archive (ATA 95)
```

**Process Flow:**
1. **Data Download**: Complete vibration/acoustic dataset transferred within 24 hours of flight completion
2. **Analytics Ingestion**: Data imported into centralized analytics platform
3. **Advanced Analysis**: Spectral analysis, order tracking, envelope analysis, cepstrum analysis
4. **Trending**: Long-term trending and fleet-wide comparisons
5. **DPP Integration**: Critical parameters archived to Digital Product Passport
6. **RUL Calculation**: Remaining Useful Life inputs provided to ATA 92 maintenance planning

---

## 3. Sensor Architecture

### 3.1 Sensor Types and Applications

| Sensor Type | Application | Specifications |
|-------------|-------------|----------------|
| IEPE Accelerometer (10 mV/g) | Open-fan propulsor | 25.6 kHz sampling |
| Triaxial Accelerometer (100 mV/g) | Airframe structure | 2 kHz sampling |
| Optical Tachometer | Rotational speed reference | Pulse output |
| Acoustic Array | Cabin noise mapping | 48 kHz/24-bit |

### 3.2 Sensor Locations

Sensors are strategically placed at:
- **Propulsion**: Nacelle mounts (forward/aft), gearbox housing, turbine casings
- **Airframe**: Wing root, fuselage frames, empennage attachments
- **Cabin**: Distributed acoustic monitoring points (seats, sidewalls, overhead)

### 3.3 Synchronization

All sensors use **IEEE-1588 Precision Time Protocol (PTP)** with **TAI timestamps** to ensure phase-coherent data acquisition across distributed sensor networks.

---

## 4. Data Retention Policy

| Data Type | Retention Period | Storage Location | Justification |
|-----------|------------------|------------------|---------------|
| Raw Waveform Data | 24 months | Secure storage (ATA 95 DPP) | Regulatory compliance, detailed forensics |
| Extracted Features (RMS, kurtosis, spectra) | 10 years | Analytics database | Long-term trending, fleet analysis |
| Critical Events (exceedances, incidents) | Indefinite | Permanent archive (DPP) | Safety investigation, certification evidence |
| Baseline Signatures | Indefinite | Configuration management | Reference for anomaly detection |

---

## 5. Alert Management and Thresholds

### 5.1 Alert Levels

- **Green**: Normal operating condition, no action required
- **Amber**: Degraded condition, action required within specified timeframe
- **Red**: Critical condition, immediate action required (ground aircraft if in flight)

### 5.2 Threshold Philosophy

Thresholds are established based on:
1. **OEM Recommendations**: Manufacturer-specified limits
2. **Fleet Baseline Data**: Statistical analysis of normal operating ranges
3. **Regulatory Requirements**: Certification and airworthiness standards
4. **Operational Experience**: Continuous refinement based on fleet performance

### 5.3 Alert Response

| Alert Level | Flight Crew Action | Maintenance Action | Timeline |
|-------------|-------------------|-------------------|----------|
| Green | Monitor normal indications | Routine monitoring | Per schedule |
| Amber | Log in aircraft logbook | Complete trending analysis | Within specified FH |
| Red | Follow FCOM abnormal procedures | Immediate inspection/rectification | Before next flight |

---

## 6. Analysis Methodology

### 6.1 Key Performance Indicators (KPIs)

The following metrics are calculated for each monitoring point:

- **RMS (Root Mean Square)**: Overall vibration energy level
- **Kurtosis**: Statistical measure indicating impulsiveness (bearing damage indicator)
- **Crest Factor**: Peak-to-RMS ratio (transient event detection)
- **Spectral Kurtosis**: Frequency-dependent kurtosis for bearing fault detection
- **Envelope Analysis**: Demodulation for bearing fault frequencies (BPFO, BPFI, BSF, FTF)
- **Cepstrum**: Quefrency-domain analysis for gear mesh and sideband detection

### 6.2 Order Tracking

Rotating machinery analysis uses order tracking to track:
- **1× (Synchronous)**: Imbalance, misalignment
- **2× (Second Harmonic)**: Misalignment, looseness
- **½× (Sub-synchronous)**: Oil whirl, rub
- **Sidebands (± N× fₘₒd)**: Gear mesh modulation, load variations

### 6.3 Trending Methodology

**Exponentially Weighted Moving Average (EWMA)**:
- Smoothing factor λ = 0.2
- Alert generated if z-score > 3 for 3 consecutive flights
- Accounts for operational variability while maintaining sensitivity

---

## 7. Maintenance Integration

### 7.1 Integration with ATA 92 (Model-Based Maintenance)

Vibration and noise data provide critical inputs to the Model-Based Maintenance system:
- **RUL (Remaining Useful Life) Estimation**: Bearing wear models, gear tooth degradation
- **Predictive Maintenance Scheduling**: Optimized component replacement before failure
- **Condition-Based Maintenance**: Maintenance triggered by actual condition rather than fixed intervals

### 7.2 Integration with ATA 95 (Digital Product Passport)

All vibration/acoustic data is archived in the Digital Product Passport:
- **Lifecycle History**: Complete vibration history for each serialized component
- **Traceability**: Links between vibration events and maintenance actions
- **Certification Evidence**: Compliance demonstration for regulatory authorities

### 7.3 Ground Vibration Survey (GVS) Integration (ATA 05)

- **Scheduled GVS**: Periodic surveys per ATA 05 maintenance schedule
- **Event-Driven GVS**: Triggered by significant vibration events or modifications
- **Baseline Updates**: GVS results update baseline signatures for anomaly detection

---

## 8. Quality and Compliance

### 8.1 Calibration and Validation

- **Sensor Calibration**: Annual calibration per manufacturer specifications
- **DAU Validation**: Quarterly system checks with reference signals
- **End-to-End Testing**: Annual validation of complete data chain

### 8.2 Standards Compliance

- **FAA AC 36-4**: Aircraft noise certification
- **ICAO Annex 16**: Environmental protection – aircraft noise
- **SAE ARP5050**: Health and Usage Monitoring Systems (HUMS)
- **IEEE 1588**: Precision Time Protocol for distributed systems

### 8.3 Documentation Requirements

All program activities must be documented with:
- Unique document identifiers
- Semantic versioning (MAJOR.MINOR.PATCH)
- Metadata sidecars (`.meta.yaml`)
- SHA-256 checksums for integrity
- Approval chain with digital signatures

---

## 9. Reporting and Outputs

### 9.1 Real-Time Outputs
- Flight crew alerts via EICAS/ECAM
- Maintenance messages in Aircraft Communication Addressing and Reporting System (ACARS)

### 9.2 Post-Flight Outputs
- HUMS (Health and Usage Monitoring System) summary reports
- Exceedance reports for threshold violations
- Trend charts and statistical summaries

### 9.3 Periodic Outputs
- Monthly fleet trending reports
- Quarterly reliability analysis
- Annual program review and baseline updates

### 9.4 Incident Outputs
- Detailed incident investigation reports
- Root cause analysis for significant events
- Corrective action tracking

---

## 10. Continuous Improvement

The program includes provisions for:
- **Threshold Refinement**: Continuous optimization based on fleet data
- **Sensor Network Expansion**: Addition of monitoring points based on operational experience
- **Algorithm Enhancement**: Integration of advanced machine learning techniques
- **Fleet Learning**: Sharing of best practices and lessons learned across AMPEL360 fleet

---

## 11. Roles and Responsibilities

| Role | Responsibilities |
|------|------------------|
| **Airworthiness Engineering** | Program oversight, threshold approval, regulatory compliance |
| **Propulsion Engineering** | Propulsor/engine vibration analysis, RUL modeling |
| **Structural Analysis** | Airframe vibration analysis, flutter monitoring |
| **Maintenance Planning** | Scheduling integration, corrective action tracking |
| **Flight Operations** | Flight crew training, alert response procedures |
| **Data Analytics Team** | Algorithm development, trending analysis, reporting |

---

## 12. Program Governance

### 12.1 Program Review Board
- **Frequency**: Quarterly
- **Membership**: Representatives from all stakeholder groups
- **Scope**: Threshold review, incident review, program effectiveness assessment

### 12.2 Change Management
- All program changes require PRB approval
- Impact assessment for threshold modifications
- Configuration control for sensor network changes

### 12.3 Performance Metrics
- Mean time between unscheduled maintenance events
- Alert false positive/negative rates
- Maintenance cost savings from predictive actions
- Fleet reliability and availability

---

**Approved by:**
- Airworthiness Engineering: [Signature Required]
- Chief Engineer – Propulsion: [Signature Required]
- Head of Maintenance: [Signature Required]

**Document Control:**
- Next Review Date: 2029-04-15
- Change Authority: Vibration and Noise Program Review Board

---

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
