# DESC 54-03-01: Pylon Load Path and Attachment Philosophy

## Overview
The engine pylon is a critical primary structure that transfers all engine thrust, drag, vertical, lateral, and inertial loads into the airframe. The AMPEL360 pylon design incorporates failsafe load paths and is certified for the unique upper-surface BWB integration.

## Load Path Architecture

### Primary Load Path
The pylon transmits the following loads from engine to airframe:

1. **Thrust Loads (Axial):**
   - Maximum forward thrust: 850 kN (limit load)
   - Maximum reverse thrust: 650 kN (limit load)
   - Transmitted through aft engine mount to pylon aft spar

2. **Vertical Loads:**
   - Engine weight: ~3,500 kg per engine
   - Gust loads: up to 420 kN
   - Transmitted through forward and aft mounts to pylon box structure

3. **Side Loads:**
   - Crosswind and maneuvering loads
   - Maximum: 380 kN
   - Transmitted through forward mount (torque link)

4. **Torsional Loads:**
   - Engine torque reaction
   - Transmitted through torque links

### Structural Elements

#### Pylon Box Structure
- **Material:** Al-7075-T7351 extrusions and forgings
- **Configuration:** Closed box with integral ribs
- **Fail-safe features:** Multiple load paths, crack stoppers at critical sections

#### Forward Spar
- Carries vertical and side loads
- Attach to airframe at two main fittings
- Material: Machined forging, Al-7075-T7351

#### Aft Spar
- Carries thrust loads
- Attach to airframe at single main fitting
- Material: Machined forging, Al-7075-T7351

#### Diagonal Braces
- Provide torsional stiffness
- Prevent lateral buckling
- Material: Aluminum alloy tubes

### Attachment Philosophy

#### Failsafe Design Requirements
Per FAA Part 25.571 and EASA CS-25:
- **No single failure** shall result in loss of engine
- **Dual load paths** required for all primary fittings
- **Safe-life or damage-tolerant** design with defined inspection intervals

#### Engine Mount Interface
- **Forward Mount:** Spherical bearing, allows pitch and yaw rotation
- **Aft Mount:** Pinned connection, carries thrust and prevents rotation
- **Material:** Ti-6Al-4V forgings for all mount fittings

#### Airframe Attachment
- **Forward Attachments (2 places):** Bolted connection to wing/fuselage structure
- **Aft Attachment (1 place):** Bolted connection to fuselage structure
- **Fasteners:** Precision tolerance bolts, single-use only

## Load Transfer Concept

### Normal Operation
All loads are distributed through primary load path elements:
- Engine → Engine Mounts → Pylon Structure → Airframe Fittings → Wing/Fuselage

### Failsafe Operation
In the event of a single fitting failure:
- **Redundant load path** activates automatically
- **Fuse pins** may shear to redistribute loads
- Engine remains attached and controllable
- Flight may continue to nearest suitable airport

## Critical Inspection Points

### High-Stress Locations
The following areas require periodic NDT inspection:
1. Forward mount lug bores
2. Aft mount thrust fitting
3. Pylon-to-airframe attach fittings
4. Spar web radii at rib intersections

### Inspection Philosophy
- **Safe-life components:** Engine mount fittings (replaced at 30,000 FH)
- **Damage-tolerant components:** Pylon structure (inspected per ATA 05 schedule)

## Design Loads Summary
Refer to DATA 54-03-04 for complete load limit specifications.

**Critical Requirement:** Any modification to pylon load path or engine mount fittings requires:
1. Formal stress analysis
2. Fatigue and damage tolerance evaluation
3. Engineering Disposition approval
4. Flight test validation (if structural stiffness affected)

## References
- FAA Part 25.571: Damage Tolerance and Fatigue Evaluation
- ATA 51: General structural repair philosophy
- ATA 53: Fuselage attachment interface definitions
- ATA 71: Engine installation requirements
- DATA 54-03-04: Pylon load limits and fitting specifications

## Traceability
All pylon repairs must be recorded per `/schemas/repair-record.schema.json`
