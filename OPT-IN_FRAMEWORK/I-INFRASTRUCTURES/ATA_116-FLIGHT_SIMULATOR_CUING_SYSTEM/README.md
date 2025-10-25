# ATA 116 - FLIGHT SIMULATOR CUING SYSTEM

> **📖 For detailed documentation, see [`00_README.md`](00_README.md)**  
> **📑 For complete file index, see [`ATA_116_INDEX.md`](ATA_116_INDEX.md)**

---

## Overview

This chapter contains the technical data, qualification tests, and maintenance procedures for all systems that provide sensory cues to the pilot, including:

- **Visual System** - Image generator, projectors, display system
- **Motion System** - 6-DOF motion platform, washout algorithms
- **Aural System** - Sound system, acoustic models (hybrid-electric propulsion)
- **Control Loading System** - Flight control force feedback

The fidelity and performance of these systems are paramount for achieving high-level simulator qualification (EASA Level D) and preventing negative training.

---

## Quick Access

### Core Documentation
- **[00_README.md](00_README.md)** - Comprehensive overview and governance
- **[INDEX.meta.yaml](INDEX.meta.yaml)** - Master metadata and traceability
- **[ATA_116_INDEX.md](ATA_116_INDEX.md)** - Complete hyperlinkable file index

### Key Directories
1. **[01-SYSTEM_ARCHITECTURE_AND_SPECS](01-SYSTEM_ARCHITECTURE_AND_SPECS/)** - Technical specifications for all cuing systems
2. **[02-QUALIFICATION_AND_COMPLIANCE](02-QUALIFICATION_AND_COMPLIANCE/)** - QTG tests and compliance evidence
3. **[03-CALIBRATION_AND_ALIGNMENT](03-CALIBRATION_AND_ALIGNMENT/)** - Calibration procedures and schedules
4. **[04-SOFTWARE_AND_MODELS](04-SOFTWARE_AND_MODELS/)** - Software releases and model packages
5. **[05-OPERATIONS_AND_MAINTENANCE](05-OPERATIONS_AND_MAINTENANCE/)** - Daily checks and maintenance procedures
6. **[06-REGISTRY_AND_LOGS](06-REGISTRY_AND_LOGS/)** - Live status, defects, and calibration logs

---

## AMPEL360 Specific Features

The AMPEL360 Blended Wing Body aircraft presents unique simulator cuing requirements:

- **Visual:** Accurate BWB out-of-cockpit view, wing flex, ground effect visuals
- **Aural:** Hybrid-electric propulsion soundscape (silent taxi → open-fan propulsors)
- **Motion:** Tailless aircraft handling qualities with advanced fly-by-wire
- **Control Loading:** Fly-by-wire force feedback with envelope protection

---

## Applicable Standards & Regulations

- **EASA CS-FSTD(A) Issue 2** - Flight Simulation Training Devices
- **FAA AC 120-40** - Airplane Simulator Qualification
- **ARINC 610C** - Visual System Interface Standards

---

## Related ATA Chapters

- **ATA 115:** FLIGHT SIMULATOR SYSTEMS (Host computer, interfaces, qualification plan)
- **ATA 27:** FLIGHT CONTROLS (Source data for control loading)
- **ATA 02:** OPERATIONS INFORMATION
- **ATA 03:** SUPPORT INFORMATION

---

## Navigation

[↑ I-INFRASTRUCTURES](../README.md)

### Related Sections

- [ATA_02-OPERATIONS_INFORMATION](../ATA_02-OPERATIONS_INFORMATION/README.md)
- [ATA_03-SUPPORT_INFORMATION](../ATA_03-SUPPORT_INFORMATION/README.md)
- [ATA_10-PARKING_MOORING_STORAGE_RTS](../ATA_10-PARKING_MOORING_STORAGE_RTS/README.md)
- [ATA_115-FLIGHT_SIMULATOR_SYSTEMS](../ATA_115-FLIGHT_SIMULATOR_SYSTEMS/README.md)
- [ATA_13-HARDWARE_AND_GENERAL_TOOLS](../ATA_13-HARDWARE_AND_GENERAL_TOOLS/README.md)
- [ATA_85-90-INFRASTRUCTURE_INTERFACE_STANDARDS](../ATA_85-90-INFRASTRUCTURE_INTERFACE_STANDARDS/README.md)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
