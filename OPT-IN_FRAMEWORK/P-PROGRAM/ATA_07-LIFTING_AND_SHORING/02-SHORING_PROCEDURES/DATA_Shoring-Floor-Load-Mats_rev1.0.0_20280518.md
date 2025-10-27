# Shoring Floor Load Distribution Mats
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Document ID:** DATA_Shoring-Floor-Load-Mats_rev1.0.0_20280518

## Purpose
This document specifies approved floor load distribution mats for use during jacking and shoring operations to prevent floor damage and ensure adequate load distribution.

## Mat Specifications

### Standard Jack Mats

#### Type A: Heavy-Duty Steel Plate
- **Material:** Steel plate, Grade A36 or equivalent
- **Dimensions:** 600mm × 600mm × 25mm
- **Load Capacity:** 50,000 kg point load
- **Weight:** 71 kg
- **Application:** Main jacking points, high-load applications
- **Minimum Floor Bearing Capacity Required:** 15 N/mm²

#### Type B: Composite Reinforced Mat
- **Material:** Glass-fiber reinforced polymer
- **Dimensions:** 500mm × 500mm × 20mm
- **Load Capacity:** 25,000 kg point load
- **Weight:** 18 kg
- **Application:** Auxiliary jack points, moderate loads
- **Minimum Floor Bearing Capacity Required:** 10 N/mm²

#### Type C: Light-Duty Aluminum Plate
- **Material:** Aluminum alloy 6061-T6
- **Dimensions:** 400mm × 400mm × 15mm
- **Load Capacity:** 10,000 kg point load
- **Weight:** 6.5 kg
- **Application:** Nose gear jacking, light support stands
- **Minimum Floor Bearing Capacity Required:** 6 N/mm²

### Specialty Shoring Mats

#### Type D: Vibration-Damping Mat
- **Material:** Rubber/steel composite
- **Dimensions:** 800mm × 800mm × 30mm
- **Load Capacity:** 30,000 kg distributed load
- **Weight:** 55 kg
- **Application:** Long-term shoring, vibration-sensitive areas
- **Minimum Floor Bearing Capacity Required:** 8 N/mm²

## Load Calculation Formula

**Floor Bearing Pressure (P) = Jack Load / Effective Mat Area**

Where:
- P = Bearing pressure (N/mm²)
- Jack Load = Total load on jack (kg) × 9.81 / 1000
- Effective Mat Area = Mat dimensions (mm²) accounting for edge effects

**Safety Factor:** All calculations must include minimum safety factor of 1.5

## Mat Selection Matrix

| Jack Load (kg) | Floor Type | Required Mat Type | Quantity |
| :--- | :--- | :--- | :--- |
| 0 - 10,000 | Concrete (good) | Type C | 1 |
| 10,001 - 25,000 | Concrete (good) | Type B | 1 |
| 25,001 - 50,000 | Concrete (good) | Type A | 1 |
| 0 - 10,000 | Concrete (poor) | Type B | 2 stacked |
| 10,001 - 25,000 | Concrete (poor) | Type A | 1 |
| 25,001 - 50,000 | Concrete (poor) | Type A | 2 stacked |
| Any | Asphalt/soft surface | Type A + Type D | 1 each stacked |
| Long-term shoring | Any | Type D | 1 |

## Inspection Requirements

### Before Each Use
- [ ] Visual inspection for cracks, deformation, or corrosion
- [ ] Check flatness (must be within 2mm across surface)
- [ ] Verify cleanliness (no oil, grease, or debris)
- [ ] Confirm identification marking legible

### Periodic Inspection (Every 6 months)
- [ ] Ultrasonic thickness measurement (steel mats)
- [ ] Load test to 150% rated capacity
- [ ] Dimensional verification
- [ ] Surface hardness check

### Rejection Criteria
- Any crack visible to naked eye
- Deformation >5mm
- Corrosion depth >2mm
- Surface damage affecting >10% of area

## Storage and Handling

### Storage Requirements
- Store flat in designated rack
- Protect from weather and corrosion
- Segregate by type and condition
- Maximum stack height: 10 mats of same type

### Handling
- Use appropriate lifting equipment (mats >30kg)
- Do not drag mats across rough surfaces
- Clean before and after use
- Apply protective coating if stored >30 days

## Floor Assessment

Before selecting mats, assess floor condition:

### Concrete Floors
- **Good:** No visible cracks, smooth surface, age <10 years
- **Fair:** Minor surface cracks, some spalling, age 10-20 years
- **Poor:** Significant cracking, spalling, age >20 years or unknown

### Asphalt Surfaces
- Always use maximum mat capacity
- Check temperature (avoid operations when surface temp >40°C)
- Inspect after initial loading for deformation

### Special Surfaces
- Aircraft hangar epoxy: Treat as concrete (good)
- Painted concrete: Remove paint under mat area
- Tile/finished floors: Protect with additional plywood layer

## Example Calculations

### Example 1: Main Jack Point
- Jack Load: 35,000 kg
- Floor: Concrete (good condition)
- Selected Mat: Type A (600mm × 600mm)

Calculation:
- Load in N = 35,000 × 9.81 / 1000 = 343.35 kN
- Mat Area = 0.6 × 0.6 = 0.36 m² = 360,000 mm²
- Bearing Pressure = 343,350 N / 360,000 mm² = 0.95 N/mm²
- Safety Factor = 15 N/mm² / 0.95 N/mm² = 15.8 ✓ ACCEPTABLE

### Example 2: Nose Jack Point
- Jack Load: 8,000 kg
- Floor: Concrete (fair condition)
- Selected Mat: Type C (400mm × 400mm)

Calculation:
- Load in N = 8,000 × 9.81 / 1000 = 78.48 kN
- Mat Area = 0.4 × 0.4 = 0.16 m² = 160,000 mm²
- Bearing Pressure = 78,480 N / 160,000 mm² = 0.49 N/mm²
- Safety Factor = 6 N/mm² / 0.49 N/mm² = 12.2 ✓ ACCEPTABLE

## Part Numbers and Suppliers

| Mat Type | Part Number | Manufacturer | Lead Time |
| :--- | :--- | :--- | :--- |
| Type A | AP360-MAT-A-001 | AeroSupport Inc. | Stock |
| Type B | AP360-MAT-B-002 | CompositeGSE Ltd. | 2 weeks |
| Type C | AP360-MAT-C-003 | AeroSupport Inc. | Stock |
| Type D | AP360-MAT-D-004 | VibrationControl Co. | 4 weeks |

## References
- STR-RPT-07-002 (Floor Loading Analysis)
- ACI 318 (Building Code Requirements for Structural Concrete)
- ASTM E1155 (Standard Test Method for Determining Floor Flatness)

## Approval

| Authority | Status | Date |
| :--- | :--- | :--- |
| Structural Engineering | Released | 2025-10-27 |
| Ground Operations | Released | 2025-10-27 |

---
*This is a controlled document. Unauthorized modifications are prohibited.*
