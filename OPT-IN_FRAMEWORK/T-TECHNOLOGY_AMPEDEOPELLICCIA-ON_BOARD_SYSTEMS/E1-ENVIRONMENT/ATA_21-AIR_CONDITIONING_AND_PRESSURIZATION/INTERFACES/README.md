# ATA 21 - INTERFACES

## Purpose

This directory defines all external and internal interfaces for the Air Conditioning and Pressurization system, including mechanical, electrical, data, and software interfaces.

## Contents

### Mechanical Interfaces
- Mounting interfaces and structural attachments
- Duct connections and fittings
- Structural loads and vibration requirements
- Load calculators and analysis tools

### Electrical Interfaces
- Power requirements (115V AC, 28V DC)
- Wiring harness specifications
- Connector schedules and pinouts
- Power budget calculations

### Data Interfaces
- ARINC 429 message definitions
- CAN bus protocols (if applicable)
- Data dictionary
- Protocol parsers and validators

### Software Interfaces
- API specifications
- Control logic interfaces
- Software ICD
- SDK and test harnesses

## Interface Management

### Interface Control Documents (ICDs)
Each interface is formally defined in an ICD that specifies:
- Interface description
- Physical characteristics
- Electrical characteristics
- Data/protocol specifications
- Performance requirements
- Test requirements

### Interface Review Process
1. Interface requirements identified
2. ICD drafted and reviewed
3. Peer review with interfacing systems
4. Formal approval
5. Configuration control

## Key Interfaces

### ATA-24 (Electrical Power)
- 115V AC 400Hz power supply
- 28V DC backup power
- Power quality requirements
- Circuit breaker coordination

### ATA-27 (Flight Controls)
- Flight envelope data
- Altitude and airspeed information
- System status to flight displays

### ATA-30 (Ice and Rain Protection)
- Bleed air coordination
- Anti-ice system priority
- Temperature monitoring

### ATA-36 (Pneumatic)
- Engine bleed air supply
- Pressure and temperature regulation
- Flow control

### ATA-49 (APU)
- APU bleed air supply
- Ground conditioning
- In-flight backup

## Tools and Utilities

### Interface Validation
- Protocol validators
- Data format checkers
- Electrical compatibility verification

### Simulation
- Hardware-in-the-loop (HIL) testing
- Interface simulation tools
- Test harnesses

## Navigation

- [↑ Parent: ATA-21 Root](../README.md)
- [→ Mechanical](MECHANICAL/)
- [→ Electrical](ELECTRICAL/)
- [→ Data](DATA/)
- [→ Software](SOFTWARE/)

---

*Part of the AMPEL360 OPT-IN Framework - ATA Chapter 21*
