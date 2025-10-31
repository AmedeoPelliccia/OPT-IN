# ATA-74 IGNITION System Overview

## System Description

The ATA-74 IGNITION system provides reliable, redundant ignition capability for turbine engine starting and in-flight relight operations. The system is designed to meet the most stringent safety and reliability requirements for commercial aviation.

## System Architecture

### High-Level Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                  IGNITION CONTROL UNIT (ICU)                │
│                    (Dual-Channel, DAL-A)                    │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  Channel A           │          Channel B            │  │
│  │  - Processor         │          - Processor          │  │
│  │  - Memory            │          - Memory             │  │
│  │  - I/O               │          - I/O                │  │
│  │  - Voting Logic      │          - Voting Logic       │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
                    │                    │
                    │                    │
        ┌───────────┴────────┐  ┌────────┴───────────┐
        ▼                    ▼  ▼                    ▼
┌──────────────┐      ┌──────────────┐      ┌──────────────┐
│  Exciter A   │      │  Exciter B   │      │  Power       │
│  (Primary)   │      │  (Backup)    │      │  Supplies    │
│              │      │              │      │  (Redundant) │
│  HV Output   │      │  HV Output   │      │              │
└──────┬───────┘      └──────┬───────┘      └──────────────┘
       │                     │
       │  HV Distribution    │
       └──────────┬──────────┘
                  │
         ┌────────┴────────┐
         ▼                 ▼
    ┌─────────┐      ┌─────────┐
    │ Igniter │      │ Igniter │
    │    A    │      │    B    │
    │ (Spark  │      │ (Spark  │
    │  Plug)  │      │  Plug)  │
    └─────────┘      └─────────┘
         │                 │
         └────────┬────────┘
                  ▼
          Combustion Chamber
```

### Major Subsystems

1. **Ignition Control Unit (ICU) - ATA 74-40**
   - Dual-channel redundant architecture
   - DO-178C Level A certified software
   - Voting and fault detection logic
   - Interfaces with FADEC and engine sensors

2. **Exciters (Power Units) - ATA 74-20**
   - Convert low voltage (28VDC) to high voltage (>10kV)
   - Dual redundant units (A and B)
   - Capacitive energy storage
   - Controlled discharge timing

3. **Igniters (Spark Plugs) - ATA 74-10**
   - Surface discharge or air-gap design
   - Multi-joule energy capability
   - High-temperature operation (>800°C)
   - Dual igniters per combustion chamber

4. **Power Supplies - ATA 74-30**
   - Redundant 28VDC power feeds
   - Battery backup capability
   - Filtering and regulation
   - Fault isolation

5. **Timing & Synchronization - ATA 74-50**
   - Engine speed and position sensing
   - Precise spark timing control
   - Multi-cylinder synchronization
   - Adaptive timing maps

6. **Monitoring & Indication - ATA 74-60**
   - Current and voltage sensing
   - Temperature monitoring
   - Cockpit indication
   - Fault annunciation

7. **Safety & Protection - ATA 74-80**
   - Overvoltage protection
   - Arc suppression
   - Insulation monitoring
   - Emergency shutdown

## Key Features

### Redundancy
- Dual-channel ICU with cross-monitoring
- Redundant exciters and power supplies
- Dual igniters per engine
- Independent power sources

### Safety
- DAL Level A software certification (DO-178C)
- Fail-operational architecture
- Comprehensive built-in test (BIT)
- Fault detection and isolation

### Performance
- High-energy spark (typically 2-5 joules)
- Rapid discharge (<1 microsecond rise time)
- High repetition rate capability (4-8 Hz continuous)
- Wide operating temperature range (-55°C to +85°C electronics)

### Environmental
- DO-160 Category A (flight deck equipment)
- Lightning protection (Level 3)
- EMI/EMC compliance
- High vibration tolerance

## Operating Modes

### Ground Start
- External power connection available
- Full diagnostic capability
- Test mode operation
- Maintenance interface active

### Normal Flight Operation
- Continuous relight capability
- Automatic timing adjustment
- Health monitoring active
- Crew annunciation enabled

### In-Flight Relight
- Rapid ignition sequence
- Altitude compensation
- Windmill start support
- Priority power allocation

### Emergency
- Backup power activation
- Simplified control logic
- Essential functions only
- Maximum reliability mode

## Interfaces

### Engine Interfaces
- FADEC data bus (ARINC 429 or ARINC 825)
- Engine speed sensors (magnetic pickup)
- Position sensors (TDC, phase)
- Temperature sensors (thermocouples)

### Aircraft Interfaces
- Electrical power (ATA-24): 28VDC dual-channel
- Avionics bus (ATA-42): Health and status data
- Cockpit displays (ATA-31): Ignition status
- Maintenance system (ATA-45): Diagnostics and logs

### External Interfaces
- Ground power connector
- Test equipment interface
- Maintenance diagnostic port
- Software update port

## Performance Specifications

| Parameter | Specification |
|-----------|---------------|
| Spark Energy | 2-5 Joules (adjustable) |
| Discharge Duration | <500 microseconds |
| Repetition Rate | 4-8 Hz continuous, 20 Hz peak |
| Timing Accuracy | ±0.5° crankshaft |
| Response Time | <100 ms from command |
| MTBF (System) | >50,000 flight hours |
| Power Consumption | <200W continuous, <800W peak |

## Certification Basis

- **FAR 33.37**: Ignition System (engine certification)
- **CS-E 40**: Ignition System (EASA engine)
- **FAR 25.1165**: Engine Ignition Systems (aircraft installation)
- **DO-178C Level A**: Software (ICU, critical functions)
- **DO-254**: Hardware Design Assurance
- **DO-160G**: Environmental Conditions
- **SAE AS8775**: Engine Electrical Ignition System

## Maintenance Philosophy

- **Condition-Based Maintenance**: Health monitoring and trend analysis
- **Scheduled Inspections**: Per AMM intervals
- **On-Condition Replacement**: Based on BIT results
- **Predictive Maintenance**: Wear prediction algorithms
- **Spare Parts Strategy**: Rotable pool management

## Revision History

| Version | Date | Description |
|---------|------|-------------|
| 1.0.0 | 2025-10-31 | Initial release |

---

*Part of AMPEL360 ATA-74 IGNITION System Documentation*
