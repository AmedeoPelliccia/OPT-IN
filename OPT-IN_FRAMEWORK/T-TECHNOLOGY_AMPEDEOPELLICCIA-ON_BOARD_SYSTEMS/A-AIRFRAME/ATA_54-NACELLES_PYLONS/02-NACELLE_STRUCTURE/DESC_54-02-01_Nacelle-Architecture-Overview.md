# DESC 54-02-01: Nacelle Architecture Overview

## Introduction
The AMPEL360 nacelle design is optimized for the blended wing body (BWB) configuration with upper-surface mounted open-fan propulsors. This unique architecture requires special consideration for aerodynamic integration, acoustic treatment, and structural load paths.

## Nacelle Configuration

### Overall Layout
- **Type:** Split-cowl design with fan cowl and core cowl
- **Location:** Upper surface integration with BWB airframe
- **Mounting:** Dual-point attachment to pylon structure
- **Access:** Swing-out fan cowls, hinged core cowls

### Fan Cowl Assembly (Zone 100)
**Function:** Encloses the open-fan propulsor and provides aerodynamic fairing

**Major Components:**
- Forward inlet ring structure (CFRP composite)
- Upper and lower fan cowl halves
- Cowl hinge fittings (Ti-6Al-4V)
- Latch mechanisms (failsafe design)
- Acoustic treatment panels
- Anti-icing system integration

**Material:** Primarily CFRP with aluminum honeycomb core  
**Weight (each half):** Approximately 145 kg

### Core Cowl Assembly (Zone 200)
**Function:** Encloses engine core and provides maintenance access

**Major Components:**
- Upper core cowl with hinged access
- Lower core cowl panels
- Firewall penetration seals
- Cooling air louvers
- Accessory compartment doors

**Material:** Aluminum alloy 2024-T3 with titanium heat shields  
**Weight (assembly):** Approximately 220 kg

### Acoustic Treatment (Zone 400)
**Purpose:** Reduce open-fan propulsor noise to meet Stage 5 noise requirements

**Features:**
- Bulk absorber panels in inlet
- Resonant cavity liners in fan cowl
- Broadband treatment optimized for 800-2500 Hz
- Minimum insertion loss: 8 dB at 1600 Hz

**Critical:** Acoustic performance must be maintained after any repair

## Structural Interfaces

### Pylon Interface
- **Forward Attach Points:** Two failsafe fittings at fan cowl support ring
- **Aft Attach Points:** Core cowl support brackets
- **Load Transfer:** Aerodynamic and inertial loads transmitted through discrete hard points

### Thrust Reverser Integration
- **Type:** Cascade-type translating cowl
- **Actuation:** Dual hydraulic actuators per engine
- **Structural Tie-in:** Core cowl aft frame

### Systems Integration
The nacelle houses or provides passage for:
- Engine fuel supply and return lines (ATA 73)
- Engine bleed air ducts (ATA 75)
- Engine control harnesses (ATA 76)
- Fire detection and suppression (ATA 26)
- Engine indication sensors (ATA 77)

## Design Features

### Lightning Strike Protection
- Conductive mesh embedded in CFRP skins
- Bonding jumpers at all removable panels
- Diverter strips at leading edges

### Damage Tolerance
- **Philosophy:** Safe-life for primary structure, fail-safe for secondary
- **Inspection Threshold:** 15,000 flight hours
- **Inspection Interval:** 7,500 flight hours after threshold

### Environmental Protection
- **Erosion coating:** Polyurethane on leading edges
- **Corrosion protection:** Alodine and primer on aluminum parts
- **UV protection:** Topcoat paint per ATA 20 specification

## Maintenance Philosophy
- **On-condition:** Acoustic panels
- **Hard-time:** Hinge pins and latch mechanisms
- **Condition monitoring:** Vibration sensors on pylon

## Cross-References
- ATA 20: Standard practices for composite repair
- ATA 26: Fire protection systems
- ATA 51: Structural repair procedures
- ATA 71: Engine installation data
