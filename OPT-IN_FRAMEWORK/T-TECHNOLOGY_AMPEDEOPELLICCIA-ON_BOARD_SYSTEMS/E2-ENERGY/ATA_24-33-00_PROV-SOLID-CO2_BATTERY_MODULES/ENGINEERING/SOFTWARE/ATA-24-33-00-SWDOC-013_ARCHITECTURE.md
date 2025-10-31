# CO₂ Lab Simulator / HIL SW - Architecture

**Document ID:** ATA-24-33-00-SWDOC-013_ARCHITECTURE  
**Version:** 1.0.0  
**Date:** 2025-10-31  
**Certification:** DO-178C DAL-N/A

## 1. Overview

CO₂ Lab Simulator / HIL SW provides critical functionality for the AMPEL360 electrical power system.

## 2. System Architecture

### 2.1 Component Structure

This software component implements the following key functions:

- `co2_sim_initialize()`
- `co2_thermodynamics()`
- `sorbent_model()`
- `hil_orchestrator()`

### 2.2 Interfaces

- **Input Interfaces:** Hardware sensors, CAN bus, ARINC 664
- **Output Interfaces:** Actuators, system bus, logging system

## 3. Safety Considerations

**Safety Critical:** NO  
**DAL Level:** N/A

## 4. References

- DO-178C Software Considerations in Airborne Systems
- ATA iSpec 2200
- AMPEL360 System Requirements Document
