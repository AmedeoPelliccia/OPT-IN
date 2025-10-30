# DESC 57-02-01: Wing Box Architecture and Load Path

**Revision:** 1.0.0  
**Effective Date:** 2025-10-27

## 1. Introduction

The AMPEL360 BWB wing box is the primary load-bearing structure that transfers wing lift and inertia loads to the central fuselage structure. It also forms the integral fuel tank structure.

## 2. Wing Box Components

### 2.1 Main Spars

**Front Spar:**
- Spanwise location: 15% chord
- Material: CFRP composite (unidirectional tape in caps, fabric in webs)
- Primary load: Shear and bending

**Rear Spar:**
- Spanwise location: 70% chord
- Material: CFRP composite
- Primary load: Shear and torsion

**Auxiliary Spar (if applicable):**
- Mid-chord location for wing box subdivision
- Provides redundant load path

### 2.2 Ribs

**Primary Ribs:**
- Spacing: Approximately 24 inches
- Material: CFRP composite or metallic (Aluminum 2024-T3)
- Function: Maintain airfoil shape, transfer loads to spars, pressure bulkheads

**Intercostals:**
- Lighter ribs between primary ribs
- Maintain skin contour

### 2.3 Skins

**Upper Skin:**
- Material: CFRP composite
- Layup: Optimized for tension loads and impact resistance
- Stiffened by stringers

**Lower Skin:**
- Material: CFRP composite
- Layup: Optimized for compression and buckling resistance
- Higher ply count in high-stress regions

### 2.4 Stringers

- Blade or hat-section stringers
- Provide skin stiffness and prevent buckling
- Typical spacing: 6-8 inches

## 3. Load Path Description

### 3.1 Bending Loads

Wing bending from lift is resisted by:
1. Spar caps in tension (lower caps) and compression (upper caps)
2. Skin panels contribute to bending stiffness
3. Ribs transfer loads between skins and spars

### 3.2 Shear Loads

Shear from distributed aerodynamic loads:
1. Carried by spar webs
2. Distributed to ribs and skin panels
3. Transferred to wing-fuselage attachment

### 3.3 Torsion Loads

Torsion from aerodynamic moments:
1. Resisted by closed wing box (torque box)
2. Front and rear spars act as torsion box boundaries
3. Skins resist shear flows

### 3.4 Pressure Loads

Fuel tank pressurization and cabin pressure (in wing-fuselage integration zone):
1. Skins and ribs resist pressure loads
2. Ribs act as pressure bulkheads
3. Sealant ensures pressure integrity

## 4. Critical Load Cases

1. **2.5g Maneuver (Ultimate):** Maximum positive bending
2. **-1.0g Maneuver (Ultimate):** Maximum negative bending
3. **Gust Loads:** Combined with maneuver loads
4. **Landing Loads:** High impact, gear attachment loads
5. **Engine Thrust:** If engines mounted on wings
6. **Ground Handling:** Jacking and towing loads

## 5. Fail-Safe Features

- Crack stoppers in skins
- Redundant load paths (multiple spars)
- Slow crack growth in damage-tolerant materials
- Inspectable structure

## 6. Maintenance Access

Access panels provided at:
- Wing-fuselage junction
- Fuel tank access points
- Control surface attachment points
- Inspection hatches for NDT access

## 7. References

- STRUCT-SPEC-57-001: Wing Structural Design Specification
- AERO-SPEC-57-001: Wing Aeroelastic Requirements
- `DATA_57-02-04`: Spar Cap and Rib Strength Limits

---

**Document Control:**
- **Prepared by:** Wing Structures Engineering
- **Approved by:** Chief Engineer - Structures
- **Approval Date:** 2025-10-26
