# Sling Calculation and Working Load Limit (WLL) Data
**Revision:** 1.0.0  
**Effective Date:** 2028-05-30  
**Document ID:** DATA_Sling-Calc-and-WLL_rev1.0.0_20280530

## Purpose
This document contains sling calculation methods and working load limits for component hoisting operations on the AMPEL360 aircraft.

**NOTE:** The complete spreadsheet with formulas and calculation tools is available in the Excel file:
`DATA_Sling-Calc-and-WLL_rev1.0.0_20280530.xlsx`

## Sling Angle Reduction Formula

**WLL Reduced = WLL Rated × cos(θ)**

Where:
- WLL Reduced = Actual working load limit accounting for angle
- WLL Rated = Manufacturer's rated working load limit (vertical lift)
- θ = Angle from vertical (degrees)

**Safety Factor:** All sling operations must maintain minimum safety factor of 5:1

## Standard Sling Configurations

### Configuration A: Single Vertical Lift
- **Description:** Single sling point, vertical lift
- **WLL Factor:** 1.0
- **Typical Use:** Battery modules, small components
- **Maximum Load:** Per sling rating

### Configuration B: Two-Leg Bridle (Symmetrical)
- **Description:** Two slings, equal angles, balanced load
- **WLL Factor:** 2 × cos(θ)
- **Typical Use:** Engine modules, large components
- **Maximum Sling Angle:** 60° from vertical
- **Notes:** Load must be balanced; monitor for shifting

### Configuration C: Four-Leg Basket
- **Description:** Four slings, equal angles, distributed load
- **WLL Factor:** 4 × cos(θ)
- **Typical Use:** Fuselage sections, wing components
- **Maximum Sling Angle:** 45° from vertical
- **Notes:** All legs must be loaded equally

## Approved Slings and Ratings

### Synthetic Web Slings

#### Type WS-1: Light Duty
- **Material:** Polyester web, 2-ply
- **Width:** 50mm
- **WLL (Vertical):** 1,000 kg
- **WLL (Choker):** 800 kg
- **WLL (Basket):** 2,000 kg
- **Color Code:** Yellow
- **Part Number:** AP360-SLING-WS1

#### Type WS-2: Medium Duty
- **Material:** Polyester web, 4-ply
- **Width:** 75mm
- **WLL (Vertical):** 2,000 kg
- **WLL (Choker):** 1,600 kg
- **WLL (Basket):** 4,000 kg
- **Color Code:** Green
- **Part Number:** AP360-SLING-WS2

#### Type WS-3: Heavy Duty
- **Material:** Polyester web, 6-ply
- **Width:** 100mm
- **WLL (Vertical):** 4,000 kg
- **WLL (Choker):** 3,200 kg
- **WLL (Basket):** 8,000 kg
- **Color Code:** Blue
- **Part Number:** AP360-SLING-WS3

### Wire Rope Slings

#### Type WR-1: Standard
- **Material:** 6×37 wire rope, IWRC
- **Diameter:** 16mm
- **WLL (Vertical):** 2,500 kg
- **WLL (Choker):** 2,000 kg
- **WLL (Basket):** 5,000 kg
- **Part Number:** AP360-SLING-WR1

#### Type WR-2: Heavy Duty
- **Material:** 6×37 wire rope, IWRC
- **Diameter:** 22mm
- **WLL (Vertical):** 5,000 kg
- **WLL (Choker):** 4,000 kg
- **WLL (Basket):** 10,000 kg
- **Part Number:** AP360-SLING-WR2

### Chain Slings

#### Type CH-1: Alloy Steel
- **Material:** Grade 80 alloy steel
- **Chain Size:** 10mm
- **WLL (Vertical):** 3,200 kg
- **WLL (Choker):** 2,560 kg
- **WLL (Basket):** 6,400 kg
- **Part Number:** AP360-SLING-CH1

## Angle Reduction Table

| Angle from Vertical (θ) | cos(θ) | WLL Factor | Notes |
| :--- | :--- | :--- | :--- |
| 0° | 1.000 | 100% | Ideal - vertical lift |
| 15° | 0.966 | 97% | Acceptable |
| 30° | 0.866 | 87% | Good practice limit |
| 45° | 0.707 | 71% | Maximum for most operations |
| 60° | 0.500 | 50% | Maximum allowed - special approval |
| >60° | <0.500 | <50% | **NOT PERMITTED** |

## Sample Calculations

### Example 1: Battery Pack Lift (Two-Leg Bridle)
- **Component Weight:** 3,000 kg
- **Sling Configuration:** Two-leg bridle
- **Sling Angle:** 30° from vertical
- **Selected Sling:** Type WS-3 (WLL 4,000 kg vertical)

**Calculation:**
- Load per sling = 3,000 kg / 2 = 1,500 kg
- Angle factor = cos(30°) = 0.866
- Required WLL per sling = 1,500 kg / 0.866 = 1,732 kg
- Actual WLL = 4,000 kg
- Safety Factor = 4,000 / 1,732 = 2.3 (**REJECTED - does not meet minimum 5:1 safety factor. Use heavier sling or reduce angle**)

**Corrected:**
- Reduce angle to 15°
- Angle factor = cos(15°) = 0.966
- Required WLL = 1,500 kg / 0.966 = 1,553 kg
- Safety Factor = 4,000 / 1,553 = 2.6 (**REJECTED - does not meet minimum 5:1 safety factor. Use wire rope sling**)

**Final Selection:**
- Use Type WR-2 (WLL 5,000 kg)
- Safety Factor = 5,000 / 1,553 = 3.2 (ACCEPTABLE but marginal)
- **Recommendation:** Use stronger attachment or reduce weight

### Example 2: Open-Fan Propulsor (Four-Leg Basket)
- **Component Weight:** 4,500 kg
- **Sling Configuration:** Four-leg basket
- **Sling Angle:** 30° from vertical (all legs)
- **Selected Sling:** Type WR-2 (WLL 5,000 kg vertical)

**Calculation:**
- Load per sling = 4,500 kg / 4 = 1,125 kg
- Angle factor = cos(30°) = 0.866
- Required WLL per sling = 1,125 kg / 0.866 = 1,299 kg
- Actual WLL = 5,000 kg
- Safety Factor = 5,000 / 1,299 = 3.8 (ACCEPTABLE but monitor for equal loading)

## Sling Inspection Requirements

### Pre-Use Inspection (Every Use)
- [ ] No cuts, tears, or abrasions
- [ ] No burns, melting, or chemical damage
- [ ] Stitching intact (web slings)
- [ ] No broken wires (wire rope - max 6 broken wires in one lay)
- [ ] No cracks or deformation (chain links)
- [ ] ID tags legible and secure
- [ ] WLL marking visible

### Periodic Inspection (Monthly)
- [ ] Detailed examination per manufacturer requirements
- [ ] Load test if required by regulations
- [ ] Documentation of condition
- [ ] Retirement criteria check

### Rejection Criteria
**Immediate retirement if:**
- Web slings: Any cut >10% width, burns, acid damage
- Wire rope: >6 broken wires in one lay, kinking, core protrusion
- Chain: Any crack, deformation >5% original dimension, wear >10%

## Load Test Requirements

All slings must be load tested:
- **Before first use:** 125% WLL
- **Periodic:** Annually or after any overload event
- **After repair:** 125% WLL
- **Documentation:** Test certificate with date, load, duration

## References
- ASME B30.9 (Slings)
- ASME B30.10 (Hooks)
- EN 1492-1 (Textile Slings)
- EN 13414-1 (Wire Rope Slings)

## Approval

| Authority | Status | Date |
| :--- | :--- | :--- |
| Rigging Engineering | Released | 2028-05-28 |
| Safety Department | Released | 2028-05-29 |

---
*This is a controlled document. Unauthorized modifications are prohibited.*

**For detailed calculations and component-specific sling configurations, refer to the Excel file:  
`DATA_Sling-Calc-and-WLL_rev1.0.0_20280530.xlsx`**
