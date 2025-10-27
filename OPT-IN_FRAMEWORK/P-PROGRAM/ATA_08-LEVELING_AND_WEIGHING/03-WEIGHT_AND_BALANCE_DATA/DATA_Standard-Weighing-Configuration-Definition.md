# Standard Weighing Configuration Definition

## Document Control
- **Document ID:** DATA_Standard-Weighing-Configuration-Definition
- **Revision:** 1.0.0
- **Date:** 2025-10-27
- **Owner:** Weight & Balance Engineer

## Purpose
This document defines the mandatory "Standard Weighing Configuration" for all official aircraft weighing operations. This configuration ensures repeatability, accuracy, and regulatory compliance.

## Standard Configuration Requirements

### 1. Aircraft Configuration

#### 1.1 Fluids
- **Hydraulic Fluid:** FULL (all systems)
- **Engine Oil:** FULL (to specified capacity)
- **Potable Water:** EMPTY (completely drained)
- **Waste Water:** EMPTY (completely drained)
- **Fuel:** EMPTY (unusable fuel only)

#### 1.2 Equipment Status
- **Removable Equipment:** ALL REMOVED (unless permanent installation)
  - Galley inserts
  - Removable seats (beyond standard configuration)
  - Portable equipment
  - Cargo restraints (non-permanent)
- **Fixed Equipment:** ALL INSTALLED per type certificate
- **Emergency Equipment:** INSTALLED per MMEL/MEL
- **Avionics:** INSTALLED per type certificate

#### 1.3 Battery State
- **Battery State of Charge (SOC):** 50% ± 5%
  - If outside tolerance, correction must be applied per `DATA_Corrections-Tables`
  - Battery temperature must be stabilized to ambient ± 2°C

#### 1.4 Cryogenic Systems
- **Helium Inerting Gas:** As installed (mass computed and corrected)
- **Liquid Nitrogen (if applicable):** EMPTY

### 2. Environmental Conditions

#### 2.1 Location
- **Hangar:** Enclosed, climate-controlled facility
- **Floor:** Level, solid surface (concrete preferred)
- **Lighting:** Adequate for inspection and reading instruments

#### 2.2 Ambient Requirements
- **Temperature:** 18°C to 27°C
- **Barometric Pressure:** 950 hPa to 1050 hPa
- **Relative Humidity:** No restriction (for correction calculation)
- **Wind:** ≤ 2 knots (hangar doors CLOSED)

### 3. Physical Configuration

#### 3.1 Doors and Panels
- **All Doors:** CLOSED
  - Passenger doors
  - Cargo doors
  - Service doors
  - Emergency exits
- **Access Panels:** CLOSED (except as required for leveling reference access)

#### 3.2 Landing Gear
- **Position:** DOWN and LOCKED
- **Tires:** Inflated to specified pressure ± 2 psi
- **Shock Absorbers:** Extended (no load)

#### 3.3 Control Surfaces
- **Position:** NEUTRAL (aerodynamic faired position)
- **Gust Locks:** INSTALLED (if applicable)

### 4. Measurement Setup

#### 4.1 Load Cells
- **Type:** Calibrated platform load cells
- **Capacity:** Adequate for aircraft weight with 2:1 safety factor
- **Calibration:** Current (within 12 months)
- **Quantity:** Minimum 3 points (nose, main left, main right)

#### 4.2 Leveling Equipment
- **Primary:** Laser tracker or precision electronic level
- **Tolerance:** ± 0.05° (pitch and roll)
- **Reference Points:** Per ATA 06 datum definitions

### 5. Pre-Weighing Checklist

- [ ] Aircraft washed and cleaned (no ice, snow, or excessive dirt)
- [ ] All fluid levels verified and documented
- [ ] Battery SOC measured and documented
- [ ] All personnel and equipment removed from aircraft
- [ ] Doors and panels closed per Section 3.1
- [ ] Environmental conditions verified and documented
- [ ] Load cells calibrated and zeroed
- [ ] Leveling equipment verified
- [ ] Safety barriers established

### 6. Configuration Hash

A configuration hash must be computed and documented for each weighing operation. This hash is generated from:
- Aircraft MSN
- Fluid levels (serialized JSON)
- Equipment list (serialized JSON)
- Battery SOC
- Major modification status

**Hash Algorithm:** SHA-256 (8-character truncated hex representation)

### 7. Deviations

Any deviation from this Standard Weighing Configuration requires:
1. **Engineering Order (EO)** approval
2. Documentation in weighing report with "NON-STANDARD" designation
3. Detailed description of deviation and justification
4. Impact assessment on accuracy and uncertainty

### 8. References

- ATA 06: Dimensions and Areas (datum definitions)
- ATA 07: Lifting and Shoring (jacking procedures)
- FAA AC 120-27F: Aircraft Weight and Balance Control
- SAE AIR1750D: Aircraft Weight and Balance

---

**Approval:**
- Weight & Balance Engineer: ______________________ Date: __________
- Chief Engineer: ______________________ Date: __________
