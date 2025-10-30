# DESC_28-60-02 — LH₂ Tank Design Specification
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Owner:** Cryogenic Systems Engineering

---

## 1. Purpose

This document defines the design requirements and specifications for liquid hydrogen (LH₂) cryogenic storage tanks used in the AMPEL360 aircraft.

---

## 2. Tank Configuration

### 2.1 General Architecture

- **Type**: Vacuum-insulated, double-wall pressure vessel
- **Inner Liner**: Pressure-bearing vessel containing LH₂
- **Outer Shell**: Vacuum jacket providing thermal insulation
- **Insulation**: Multi-layer insulation (MLI) in vacuum space

### 2.2 Design Philosophy

- **Fail-Safe Design**: Inner vessel designed to contain full pressure independently
- **Leak-Before-Burst**: Compliance with damage tolerance principles
- **Accessibility**: Inspection ports and sensor access provisions
- **Maintainability**: Designed for vacuum repumping and sensor replacement

---

## 3. Performance Requirements

### 3.1 Capacity

- **Usable Capacity**: To be determined based on mission requirements (TBD liters)
- **Total Capacity**: Usable + ullage volume
- **Ullage Volume**: 2-5% of total capacity for thermal expansion

### 3.2 Pressure Requirements

| Parameter | Value | Units |
|-----------|-------|-------|
| Service Pressure | 8 | bar |
| Design Pressure | 12 | bar |
| Proof Pressure | 15 | bar |
| Relief Valve Set Pressure | 10 | bar |
| Burst Disc Rating | 15 | bar |

### 3.3 Thermal Performance

| Parameter | Requirement | Units |
|-----------|-------------|-------|
| Daily Boiloff Rate | ≤ 0.3 | % |
| Heat Leak (steady-state) | ≤ 15 | W |
| Cool-down Time | ≤ 24 | hours |
| Vacuum Level | ≤ 1×10⁻⁴ | mbar |
| Vacuum Hold Time | ≥ 5 | years |

---

## 4. Materials

### 4.1 Inner Liner (Pressure Vessel)

**Material**: 316L Stainless Steel per ASTM A240

**Requirements**:
- Heat number traceability mandatory
- Charpy V-notch impact test at -196°C: ≥ 100 J
- Grain size: ASTM 5 or finer
- Surface finish: Ra ≤ 1.6 μm (electro-polished preferred)
- Wall thickness: Per stress analysis (minimum 2.0 mm)

**Alternative**: Aluminum 5083-H116 per ASTM B928 for weight-critical applications

### 4.2 Outer Shell

**Material**: Aluminum 6061-T6 or CFRP composite

**Requirements**:
- Designed for vacuum load and handling
- Not pressure-bearing (inner liner contains pressure)
- Corrosion-resistant finish
- Provisions for vacuum ports and sensor feedthroughs

### 4.3 Composite Overwrap (if used)

**Material**: Carbon fiber / epoxy composite

**Requirements**:
- Resin system qualified for cryogenic service
- Full traceability: fiber lot, resin lot, cure cycle
- Typical winding pattern: Helical + hoop layers
- NDT: 100% ultrasonic inspection after cure

---

## 5. Structural Design

### 5.1 Load Cases

The tank shall be designed for the following load cases:

1. **Internal Pressure**: Design pressure at all temperatures
2. **External Pressure**: Vacuum loading on outer shell
3. **Thermal Loads**: Cool-down and warm-up thermal gradients
4. **Mechanical Loads**: 
   - Inertial loads: 9g ultimate (limit load factor × 1.5)
   - Vibration per MIL-STD-810
   - Acoustic loads during flight
5. **Handling Loads**: Installation, removal, transport

### 5.2 Stress Analysis

- **Method**: Finite Element Analysis (FEA)
- **Safety Factor**: 1.5 on yield, 2.0 on ultimate
- **Fatigue Analysis**: 10,000 thermal cycles, 60,000 flight hours
- **Fracture Mechanics**: Compliance with damage tolerance requirements

### 5.3 Supports and Mounting

- **Mount Type**: Flexible supports to accommodate thermal contraction
- **Material**: G-10 or similar low-thermal-conductivity composite
- **Heat Leak**: Minimized through optimized support geometry
- **Seismic Restraint**: Provision for transport and ground handling loads

---

## 6. Multi-Layer Insulation (MLI)

### 6.1 Configuration

- **Layers**: 40-60 layers
- **Reflective Material**: Aluminized Mylar or Kapton
- **Spacer Material**: Silk net, fiberglass scrim, or Dacron net
- **Layer Density**: 10-20 layers per cm

### 6.2 Installation

- **Wrapping**: Circumferential wrapping with overlaps
- **Seams**: Minimize gaps and thermal shorts
- **Penetrations**: Careful sealing around supports and feedthroughs
- **Handling**: Clean room conditions, no contamination

### 6.3 Performance

- **Effective Thermal Conductivity**: ≤ 0.1 mW/(m·K) at 1×10⁻⁴ mbar
- **Degradation**: Performance monitoring through boiloff rate measurement

---

## 7. Vacuum System

### 7.1 Design

- **Initial Pump-Down**: External vacuum pump to <1×10⁻⁴ mbar
- **Vacuum Port**: Valved port for repumping (accessible)
- **Getter Material**: Activated getter for long-term vacuum maintenance
- **Leak Tightness**: All joints helium leak tested to ≤1×10⁻⁶ mbar·L/s

### 7.2 Monitoring

- **Vacuum Gauge**: Pirani or cold cathode gauge
- **Boiloff Rate**: Primary indicator of vacuum degradation
- **Inspection Interval**: Annual vacuum check

---

## 8. Piping and Connections

### 8.1 Fill/Drain Line

- **Material**: 316L stainless steel, vacuum-jacketed
- **Size**: DN25 (1 inch) nominal
- **Connection**: Bayonet coupling for ground servicing
- **Valves**: Isolation valve at tank, check valve in fill line

### 8.2 Vent Line

- **Material**: 316L stainless steel
- **Size**: Sized for maximum relief capacity
- **Routing**: Overboard vent, away from ignition sources
- **Flame Arrestor**: If required by safety analysis

### 8.3 Distribution Line

- **Material**: 316L stainless steel, vacuum-jacketed
- **Size**: Per flow requirements (typically DN15-DN25)
- **Insulation**: MLI in vacuum jacket
- **Supports**: Low heat-leak supports at intervals

---

## 9. Safety Features

### 9.1 Pressure Relief

- **Primary Relief**: Spring-loaded relief valve, set at 10 bar
- **Secondary Relief**: Burst disc at 15 bar (backup)
- **Relief Capacity**: Per API 520 sizing for fire exposure case

### 9.2 Emergency Vent

- **Manual Vent Valve**: Accessible for emergency defueling
- **Remote Actuation**: Optional solenoid valve for cockpit control
- **Vent Rate**: Sufficient to defuel tank in <30 minutes

### 9.3 Fire Protection

- **Fire Detection**: Integration with aircraft fire detection system (ATA 26)
- **Auto-Shutoff**: Fuel isolation on fire detection signal
- **Fire Suppression**: Per ATA 26 requirements for fuel tank areas

---

## 10. Instrumentation

### 10.1 Required Sensors

| Sensor Type | Quantity | Range | Accuracy |
|-------------|----------|-------|----------|
| RTD (Liquid Temp) | 3 | 20-300 K | ±0.1 K |
| RTD (Ullage Temp) | 2 | 20-300 K | ±0.1 K |
| Pressure Transducer | 2 | 0-15 bar | ±0.25% FS |
| Level Sensor | 2 | 0-100% | ±1% |
| Vacuum Gauge | 1 | 10⁻⁵ to 1 mbar | ±10% |

### 10.2 Sensor Locations

- Temperature sensors distributed for thermal stratification monitoring
- Pressure sensors on ullage space
- Level sensors: capacitance probes or differential pressure
- Vacuum gauge on outer shell

---

## 11. Testing and Certification

### 11.1 Required Tests

1. **Hydrostatic Pressure Test**: 15 bar, hold 10 minutes
2. **Helium Leak Test**: All welds and joints, ≤1×10⁻⁶ mbar·L/s
3. **Vacuum Performance Test**: Achieve and maintain <1×10⁻⁴ mbar
4. **Boiloff Rate Test**: 72-hour test at steady-state
5. **Thermal Cycling Test**: 50 cycles from ambient to -253°C
6. **Vibration Test**: Per DO-160G or equivalent
7. **Drop Test**: Handling loads simulation

### 11.2 NDT Requirements

- **Weld Inspection**: 100% radiographic (RT) or ultrasonic (UT) testing
- **Base Metal**: Ultrasonic inspection for laminations
- **Composite (if used)**: 100% ultrasonic C-scan

---

## 12. Quality and Traceability

### 12.1 Material Traceability

- Heat numbers for all metals
- Lot numbers for composites
- Certificates of Conformance
- Mill test reports

### 12.2 Process Traceability

- Welding procedure specifications (WPS)
- Welder qualifications
- NDT reports and personnel certifications
- Heat treatment records (if applicable)

### 12.3 As-Built Documentation

- As-built drawings
- Pressure test records
- Leak test records
- Boiloff test data
- Vacuum pump-down log

---

## 13. Maintenance and Inspection

### 13.1 Scheduled Inspections

- **Annual**: Visual inspection, vacuum check, boiloff monitoring
- **5 Years**: Detailed inspection, NDT of critical welds
- **10 Years**: Major inspection, pressure retest consideration

### 13.2 Boiloff Rate Monitoring

- **Continuous**: Monitor daily boiloff rate
- **Alert Threshold**: >0.5% daily indicates vacuum degradation
- **Action**: Vacuum repump if >0.8% daily

---

## 14. Revision History

| Revision | Date | Author | Description |
|----------|------|--------|-------------|
| 1.0.0 | 2025-10-30 | Cryogenic Systems Engineering | Initial release |

---

## 15. Approvals

**Prepared by:** Dr. Elena Petrov, Lead Engineer - Cryogenic Systems  
**Reviewed by:** Structural Analysis, Safety Engineering  
**Approved by:** Chief Engineer - Propulsion Systems  
**Date:** 2025-10-30

---

*This document is part of ATA 28-60-00 — Cryogenic H₂ Storage and Distribution*
