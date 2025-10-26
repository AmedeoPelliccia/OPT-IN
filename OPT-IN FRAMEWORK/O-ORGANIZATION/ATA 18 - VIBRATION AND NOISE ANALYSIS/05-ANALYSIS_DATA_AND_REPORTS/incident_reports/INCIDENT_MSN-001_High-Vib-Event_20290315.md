# INCIDENT REPORT – High Vibration Event

**Document ID:** INCIDENT_MSN-001_High-Vib-Event_20290315  
**Aircraft MSN:** MSN-001  
**Event Date:** 2029-03-15  
**Report Date:** 2029-03-17  
**Status:** Closed

---

## 1. Executive Summary

During cruise flight on 2029-03-15, aircraft MSN-001 experienced an elevated vibration level on the left open-fan propulsor, triggering an AMBER alert in the Centralized Maintenance System (CMS). The alert threshold was exceeded by approximately 35% (measured 0.20 ips vs. AMBER threshold of 0.15 ips). Flight crew followed FCOM procedures and continued flight safely. Post-flight investigation identified a propulsor blade imbalance condition. Corrective action involved propulsor balancing, resulting in return to GREEN operating range.

---

## 2. Event Details

### 2.1 Flight Information

| Parameter | Value |
|-----------|-------|
| **Flight Number** | AMP360-042 |
| **Route** | SFO → JFK |
| **Flight Phase** | Cruise |
| **Altitude** | FL350 (35,000 ft) |
| **Mach** | 0.78 |
| **Flight Time at Event** | 2h 15m into flight |
| **Total Flight Duration** | 5h 30m |

### 2.2 Alert Details

| Parameter | Value |
|-----------|-------|
| **Alert Type** | AMBER - Vibration |
| **Alert Time** | 2029-03-15 14:23:45 UTC |
| **Sensor ID** | VIB_61-NAC_L-AX_01 |
| **Location** | Left propulsor, forward nacelle mount, axial |
| **Measured Value** | 0.20 ips (1× synchronous) |
| **Threshold Violated** | AMBER: 0.16–0.25 ips |
| **Baseline Cruise Value** | 0.065 ips |
| **Deviation** | +208% above baseline |

### 2.3 Vibration Characteristics

| Metric | Measured | Baseline | Delta |
|--------|----------|----------|-------|
| **RMS (ips)** | 0.18 | 0.092 | +96% |
| **1× Amplitude (ips)** | 0.20 | 0.065 | +208% |
| **2× Amplitude (ips)** | 0.032 | 0.018 | +78% |
| **Kurtosis** | 3.15 | 3.05 | +3% |
| **Crest Factor** | 2.85 | 2.72 | +5% |

**Spectral Analysis:**
- Dominant frequency: 20.0 Hz (1× N1, 1200 RPM)
- Secondary peak: 240 Hz (BPF, 12 blades)
- No sub-synchronous components detected (rules out oil whirl/rub)
- No bearing fault frequencies detected (BPFO/BPFI/BSF normal)

**Interpretation:** Spectral signature consistent with **propulsor imbalance**, not bearing or gearbox degradation.

---

## 3. Flight Crew Actions

### 3.1 Immediate Response

**Time 14:23:45 UTC:**
- EICAS alert displayed: "L PROP VIB HIGH"
- Master caution light illuminated
- Flight crew acknowledged alert

**Time 14:24:00 UTC:**
- Captain reviewed FCOM Abnormal Procedures, ATA 61-XX
- First Officer cross-checked engine parameters (EGT, N1, N2, oil pressure/temp) - all normal
- Flight crew confirmed no audible or perceptible vibration in cockpit

**Time 14:25:30 UTC:**
- Captain contacted Maintenance Control via ACARS
- Maintenance Control acknowledged, requested continued monitoring

### 3.2 Continued Monitoring

Flight crew monitored vibration indication for remainder of flight:
- Vibration remained in AMBER range (0.18–0.22 ips)
- No progression to RED threshold
- No secondary alerts generated
- Aircraft handling normal, no adverse flight characteristics

### 3.3 Logbook Entry

**Aircraft Maintenance Log Entry (2029-03-15):**
```
FLT AMP360-042 SFO-JFK: EICAS ALERT "L PROP VIB HIGH" AT 1423Z, FL350.
VIB LEVEL 0.20 IPS (AMBER RANGE). CONTINUED FLIGHT IAW FCOM 61-XX.
ALL ENGINE PARAMS NORMAL. NO ABNORMAL VIBRATION PERCEIVED IN COCKPIT.
REQ: INSPECT LEFT PROPULSOR, BALANCE AS REQUIRED.
```

---

## 4. Post-Flight Investigation

### 4.1 Data Download and Analysis

**Download Completed:** 2029-03-15 22:15 UTC (within 24-hour requirement)

**Full Waveform Analysis:**
- Reviewed complete vibration time history for entire flight
- Onset of elevated vibration: 2h 12m into flight (gradual increase over 3 minutes)
- Vibration level stable after initial increase
- No transient spikes or impulsive events

**Trending Analysis:**
- Compared to previous 10 flights: baseline 0.065 ips ± 0.008 ips
- Sudden 3σ deviation on this flight
- No progressive trending prior to event (rules out slow degradation)

### 4.2 Visual Inspection

**Inspection Date:** 2029-03-15 23:00 UTC (immediate post-flight)  
**Inspector:** AMT License #A1234567

**Findings:**
- Propulsor blades: No visible damage, cracks, or erosion
- Spinner: Secure attachment, no looseness
- Retention hardware: All fasteners properly torqued (verified with torque wrench)
- Leading edge erosion tape: Minor wear on 3 blades (normal for flight hours)
- **Foreign Object Debris (FOD):** Small ice accumulation remnants observed in spinner cavity

**Conclusion:** No structural damage. Suspected ice ingestion event caused temporary imbalance.

### 4.3 Ground Run Vibration Test

**Test Date:** 2029-03-16 08:00 UTC  
**Test Conditions:** Ground idle → 80% N1  
**Instrumentation:** Portable vibration analyzer (AP360-T020) + aircraft DAU

**Results:**

| N1 (RPM) | Measured 1× Vib (ips) | Expected (Baseline) | Status |
|----------|----------------------|---------------------|--------|
| 600 (Idle) | 0.048 | 0.028 | Elevated (+71%) |
| 900 | 0.095 | 0.048 | Elevated (+98%) |
| 1200 | 0.165 | 0.065 | Elevated (+154%) |

**Conclusion:** Elevated vibration confirmed. Proceed with propulsor balancing.

---

## 5. Root Cause Analysis

### 5.1 Probable Cause

**Primary Cause:** Propulsor blade mass imbalance induced by ice accumulation during flight through icing conditions.

**Contributing Factors:**
1. Flight through forecast light icing conditions at FL280-FL320 during climb
2. Asymmetric ice shedding from blades during cruise climb to FL350
3. Residual ice accumulation in spinner cavity

### 5.2 Why-Why Analysis

1. **Why did vibration increase?**  
   → Propulsor imbalance developed during flight.

2. **Why did imbalance develop?**  
   → Ice accumulated asymmetrically on propulsor blades.

3. **Why did ice accumulate?**  
   → Flight through forecast icing conditions; anti-ice system operated normally but ice accumulated in spinner cavity.

4. **Why did ice not shed symmetrically?**  
   → Aerodynamic and centrifugal forces shed ice at different times from different blades.

5. **Why did ice remain in spinner cavity?**  
   → Cavity design allows small ice accumulation; typically melts on ground or sheds in flight, but in this case persisted.

### 5.3 Similar Events

**Fleet Search Results:** 2 similar events in past 12 months:
- MSN-003, 2028-11-20: AMBER alert after icing encounter, resolved after landing (ice melted)
- MSN-005, 2029-01-15: AMBER alert, propulsor balancing required

**Trend:** Icing-related imbalance events occur ~2-3× per year per 50 aircraft.

---

## 6. Corrective Actions

### 6.1 Immediate Actions (MSN-001)

**Action 1: Propulsor Balancing**  
**Performed:** 2029-03-16 10:00–14:00 UTC  
**Procedure:** AMM 61-43-00, Open-Fan Propulsor Balancing  
**Method:** Trim balance using adhesive weights on spinner

**Balance Weights Applied:**
- Blade position 3 (30°): +15 grams
- Blade position 9 (270°): +8 grams

**Post-Balance Ground Run Results:**

| N1 (RPM) | 1× Vib (ips) | Status |
|----------|--------------|--------|
| 600 | 0.030 | GREEN (baseline 0.028) |
| 900 | 0.050 | GREEN (baseline 0.048) |
| 1200 | 0.068 | GREEN (baseline 0.065) |

**Outcome:** Vibration returned to GREEN range, within 5% of baseline.

**Action 2: Functional Check Flight**  
**Flight Date:** 2029-03-16 18:00 UTC  
**Flight Duration:** 1h 30m  
**Result:** No alerts, vibration remained in GREEN range throughout flight.

**Aircraft Released for Service:** 2029-03-16 20:00 UTC

### 6.2 Preventive Actions (Fleet-Wide)

**Action 1: Maintenance Bulletin**  
**Issued:** 2029-03-18  
**Subject:** "Propulsor Vibration Monitoring After Icing Encounters"  
**Content:**
- Increased vigilance for vibration after forecast icing conditions
- Post-flight inspection of spinner cavity if AMBER alert occurs
- Guidance on ice removal from spinner cavity

**Action 2: Procedure Enhancement**  
**FCOM Update (ATA 61):** Add note in icing procedures:  
"After flight through moderate or greater icing conditions, increased propulsor vibration may occur due to ice accumulation. Monitor vibration trend; if AMBER alert occurs, notify maintenance for post-flight inspection."

**Action 3: Threshold Refinement Review**  
**Scheduled:** 2029-Q2  
**Scope:** Review AMBER threshold to determine if adjustment needed based on fleet icing encounter data.

---

## 7. DPP (Digital Product Passport) Update

**DPP Entry Created:** 2029-03-17  
**DPP Link:** DPP://MSN-001/VIB-EVENT/2029-03-15  
**Lifecycle Impact:** None - event within normal operational envelope, corrective action successful.

**Propulsor Serial Number:** P61-L-00123  
**Maintenance Action:** Balance adjustment recorded in component history  
**Next Scheduled Action:** Routine propulsor balance check at 5,000 FH (per ATA 05 schedule)

---

## 8. Lessons Learned

1. **System Performance:** Vibration monitoring system performed as designed - early detection of degraded condition, appropriate alert level, safe continued flight.

2. **Flight Crew Training:** Crew followed procedures correctly; FCOM guidance adequate.

3. **Maintenance Response:** Rapid troubleshooting and corrective action (< 24 hours aircraft downtime).

4. **Design Consideration:** Spinner cavity ice accumulation is a known phenomenon; no design change required at this time.

---

## 9. Recommendations

### 9.1 Immediate (Completed)
- [x] Balance left propulsor on MSN-001
- [x] Functional check flight
- [x] Issue Maintenance Bulletin to fleet

### 9.2 Short-Term (30 days)
- [ ] Analyze fleet vibration data for correlation with icing encounters
- [ ] Review adequacy of AMBER threshold (current: 0.16 ips)
- [ ] Update FCOM icing procedures

### 9.3 Long-Term (6-12 months)
- [ ] Evaluate spinner cavity design modification to reduce ice retention
- [ ] Consider addition of spinner cavity temperature sensor for ice detection
- [ ] Incorporate ice accumulation modeling in flight planning tools

---

## 10. Approvals and Distribution

**Prepared by:** Reliability Engineer - S. Thompson  
**Reviewed by:** Chief Engineer Propulsion - M. Johnson  
**Approved by:** Head of Airworthiness - R. Williams  
**Approval Date:** 2029-03-17

**Distribution:**
- Flight Operations
- Maintenance Planning
- Propulsion Engineering
- Airworthiness Continuing
- Quality Assurance
- Digital Product Passport (ATA 95)

---

## 11. Cross-References

- **ATA 61**: Propellers/Propulsors
- **ATA 05**: Scheduled maintenance (propulsor balance checks)
- **ATA 30**: Ice and Rain Protection
- **ATA 92**: Model-Based Maintenance (RUL impact assessment)
- **ATA 95**: Digital Product Passport (component lifecycle tracking)
- **FCOM Section 61-XX**: Propulsor Vibration Abnormal Procedure

---

**Document Status:** CLOSED  
**Next Review:** 2029-09-15 (6-month follow-up)

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
