# ATA 21 - SUBSYSTEMS AND COMPONENTS

## Purpose

This directory contains detailed documentation for each subsystem and component of the Air Conditioning and Pressurization system, organized by baseline.

## Structure

### Baselines
Each baseline (BL_001, BL_002, etc.) represents a configuration snapshot with specific subsystem versions and components.

### Subsystems (under BL_001)

#### 21-10 - Cabin Air Distribution
Distribution ducts, manifolds, outlets, and recirculation fans

#### 21-20 - Compression
Air conditioning packs, air cycle machines, heat exchangers

#### 21-30 - Pressurization
Outflow valves, safety valves, cabin pressure controllers

#### 21-40 - Heating
Supplementary heating elements and systems

#### 21-50 - Cooling
Refrigeration systems, additional cooling capacity

#### 21-60 - Temperature Control
Zone temperature controllers, mix valves, sensors

#### 21-70 - Humidity Control
Humidification and dehumidification systems

## Subsystem Documentation Structure

Each subsystem follows the same structure as the parent ATA-21 system:
- OVERVIEW
- SAFETY
- REQUIREMENTS
- DESIGN
- INTERFACES
- ENGINEERING
- V_AND_V
- PROTOTYPING
- PRODUCTION_PLANNING
- CERTIFICATION
- OPERATIONS_AND_MAINTENANCE
- ASSETS_MANAGEMENT
- SUBSYSTEMS_AND_COMPONENTS (for further breakdown)
- META_GOVERNANCE

## Baseline Management

### Baseline Definition
A baseline captures:
- Subsystem versions
- Component part numbers
- Interface definitions
- Performance specifications
- Configuration state

### Baseline Control
- Formal baseline establishment
- Change control through CCB
- Impact analysis for changes
- Traceability to requirements

### Baseline Comparison
- Comparison tools in ASSETS_MANAGEMENT
- Delta documentation
- Migration planning

## Component Hierarchy

```
ATA-21 System
└── BL_001
    ├── 21-10 Cabin Air Distribution
    │   ├── 21-11 Distribution Ducts
    │   ├── 21-12 Distribution Valves
    │   ├── 21-13 Cabin Outlets
    │   └── 21-14 Cabin Fans
    ├── 21-20 Compression
    │   ├── 21-21 Air Cycle Machine
    │   ├── 21-22 Heat Exchangers
    │   └── 21-23 Ram Air System
    ├── 21-30 Pressurization
    │   ├── 21-31 Outflow Valves
    │   ├── 21-32 Safety Valves
    │   └── 21-33 Pressure Controllers
    └── ... (other subsystems)
```

## Navigation

- [↑ Parent: ATA-21 Root](../README.md)
- [→ Baseline BL_001](BASELINES/BL_001/)

---

*Part of the AMPEL360 OPT-IN Framework - ATA Chapter 21*
