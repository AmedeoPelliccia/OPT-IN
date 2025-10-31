# ATA 24-34-00-002 REGENERATIVE ARCHITECTURE

**Document Type**: System Architecture  
**System**: ATA 24-34-00 Endocircular Recharge Loops  
**Status**: Active Development

---

## Architecture Overview

The Regenerative Architecture establishes the structural framework for bidirectional energy flow, enabling efficient energy capture, storage, and reuse throughout the aircraft's operational envelope.

---

## System-Level Architecture

### Hierarchical Structure

```
┌─────────────────────────────────────────────────────────────┐
│              AIRCRAFT ELECTRICAL ARCHITECTURE                │
├─────────────────────────────────────────────────────────────┤
│                                                               │
│  Level 1: GENERATION                                         │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │ Generator 1  │  │ Generator 2  │  │     APU      │      │
│  │   28V/400A   │  │   28V/400A   │  │   28V/200A   │      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘      │
│         │                  │                  │               │
│  Level 2: DISTRIBUTION                                       │
│         └──────────────────┴──────────────────┘              │
│                            │                                  │
│                   ┌────────▼────────┐                        │
│                   │   Main Bus Bar  │                        │
│                   │      28 VDC     │                        │
│                   └────────┬────────┘                        │
│                            │                                  │
│  Level 3: ENDOCIRCULAR RECHARGE LOOPS (ATA 24-34-00)       │
│                   ┌────────▼────────┐                        │
│                   │  ERL SYSTEM     │                        │
│                   │  • Conversion   │                        │
│                   │  • Control      │                        │
│                   │  • Protection   │                        │
│                   └────────┬────────┘                        │
│                            │                                  │
│  Level 4: ENERGY STORAGE                                    │
│                   ┌────────▼────────┐                        │
│                   │ Battery System  │                        │
│                   │  Solid-CO2 Tech │                        │
│                   │    280V/200Ah   │                        │
│                   └─────────────────┘                        │
└─────────────────────────────────────────────────────────────┘
```

---

## Subsystem Architecture

### 1. Power Conversion Subsystem

**[Bidirectional Converters (24-34-10)](../SUBSYSTEMS_AND_COMPONENTS/24-34-10_BIDIRECTIONAL_CONVERTERS/README.md)**

Architecture features:
- Dual Active Bridge (DAB) topology
- Isolated DC-DC conversion
- SiC MOSFET switches for high efficiency
- Medium-frequency transformer (20-50 kHz)

Power stages:
```
Stage 1: Input filtering and protection
Stage 2: Primary-side switching bridge
Stage 3: Isolation transformer
Stage 4: Secondary-side switching bridge
Stage 5: Output filtering and regulation
```

### 2. Filtering Subsystem

**[Power Filters (24-34-20)](../SUBSYSTEMS_AND_COMPONENTS/24-34-20_POWER_FILTERS/README.md)**

Filter cascade:
- Input EMI filter: Attenuation > 60 dB @ 150 kHz
- DC-link capacitor bank: Ripple reduction < 2%
- Output LC filter: THD < 3%
- Common-mode choke: CM noise suppression

### 3. Control Subsystem

**[Control Unit (24-34-30)](../SUBSYSTEMS_AND_COMPONENTS/24-34-30_CONTROL_UNIT/README.md)**

Control hierarchy:
```
┌──────────────────────────────────────────┐
│   Level 3: Energy Management (EMS)      │
│   • Flight phase optimization            │
│   • Long-term energy planning            │
│   • System health management             │
└─────────────────┬────────────────────────┘
                  │
┌─────────────────▼────────────────────────┐
│   Level 2: Power Management (PMS)       │
│   • Mode selection and transitions       │
│   • Power flow control                   │
│   • Protection coordination              │
└─────────────────┬────────────────────────┘
                  │
┌─────────────────▼────────────────────────┐
│   Level 1: Local Control (LCS)          │
│   • Switch timing and PWM                │
│   • Current/voltage regulation           │
│   • Fast protection response             │
└──────────────────────────────────────────┘
```

---

## Interface Architecture

### Data Communication

**Communication protocols**:
- **CAN-FD**: Real-time control data (1 Mbps)
- **Ethernet (ARINC 664)**: System monitoring and configuration
- **Discrete I/O**: Emergency signals and status

**[Data Bus Interfaces](../INTERFACES/ATA-24-34-00-052_DATA_BUS_INTERFACES.md)**

### Power Interfaces

**Power connection points**:
1. **Main bus interface**: 28V DC nominal
2. **Battery interface**: 280V DC nominal
3. **Auxiliary power**: 28V/5A for control electronics

**[Electrical Interfaces](../INTERFACES/ATA-24-34-00-050_ELECTRICAL_INTERFACES.md)**

---

## Redundancy Architecture

### Fault-Tolerant Design

**Redundancy levels**:

1. **Channel redundancy**: Dual independent control channels
2. **Component redundancy**: Critical sensors duplicated
3. **Functional redundancy**: Multiple protection layers
4. **Information redundancy**: CRC and parity checking

**Failure modes**:
- Single point failure: Safe mode transition
- Dual failure: Graceful degradation
- Common cause: Independent diverse backup

**[Redundancy Architecture Details](../DESIGN/ATA-24-34-00-040_REDUNDANCY_ARCHITECTURE.md)**

---

## Thermal Architecture

### Heat Management Strategy

**Cooling approach**:
- **Primary**: Liquid cooling loop (50% glycol/water)
- **Secondary**: Forced air convection
- **Tertiary**: Heat sinks and spreaders

**Thermal zones**:
1. High-power zone: Converters, < 85°C junction temp
2. Medium-power zone: Control electronics, < 70°C
3. Low-power zone: Sensors and communication, < 60°C

**[Thermal Management](../SUBSYSTEMS_AND_COMPONENTS/24-34-60_THERMAL_MANAGEMENT/README.md)**

---

## Safety Architecture

### Defense-in-Depth Strategy

**Protection layers**:

```
Layer 1: Prevention
├─ Design margins (20% power derating)
├─ Component selection (automotive/aerospace grade)
└─ Robust construction

Layer 2: Detection
├─ Continuous monitoring (voltage, current, temp)
├─ Self-diagnostics (BIT - Built-In Test)
└─ Health management algorithms

Layer 3: Mitigation
├─ Current limiting (hardware + software)
├─ Voltage clamping (TVS devices)
└─ Thermal shutdown (< 125°C)

Layer 4: Isolation
├─ Circuit breakers (solid-state + mechanical)
├─ Fuses (fast-acting, rated for DC)
└─ Contactors (main power disconnect)

Layer 5: Recovery
├─ Fault logging and recording
├─ Automatic restart (if safe)
└─ Operator notification and guidance
```

**[Safety Analysis](../SAFETY/ATA-24-34-00-FHA_ENDOCIRCULAR_SYSTEM.md)**

---

## Physical Architecture

### Packaging Configuration

**Module arrangement**:
- **Main power module**: 450 x 350 x 150 mm, 35 kg
- **Control module**: 200 x 150 x 80 mm, 3 kg
- **Interface module**: 150 x 100 x 60 mm, 1.5 kg
- **Total system**: < 100 kg installed weight

**Installation location**: Electrical equipment bay (forward cargo compartment)

**[Packaging Design](../DESIGN/ATA-24-34-00-042_PACKAGING_DESIGN.md)**

---

## Software Architecture

### Software components:

1. **Application layer**: Energy management, mode control
2. **Middleware layer**: Communication protocols, diagnostics
3. **Driver layer**: Hardware abstraction, device drivers
4. **RTOS layer**: FreeRTOS with safety extensions

**Development standards**: DO-178C Level B

**[Software Architecture](../SUBSYSTEMS_AND_COMPONENTS/24-34-30_CONTROL_UNIT/DESIGN/ATA-24-34-30-031_SOFTWARE_ARCHITECTURE.md)**

---

## Related Documents

- **[Subsystem Summary](./ATA-24-34-00-000_SUBSYSTEM_SUMMARY.md)**
- **[Endocircular Principle](./ATA-24-34-00-001_ENDOCIRCULAR_PRINCIPLE.md)**
- **[System Architecture (Detailed)](../DESIGN/ATA-24-34-00-ARCH_ARCHITECTURE.md)**
- **[Integration Strategy](./ATA-24-34-00-005_INTEGRATION_STRATEGY.md)**

---

*This document is part of the ATA 24-34-00 Endocircular Recharge Loops system.*

**Navigation**: [← Back to INDEX](../INDEX.md) | [Main README](../README.md)

---

**Revision**: 1.0.0 | **Last Updated**: 2025-10-31
