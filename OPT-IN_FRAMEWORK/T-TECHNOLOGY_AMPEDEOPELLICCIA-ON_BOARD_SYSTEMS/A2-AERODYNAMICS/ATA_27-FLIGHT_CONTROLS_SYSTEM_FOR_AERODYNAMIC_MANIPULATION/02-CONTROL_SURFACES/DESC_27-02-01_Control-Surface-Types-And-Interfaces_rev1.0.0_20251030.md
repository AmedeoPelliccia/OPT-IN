# DESC_27-02-01: Control Surface Types and Interfaces

**Document ID:** DESC_27-02-01_Control-Surface-Types-And-Interfaces_rev1.0.0_20251030  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30

## Purpose

Describes the control surface architecture, types, aerodynamic interfaces, and structural integration for the AMPEL360 BWB flight control system.

## Control Surface Layout

### Primary Control Surfaces

**Ailerons:**
- Left wing inboard aileron (control surface ID: CS-27-AIL-LI)
- Left wing outboard aileron (control surface ID: CS-27-AIL-LO)
- Right wing inboard aileron (control surface ID: CS-27-AIL-RI)
- Right wing outboard aileron (control surface ID: CS-27-AIL-RO)
- Deflection range: ±25° (up/down)
- Actuation: Dual redundant EHA per surface

**Elevators:**
- Left horizontal stabilizer elevator (control surface ID: CS-27-ELEV-L)
- Right horizontal stabilizer elevator (control surface ID: CS-27-ELEV-R)
- Deflection range: +20° (up) / -15° (down)
- Actuation: Triple redundant EHA per surface

**Rudders:**
- Upper vertical stabilizer rudder (control surface ID: CS-27-RUD-U)
- Lower vertical stabilizer rudder (control surface ID: CS-27-RUD-L)
- Deflection range: ±30° (left/right)
- Actuation: Dual redundant EHA per surface

**Spoilers:**
- Six spoiler panels per wing (12 total)
- Deflection range: 0° to 60° (up)
- Functions: Roll augmentation, speedbrake, ground spoiler
- Actuation: Single EMA per panel with load limiting

### Secondary Control Surfaces

**Trim Tabs:**
- Elevator trim tabs (left and right)
- Rudder trim tab
- Deflection range: ±10°
- Actuation: Electric trim actuators

**Stabilizer Trim:**
- Variable incidence horizontal stabilizer
- Trim range: -3° to +12° (relative to fuselage reference line)
- Actuation: Dual electric jackscrew actuators

## Hinge and Bearing Interfaces

### Hinge Types

**Piano Hinge:**
- Continuous hinge along full span of smaller surfaces (trim tabs)
- Material: Aluminum alloy or titanium
- Wear inspection interval: 12,000 FH

**Discrete Hinges:**
- Three-point hinge for ailerons and elevators
- Five-point hinge for rudders
- Material: Titanium or steel with bronze bushings
- Freeplay limit: 0.5° at hinge centerline

### Bearing Specifications

- **Type:** Self-lubricating spherical bearings (rod ends)
- **Material:** Steel with PTFE liner
- **Wear limit:** 0.25 mm radial clearance increase
- **Replacement criteria:** Wear exceeds 0.25 mm or visible fretting

## Mass Balance Requirements

All control surfaces must be mass balanced to prevent flutter:

| Surface | Mass Balance (kg·mm) | Tolerance |
|---------|---------------------|-----------|
| Aileron | 15,000 ± 500 | ±3.3% |
| Elevator | 28,000 ± 800 | ±2.9% |
| Rudder | 42,000 ± 1,200 | ±2.9% |
| Trim Tab | 800 ± 50 | ±6.3% |

Balance is verified using a balance rig with precision scales. Out-of-balance surfaces must be adjusted by adding or removing balance weights.

## Aerodynamic Interfaces

### Seals and Gaps

- **Gap at hinge line:** 3 mm ± 0.5 mm
- **Seal type:** Elastomeric seals on leading edge of control surface
- **Seal replacement interval:** 24 months or if damaged

### Surface Finish

- **Allowable waviness:** 0.5 mm over 300 mm span
- **Paint thickness:** 0.075 mm ± 0.025 mm
- **Surface roughness:** Ra < 3.2 μm

## Structural Attachment

### Load Transfer

Control surfaces transfer aerodynamic loads through:
1. Hinge fittings (shear and bending moments)
2. Actuator attachment (primary actuation loads)
3. Trim actuator attachment (trim loads)

### FEA Requirements

Any repair or modification to hinge fittings or actuator attachments requires FEA validation to ensure:
- Load path integrity
- Stress levels within allowable limits (per MMPDS)
- Fatigue life compliance with damage tolerance requirements

---

**Document Owner:** Flight Controls Engineering  
**Next Review:** 2026-10-30
