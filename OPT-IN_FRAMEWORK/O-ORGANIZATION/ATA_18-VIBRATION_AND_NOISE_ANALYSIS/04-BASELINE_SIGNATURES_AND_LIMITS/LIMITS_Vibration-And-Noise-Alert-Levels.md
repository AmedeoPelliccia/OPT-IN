# LIMITS – Vibration and Noise Alert Levels

**Document ID:** LIMITS_Vibration-And-Noise-Alert-Levels  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Status:** Released

---

## 1. Purpose

This document defines the operational alert thresholds for vibration and acoustic monitoring on AMPEL360 aircraft. These limits are established to:
- Ensure early detection of abnormal conditions
- Prevent catastrophic failures
- Maintain passenger comfort standards
- Comply with airworthiness requirements

---

## 2. Alert Level Philosophy

### 2.1 Three-Tier Alert System

- **GREEN**: Normal operating condition
  - No action required
  - Routine monitoring continues
  
- **AMBER**: Caution condition
  - Degradation detected but aircraft remains airworthy
  - Maintenance action required within specified timeframe
  - Increased monitoring frequency
  
- **RED**: Warning condition
  - Critical condition requiring immediate action
  - Ground aircraft if detected in-flight
  - Immediate maintenance investigation required

### 2.2 Threshold Development

Thresholds are based on:
1. **OEM Recommendations**: Manufacturer specifications for components
2. **Statistical Analysis**: Fleet baseline data (mean + 3σ for amber, mean + 5σ for red)
3. **Certification Requirements**: FAA/EASA airworthiness standards
4. **Industry Best Practices**: SAE ARP5050 HUMS guidelines
5. **Operational Experience**: Continuous refinement based on fleet performance

---

## 3. Propulsion System Limits

### 3.1 Open-Fan Propulsor Vibration

**Measurement Location:** Nacelle mounts (forward and aft)  
**Sensors:** VIB_61-NAC_L/R-AX_01, VIB_61-NAC_L/R-RA_01  
**Metric:** 1× synchronous vibration amplitude (inches per second, ips)

| Condition | Green | Amber | Red |
|-----------|-------|-------|-----|
| **1× Synchronous (ips)** | ≤ 0.15 | 0.16–0.25 | > 0.25 |
| **Action** | Continue normal ops | Complete inspection within 10 FH | Immediate inspection, ground if in-flight |
| **Probable Causes** | Normal | Imbalance, loose blade | Severe imbalance, blade damage |

**Calculation:**
```
1× amplitude = Peak amplitude at propulsor rotational frequency (N1)
```

**Trending:**
- Alert if 3 consecutive flights exceed 0.12 ips (80% of amber threshold)
- Increasing trend (>20% per flight) triggers proactive inspection

**Special Conditions:**
- **During Engine Run-Up**: Transient excursions to 0.30 ips allowed (< 5 seconds)
- **Ice Shedding Events**: Momentary spikes to 0.50 ips acceptable if duration < 1 second

---

### 3.2 Gearbox Vibration

**Measurement Location:** Gearbox housing (top and side)  
**Sensors:** VIB_79-GBX_L/R-AX_01, VIB_79-GBX_L/R-RA_01  
**Metric:** Bearing fault frequencies (BPFO/BPFI) in envelope spectrum (g RMS)

| Condition | Green | Amber | Red |
|-----------|-------|-------|-----|
| **BPFO/BPFI Amplitude (g RMS)** | ≤ 0.20 | 0.21–0.35 | > 0.35 |
| **Action** | Continue normal ops | Trend analysis for 7 days | Ground aircraft, replace bearing |
| **Probable Causes** | Normal | Early bearing degradation | Advanced bearing wear, spalling |

**Additional Metrics:**
- **Kurtosis**: Alert if > 4.0 (indicates impulsive events)
- **Spectral Kurtosis**: Alert if > 3.0 in bearing frequency bands
- **Cepstrum Harmonics**: Alert if > 5 harmonics of gear mesh frequency

**Envelope Analysis Bands:**
- **Low Band (500 Hz – 2 kHz)**: Large bearing defects
- **Mid Band (2 kHz – 5 kHz)**: Medium bearing defects
- **High Band (5 kHz – 10 kHz)**: Early bearing defects (preferred for early detection)

**Trending:**
- Exponentially Weighted Moving Average (EWMA), λ = 0.2
- Alert if z-score > 3 for 3 consecutive flights

---

### 3.3 Turbine Core Vibration

**Measurement Location:** Compressor and turbine casings  
**Sensors:** VIB_72-ENG_L/R-AX_01, VIB_72-TRB_L/R-AX_01  
**Metric:** 1× spool vibration (inches per second, ips)

| Spool | Green | Amber | Red |
|-------|-------|-------|-----|
| **N1 (Fan/LP Spool)** | ≤ 0.10 | 0.11–0.18 | > 0.18 |
| **N2 (HP Spool)** | ≤ 0.08 | 0.09–0.15 | > 0.15 |
| **Action** | Continue normal ops | Review engine data, plan borescope | Immediate engine inspection |

**Additional Monitoring:**
- **2× N1, N2**: Misalignment indicator (alert if > 50% of 1× amplitude)
- **½× N1**: Oil whirl indicator (alert if > 0.05 ips)
- **Broadband 10-1000 Hz**: Overall energy (alert if > 0.50 ips)

**Engine Condition Correlation:**
- Cross-check with:
  - EGT (Exhaust Gas Temperature) margin
  - Fuel flow trends
  - Oil consumption
  - Borescope inspection findings

---

## 4. Airframe Structural Limits

### 4.1 Fuselage Vibration

**Measurement Location:** Forward and aft fuselage frames  
**Sensors:** VIB_53-FUS_FWD/AFT-X/Y/Z_01  
**Metric:** RMS acceleration (g)

| Axis | Green | Amber | Red |
|------|-------|-------|-----|
| **Vertical (Z)** | ≤ 0.10 g | 0.11–0.15 g | > 0.15 g |
| **Lateral (Y)** | ≤ 0.08 g | 0.09–0.12 g | > 0.12 g |
| **Longitudinal (X)** | ≤ 0.05 g | 0.06–0.08 g | > 0.08 g |
| **Action** | Continue normal ops | Structural inspection within 25 FH | Immediate structural inspection |

**Probable Causes (Amber/Red):**
- Loose structural components (rivets, fasteners)
- Crack initiation or propagation
- Control surface flutter onset
- Aerodynamic excitation (unusual flight regime)

**Special Flight Conditions:**
- **Turbulence**: Transient excursions to 0.25 g allowed
- **Landing**: Impact loads to 0.50 g acceptable (< 2 seconds)

---

### 4.2 Wing Vibration (BWB Flutter Monitoring)

**Measurement Location:** Wing root, front spar  
**Sensors:** VIB_57-WNG_L/R-X/Y/Z_01  
**Metric:** RMS acceleration (g) and frequency content

| Metric | Green | Amber | Red |
|--------|-------|-------|-----|
| **RMS Acceleration** | ≤ 0.15 g | 0.16–0.25 g | > 0.25 g |
| **Dominant Frequency** | 5-8 Hz (normal) | 8-12 Hz (watch) | > 12 Hz or < 5 Hz (critical) |
| **Action** | Continue normal ops | Restrict to 0.7 Mach, altitude < 35,000 ft | Ground aircraft, structural analysis |

**Flutter Detection:**
- **Frequency Tracking**: Alert if natural frequency shifts > 10%
- **Damping Ratio**: Alert if damping < 2% critical
- **Coherence**: Alert if coherence between left/right wings < 0.8

**Critical Flutter Indicators:**
- Sustained oscillation at constant frequency
- Increasing amplitude without external excitation
- Frequency near calculated flutter frequency (10.2 Hz ± 1 Hz)

---

### 4.3 Stabilizer Vibration

**Measurement Location:** Vertical stabilizer root  
**Sensors:** VIB_55-VSTAB-X/Y/Z_01  
**Metric:** RMS acceleration (g)

| Axis | Green | Amber | Red |
|------|-------|-------|-----|
| **Lateral Bending (Y)** | ≤ 0.12 g | 0.13–0.20 g | > 0.20 g |
| **Torsional (X)** | ≤ 0.08 g | 0.09–0.12 g | > 0.12 g |
| **Action** | Continue normal ops | Inspection within 50 FH | Immediate inspection |

---

## 5. Cabin Acoustic Limits

### 5.1 Passenger Comfort Standards

**Measurement Location:** Distributed cabin sensors (seat headrests, overhead)  
**Sensors:** ACO_25-CAB_FWD/15C/25C/AFT-01  
**Metric:** A-weighted sound pressure level, dB(A)

| Flight Phase | Green | Amber | Red |
|--------------|-------|-------|-----|
| **Cruise (Steady)** | ≤ 78 dB(A) | 79–82 dB(A) | > 82 dB(A) |
| **Climb** | ≤ 82 dB(A) | 83–85 dB(A) | > 85 dB(A) |
| **Descent** | ≤ 80 dB(A) | 81–84 dB(A) | > 84 dB(A) |
| **Action** | Continue normal ops | Adjust ANC settings | Root-cause analysis, maintenance action |

**Measurement Conditions:**
- **Duration**: 10-second Leq (equivalent continuous sound level)
- **Frequency Weighting**: A-weighting (per IEC 61672-1)
- **Background**: Measurement excludes passenger conversation (speech filtering applied)

**Comfort Zones by Location:**
| Cabin Zone | Target dB(A) Cruise | Amber Threshold |
|------------|---------------------|-----------------|
| First Class (Rows 1-5) | ≤ 75 | 78 |
| Business (Rows 6-15) | ≤ 77 | 80 |
| Economy (Rows 16-40) | ≤ 78 | 82 |

**Active Noise Cancellation (ANC) Integration:**
- ANC system targets -10 dB reduction in 80-500 Hz band
- Amber alert triggers automatic ANC gain adjustment
- Red alert indicates ANC system failure or source exceedance

---

### 5.2 Tone Analysis

**Tonal Components** (discrete frequencies) are particularly annoying and have stricter limits:

| Tone Type | Green | Amber | Red |
|-----------|-------|-------|-----|
| **Propulsor BPF (Blade Pass Frequency)** | < 65 dB | 65–70 dB | > 70 dB |
| **Gear Mesh Tones** | < 60 dB | 60–65 dB | > 65 dB |
| **Compressor Tones** | < 62 dB | 62–67 dB | > 67 dB |

**BPF Calculation:**
```
BPF = N1 (RPM) × Number_of_Blades / 60
```
For AMPEL360 open-fan (12 blades, typical cruise N1 = 1200 RPM):
```
BPF = 1200 × 12 / 60 = 240 Hz
```

---

## 6. Special Operating Conditions

### 6.1 Ground Operations

Vibration and noise limits are relaxed during ground operations:

| Condition | In-Flight Limit | Ground Limit |
|-----------|----------------|--------------|
| Propulsor 1× vibration | 0.25 ips | 0.40 ips |
| Cabin noise | 82 dB(A) | 95 dB(A) |
| Engine run-up | Standard limits | +20% allowance |

**Note:** Ground limits apply only during maintenance testing, not during taxi.

---

### 6.2 Environmental Adjustments

Thresholds may be adjusted for extreme environmental conditions:

| Condition | Adjustment | Justification |
|-----------|------------|---------------|
| OAT < -40°C | +15% vibration allowance | Cold-soak effects on bearings |
| High crosswind (> 25 kts) | +10% lateral vibration | Aerodynamic excitation |
| Heavy precipitation | +5 dB(A) acoustic | Rain/hail noise on skin |

---

## 7. Threshold Update Process

### 7.1 Baseline Review

Thresholds are reviewed and updated:
- **Quarterly**: Statistical review of fleet data
- **Annually**: Full baseline re-establishment
- **Event-Driven**: After significant design changes or incidents

### 7.2 Fleet Learning

When 5% or more of the fleet consistently operates in the amber range for a specific parameter:
1. Engineering investigation initiated
2. Threshold reassessment performed
3. If justified, threshold adjusted upward
4. All aircraft re-baselined

### 7.3 Approval Authority

Threshold changes require approval from:
- Chief Engineer (Propulsion/Structures, as applicable)
- Head of Airworthiness
- Maintenance Program Manager

---

## 8. Reporting Requirements

### 8.1 Amber Alert Reporting

- Log entry in aircraft maintenance log
- Notification to maintenance planning within 24 hours
- Trending report generated by DAU/CMS

### 8.2 Red Alert Reporting

- Immediate notification to Chief Pilot and Maintenance Control
- Incident report filed within 48 hours
- Full investigation and root-cause analysis
- Corrective action tracking in DPP (ATA 95)

### 8.3 Regulatory Reporting

If vibration/noise event results in:
- In-flight shutdown
- Emergency landing
- Structural damage

Submit report to aviation authority per regulations (e.g., FAA ASRS, EASA MOR).

---

## 9. Deviation and Waivers

### 9.1 Temporary Flight Permits

In exceptional cases, aircraft may operate with amber conditions under a Ferry Permit:
- Flight crew briefed on condition
- Non-revenue flight only
- Direct routing to maintenance base
- Maintenance action plan in place

### 9.2 Engineering Disposition

Red conditions **never** permit flight without engineering disposition:
- Root-cause identified
- Risk assessment completed
- Temporary corrective action implemented
- Flight test verification (if required)

---

## 10. Cross-References

This document interfaces with:
- **PLAN_Vibration-And-Noise-Management-Program**: Overall program objectives
- **PROC_Routine-Data-Download-And-Analysis**: Analysis methodology
- **ATA 92**: Model-Based Maintenance (RUL calculation inputs)
- **ATA 05**: Scheduled maintenance checks
- **FCOM**: Flight Crew Operating Manual (abnormal procedures)

---

## Appendix A: Quick Reference Card

**Propulsion**
- Open-Fan 1×: Green ≤0.15, Amber 0.16-0.25, Red >0.25 ips
- Gearbox BPFO: Green ≤0.20, Amber 0.21-0.35, Red >0.35 g RMS
- Turbine 1×: Green ≤0.10, Amber 0.11-0.18, Red >0.18 ips

**Airframe**
- Fuselage Z: Green ≤0.10, Amber 0.11-0.15, Red >0.15 g
- Wing (BWB): Green ≤0.15, Amber 0.16-0.25, Red >0.25 g

**Cabin**
- Cruise: Green ≤78, Amber 79-82, Red >82 dB(A)

---

**Document Control:**
- **Next Review:** 2025-10-27
- **Change Authority:** Airworthiness Engineering

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
