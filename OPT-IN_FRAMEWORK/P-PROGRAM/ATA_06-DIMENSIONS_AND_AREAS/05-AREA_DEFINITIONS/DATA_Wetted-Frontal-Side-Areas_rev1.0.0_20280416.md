# Wetted, Frontal, and Side Areas
**Revision:** 1.0.0
**Effective Date:** 2028-04-16

## Wetted Area (S_wet)
- **Total Wetted Area:** 1,425.0 m²
- **Method:** BWB-WET-01 (Triangulated surface from CAD master)
- **Definition:** Total external surface area of the aircraft exposed to airflow
- **Configuration:** Clean (landing gear retracted, flaps/slats retracted)

### Component Breakdown
- **Wing/Body Blend Upper Surface:** 485.0 m²
- **Wing/Body Blend Lower Surface:** 485.0 m²
- **Vertical Stabilizer(s):** 85.0 m²
- **Horizontal Stabilizer:** 140.0 m²
- **Nacelles (total for all):** 180.0 m²
- **Control Surfaces:** 50.0 m²

## Frontal Area (S_frontal)
- **Value:** 28.5 m²
- **Definition:** Maximum cross-sectional area normal to the flight direction
- **Location:** At FS 22.0 m (widest fuselage section)

## Side Area (S_side)
- **Value:** 385.0 m²
- **Definition:** Projected side profile area
- **View:** Elevation view (looking from port or starboard)

## Drag-Related Areas

### Equivalent Flat Plate Area (f)
- **Clean Configuration:** 2.85 m²
- **Landing Configuration (gear down, full flaps):** 18.5 m²

### Parasitic Drag Coefficient
- **CD₀ (Clean):** 0.0063 (referenced to S_ref)
- **CD₀ (Landing):** 0.0411 (referenced to S_ref)

## Notes
All areas calculated using Method BWB-WET-01 with CAD model CAD-MASTER-ASSY_rev5.6.0.catpart. Wetted area calculations include all external surfaces but exclude internal cavities and wheel wells. Surface roughness and excrescences are accounted for in drag coefficients but not in geometric wetted area.
