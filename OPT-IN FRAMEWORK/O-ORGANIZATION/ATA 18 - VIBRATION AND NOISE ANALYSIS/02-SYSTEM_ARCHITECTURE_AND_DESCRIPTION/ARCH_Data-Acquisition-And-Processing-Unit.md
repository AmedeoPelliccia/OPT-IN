# ARCH – Data Acquisition and Processing Unit

**Document ID:** ARCH_Data-Acquisition-And-Processing-Unit  
**Revision:** 1.0.0  
**Effective Date:** 2028-04-15  
**Status:** Released

---

## 1. Overview

The Data Acquisition and Processing Unit (DAU) is the central component of the AMPEL360 Vibration and Noise Monitoring System. It provides real-time data acquisition, signal processing, feature extraction, and alert generation capabilities for comprehensive health monitoring.

---

## 2. System Architecture

### 2.1 High-Level Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                   Data Acquisition Unit (DAU)                    │
├─────────────────────────────────────────────────────────────────┤
│                                                                   │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐          │
│  │   Sensor     │  │   Signal     │  │   Feature    │          │
│  │  Interface   │→ │  Processing  │→ │  Extraction  │          │
│  │              │  │              │  │              │          │
│  └──────────────┘  └──────────────┘  └──────────────┘          │
│                            ↓                 ↓                   │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐          │
│  │   Data       │  │   Anomaly    │  │    Alert     │          │
│  │   Storage    │  │   Detection  │→ │  Generation  │→ CMS     │
│  │              │  │              │  │              │          │
│  └──────────────┘  └──────────────┘  └──────────────┘          │
│                                                                   │
└─────────────────────────────────────────────────────────────────┘
```

### 2.2 Hardware Components

| Component | Specification | Quantity | Part Number |
|-----------|---------------|----------|-------------|
| Main Processing Module | Dual-core ARM Cortex-A72, 1.5 GHz | 2 (redundant) | AP360-DAU-001 |
| ADC Module (High-Speed) | 24-bit, 102.4 kSPS, 8 channels | 4 | AP360-ADC-HS-001 |
| ADC Module (Medium-Speed) | 24-bit, 10 kSPS, 16 channels | 2 | AP360-ADC-MS-001 |
| Storage Module | 2TB SSD, MIL-STD-810 rated | 2 (mirrored) | AP360-SSD-002 |
| Power Supply | 28V DC input, isolated outputs | 2 (redundant) | AP360-PSU-003 |
| Network Interface | 1000Base-T, ARINC 664 P7 | 2 | AP360-NET-001 |
| Time Sync Module | IEEE 1588 PTP, GPS receiver | 1 | AP360-TIME-001 |

### 2.3 Software Architecture

```
┌─────────────────────────────────────────────────────────┐
│                    Application Layer                     │
├──────────────┬──────────────┬──────────────┬────────────┤
│   Vibration  │   Acoustic   │   Trending   │   Alert    │
│   Analysis   │   Analysis   │   Analysis   │   Manager  │
└──────────────┴──────────────┴──────────────┴────────────┘
┌─────────────────────────────────────────────────────────┐
│                   Processing Layer                       │
├──────────────┬──────────────┬──────────────┬────────────┤
│     FFT      │   Filtering  │  Resampling  │  Windowing │
│    Engine    │    Engine    │    Engine    │   Engine   │
└──────────────┴──────────────┴──────────────┴────────────┘
┌─────────────────────────────────────────────────────────┐
│                  Data Acquisition Layer                  │
├──────────────┬──────────────┬──────────────┬────────────┤
│   Sensor     │    Clock     │     Data     │   Buffer   │
│   Drivers    │    Sync      │   Validation │   Manager  │
└──────────────┴──────────────┴──────────────┴────────────┘
┌─────────────────────────────────────────────────────────┐
│              Real-Time Operating System (RTOS)           │
└─────────────────────────────────────────────────────────┘
```

---

## 3. Sensor Interface Specifications

### 3.1 IEPE Accelerometer Interface
- **Bias Voltage**: 18-24V DC, constant current 2-20 mA
- **Input Impedance**: >100 kΩ
- **Frequency Response**: DC to 10 kHz (±3 dB)
- **Dynamic Range**: ±50g peak
- **Noise Floor**: <0.0001g RMS (10-1000 Hz)

### 3.2 Voltage Accelerometer Interface
- **Input Range**: ±10V differential
- **Input Impedance**: >1 MΩ
- **Frequency Response**: DC to 5 kHz (±1 dB)
- **Dynamic Range**: ±100g peak
- **Common Mode Rejection**: >80 dB at 60 Hz

### 3.3 Tachometer Interface
- **Input Type**: Optical pulse, TTL logic level
- **Frequency Range**: 0.1 Hz to 100 kHz
- **Pulse Width**: >1 µs
- **Accuracy**: 0.01% of reading

### 3.4 Acoustic Sensor Interface
- **Input Type**: ICP microphone, 24-bit digital
- **Sample Rate**: 48 kHz
- **Dynamic Range**: 120 dB
- **Frequency Response**: 20 Hz to 20 kHz (±1 dB)
- **Sensitivity**: -40 dBV/Pa typical

---

## 4. Signal Processing Capabilities

### 4.1 Time-Domain Processing
- **Anti-Aliasing Filters**: 8th-order Butterworth, fc = 0.4 × fs
- **High-Pass Filters**: 0.5 Hz, 1 Hz, 10 Hz (user configurable)
- **Integration**: Velocity and displacement calculation from acceleration
- **Windowing**: Hann, Hamming, Blackman, Flat-top

### 4.2 Frequency-Domain Processing
- **FFT Size**: 512, 1024, 2048, 4096, 8192, 16384 points
- **Spectral Resolution**: Down to 0.0125 Hz (16384-point FFT at 2048 Hz)
- **Averaging**: Linear, exponential, peak hold
- **Zoom FFT**: 10× zoom for order tracking
- **Spectral Kurtosis**: SK calculation for bearing fault detection

### 4.3 Advanced Processing
- **Order Tracking**: Synchronous time-domain averaging, order extraction
- **Envelope Analysis**: Hilbert transform, bandpass demodulation (500 Hz to 10 kHz)
- **Cepstrum Analysis**: Real and complex cepstrum for gear mesh analysis
- **Cross-Correlation**: Multi-channel phase analysis
- **Coherence**: Transfer function estimation

---

## 5. Feature Extraction

### 5.1 Time-Domain Features
- **RMS**: Root Mean Square value
- **Peak**: Maximum absolute value in time window
- **Crest Factor**: Peak / RMS ratio
- **Kurtosis**: Fourth statistical moment (impulsiveness indicator)
- **Skewness**: Third statistical moment (asymmetry indicator)
- **Zero Crossing Rate**: Number of zero crossings per second

### 5.2 Frequency-Domain Features
- **Total Power**: Integrated spectral power
- **Band Power**: Power in specific frequency bands
- **Peak Frequency**: Frequency of maximum spectral amplitude
- **Spectral Centroid**: Center of gravity of spectrum
- **1×, 2×, ½× Orders**: Amplitude at synchronous frequencies
- **Sideband Detection**: Modulation frequency identification

### 5.3 Bearing Fault Frequencies
Automatically calculated based on bearing geometry:
- **BPFO**: Ball Pass Frequency, Outer race
- **BPFI**: Ball Pass Frequency, Inner race
- **BSF**: Ball Spin Frequency
- **FTF**: Fundamental Train Frequency

---

## 6. Anomaly Detection Algorithms

### 6.1 Statistical Methods
- **Z-Score**: (x - μ) / σ for threshold detection
- **EWMA**: Exponentially Weighted Moving Average (λ = 0.2)
- **CUSUM**: Cumulative Sum for trend detection
- **Multivariate Analysis**: Principal Component Analysis (PCA) for multi-sensor correlation

### 6.2 Model-Based Methods
- **Baseline Comparison**: Deviation from fleet baseline signatures
- **Envelope Detection**: Bearing defect energy in envelope spectrum
- **Order Deviation**: Change in synchronous vibration orders
- **Coherence Monitoring**: Loss of coherence between related sensors

### 6.3 Alert Logic
```
IF (z_score > 3 AND consecutive_flights ≥ 3) THEN
    Generate AMBER alert
ELSE IF (absolute_value > RED_threshold) THEN
    Generate RED alert
ELSE
    Continue monitoring (GREEN status)
END IF
```

---

## 7. Data Storage and Management

### 7.1 Raw Data Storage
- **Buffer Size**: 100 GB circular buffer
- **Compression**: Lossless compression (gzip), 3:1 typical ratio
- **Overwrite Policy**: FIFO when buffer full
- **Trigger Capture**: Full-resolution capture on alert events (±30 seconds)

### 7.2 Feature Database
- **Features per Flight**: ~500 KB compressed
- **Database Capacity**: 10,000 flights (5 GB)
- **Backup**: Automatic daily backup to CMS

### 7.3 Event Recording
- **Alert Events**: Full metadata and data snapshot
- **Transient Events**: Automatic capture of impulsive events (kurtosis > 10)
- **Manual Triggers**: Flight crew or maintenance-initiated captures

---

## 8. Interface to Centralized Maintenance System (CMS)

### 8.1 Real-Time Interface
- **Protocol**: ARINC 664 Part 7 (AFDX)
- **Update Rate**: 1 Hz for status, event-driven for alerts
- **Message Types**:
  - Status messages (health, storage usage)
  - Alert messages (amber/red conditions)
  - Feature summary (RMS, kurtosis, peak frequencies)

### 8.2 Post-Flight Download Interface
- **Protocol**: Ethernet 1000Base-T
- **Data Rate**: Up to 100 MB/s
- **Download Time**: <5 minutes for typical flight
- **Authentication**: X.509 certificates, TLS 1.3 encryption

---

## 9. Time Synchronization

### 9.1 IEEE 1588 PTP (Precision Time Protocol)
- **Accuracy**: <1 µs absolute time
- **Sync Interval**: 1 Hz
- **Clock Discipline**: GPS-disciplined oscillator (GPSDO)
- **Holdover**: ±10 µs for 1 hour GPS loss

### 9.2 Timestamp Format
- **Standard**: TAI (International Atomic Time)
- **Resolution**: 1 µs
- **Leap Second**: Automatic handling via GPS
- **Format**: ISO 8601 extended format (YYYY-MM-DDTHH:MM:SS.ssssssZ)

---

## 10. Built-In Test (BIT)

### 10.1 Power-On Self-Test (POST)
- Memory test (RAM, flash)
- ADC calibration verification
- Network connectivity check
- Clock sync status verification

### 10.2 Continuous BIT
- **Sensor Continuity**: Detection of open/short circuits
- **Noise Floor**: Monitoring for excessive noise
- **Clock Stability**: Verification of time sync accuracy
- **Data Integrity**: CRC validation on stored data

### 10.3 Maintenance BIT
- **Loopback Test**: End-to-end signal injection test
- **Frequency Response**: Swept sine test to verify ADC linearity
- **Storage Test**: Full read/write verification

---

## 11. Environmental and Reliability

### 11.1 Environmental Qualifications
- **Operating Temperature**: -40°C to +70°C
- **Shock**: 40g, 11 ms half-sine
- **Vibration**: 5.0g RMS, 10-2000 Hz (per DO-160)
- **EMI/EMC**: DO-160 Category T (radiated/conducted emissions and susceptibility)
- **Altitude**: -1000 ft to 55,000 ft

### 11.2 Reliability Specifications
- **MTBF**: >50,000 hours
- **Design Life**: 30 years, 60,000 flight hours
- **Redundancy**: Dual processing, dual power, dual storage
- **Maintainability**: Line-Replaceable Unit (LRU), <30 min replacement

---

## 12. Configuration Management

### 12.1 Software Versioning
- **Format**: MAJOR.MINOR.PATCH (Semantic Versioning)
- **Update Method**: Secure OTA (Over-The-Air) updates via CMS
- **Rollback**: Automatic rollback on BIT failure
- **Audit Trail**: Complete version history in DPP (ATA 95)

### 12.2 Hardware Configuration
- **Serial Number**: Unique identifier for each DAU
- **Calibration Data**: Stored in non-volatile memory
- **Sensor Mapping**: Configurable via XML configuration file

---

## 13. Safety and Certification

### 13.1 Design Assurance Level
- **DAL**: Level C (per ARP4754A)
- **Software**: DO-178C Level C
- **Hardware**: DO-254 Level C

### 13.2 Failure Modes
- **Single Fault Tolerance**: No single DAU failure causes loss of monitoring capability
- **Fail-Safe**: System defaults to safe state (no spurious alerts)
- **Fault Annunciation**: CMS alerted of DAU malfunction

---

## 14. Cross-References

This document interfaces with:
- **ATA 45**: Centralized Maintenance System (data interface)
- **ATA 91**: Charts and wiring diagrams (sensor connectivity)
- **ATA 31**: Indicating/Recording Systems (EICAS/ECAM interface)
- **MAP_Sensor-Locations-And-Part-Numbers**: Physical sensor installation
- **PLAN_Vibration-And-Noise-Management-Program**: System objectives and requirements

---

**Document Control:**
- **Next Review**: 2029-04-15
- **Change Authority**: Systems Engineering

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
