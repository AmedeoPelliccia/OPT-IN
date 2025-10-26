# PROC – Routine Data Download and Analysis

**Document ID:** PROC_Routine-Data-Download-And-Analysis  
**Revision:** 1.0.0  
**Effective Date:** 2028-04-15  
**Status:** Released

---

## 1. Purpose and Scope

This procedure defines the routine download, analysis, and reporting of vibration and acoustic monitoring data from AMPEL360 aircraft. It ensures timely detection of degraded conditions, supports predictive maintenance, and maintains historical trending databases.

**Applicability:** All AMPEL360 aircraft equipped with ATA 18 Vibration and Noise Monitoring System.

---

## 2. Frequency and Timing

### 2.1 Standard Schedule

| Event | Frequency | Timeline |
|-------|-----------|----------|
| **Data Download** | After every flight | Within 24 hours of block-in |
| **Quick Analysis** | After every flight | Within 4 hours of data download |
| **Detailed Trending** | Weekly | Every Monday 08:00 UTC |
| **Fleet Analysis** | Monthly | 1st of month |
| **Program Review** | Quarterly | PRB meetings |

### 2.2 Event-Driven Downloads

Immediate download required for:
- AMBER or RED alert during flight
- Flight crew squawk related to vibration/noise
- Post-maintenance functional flight
- Engineering investigation request

---

## 3. Roles and Responsibilities

| Role | Responsibilities |
|------|------------------|
| **Line Maintenance** | Initiate data download after flight |
| **Data Analyst** | Perform quick analysis, generate exceedance reports |
| **Reliability Engineer** | Conduct trending analysis, recommend actions |
| **Propulsion/Structures Engineer** | Investigate anomalies, approve threshold changes |
| **Maintenance Planning** | Schedule corrective actions based on analysis |

---

## 4. Data Download Procedure

### 4.1 Prerequisites

- Aircraft parked with ground power connected
- DAU (Data Acquisition Unit) powered and accessible
- Ground Station laptop with AP360-DataLink software v2.1 or later
- Network connectivity to aircraft Ethernet port (maintenance panel)
- Valid X.509 authentication certificate

### 4.2 Download Steps

**Step 1: Connect to Aircraft**
1. Connect laptop to maintenance Ethernet port (location: fwd fuselage, station 120, left side)
2. Launch AP360-DataLink software
3. Select "Download Vibration/Acoustic Data"
4. Enter aircraft registration and MSN
5. Authenticate with maintenance credential

**Step 2: Verify Connection**
1. Software displays DAU status:
   - DAU-1: IP 192.168.100.10, Status: Online
   - DAU-2: IP 192.168.100.11, Status: Online
2. Verify time sync: UTC time displayed should match current time ±1 second
3. Check storage usage: Typical flight uses 500 MB; alert if >80% full

**Step 3: Select Data Range**
- **Option A - Last Flight:** Select "Download Last Flight" (automatic)
- **Option B - Date Range:** Enter start/end date-time (for backfill or investigation)
- **Option C - Full Download:** Select "Download All Data" (for new baseline or investigation)

**Typical Selection:** Option A (last flight)

**Step 4: Initiate Download**
1. Click "Start Download"
2. Progress bar displays:
   - Raw waveforms: ~3 GB for 5-hour flight
   - Extracted features: ~500 KB
   - Alert logs: ~10 KB
3. Download time: ~5 minutes for typical flight

**Step 5: Verify Download**
1. Software displays "Download Complete" with checksum verification
2. Review download summary:
   - Flight date/time
   - Flight duration
   - Data size
   - Alert count (if any)
3. Click "Save Report" to generate download log (PDF)

**Step 6: Upload to Analytics Platform**
1. Software automatically uploads data to centralized analytics server
2. Confirm upload status: "Upload Complete, File ID: AMP360-MSN-XXX-YYYYMMDD"
3. Disconnect laptop

### 4.3 Troubleshooting

| Issue | Probable Cause | Corrective Action |
|-------|---------------|-------------------|
| No connection to DAU | Network cable, DAU power | Verify cable, check DAU power via BIT panel |
| Authentication failure | Expired certificate | Renew maintenance credential |
| Slow download | Network congestion | Use direct Ethernet, avoid WiFi |
| Checksum error | Data corruption | Re-download affected segment |

---

## 5. Quick Analysis Procedure

### 5.1 Automated Analysis

Upon upload to analytics platform, automated analysis runs:

**Time-Domain KPIs Calculated:**
- RMS (Root Mean Square)
- Peak
- Crest Factor
- Kurtosis
- Skewness

**Frequency-Domain KPIs Calculated:**
- 1× synchronous amplitude (propulsor, engine)
- 2× synchronous amplitude
- ½× sub-synchronous amplitude
- Bearing fault frequencies (BPFO, BPFI, BSF, FTF) in envelope spectrum
- Blade Pass Frequency (BPF) amplitude
- Spectral kurtosis

**Order Tracking:**
- 1× order amplitude vs. RPM
- 2× order amplitude vs. RPM
- Detection of sidebands ± N× f_mod

**Acoustic Metrics:**
- Leq (10-second equivalent continuous level), dB(A)
- Lmax, Lmin, L10, L90
- Octave band spectrum
- Tonal component extraction

### 5.2 Threshold Comparison

Automated comparison to thresholds (from LIMITS document):

**Propulsion:**
- Open-fan 1×: Green ≤0.15, Amber 0.16-0.25, Red >0.25 ips
- Gearbox BPFO: Green ≤0.20, Amber 0.21-0.35, Red >0.35 g RMS
- Turbine 1×: Green ≤0.10, Amber 0.11-0.18, Red >0.18 ips

**Airframe:**
- Fuselage Z: Green ≤0.10, Amber 0.11-0.15, Red >0.15 g
- Wing: Green ≤0.15, Amber 0.16-0.25, Red >0.25 g

**Cabin:**
- Cruise: Green ≤78, Amber 79-82, Red >82 dB(A)

### 5.3 Exceedance Report Generation

If any threshold exceeded:

**Auto-Generated Report Includes:**
- Flight details (date, route, duration)
- Alert level (AMBER or RED)
- Parameter exceeded (sensor ID, location, metric)
- Measured value vs. threshold
- Baseline comparison (% deviation)
- Spectral snapshot (FFT at time of exceedance)
- Recommended action (per LIMITS document)

**Distribution:**
- Email to Maintenance Planning (immediate)
- Entry in Maintenance Information System (MIS)
- DPP link created (ATA 95)

---

## 6. Trending Analysis Procedure

### 6.1 EWMA Trending

**Exponentially Weighted Moving Average (EWMA):**

```
EWMA(n) = λ × X(n) + (1 - λ) × EWMA(n-1)
```

Where:
- λ = 0.2 (smoothing factor)
- X(n) = current measurement
- EWMA(n-1) = previous EWMA value

**Alert Rule:**
```
z-score = (X(n) - EWMA(n)) / σ(n)

IF z-score > 3 for 3 consecutive flights THEN
    Generate AMBER alert
END IF
```

### 6.2 Trending Parameters

Monitor trends for:

**Propulsor (per engine):**
- 1× synchronous vibration (ips)
- 2× synchronous vibration (ips)
- BPF amplitude (ips)
- Overall RMS 10-1000 Hz (ips)

**Gearbox (per engine):**
- BPFO amplitude in envelope spectrum (g RMS)
- BPFI amplitude in envelope spectrum (g RMS)
- Kurtosis
- Spectral kurtosis (5-10 kHz band)

**Engine Core (per engine):**
- N1 1× vibration (ips)
- N2 1× vibration (ips)
- Broadband 10-1000 Hz (ips)

**Airframe:**
- Fuselage RMS (X, Y, Z axes)
- Wing RMS (X, Y, Z axes)
- Wing natural frequency (flutter monitoring)

**Cabin Acoustic:**
- Cruise Leq, dB(A) (per zone: Fwd, Mid, Aft)
- BPF tone level, dB

### 6.3 Trending Chart Generation

**Weekly Trending Report Includes:**
- Time-series plots (last 30 flights)
- EWMA overlay with ±3σ bands
- Alert annotations (AMBER/RED markers)
- Maintenance action annotations (balancing, component replacement)

**Example Chart:**
```
Title: MSN-001 Left Propulsor 1× Vibration Trend
X-axis: Flight Date
Y-axis: Vibration (ips)
Data:
  - Blue line: Measured 1× vibration
  - Red line: EWMA
  - Green band: GREEN threshold (≤0.15 ips)
  - Yellow band: AMBER threshold (0.16-0.25 ips)
  - Annotations: "Balanced 2029-03-16" marker
```

---

## 7. Analysis Outputs

### 7.1 HUMS Summary

**Health and Usage Monitoring System (HUMS) Summary Report:**

Generated for each flight, includes:
- Aircraft tail number, MSN
- Flight number, date, duration
- Alert summary (count of GREEN/AMBER/RED per subsystem)
- Top 5 parameters by severity (ranked by z-score)
- Maintenance action recommendations

**Distribution:**
- Maintenance Planning
- Reliability Engineering
- Flight Operations (if AMBER/RED)

**Format:** PDF, auto-emailed within 4 hours of flight completion

### 7.2 DPP Update

**Digital Product Passport (ATA 95) Update:**

For each flight, update DPP with:
- Flight cycle count increment
- Max vibration levels (per sensor)
- Alert events (if any)
- Maintenance actions performed

**DPP Link Format:** `DPP://MSN-XXX/VIB-HISTORY/YYYY-MM-DD`

### 7.3 ATA 92 RUL Input

**Remaining Useful Life (RUL) Calculation Input:**

Provide to Model-Based Maintenance (ATA 92) system:

**For Bearings (Gearbox):**
- BPFO/BPFI envelope amplitude trend
- Kurtosis trend
- Estimated RUL based on Paris' Law (crack propagation model)

**For Propulsor:**
- 1× vibration trend (imbalance indicator)
- BPF trend (blade integrity indicator)
- Estimated RUL to next balance requirement

**Update Frequency:** After each flight

---

## 8. Special Analysis Procedures

### 8.1 Post-Maintenance Verification

After propulsor balance, bearing replacement, or structural repair:

1. Download baseline data from functional flight
2. Compare to pre-maintenance data
3. Verify return to GREEN range
4. Update fleet baseline if improvement observed
5. Document in DPP

### 8.2 Incident Investigation

For RED alerts or significant events:

1. Download full waveform data (raw, uncompressed)
2. Perform detailed spectral analysis (high-resolution FFT)
3. Generate waterfall plots (RPM vs. frequency vs. amplitude)
4. Calculate spectrograms for transient analysis
5. Prepare detailed incident report (see INCIDENT template)

### 8.3 Fleet Comparison

Monthly fleet analysis:

1. Aggregate all aircraft data
2. Generate box plots (parameter distribution across fleet)
3. Identify outliers (aircraft operating >2σ from fleet mean)
4. Recommend proactive maintenance for outliers
5. Update fleet baseline thresholds if justified

---

## 9. Data Retention and Archiving

### 9.1 Retention Policy

| Data Type | Retention Period | Storage Location |
|-----------|------------------|------------------|
| Raw Waveforms | 24 months | Analytics platform, hot storage |
| Extracted Features | 10 years | Analytics platform, database |
| Alert Events | Indefinite | DPP, cold storage |
| Trending Charts | 5 years | Document management system |
| HUMS Summaries | 10 years | Maintenance Information System |

### 9.2 Archiving Process

**Automated Process:**
- Data older than 24 months: Migrate raw waveforms to cold storage (AWS Glacier)
- Data older than 10 years: Archive features to DPP, delete from analytics platform
- Alert events: Permanent retention in DPP

**Manual Process:**
- Critical events: Engineer marks for "Indefinite Retention" in DPP
- Certification evidence: Copy to regulatory compliance archive

---

## 10. Quality Control

### 10.1 Data Quality Checks

**Automated Checks:**
- Sensor continuity: Detect open/short circuits
- Noise floor: Flag excessive noise (>0.001g baseline)
- Time sync: Verify timestamp consistency across sensors
- Sample rate: Verify 25.6 kHz (propulsion), 2 kHz (airframe), 48 kHz (acoustic)

**Manual Checks (Weekly):**
- Review random sample of 3 flights
- Verify EWMA calculations
- Spot-check FFT results against raw data
- Validate alert generation logic

### 10.2 Calibration Verification

**Quarterly:**
- Download calibration data from DAU
- Verify sensor sensitivity values match calibration certificates
- Check for sensors approaching calibration due date (alert at 30 days)

---

## 11. Training Requirements

**Personnel performing this procedure must complete:**
- AP360 Vibration Monitoring System Training (8 hours, online)
- AP360-DataLink Software Training (4 hours, hands-on)
- Refresher training: Every 24 months

**Competency Assessment:**
- Practical exam: Download and analyze sample dataset
- Pass rate: 90% or higher

---

## 12. Forms and Records

**Required Forms:**
- F-ATA18-001: Data Download Log
- F-ATA18-002: Exceedance Report
- F-ATA18-003: Trending Analysis Report

**Record Retention:** 10 years (per ATA 00 Records Management)

---

## 13. Cross-References

- **PLAN_Vibration-And-Noise-Management-Program**: Overall program objectives
- **LIMITS_Vibration-And-Noise-Alert-Levels**: Threshold definitions
- **ATA 92**: Model-Based Maintenance (RUL interface)
- **ATA 95**: Digital Product Passport (archiving)
- **ATA 05**: Scheduled maintenance (balance checks)

---

**Document Control:**
- **Next Review:** 2029-04-15
- **Change Authority:** Reliability Engineering

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
