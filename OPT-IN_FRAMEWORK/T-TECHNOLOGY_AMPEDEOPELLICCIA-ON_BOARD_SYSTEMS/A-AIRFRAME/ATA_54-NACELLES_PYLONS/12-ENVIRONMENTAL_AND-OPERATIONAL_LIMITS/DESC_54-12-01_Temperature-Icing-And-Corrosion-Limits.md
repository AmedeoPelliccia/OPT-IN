# DESC 54-12-01: Temperature, Icing, and Corrosion Limits

**Revision:** 1.0.0  
**Effectivity:** All AMPEL360 aircraft

## Purpose
This document defines environmental and operational limits for nacelle and pylon structures and systems.

## Temperature Limits

### Structural Temperature Limits
| Component | Material | Min Temp °C | Max Temp °C | Notes |
|-----------|----------|-------------|-------------|-------|
| Fan Cowl | CFRP | -55 | +120 | Design limit |
| Core Cowl (aluminum) | Al 2024-T3 | -55 | +175 | Short duration |
| Core Cowl (CFRP) | CFRP High-Temp | -55 | +177 | Near engine areas |
| Pylon Structure | Al 7075-T6 | -55 | +95 | Continuous |
| Engine Mount Fittings | Ti-6Al-4V | -55 | +315 | High-temp capability |
| Thrust Reverser | Al/CFRP | -55 | +150 | During deployment |
| Acoustic Panels | CFRP/Honeycomb | -55 | +120 | Degradation above limit |

### System Temperature Limits
| System | Component | Min Temp °C | Max Temp °C |
|--------|-----------|-------------|-------------|
| Hydraulic (Reverser) | Actuators | -40 | +135 |
| Hydraulic Lines | Hoses/Fittings | -55 | +135 |
| Fuel Lines | Hard Lines | -55 | +135 |
| Pneumatic Ducts | Bleed Air | -55 | +650 |
| Electrical Harnesses | Wiring | -55 | +200 |

### Operational Considerations
- **Cold soak:** Pre-flight inspection required if aircraft soaked below -40°C
- **Hot operations:** Allow cooling time before maintenance if core cowl > 100°C
- **Thermal cycling:** Repeated cycles can cause fatigue - monitor closely

## Icing Limits

### Ice Accretion
Nacelle anti-icing system must be operational when:
- Visible moisture present
- OAT ≤ +10°C on ground
- OAT ≤ +5°C in flight
- TAT ≤ +10°C at any time

### Allowable Ice Accumulation
- **Fan cowl leading edge:** Zero tolerance (anti-ice must prevent)
- **Intake lip:** < 3 mm thickness acceptable (smooth surface)
- **Core cowl surfaces:** Ice accumulation prohibited

### Post-Icing Inspection
After flight in severe icing:
- Inspect for ice impact damage to acoustic panels
- Check for delamination of acoustic treatment
- Verify drain holes clear and unobstructed
- Check seals for ice damage

### Ground Deicing
If ice present on nacelle:
- Use Type II or Type IV fluids per ATA 30
- Apply to all nacelle surfaces
- Verify all ice removed before flight
- Check holdover time compliance

## Corrosion Limits

### Environment Classification
- **Benign:** Dry climates, low humidity, no salt exposure
- **Moderate:** Average humidity, occasional salt exposure
- **Severe:** High humidity, regular salt exposure, coastal operations

### Acceptable Corrosion Levels

#### Aluminum Structure
- **Surface corrosion:** Light oxidation acceptable, clean and treat
- **Pitting:** Depth < 0.25 mm acceptable (no repair required)
- **Pitting:** Depth 0.25-0.5 mm requires engineering evaluation
- **Pitting:** Depth > 0.5 mm requires repair
- **Intergranular:** Zero tolerance, replace component

#### Titanium Components
- **Surface discoloration:** Acceptable (no structural effect)
- **Pitting:** Rare, any pitting requires evaluation
- **Stress corrosion cracking:** Zero tolerance

#### Composite (CFRP) Structure
- **Galvanic corrosion:** At aluminum/CFRP interfaces - prevent with isolation
- **Moisture ingress:** Check for delamination if suspected

### Corrosion Prevention
- Maintain protective coatings (primer and paint)
- Ensure drainage holes clear
- Remove standing water after washing or rain
- Apply corrosion inhibitor in severe environments
- Inspect aluminum/CFRP interfaces regularly

### Corrosion Inspection Intervals
| Environment | Inspection Interval |
|-------------|---------------------|
| Benign | Every C-check (7,500 FH) |
| Moderate | Every 3,750 FH |
| Severe | Every 1,500 FH |

## Operational Limits

### Maximum Speeds
- **VMO/MMO:** Per Aircraft Flight Manual (AFM)
- **Fan cowl open:** Do not exceed 100 KIAS (maintenance taxi only)
- **Thrust reverser unlocked:** Ground operations only, < 10 KIAS

### Load Limits
All loads per DATA 54-01-03:
- Do not exceed design load limits
- Report any hard landing (> 2.0 g vertical)
- Report any severe turbulence encounter
- Inspect after any off-nominal loading event

### Environmental Exposure Limits
- **Hail:** Ground aircraft if hail > 12 mm diameter forecast
- **Lightning:** Inspect after confirmed lightning strike
- **Sandstorm:** Ground aircraft during active sandstorm
- **Volcanic ash:** Avoid flight in volcanic ash clouds

## Inspection After Environmental Exposure

### After Lightning Strike
- Visual inspection of all LSP areas
- LSP continuity testing per PROC 54-08-01
- NDT if structural damage suspected

### After Hail Encounter
- Detailed visual inspection of all nacelle surfaces
- Document all impact damage
- Ultrasonic inspection of CFRP panels if impact suspected

### After Bird Strike
- Inspect for structural damage
- Check acoustic panel integrity
- Verify no FOD ingestion paths
- Detailed photos for records

## References
- Aircraft Flight Manual (AFM): Operating limitations
- ATA 30: Ice and rain protection systems
- PROC 54-08-01: LSP testing
- DATA 54-12-02: Environmental test requirements

**Rev 1.0.0 (2025-10-27):** Initial release
