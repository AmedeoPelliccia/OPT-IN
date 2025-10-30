# DESC_27-03-01: Actuator Types and Fail-Safe Philosophy

**Document ID:** DESC_27-03-01_Actuator-Types-And-Fail-Safe-Philosophy_rev1.0.0_20251030  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30

## Purpose

Describes actuator types, architectures, redundancy schemes, and fail-safe design philosophy for AMPEL360 BWB flight control actuators.

## Actuator Types

### Electro-Hydraulic Actuators (EHA)

**Primary Application:** Ailerons, elevators, rudders

**Architecture:**
- Self-contained hydraulic power unit
- Electric motor driving hydraulic pump
- Integrated servo valve and position feedback
- No central hydraulic system required

**Advantages:**
- Eliminates hydraulic lines and central reservoir
- Reduced weight and maintenance
- Improved fault isolation

**Key Specifications:**
- Power: 270 VDC (from aircraft electrical system)
- Maximum pressure: 21 MPa (3000 psi)
- Maximum flow: 15 L/min
- Stall load: 3500 N·m (typ. for elevator)
- Step response: < 100 ms
- Position accuracy: ±0.5% full stroke

### Electro-Mechanical Actuators (EMA)

**Primary Application:** Spoilers, trim tabs

**Architecture:**
- Electric motor with gearbox or ballscrew
- Position feedback via RVDT or encoder
- Electronic control module integrated

**Advantages:**
- Simple, all-electric design
- High efficiency
- Predictable load limiting

**Key Specifications:**
- Power: 28 VDC or 115 VAC (depending on load)
- Maximum force: 8000 N (linear) or 500 N·m (rotary)
- Maximum rate: 10-20 deg/sec (depending on load)
- Backlash: < 0.1° (rotary) or < 0.5 mm (linear)
- Life: 100,000 cycles minimum

### Hydraulic Actuators (Legacy/Backup)

**Primary Application:** Stabilizer trim (high-load, slow-rate application)

**Architecture:**
- Conventional hydraulic cylinder with servo valve
- Powered by central hydraulic system (ATA-29)
- Dual hydraulic supply for redundancy

**Key Specifications:**
- Operating pressure: 21 MPa (3000 psi)
- Maximum force: 50,000 N
- Maximum rate: 0.5 deg/sec (stabilizer trim)

## Redundancy Architecture

### Primary Flight Controls (Ailerons, Elevators, Rudders)

**Redundancy Level:** Dual or triple redundant actuators per surface

**Configuration:**
- Each control surface has 2 or 3 independent actuators
- Actuators powered from separate electrical buses
- Independent FCCs command each actuator
- Force-summing or sequential engagement
- Voting logic detects and excludes failed actuators

**Failure Modes:**
- Single actuator failure: Remaining actuator(s) provide full authority
- Dual actuator failure (triple config): Single actuator provides reduced authority
- Complete failure: Transition to alternate or direct law

### Secondary Flight Controls (Spoilers, Trim)

**Redundancy Level:** Single actuator with monitoring

**Configuration:**
- Single actuator per surface
- Position monitoring with limit switches
- Overspeed and overload protection
- Graceful degradation to manual trim (if applicable)

## Fail-Safe Features

### Load Limiting

**Purpose:** Prevent structural overload from actuator jams or hardovers

**Mechanism:**
- Mechanical shear pins or hydraulic pressure relief
- Electronic current limiting (for EMA)
- Software-based torque monitoring

**Limits:**
- 150% of maximum aerodynamic load
- Trip time: < 50 ms

### Jam Detection

**Purpose:** Detect actuator mechanical jam and prevent control surface binding

**Mechanism:**
- Position feedback vs. command comparison
- Excessive force detection (load cells or current monitoring)
- Timeout detection (commanded motion not achieved within time limit)

**Response:**
- Disable jammed actuator
- Engage redundant actuator (if available)
- Annunciate fault to crew
- Downgrade to alternate control law

### Position Monitoring

**Purpose:** Verify control surface is at commanded position

**Mechanism:**
- Dual or triple redundant position sensors (LVDT or RVDT)
- Cross-channel comparison with voting
- Position rate limiting to detect runaways

**Tolerances:**
- Sensor mismatch threshold: 2° (annunciation)
- Sensor mismatch threshold: 5° (actuator shutdown)
- Rate limit: 50 deg/sec (typical)

### Force Fighting Protection

**Purpose:** Prevent two actuators on same surface from opposing each other

**Mechanism:**
- Force equalization control (for force-summing configuration)
- Sequential engagement (for sequential configuration)
- Load cell monitoring

### Thermal Protection

**Purpose:** Prevent actuator overheating from continuous high-load operation

**Mechanism:**
- Thermocouple or thermistor monitoring of motor/hydraulic fluid
- De-rate actuator authority at elevated temperatures
- Shutdown if temperature exceeds safe limits

**Limits:**
- Operating temperature: -55°C to +85°C
- De-rating begins: 70°C
- Shutdown temperature: 95°C

## Maintenance Philosophy

**Condition-Based Maintenance:**
- Monitor actuator health parameters (position accuracy, response time, load, temperature)
- Trend analysis to predict failures before occurrence
- Replace on condition rather than fixed intervals where possible

**Qualification Life:**
- Minimum qualification life: 100,000 cycles
- Design life goal: 200,000 cycles
- Inspection intervals: 12,000 FH or 24 months

**Built-In Test (BIT):**
- Power-up self-test
- Continuous monitoring during operation
- Fault code storage for maintenance diagnostics

---

**Document Owner:** Flight Controls Engineering  
**Next Review:** 2026-10-30
