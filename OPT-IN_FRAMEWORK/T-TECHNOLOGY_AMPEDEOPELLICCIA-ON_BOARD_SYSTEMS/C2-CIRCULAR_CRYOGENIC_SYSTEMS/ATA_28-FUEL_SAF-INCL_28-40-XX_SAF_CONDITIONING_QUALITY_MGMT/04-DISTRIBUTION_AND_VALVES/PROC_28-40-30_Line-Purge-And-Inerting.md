# PROC_28-40-30 — Line Purge and Inerting

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Standard procedure for purging and inerting cryogenic hydrogen transfer lines and distribution systems.

## Scope

Applies to all LH2 transfer lines, valves, and distribution piping before filling, after maintenance, and during extended shutdowns.

## Safety Requirements

**Hazards:**
- Asphyxiation (nitrogen/helium displacement of oxygen)
- Hydrogen flammability (residual hydrogen)
- Cold gas burns (cryogenic venting)
- Pressure hazards

**PPE Required:**
- Safety glasses
- Cryogenic gloves
- Face shield (for LH2 operations)
- Safety footwear

**Precautions:**
- Verify adequate ventilation (outdoor or ventilated enclosure)
- Monitor oxygen levels (maintain >19.5% O₂)
- Use gas detectors for hydrogen (LEL <25% of 4% v/v)
- Follow LOTO procedures
- Establish exclusion zone for vent discharge

## Purge Gas Selection

**Nitrogen (GN2):** Primary purge gas
- Inert, non-flammable
- Low cost
- May form solid deposits if extremely cold LH2 contacts nitrogen

**Helium (GHe):** Preferred for final purge before LH2 filling
- Inert, remains gaseous at LH2 temperature
- Compatible with vacuum jackets
- Higher cost than nitrogen

**DO NOT USE:**
- Air (oxygen reacts with hydrogen)
- Argon (freezes at LH2 temperature)

## Purge Procedures

### Initial Purge (After Maintenance or Installation)

**Objective:** Remove air and moisture from system

1. Verify system is depressurized and isolated
2. Connect nitrogen supply to upstream purge point
3. Open downstream vent valve (route to safe discharge point)
4. Flow nitrogen at 1-2 m/s velocity (calculate from line diameter)
5. Continue purge for minimum 5 volume changes
6. Sample oxygen content at vent (must be <2% O₂)
7. If oxygen >2%, continue purge and re-test
8. Close vent valve and pressurize to 1 bar with nitrogen
9. Verify pressure hold (no leaks)

### Helium Displacement Purge (Before LH2 Filling)

**Objective:** Replace nitrogen with helium to prevent freeze-out

1. Depressurize nitrogen-filled system to atmospheric
2. Connect helium supply to upstream purge point
3. Flow helium at 0.5-1 m/s velocity
4. Continue for 3-5 volume changes
5. Sample gas composition at vent (helium >95%)
6. Close vent and leave pressurized with helium at 0.5 bar

### Hydrogen Purge (After LH2 drain)

**Objective:** Remove residual hydrogen before air entry

1. Allow LH2 to boil off naturally (if safe to do so)
2. When pressure <1 bar, begin nitrogen purge
3. Flow nitrogen until hydrogen <1% v/v at vent (use gas detector)
4. Minimum 10 volume changes with nitrogen
5. Continue monitoring until hydrogen not detectable
6. System may now be safely opened to air

## Purge Rate Calculations

**Volumetric Flow Rate:**
Q = A × v × 3600 (L/hr)

Where:
- A = cross-sectional area (m²)
- v = velocity (m/s)
- Result in liters per hour

**Example:**
- Line: DN50 (50 mm ID = 0.05 m)
- Area = π × (0.025)² = 0.00196 m²
- Velocity = 1 m/s
- Q = 0.00196 × 1 × 3600 = 7.07 m³/hr = 7070 L/hr

**Volume Changes:**
System volume / Flow rate = Time per volume change

## Acceptance Criteria

**Air Removal:**
- Oxygen content <2% v/v (measured at vent)
- Moisture dew point <-40°C

**Hydrogen Removal:**
- Hydrogen content <1% v/v (0.25× LEL)
- Sustained for 15 minutes minimum

**Helium Purge:**
- Helium purity >95% (nitrogen <5%)

## Instrumentation

Required instruments (calibrated):
- Oxygen analyzer (paramagnetic or electrochemical)
- Hydrogen detector (LEL sensor or thermal conductivity)
- Gas chromatograph or mass spec (for helium purity)
- Flow meters
- Pressure gauges

## Documentation

Record for each purge operation:
- System identification
- Date and operator
- Purge gas type and purity
- Flow rate and duration
- Volume changes completed
- Final gas composition (O₂, H₂, He as applicable)
- Acceptance criteria met (yes/no)
- SHA-256 hash of purge record

## Emergency Procedures

**Hydrogen Leak During Purge:**
1. Stop purge flow immediately
2. Evacuate area
3. Ventilate thoroughly
4. Monitor hydrogen levels
5. Do not re-enter until H₂ <10% LEL and decreasing

**Oxygen Deficiency:**
1. Evacuate area immediately
2. Increase ventilation
3. Monitor oxygen levels
4. Do not re-enter until O₂ >19.5% and stable

## References

- [CGA G-5.4](https://www.cganet.com/): Standard for Hydrogen Service
- [DESC_28-40-02: Terms and Definitions](../01-GENERAL/DESC_28-40-02_Terms-And-Definitions.md)
- [DATA_28-40-31: Line Materials and Pressure Ratings](DATA_28-40-31_Line-Materials-And-Pressure-Ratings.csv)
- [PROC_28-40-90: Nonconformance Handling](../10-NONCONFORMANCE_AND_DEVIATION/PROC_28-40-90_Nonconformance-Handling-And-Engineering-Disposition.md)
- [29 CFR 1910.146](https://www.osha.gov/laws-regs/regulations/standardnumber/1910/1910.146): Confined Space Entry

---

*This procedure is mandatory for all line purging and inerting operations.*

---

*This procedure is mandatory for all line purging and inerting operations.*
