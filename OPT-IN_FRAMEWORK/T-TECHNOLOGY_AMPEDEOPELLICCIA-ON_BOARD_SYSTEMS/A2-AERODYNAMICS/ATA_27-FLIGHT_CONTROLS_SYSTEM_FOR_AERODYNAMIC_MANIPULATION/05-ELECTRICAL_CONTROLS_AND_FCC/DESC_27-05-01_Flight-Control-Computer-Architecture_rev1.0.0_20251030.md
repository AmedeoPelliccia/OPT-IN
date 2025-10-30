# DESC_27-05-01: Flight Control Computer Architecture

**Document ID:** DESC_27-05-01_Flight-Control-Computer-Architecture_rev1.0.0_20251030  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30

## Purpose

Describes the Flight Control Computer (FCC) architecture, redundancy, and interfaces for AMPEL360 BWB.

## FCC Overview

**Configuration:** Dual-redundant FCCs (Primary and Standby)

**Processing:**
- PowerPC or ARM Cortex processor
- 200 MHz clock speed
- 512 MB RAM, 256 MB Flash
- Deterministic real-time operating system (RTOS)

**DO-178C Compliance:** Design Assurance Level A (DAL-A)  
**DO-254 Compliance:** Design Assurance Level A (DAL-A)

## Redundancy Architecture

**Primary FCC:**
- Processes all sensor inputs
- Executes normal control laws
- Commands actuators
- Interfaces with cockpit displays

**Standby FCC:**
- Monitors primary FCC
- Ready to assume control on primary failure
- Executes alternate control laws if sensor degradation
- Independent power supply

**Cross-Channel Monitoring:**
- Each FCC monitors the other
- Automatic switchover on failure detection (< 20 ms)
- Dissimilar software for common-mode failure protection

## Interfaces

### Sensors:
- 3x AoA sensors (triple redundant with voting)
- 3x Rate gyros (pitch, roll, yaw)
- 3x Accelerometers (linear)
- Control surface position sensors (LVDT/RVDT)
- Air data (pitot-static)

### Actuators:
- Aileron actuators (4x EHA)
- Elevator actuators (2x EHA)
- Rudder actuators (2x EHA)
- Spoiler actuators (12x EMA)

### Cockpit:
- Control inceptors (yoke/sidestick, rudder pedals)
- Mode selectors (autopilot)
- Status displays

### Other Systems:
- ATA-22 Auto Flight
- ATA-31 Displays
- ATA-42 IMA

## Software Baseline Control

**Version Control:** Git repository with SHA-256 checksums  
**Configuration Management:** Software Configuration Control Board (SCCB) approval required for all changes  
**Load Verification:** Digital signature verification on load

---

**Document Owner:** Avionics Engineering  
**Next Review:** 2026-10-30
