# EWIS Gateway Protocol Stack - Architecture

**Document ID:** ATA-24-45-00-SWDOC-012_ARCHITECTURE  
**Version:** 1.0.0  
**Date:** 2025-10-31  
**Certification:** DO-178C DAL-A

## 1. Overview

EWIS Gateway Protocol Stack provides critical functionality for the AMPEL360 electrical power system.

## 2. System Architecture

### 2.1 Component Structure

This software component implements the following key functions:

- `gateway_initialize()`
- `arinc664_interface()`
- `can_interface()`
- `message_routing()`

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
