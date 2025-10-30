# 02-ARCHITECTURE_AND_SERVICES

← [ATA_42 Core OS](../README.md) | [🏠 Repository Root](../../../../../README.md) | [📋 Navigation](../NAVIGATION.md)

---

## Table of Contents
- [Overview](#overview)
- [Purpose](#purpose)
- [Architecture Principles](#architecture-principles)
- [Key Components](#key-components)
- [Subsections](#subsections)
- [Key Documents](#key-documents)
- [Navigation](#navigation)

---

## Overview

Core OS architecture, partition management, scheduling design, ARINC 653 API compliance, resource management, and health monitoring subsystems.

## Purpose

Defines and documents the Core OS architecture implementing:
- **ARINC 653 Partitioning**: Spatial and temporal isolation for safety-critical applications
- **Deterministic Scheduling**: Time-partitioned scheduling with WCET analysis
- **Inter-Partition Communication**: Sampling and queuing ports per ARINC 653
- **Resource Management**: Memory, CPU, and I/O allocation and protection
- **Health Monitoring**: Built-in fault detection and health management

## Architecture Principles

### Separation & Isolation
- **Spatial Isolation**: Memory protection units (MPU) enforce partition boundaries
- **Temporal Isolation**: Time-partitioned scheduling prevents timing interference
- **Fault Containment**: Faults contained within partition boundaries

### Determinism
- **Predictable Timing**: Fixed scheduling cycles (major frames)
- **Bounded Execution**: WCET analysis for all partition tasks
- **No Dynamic Allocation**: Static memory allocation at configuration time

### Safety & Security
- **DAL A Certification**: Full DO-178C objectives for safety-critical functions
- **Defense-in-Depth**: Multiple security layers (secure boot, signed updates, access control)
- **Fail-Safe Design**: Safe degradation on fault detection

## Key Components

### 1. Kernel Services (02-10)
- Scheduler implementation (time-partitioned, priority-based)
- Memory manager (static allocation, protection)
- Interrupt handling and exception management
- Low-level hardware abstraction

### 2. Partition Services (02-20)
- Partition lifecycle management (create, start, stop, idle)
- Context switching between partitions
- Partition configuration and initialization
- Isolation enforcement mechanisms

### 3. Time Services (02-30)
- System time management (UTC synchronized)
- Partition-local time services
- Periodic and aperiodic process timing
- Time synchronization protocols

### 4. Communication Services (02-40)
- **Sampling Ports**: Last-value semantics for periodic data
- **Queuing Ports**: FIFO message queuing for aperiodic data
- **Buffers**: Shared memory with controlled access
- **Blackboards**: Publish-subscribe data distribution

### 5. Health Monitoring Services (02-50)
- Partition health monitoring (deadline violations, resource usage)
- System health metrics (CPU, memory, temperature)
- Fault detection and reporting
- Health management actions (idle, restart, reset)

## Subsections

### OVERVIEW
- [DESC_Architecture-Philosophy.md](./OVERVIEW/DESC_Architecture-Philosophy.md)
- [DESC_Technology-Stack.md](./OVERVIEW/DESC_Technology-Stack.md)
- High-level system context diagrams

### SAFETY
- [DESC_Safety-Architecture-Principles.md](./SAFETY/DESC_Safety-Architecture-Principles.md)
- [DATA_Hazard-Analysis-Core-OS.csv](./SAFETY/DATA_Hazard-Analysis-Core-OS.csv)
- [DESC_Fault-Containment-Strategy.md](./SAFETY/DESC_Fault-Containment-Strategy.md)

### REQUIREMENTS
- [DATA_ALR-Core-OS-Requirements.csv](./REQUIREMENTS/DATA_ALR-Core-OS-Requirements.csv) - Airworthiness Limitation Requirements
- [DATA_SR-System-Requirements.csv](./REQUIREMENTS/DATA_SR-System-Requirements.csv) - System-level requirements
- [DATA_SSR-Software-Requirements.csv](./REQUIREMENTS/DATA_SSR-Software-Requirements.csv) - Software requirements
- [DATA_RTM-Requirements-Trace-Matrix.csv](./REQUIREMENTS/DATA_RTM-Requirements-Trace-Matrix.csv) - Traceability matrix

### DESIGN
- [DESC_42-02-01: Core OS Architecture](./DESIGN/DESC_42-02-01_Core-OS-Architecture.md)
- [DESC_IPC-Mechanisms.md](./DESIGN/DESC_IPC-Mechanisms.md)
- [DESC_Resource-Management-Design.md](./DESIGN/DESC_Resource-Management-Design.md)
- Architecture diagrams (partition memory layout, scheduling state machine)

### INTERFACES
- [DESC_ARINC-653-API-Compliance.md](./INTERFACES/DESC_ARINC-653-API-Compliance.md)
- [DATA_API-Function-List.csv](./INTERFACES/DATA_API-Function-List.csv)
- [DESC_Hardware-Abstraction-Layer.md](./INTERFACES/DESC_Hardware-Abstraction-Layer.md)
- [DESC_Inter-Partition-Communication.md](./INTERFACES/DESC_Inter-Partition-Communication.md)

### ENGINEERING
- **[PROC_42-02-02: Partition Management and Scheduling](./ENGINEERING/PROC_42-02-02_Partition-Management-And-Scheduling.md)** ⭐
- **[DATA_42-02-03: RTI and Resource Limits](./ENGINEERING/DATA_42-02-03_RTI_And_Resource-Limits.csv)** ⭐ - Example partition configurations
- [DESC_Worst-Case-Execution-Time-Analysis.md](./ENGINEERING/DESC_Worst-Case-Execution-Time-Analysis.md)
- Scheduling and memory budget analysis worksheets

## Key Documents

| Document | Description | Type |
|----------|-------------|------|
| PROC_42-02-02 | Partition Management and Scheduling | Procedure |
| DATA_42-02-03 | RTI and Resource Limits (6 example partitions) | Configuration Data |
| DESC_42-02-01 | Core OS Architecture | Design |
| DATA_RTM | Requirements Traceability Matrix | Traceability |

## Partition Model

### Example Partition Configuration
From [DATA_42-02-03](./ENGINEERING/DATA_42-02-03_RTI_And_Resource-Limits.csv):

```csv
Partition_ID,Partition_Name,DAL_Level,Period_ms,Duration_ms,WCET_ms,Utilization_%
0,SYSTEM_PARTITION,DAL_A,100,10,8.5,85.0
1,FLIGHT_CONTROL,DAL_A,10,5,4.2,84.0
2,NAVIGATION,DAL_A,50,8,6.8,85.0
```

### Scheduling Model
- **Major Frame**: 100 ms (configurable)
- **Time Windows**: Fixed partition execution windows
- **Scheduling Policy**: Time-partitioned with priority within partitions
- **Context Switch**: < 50 μs overhead

## Owner & Status

- **Owner**: IMA Core OS Engineering
- **Status**: Released
- **DAL Level**: DAL A
- **Last Updated**: 2025-10-30

---

## Navigation

- **Previous**: [← 01-GENERAL](../01-GENERAL/README.md)
- **Next**: [03-VERIFICATION_AND_SOFTWARE_ASSURANCE →](../03-VERIFICATION_AND_SOFTWARE_ASSURANCE/README.md)
- **Parent**: [← ATA_42 Core OS](../README.md)
- [🔝 Back to Top](#02-architecture-and-services)

---

*Last Updated: 2025-10-30*  
*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
