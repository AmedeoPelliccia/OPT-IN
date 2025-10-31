# Fuel-Cell Data Logger & Telemetry SW - Architecture

**Document ID:** ATA-24-60-00-SWDOC-014_ARCHITECTURE  
**Version:** 1.0.0  
**Date:** 2025-10-31  
**Certification:** DO-178C DAL-C

## 1. Overview

Fuel-Cell Data Logger & Telemetry SW provides critical functionality for the AMPEL360 electrical power system.

## 2. System Architecture

### 2.1 Component Structure

This software component implements the following key functions:

- `logger_initialize()`
- `logger_data_acquisition()`
- `logger_telemetry_tx()`
- `logger_storage()`

### 2.2 Interfaces

- **Input Interfaces:** Hardware sensors, CAN bus, ARINC 664
- **Output Interfaces:** Actuators, system bus, logging system

## 3. Safety Considerations

**Safety Critical:** NO  
**DAL Level:** C

## 4. References

- DO-178C Software Considerations in Airborne Systems
- ATA iSpec 2200
- AMPEL360 System Requirements Document
