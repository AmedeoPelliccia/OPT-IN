# MAP – Sensor Locations and Part Numbers

**Document ID:** MAP_Sensor-Locations-And-Part-Numbers  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Status:** Released

---

## 1. Overview

This document provides a comprehensive mapping of all vibration and acoustic sensors installed on AMPEL360 aircraft. It includes physical locations, part numbers, specifications, and routing information for maintenance and troubleshooting purposes.

---

## 2. Sensor Naming Convention

### 2.1 Standard Format

```
VIB_<ATA>-<LOC>-<AXIS>-<IDX>
```

**Components:**
- **VIB/ACO**: Sensor type (VIB = Vibration, ACO = Acoustic)
- **ATA**: Related ATA chapter (61 = Propulsor, 72 = Engine, 53 = Fuselage, etc.)
- **LOC**: Physical location code
- **AXIS**: Measurement axis (AX = Axial, RA = Radial, TA = Tangential, X/Y/Z = Cartesian)
- **IDX**: Sequential index (01, 02, etc.)

### 2.2 Examples

| Sensor ID | Description |
|-----------|-------------|
| `VIB_61-NAC_L-AX_01` | Left nacelle axial vibration sensor #1 |
| `VIB_61-NAC_L-RA_01` | Left nacelle radial vibration sensor #1 |
| `VIB_72-ENG_R-AX_01` | Right engine axial vibration sensor #1 |
| `VIB_53-FUS_FWD-Z_01` | Forward fuselage vertical vibration sensor #1 |
| `ACO_25-CAB_25C-01` | Cabin acoustic sensor at seat 25C |

---

## 3. Propulsion System Sensors (ATA 61/72/79)

### 3.1 Open-Fan Propulsor Sensors

#### 3.1.1 Left Propulsor (Engine #1)

| Sensor ID | Type | Location | Part Number | Mounting | Sample Rate | Routing |
|-----------|------|----------|-------------|----------|-------------|---------|
| VIB_61-NAC_L-AX_01 | IEPE 10 mV/g | Forward nacelle mount | PCB-356A15 | Stud mount M6 | 25.6 kHz | DAU-1 Ch 1 |
| VIB_61-NAC_L-RA_01 | IEPE 10 mV/g | Forward nacelle mount | PCB-356A15 | Stud mount M6 | 25.6 kHz | DAU-1 Ch 2 |
| VIB_61-NAC_L-AX_02 | IEPE 10 mV/g | Aft nacelle mount | PCB-356A15 | Stud mount M6 | 25.6 kHz | DAU-1 Ch 3 |
| VIB_61-NAC_L-RA_02 | IEPE 10 mV/g | Aft nacelle mount | PCB-356A15 | Stud mount M6 | 25.6 kHz | DAU-1 Ch 4 |
| VIB_79-GBX_L-AX_01 | IEPE 100 mV/g | Gearbox housing top | PCB-353B18 | Stud mount M8 | 25.6 kHz | DAU-1 Ch 5 |
| VIB_79-GBX_L-RA_01 | IEPE 100 mV/g | Gearbox housing side | PCB-353B18 | Stud mount M8 | 25.6 kHz | DAU-1 Ch 6 |
| TACH_61-PROP_L-01 | Optical | Spinner nose | MTN-1210 | Bracket mount | Pulse | DAU-1 Tach 1 |

**Installation Notes:**
- All sensors torqued to 8 N⋅m (nacelle), 12 N⋅m (gearbox)
- Cable routing via nacelle conduit AP360-COND-61L
- Connectors: MS3106A-14S-6P (sensor side), MS3102A-14S-6S (harness side)

#### 3.1.2 Right Propulsor (Engine #2)

| Sensor ID | Type | Location | Part Number | Mounting | Sample Rate | Routing |
|-----------|------|----------|-------------|----------|-------------|---------|
| VIB_61-NAC_R-AX_01 | IEPE 10 mV/g | Forward nacelle mount | PCB-356A15 | Stud mount M6 | 25.6 kHz | DAU-2 Ch 1 |
| VIB_61-NAC_R-RA_01 | IEPE 10 mV/g | Forward nacelle mount | PCB-356A15 | Stud mount M6 | 25.6 kHz | DAU-2 Ch 2 |
| VIB_61-NAC_R-AX_02 | IEPE 10 mV/g | Aft nacelle mount | PCB-356A15 | Stud mount M6 | 25.6 kHz | DAU-2 Ch 3 |
| VIB_61-NAC_R-RA_02 | IEPE 10 mV/g | Aft nacelle mount | PCB-356A15 | Stud mount M6 | 25.6 kHz | DAU-2 Ch 4 |
| VIB_79-GBX_R-AX_01 | IEPE 100 mV/g | Gearbox housing top | PCB-353B18 | Stud mount M8 | 25.6 kHz | DAU-2 Ch 5 |
| VIB_79-GBX_R-RA_01 | IEPE 100 mV/g | Gearbox housing side | PCB-353B18 | Stud mount M8 | 25.6 kHz | DAU-2 Ch 6 |
| TACH_61-PROP_R-01 | Optical | Spinner nose | MTN-1210 | Bracket mount | Pulse | DAU-2 Tach 1 |

**Installation Notes:**
- Symmetric installation to left propulsor
- Cable routing via nacelle conduit AP360-COND-61R

### 3.2 Turbine Core Sensors

#### 3.2.1 Left Engine Core

| Sensor ID | Type | Location | Part Number | Mounting | Sample Rate | Routing |
|-----------|------|----------|-------------|----------|-------------|---------|
| VIB_72-ENG_L-AX_01 | IEPE 100 mV/g | Compressor case | PCB-353B18 | Stud mount M8 | 25.6 kHz | DAU-1 Ch 7 |
| VIB_72-ENG_L-RA_01 | IEPE 100 mV/g | Compressor case | PCB-353B18 | Stud mount M8 | 25.6 kHz | DAU-1 Ch 8 |
| VIB_72-TRB_L-AX_01 | High-temp IEPE | Turbine case | Meggitt-7270A | Stud mount M8 | 25.6 kHz | DAU-1 Ch 9 |
| TACH_72-N1_L-01 | Inductive | Fan shaft | BN-916-187-501 | Proximity | Pulse | DAU-1 Tach 2 |
| TACH_72-N2_L-01 | Inductive | Compressor shaft | BN-916-187-501 | Proximity | Pulse | DAU-1 Tach 3 |

**Installation Notes:**
- High-temperature sensors rated to 260°C continuous
- Thermal barrier washers installed per AMM 72-00-00

#### 3.2.2 Right Engine Core

| Sensor ID | Type | Location | Part Number | Mounting | Sample Rate | Routing |
|-----------|------|----------|-------------|----------|-------------|---------|
| VIB_72-ENG_R-AX_01 | IEPE 100 mV/g | Compressor case | PCB-353B18 | Stud mount M8 | 25.6 kHz | DAU-2 Ch 7 |
| VIB_72-ENG_R-RA_01 | IEPE 100 mV/g | Compressor case | PCB-353B18 | Stud mount M8 | 25.6 kHz | DAU-2 Ch 8 |
| VIB_72-TRB_R-AX_01 | High-temp IEPE | Turbine case | Meggitt-7270A | Stud mount M8 | 25.6 kHz | DAU-2 Ch 9 |
| TACH_72-N1_R-01 | Inductive | Fan shaft | BN-916-187-501 | Proximity | Pulse | DAU-2 Tach 2 |
| TACH_72-N2_R-01 | Inductive | Compressor shaft | BN-916-187-501 | Proximity | Pulse | DAU-2 Tach 3 |

---

## 4. Airframe Sensors (ATA 53/55/57)

### 4.1 Fuselage Sensors (ATA 53)

| Sensor ID | Type | Location | Part Number | Mounting | Sample Rate | Routing |
|-----------|------|----------|-------------|----------|-------------|---------|
| VIB_53-FUS_FWD-X_01 | Triaxial 100 mV/g | Frame 10, stringer 15L | Wilcoxon-793L | Adhesive | 2 kHz | DAU-1 Ch 10-12 |
| VIB_53-FUS_FWD-Y_01 | (part of triaxial) | Frame 10, stringer 15L | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 10-12) |
| VIB_53-FUS_FWD-Z_01 | (part of triaxial) | Frame 10, stringer 15L | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 10-12) |
| VIB_53-FUS_AFT-X_01 | Triaxial 100 mV/g | Frame 85, stringer 15R | Wilcoxon-793L | Adhesive | 2 kHz | DAU-2 Ch 10-12 |
| VIB_53-FUS_AFT-Y_01 | (part of triaxial) | Frame 85, stringer 15R | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 10-12) |
| VIB_53-FUS_AFT-Z_01 | (part of triaxial) | Frame 85, stringer 15R | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 10-12) |

**Installation Notes:**
- Sensors adhesively bonded per AMM 51-00-00
- Surface prepared with MEK, primed with Loctite 770, bonded with Loctite 496
- Bond integrity verified with tap test

### 4.2 Wing Sensors (ATA 57)

| Sensor ID | Type | Location | Part Number | Mounting | Sample Rate | Routing |
|-----------|------|----------|-------------|----------|-------------|---------|
| VIB_57-WNG_L-X_01 | Triaxial 100 mV/g | Wing root, front spar | Wilcoxon-793L | Adhesive | 2 kHz | DAU-1 Ch 13-15 |
| VIB_57-WNG_L-Y_01 | (part of triaxial) | Wing root, front spar | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 13-15) |
| VIB_57-WNG_L-Z_01 | (part of triaxial) | Wing root, front spar | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 13-15) |
| VIB_57-WNG_R-X_01 | Triaxial 100 mV/g | Wing root, front spar | Wilcoxon-793L | Adhesive | 2 kHz | DAU-2 Ch 13-15 |
| VIB_57-WNG_R-Y_01 | (part of triaxial) | Wing root, front spar | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 13-15) |
| VIB_57-WNG_R-Z_01 | (part of triaxial) | Wing root, front spar | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 13-15) |

**Installation Notes:**
- Critical for BWB flutter monitoring
- Located at maximum stress concentration points

### 4.3 Stabilizer Sensors (ATA 55)

| Sensor ID | Type | Location | Part Number | Mounting | Sample Rate | Routing |
|-----------|------|----------|-------------|----------|-------------|---------|
| VIB_55-VSTAB-X_01 | Triaxial 100 mV/g | Vertical stabilizer root | Wilcoxon-793L | Adhesive | 2 kHz | DAU-1 Ch 16-18 |
| VIB_55-VSTAB-Y_01 | (part of triaxial) | Vertical stabilizer root | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 16-18) |
| VIB_55-VSTAB-Z_01 | (part of triaxial) | Vertical stabilizer root | Wilcoxon-793L | Adhesive | 2 kHz | (Ch 16-18) |

---

## 5. Cabin Acoustic Sensors (ATA 25)

| Sensor ID | Type | Location | Part Number | Mounting | Sample Rate | Routing |
|-----------|------|----------|-------------|----------|-------------|---------|
| ACO_25-CAB_FWD-01 | ICP Microphone | Row 5, overhead | GRAS-46BE | Bracket | 48 kHz/24-bit | DAU-1 Audio 1 |
| ACO_25-CAB_15C-01 | ICP Microphone | Seat 15C headrest | GRAS-46BE | Bracket | 48 kHz/24-bit | DAU-1 Audio 2 |
| ACO_25-CAB_25C-01 | ICP Microphone | Seat 25C headrest | GRAS-46BE | Bracket | 48 kHz/24-bit | DAU-1 Audio 3 |
| ACO_25-CAB_AFT-01 | ICP Microphone | Row 40, overhead | GRAS-46BE | Bracket | 48 kHz/24-bit | DAU-1 Audio 4 |
| ACO_25-SID_L-01 | ICP Microphone | Left sidewall, row 20 | GRAS-46BE | Adhesive | 48 kHz/24-bit | DAU-2 Audio 1 |
| ACO_25-SID_R-01 | ICP Microphone | Right sidewall, row 20 | GRAS-46BE | Adhesive | 48 kHz/24-bit | DAU-2 Audio 2 |

**Installation Notes:**
- Microphones calibrated to IEC 61672-1 Class 1
- Windscreens installed for airflow protection
- Locations selected based on acoustic modal analysis

---

## 6. Sensor Specifications Summary

### 6.1 IEPE Accelerometers (10 mV/g)

**Part Number:** PCB Piezotronics 356A15  
**Specifications:**
- **Sensitivity:** 10 mV/g ±5%
- **Frequency Range:** 0.5 Hz to 10 kHz (±3 dB)
- **Resonant Frequency:** >25 kHz
- **Temperature Range:** -54°C to +121°C
- **Shock Limit:** 5,000 g peak
- **Weight:** 12 grams
- **Connector:** 10-32 coaxial

### 6.2 IEPE Accelerometers (100 mV/g)

**Part Number:** PCB Piezotronics 353B18  
**Specifications:**
- **Sensitivity:** 100 mV/g ±5%
- **Frequency Range:** 1 Hz to 10 kHz (±5%)
- **Resonant Frequency:** >30 kHz
- **Temperature Range:** -54°C to +121°C
- **Shock Limit:** 5,000 g peak
- **Weight:** 45 grams
- **Connector:** 10-32 coaxial

### 6.3 High-Temperature IEPE Accelerometers

**Part Number:** Meggitt 7270A  
**Specifications:**
- **Sensitivity:** 10 mV/g ±10%
- **Frequency Range:** 2 Hz to 7 kHz (±5%)
- **Temperature Range:** -54°C to +260°C continuous
- **Shock Limit:** 2,000 g peak
- **Weight:** 65 grams
- **Connector:** MIL-C-26482

### 6.4 Triaxial Accelerometers

**Part Number:** Wilcoxon 793L  
**Specifications:**
- **Sensitivity:** 100 mV/g per axis ±5%
- **Frequency Range:** 2 Hz to 5 kHz (±5%)
- **Axes:** X, Y, Z (orthogonal)
- **Temperature Range:** -54°C to +93°C
- **Weight:** 90 grams
- **Connector:** 4-pin MS

### 6.5 Optical Tachometers

**Part Number:** MTN-1210  
**Specifications:**
- **Type:** Reflective optical
- **Range:** 0.1 Hz to 100 kHz
- **Output:** Open-collector NPN
- **Voltage:** 5-30V DC supply
- **Distance:** 1-25 mm target distance
- **Connector:** M12 4-pin

### 6.6 Inductive Tachometers (Proximity Probes)

**Part Number:** Bently Nevada 916-187-501  
**Specifications:**
- **Type:** Eddy current proximity
- **Range:** 0-80 mil (0-2 mm)
- **Output:** -24V at max gap to -4V at min gap
- **Frequency Response:** DC to 10 kHz
- **Connector:** BNC

### 6.7 ICP Microphones

**Part Number:** GRAS 46BE  
**Specifications:**
- **Sensitivity:** 50 mV/Pa ±1 dB
- **Frequency Range:** 3.15 Hz to 20 kHz (±1 dB)
- **Dynamic Range:** 30 dB(A) to 140 dB
- **Polarization:** ICP (constant current)
- **Connector:** LEMO 3-pin

---

## 7. Cable Routing and Network Integration

### 7.1 Cable Types

| Cable Type | Part Number | Application | Shielding |
|------------|-------------|-------------|-----------|
| Low-Noise Coaxial | Belden 9221 | IEPE sensors | Braided + foil |
| Triaxial Cable | Alpha 87524 | Triax sensors | Individual + overall shield |
| Audio Cable | Mogami W2534 | ICP microphones | Conductive PVC + braided |
| Tachometer Cable | Belden 8723 | Speed sensors | Foil shield |

### 7.2 Routing Paths

| Route ID | Start | End | Cable Type | Length | Conduit |
|----------|-------|-----|------------|--------|---------|
| RT-61L | Left nacelle sensors | DAU-1 | Coaxial bundle | 15 m | AP360-COND-61L |
| RT-61R | Right nacelle sensors | DAU-2 | Coaxial bundle | 15 m | AP360-COND-61R |
| RT-53F | Forward fuselage sensors | DAU-1 | Triaxial | 8 m | Fuselage conduit |
| RT-53A | Aft fuselage sensors | DAU-2 | Triaxial | 12 m | Fuselage conduit |
| RT-25C | Cabin acoustic sensors | DAU-1/2 | Audio cable | Varies | Cabin conduit |

### 7.3 Network Integration (ATA 91)

All sensor data is routed to DAU-1 and DAU-2, which connect to:
- **AFDX Network (ARINC 664 P7)**: Real-time alerts to CMS
- **Ethernet Network (1000Base-T)**: Post-flight data download
- **Time Sync Network (IEEE 1588 PTP)**: Precision time synchronization

**Network Addresses:**
- DAU-1: 192.168.100.10
- DAU-2: 192.168.100.11

---

## 8. Calibration and Maintenance

### 8.1 Calibration Schedule

| Sensor Type | Interval | Method | Standard |
|-------------|----------|--------|----------|
| IEPE Accelerometers | 24 months | Reference shaker | ISO 16063-21 |
| Triaxial Accelerometers | 24 months | 3-axis shaker | ISO 16063-21 |
| Tachometers | 12 months | Frequency generator | NIST-traceable |
| ICP Microphones | 12 months | Pistonphone | IEC 61094-5 |

### 8.2 Replacement Procedures

All sensor replacements must follow:
1. Remove old sensor per AMM procedures
2. Inspect mounting surface for damage
3. Install new sensor with calibration certificate
4. Update sensor serial number in DAU configuration
5. Perform BIT (Built-In Test) verification
6. Document replacement in aircraft maintenance log

### 8.3 Troubleshooting

| Symptom | Probable Cause | Corrective Action |
|---------|---------------|-------------------|
| No signal | Open circuit, power failure | Check cable continuity, IEPE power supply |
| Excessive noise | Poor grounding, EMI | Verify shield grounding, reroute cable |
| Signal clipping | Overrange | Reduce sensor sensitivity or gain |
| Intermittent signal | Loose connection | Re-torque connectors, inspect cable |

---

## 9. Configuration Management

### 9.1 As-Built Configuration

Each aircraft maintains an as-built sensor configuration record in the Digital Product Passport (ATA 95). This includes:
- Sensor serial numbers
- Installation dates
- Calibration certificates
- Replacement history

### 9.2 Configuration Changes

Any sensor addition, removal, or relocation requires:
1. Engineering authorization
2. Update of this document (MAP)
3. Update of DAU configuration file
4. Re-baseline of fleet signatures
5. DPP update

---

## 10. Cross-References

This document interfaces with:
- **ATA 91**: Charts and wiring diagrams (network connectivity)
- **ATA 45**: CMS interface definitions
- **ATA 95**: Digital Product Passport (serial number tracking)
- **ARCH_Data-Acquisition-And-Processing-Unit**: DAU specifications
- **PLAN_Vibration-And-Noise-Management-Program**: Overall system requirements

---

**Document Control:**
- **Next Review:** 2025-10-27
- **Change Authority:** Configuration Management Board

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
