# DESC_28-60-04 — Cryogenic Sensor Integration and Calibration
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Owner:** Cryogenic Systems Engineering

---

## 1. Purpose

Technical description of sensor requirements, installation, and calibration for cryogenic hydrogen storage and distribution systems.

---

## 2. Sensor Types

### 2.1 Temperature Sensors

**RTD (Resistance Temperature Detector)**
- Type: Pt100, 4-wire configuration
- Range: 20-300 K
- Accuracy: ±0.1 K at cryogenic temperatures
- Location: Liquid zone, ullage zone, distribution lines
- Quantity: 5 per tank minimum

**Thermocouples**
- Type: Type E (Chromel-Constantan)
- Range: 20-373 K
- Accuracy: ±0.5 K
- Use: Backup temperature measurement, thermal gradient mapping

### 2.2 Pressure Sensors

**Strain Gauge Transducers**
- Range: 0-15 bar absolute
- Accuracy: ±0.25% full scale
- Output: 4-20 mA
- Environmental: DO-160G qualified
- Quantity: 2 per tank (redundant)

### 2.3 Level Sensors

**Capacitance Probe**
- Type: Rod or coaxial capacitance
- Range: 0-100% tank height
- Accuracy: ±1%
- Material: 316L stainless steel probe

### 2.4 Vacuum Gauges

**Pirani Gauge**
- Range: 10⁻³ to 10³ mbar
- For rough vacuum and leak detection

**Cold Cathode Gauge**
- Range: 10⁻⁸ to 10⁻² mbar
- For high vacuum monitoring

### 2.5 Hydrogen Detectors

**Catalytic Bead or Electrochemical**
- Range: 0-4% H₂ (0-100% LEL)
- Alarm thresholds: 1% (warning), 2% (alarm)
- Location: Tank area, distribution line routing, vent outlets

---

## 3. Installation Requirements

- All sensors must be cryogenic-rated
- Sensor wells required for RTDs (no direct immersion)
- Electrical connections: hermetically sealed
- Cable routing: protected from abrasion, thermal cycling
- Grounding: proper bonding to prevent static

---

## 4. Calibration

**Frequency**: 12 months or per manufacturer recommendation

**Standards**: NIST-traceable calibration standards

**Acceptance**: Within manufacturer tolerance

---

## 5. References

- Sensor specifications: schemas/cryo-sensor.schema.json
- DO-160G: Environmental testing for airborne equipment

---

**Approved by:** Cryogenic Systems Engineering  
**Date:** 2025-10-30
