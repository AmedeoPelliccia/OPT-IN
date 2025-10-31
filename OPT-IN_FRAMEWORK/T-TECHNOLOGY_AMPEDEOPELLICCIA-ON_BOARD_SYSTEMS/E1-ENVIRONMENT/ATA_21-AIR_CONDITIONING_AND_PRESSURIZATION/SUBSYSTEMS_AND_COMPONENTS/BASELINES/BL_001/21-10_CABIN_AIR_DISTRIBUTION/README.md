# ATA 21-10 - Cabin Air Distribution

## Subsystem Information

- **Subsystem ID**: 21-10
- **Title**: Cabin Air Distribution
- **Baseline**: BL_001
- **Version**: 1.0.0
- **Date**: 2025-10-31
- **Status**: ACTIVE

## Overview

The Cabin Air Distribution subsystem (21-10) is responsible for distributing conditioned air throughout the aircraft cabin, ensuring proper airflow, temperature uniformity, and passenger comfort.

## Key Functions

1. **Air Distribution**: Deliver conditioned air to all cabin zones
2. **Flow Control**: Regulate airflow rates to different zones
3. **Recirculation**: Mix fresh and recirculated air for efficiency
4. **Filtration**: Remove particulates and contaminants
5. **Individual Control**: Provide gasper outlets for personal comfort

## Major Components

### 21-11 - Distribution Ducts
- Main distribution manifold
- Branch ducts to zones
- Flexible connections
- Insulation and acoustic treatment

### 21-12 - Distribution Valves
- Zone control valves
- Mixing valves
- Shutoff valves
- Check valves

### 21-13 - Cabin Outlets
- Overhead distribution outlets
- Individual gasper outlets (passenger service units)
- Floor-level outlets (cargo areas)
- Outlet grilles and diffusers

### 21-14 - Cabin Fans
- Recirculation fans (2 typical)
- HEPA filters
- Fan controllers
- Variable speed drives

## Performance Specifications

### Airflow
- Total airflow: 4000-6000 CFM (typical for regional jet)
- Fresh air per passenger: 20 CFM minimum (FAR 25.831)
- Recirculation ratio: 50% (with HEPA filtration)

### Distribution
- Zone flow uniformity: ±10%
- Outlet velocity: 100-500 fpm (adjustable)
- Temperature uniformity: ±2°C within zone

### Filtration
- HEPA efficiency: 99.97% at 0.3 micron
- Filter pressure drop: < 1.5 in H2O (new)
- Filter replacement: Based on pressure drop monitoring

## Interfaces

### Internal (ATA-21)
- **21-20 (Compression)**: Receives conditioned air from packs
- **21-60 (Temperature Control)**: Mix valve actuation commands

### External (Other ATA Chapters)
- **ATA-24 (Electrical)**: Fan power supply
- **Cabin Structure**: Mounting and attachment points
- **ATA-52 (Doors)**: Pressure seals coordination

## Design Considerations

### Acoustic
- Low-noise fan design
- Duct acoustic treatment
- Outlet design for low turbulence

### Weight Optimization
- Lightweight duct materials
- Optimized routing (shortest path)
- Composite materials where applicable

### Maintainability
- Quick-disconnect fittings
- Accessible filter access doors
- Modular fan assemblies

### Safety
- Fire-resistant materials
- Flame propagation prevention
- Smoke detection integration

## Regulatory Compliance

- **FAR 25.831**: Minimum ventilation requirements
- **FAR 25.853**: Cabin interior materials (flammability)
- **DO-160**: Environmental qualification (fans, valves)

## Verification and Validation

### Testing
- Airflow distribution testing (CFD and physical)
- Filter efficiency testing
- Fan performance testing
- Acoustic testing

### Analysis
- CFD for cabin airflow patterns
- Thermal comfort analysis
- Pressure drop calculations

## Maintenance

### Scheduled Maintenance
- Filter inspection/replacement: Per pressure drop
- Fan inspection: C-check interval
- Duct inspection: Visual during access opportunities
- Valve function check: Annual

### Unscheduled Maintenance
- Filter replacement (high pressure drop)
- Fan replacement (noise, vibration, or failure)
- Duct repair (damage or leakage)

## Navigation

- [↑ Parent: Subsystems](../../README.md)
- [→ Distribution Ducts (21-11)](SUBSYSTEMS_AND_COMPONENTS/21-11_DISTRIBUTION_DUCTS/)
- [→ Distribution Valves (21-12)](SUBSYSTEMS_AND_COMPONENTS/21-12_DISTRIBUTION_VALVES/)
- [→ Cabin Outlets (21-13)](SUBSYSTEMS_AND_COMPONENTS/21-13_CABIN_OUTLETS/)
- [→ Cabin Fans (21-14)](SUBSYSTEMS_AND_COMPONENTS/21-14_CABIN_FANS/)

---

*Part of the AMPEL360 OPT-IN Framework - ATA Chapter 21*
