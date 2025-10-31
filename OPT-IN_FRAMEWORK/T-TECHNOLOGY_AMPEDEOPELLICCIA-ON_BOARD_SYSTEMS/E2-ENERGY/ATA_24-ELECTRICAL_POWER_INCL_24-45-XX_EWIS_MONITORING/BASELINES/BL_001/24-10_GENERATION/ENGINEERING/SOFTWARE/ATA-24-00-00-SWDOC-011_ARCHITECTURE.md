# Power Conversion Firmware - Architecture

**Document ID:** ATA-24-00-00-SWDOC-011_ARCHITECTURE  
**Version:** 1.0.0  
**Date:** 2025-10-31  
**Certification:** DO-178C DAL-A

## 1. Overview

Power Conversion Firmware provides critical functionality for the AMPEL360 electrical power system.

## 2. System Architecture

### 2.1 Component Structure

This software component implements the following key functions:

- `pcu_initialize()`
- `pcu_pwm_control()`
- `pcu_protection_logic()`
- `pcu_voltage_regulation()`

### 2.2 Interfaces

- **Input Interfaces:** Hardware sensors, CAN bus, ARINC 664
- **Output Interfaces:** Actuators, system bus, logging system

## 3. Safety Considerations

**Safety Critical:** YES  
**DAL Level:** A

## 4. References

- DO-178C Software Considerations in Airborne Systems
- ATA iSpec 2200
- AMPEL360 System Requirements Document
