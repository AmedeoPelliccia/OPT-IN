# Mixed Route Separation Controls Procedure

**Document Type:** PROC  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27 _(Future Effective Date)_

## 1. Purpose
This procedure establishes requirements for maintaining proper separation between incompatible systems when routed in the same area.

## 2. Scope
Applies to all installations where electrical wiring, fluid lines, control cables, or other systems are routed in proximity.

## 3. Separation Requirements
Reference DATA_Route-Separation-Matrix.csv for specific separation distances.

## 4. System Classifications

### 4.1 Electrical Systems
- **HV Power:** > 115V AC or > 270V DC
- **LV Power:** ≤ 115V AC or ≤ 270V DC, > 1A current
- **Low-Level Signal:** < 100 mV or < 1 mA
- **Digital Data:** ARINC, MIL-STD-1553, Ethernet, etc.
- **RF Transmission:** Antenna feedlines, coaxial cables

### 4.2 Fluid Systems
- **Fuel Lines:** Including vapor vent lines
- **Hydraulic Lines:** Operating pressure > 1500 psi
- **Pneumatic Lines:** Compressed air, bleed air
- **Water/Waste Lines:** Potable water, waste systems

### 4.3 Mechanical Systems
- **Control Cables:** Flight control cables, throttle cables
- **Drive Shafts:** Rotating mechanical systems

## 5. Separation Matrix

### 5.1 HV Power to Low-Level Signal
- Minimum separation: 25 mm (1.0 inch)
- If separation cannot be met: Install grounded metallic barrier or conduit
- Route on opposite sides of harness support structure when possible

### 5.2 HV Power to Fuel Lines
- Minimum separation: 50 mm (2.0 inch)
- Barrier always required if < 50 mm
- Add fire sleeve if within designated fire zone
- Do not route HV over or directly below fuel lines

### 5.3 EWIS to Hydraulic Lines
- Minimum separation: 13 mm (0.5 inch)
- No barrier required if separation maintained
- Ensure clamps prevent any possible contact or chafing
- Route EWIS above hydraulic lines where possible (avoid hydraulic fluid spray)

### 5.4 EWIS to Control Cables
- Minimum separation: 13 mm (0.5 inch)
- Ensure no interference through full range of motion
- Support EWIS independently from control cable supports
- Protect EWIS from chafing where control cable moves

### 5.5 Fuel Lines to Hot Surfaces
- Minimum separation: 75 mm (3.0 inch)
- Install heat shield if < 75 mm
- Monitor surface temperature: Maximum 107°C (225°F) near fuel lines

## 6. Barrier Requirements

### 6.1 When Barriers Are Required
- When minimum separation distance cannot be maintained
- In high-vibration areas where chafing may occur
- Between fuel lines and ignition sources
- Between HV and low-level signal circuits

### 6.2 Barrier Types
- **Grounded Metallic Conduit:** For HV power segregation, EMI protection
- **Non-Metallic Conduit:** For physical separation, chafing protection
- **Fire-Resistant Barriers:** In fire zones (minimum FST rating per FAR 25.853)
- **Thermal Barriers:** Heat shields, insulation blankets

### 6.3 Barrier Installation
- Secure barrier with appropriate clamps or fasteners
- Bond metallic barriers to aircraft structure
- Seal barriers at penetrations to prevent fluid ingress
- Do not use barriers as primary support for wiring or lines

## 7. Special Zones

### 7.1 Fire Zones
- Increased separation requirements: 1.5× standard separation
- All EWIS in fire sleeves or metallic conduit
- Fuel lines in fire-resistant sleeving
- No unnecessary systems routed through fire zones

### 7.2 Wheel Wells
- Protect all lines and wiring with abrasion-resistant sleeves
- Route away from tire path and tire debris impact zones
- Secure with additional clamps to prevent movement

### 7.3 Environmental Control System (ECS) Ducts
- Maintain minimum 25 mm separation from hot air ducts
- Install thermal barriers if separation cannot be met
- Monitor EWIS insulation ratings: Must exceed maximum duct temperature

### 7.4 Engine Nacelles
- Segregate EWIS by function: Power, signal, engine control
- Route fuel and oil lines separately from EWIS
- Protect all systems from engine vibration and thermal cycling

## 8. Installation Verification

### 8.1 Visual Inspection
- Verify separation distances with ruler or gauge
- Check for proper barrier installation
- Ensure no contact between incompatible systems

### 8.2 Functional Testing
- Verify no interference with moving systems (control cables, hinges)
- Check for EMI: Operate systems and monitor for interference
- Perform leak test on all fluid systems

### 8.3 Documentation
- Photograph installations showing separation compliance
- Record separation measurements on workmanship record
- Document deviations and approved engineering dispositions

## 9. Maintenance Inspection
- Inspect mixed routes during scheduled maintenance for:
  - Degradation of separation (clamp failure, hose sagging)
  - Chafing or wear marks
  - Fluid leaks that may affect nearby systems
  - Corrosion at metallic barrier bonds
