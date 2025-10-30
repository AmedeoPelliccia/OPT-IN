# DESC_27-01-02: Terms and Taxonomy

**Document ID:** DESC_27-01-02_Terms-And-Taxonomy_rev1.0.0_20251030  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30

## Purpose

This document provides standardized terminology, definitions, acronyms, and taxonomy for ATA 27 — Flight Controls System for Aerodynamic Manipulation to ensure consistent communication across engineering, maintenance, and certification activities.

## Terms and Definitions

### Control System Architecture

**Fly-By-Wire (FBW):** A flight control system where pilot inputs are transmitted electronically to control surfaces via digital computers, with no direct mechanical linkage between cockpit controls and control surfaces (except emergency backup where applicable).

**Flight Control Computer (FCC):** The primary digital computer that processes pilot inputs, sensor data, and control law algorithms to command control surface positions.

**Control Law:** The mathematical algorithm implemented in software that determines control surface commands based on pilot inputs and aircraft state (airspeed, altitude, attitude, rates, accelerations).

**Normal Law:** The primary control mode providing full flight envelope protection, load factor limiting, and optimal handling qualities.

**Alternate Law:** A degraded control mode with reduced envelope protection, activated upon certain failures or sensor degradation.

**Direct Law:** A minimally augmented control mode where pilot inputs are directly proportional to control surface deflections, with minimal or no envelope protection.

**Graceful Degradation:** The ability of the flight control system to maintain safe flight with reduced functionality following failures, transitioning through alternate and direct laws as necessary.

### Actuators

**Electro-Hydraulic Actuator (EHA):** A self-contained actuator combining an electric motor, hydraulic pump, and actuator in one unit, eliminating centralized hydraulic systems.

**Electro-Mechanical Actuator (EMA):** An actuator using electric motors and mechanical drives (ballscrews, gearmotors) to directly position control surfaces without hydraulic fluid.

**Hydraulic Actuator:** A conventional actuator powered by a centralized hydraulic system with servo valves controlling flow and pressure.

**Fail-Safe:** A design feature ensuring that upon failure, the actuator defaults to a safe state (e.g., neutral position, load limiting, jam detection).

**Stall Load:** The maximum load an actuator can produce when commanded to move but mechanically restrained.

**Backlash:** The amount of free play or lost motion in an actuator's mechanical linkage or gearbox.

**Hysteresis:** The difference in actuator position when approaching a target from opposite directions, indicating internal friction or deadband.

### Control Surfaces

**Aileron:** A hinged control surface on the trailing edge of the wing, used for roll control.

**Elevator:** A hinged control surface on the horizontal stabilizer, used for pitch control.

**Rudder:** A hinged control surface on the vertical stabilizer, used for yaw control.

**Elevon:** A combined elevator-aileron surface used on delta-wing or flying-wing aircraft.

**Spoiler:** A surface that disrupts airflow over the wing to reduce lift and increase drag, used for roll augmentation and speedbrake function.

**Trim Tab:** A small auxiliary control surface on the trailing edge of a primary control surface, used to relieve control forces or adjust trim.

**Freeplay:** The angular movement of a control surface without corresponding actuator input, typically measured at the hinge centerline.

**Mass Balance:** Weights added to a control surface forward of the hinge line to prevent flutter by moving the center of gravity forward.

**Hinge Moment:** The aerodynamic torque about the control surface hinge line that the actuator must overcome.

### Sensors and Transducers

**Angle of Attack (AoA) Sensor:** A sensor measuring the angle between the airflow and the aircraft's reference axis, critical for stall protection and control law scheduling.

**Linear Variable Differential Transformer (LVDT):** A position sensor using electromagnetic induction to measure linear displacement with high accuracy.

**Rotary Variable Differential Transformer (RVDT):** A position sensor using electromagnetic induction to measure angular displacement.

**Rate Gyro:** An inertial sensor measuring angular velocity (pitch rate, roll rate, yaw rate).

**Accelerometer:** An inertial sensor measuring linear acceleration along body axes.

**Air Data Computer (ADC):** A system processing pitot-static and temperature data to provide airspeed, altitude, and Mach number.

### Software and Qualification

**Design Assurance Level (DAL):** A classification from DO-178C indicating the rigor of software development and verification based on failure effect (A = most critical, D = least critical).

**Software Accomplishment Summary (SAS):** A document summarizing compliance with DO-178C objectives for a software project.

**Hardware Accomplishment Summary (HAS):** A document summarizing compliance with DO-254 objectives for a hardware project.

**Software-in-the-Loop (SIL):** A test method where control law software is tested in a simulation environment without real hardware.

**Hardware-in-the-Loop (HIL):** A test method where real hardware (e.g., FCC) is tested with simulated aircraft dynamics and sensors.

**Structural Coverage:** A code coverage metric measuring which statements, branches, and paths have been executed during testing.

**Requirements Traceability:** The process of linking each software requirement to design elements, code, and verification tests.

### Failure Modes and Redundancy

**Single Point of Failure (SPOF):** A component whose failure would result in loss of a critical function with no backup.

**Fail-Operational:** A system capable of continued safe operation after a single failure.

**Fail-Safe:** A system that transitions to a safe state after a failure, but may require reduced operational capability.

**Dissimilar Redundancy:** Using different hardware or software implementations to perform the same function, reducing common-mode failure risk.

**Voting Logic:** A method of comparing outputs from redundant sensors or computers to detect and exclude faulty channels.

**Fault Detection and Isolation (FDI):** The process of identifying and isolating failed components to prevent propagation of erroneous data.

### Structural and Mechanical

**Load Path:** The path through which aerodynamic and inertial loads are transferred from control surfaces through hinges, actuators, and attachment fittings to the primary structure.

**Attachment Fitting:** A structural component connecting the actuator or control surface to the primary airframe structure.

**Rod End:** A mechanical joint with a ball or spherical bearing allowing angular motion, commonly used in control linkages.

**Turnbuckle:** An adjustable coupling in a control cable used for tensioning and rigging.

**Pulley:** A grooved wheel guiding control cables through bends and redirections.

## Acronyms and Abbreviations

| Acronym | Definition |
|---------|-----------|
| AoA | Angle of Attack |
| DAL | Design Assurance Level |
| EHA | Electro-Hydraulic Actuator |
| EMA | Electro-Mechanical Actuator |
| FBW | Fly-By-Wire |
| FCC | Flight Control Computer |
| FDI | Fault Detection and Isolation |
| FMEA | Failure Modes and Effects Analysis |
| HAS | Hardware Accomplishment Summary |
| HIL | Hardware-in-the-Loop |
| LVDT | Linear Variable Differential Transformer |
| RVDT | Rotary Variable Differential Transformer |
| SAS | Software Accomplishment Summary |
| SIL | Software-in-the-Loop |
| SPOF | Single Point of Failure |

## Taxonomy Hierarchy

```
ATA 27: Flight Controls System
├── 01: General (scope, governance, definitions)
├── 02: Control Surfaces (ailerons, elevators, rudders, spoilers)
├── 03: Actuators and Servo Systems (EHA, EMA, hydraulic)
├── 04: Cables, Links, and Mechanical Interfaces
├── 05: Electrical Controls and FCC
├── 06: Flight Control Laws and Autopilot
├── 07: Sensors and Transducers
├── 08: Flight Safety and Failure Modes
├── 09: NDT and Inspection
├── 10: Qualification and Test Plans
├── 11: Lightning Strike Protection and Bonding
├── 12: Materials, M&P, Traceability
├── 13: Nonconformance and Deviation
├── 14: Diagrams and Reference Data
├── 15: Sidecar Metadata Templates
└── 16: Examples and Records
```

## Document Naming Convention

All ATA 27 documents follow the pattern:

```
[TYPE]_27-[SECTION]-[ITEM]_[TITLE]_rev[VERSION]_[DATE].md
```

**Types:**
- **DESC:** Descriptive document
- **PROC:** Procedure
- **DATA:** Data table or specification
- **TESTPLAN:** Test plan or qualification plan
- **DIAG:** Diagram or drawing
- **EXAMPLE:** Example or sample record

---

**Document Owner:** Flight Controls Engineering  
**Next Review:** 2026-10-30
