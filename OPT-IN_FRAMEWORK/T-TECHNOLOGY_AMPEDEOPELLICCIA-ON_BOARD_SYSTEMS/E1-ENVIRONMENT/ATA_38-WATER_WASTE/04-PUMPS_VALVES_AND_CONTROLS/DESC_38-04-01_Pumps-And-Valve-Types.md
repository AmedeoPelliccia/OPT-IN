# DESC_38-04-01 — Pumps and Valve Types

**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Owner:** Environmental Systems Engineering  
**Classification:** Technical Description

---

## Table of Contents
1. [Overview](#overview)
2. [Pump Systems](#pump-systems)
3. [Valve Systems](#valve-systems)
4. [Materials and Certification](#materials-and-certification)
5. [Performance Specifications](#performance-specifications)
6. [Installation Requirements](#installation-requirements)
7. [Inspection and Testing](#inspection-and-testing)
8. [References](#references)

---

## Overview

This document describes the pumps and valves used in AMPEL360 potable water and waste management systems. All components comply with applicable aviation and health safety standards including:

- [FAA 14 CFR Part 25](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25) - Airworthiness Standards
- [NSF/ANSI 61](https://www.nsf.org/knowledge-library/nsf-ansi-standard-61) - Drinking Water System Components (potable water)
- [NSF/ANSI 51](https://www.nsf.org/) - Food Equipment Materials
- [DO-160G](https://www.rtca.org/) - Environmental Conditions and Test Procedures for Airborne Equipment

All wetted components in contact with potable water must be NSF 61 certified. Waste system components must be compatible with waste chemistry and cleaning agents.

---

## Pump Systems

### Potable Water Pumps

#### Primary Water Pump

**Type:** Centrifugal pump with brushless DC motor

**Specifications:**
- **Flow Rate:** 15-25 L/min (4-6.6 GPM) at rated pressure
- **Discharge Pressure:** 45-55 psi (3.1-3.8 bar)
- **Power:** 28 VDC, 15A maximum draw
- **Duty Cycle:** Continuous operation capable
- **Noise Level:** <60 dBA at 1 meter
- **Weight:** Approximately 3.5 kg (7.7 lbs)
- **MTBF:** >10,000 operating hours

**Features:**
- Automatic pressure switch control (cuts on at 25 psi, cuts off at 45 psi)
- Integrated pressure relief valve (opens at 80 psi)
- Dry-run protection (thermal cutoff)
- Vibration isolated mounting
- Food-grade internal components (NSF 61 certified)
- Stainless steel impeller and housing

**Applications:**
- Primary potable water distribution
- Galley and lavatory supply
- Hot water system feed

**Part Numbers:**
- Standard capacity: WP-001-STD
- High flow option: WP-001-HF

**Manufacturers:**
- Approved: Shurflo, Flojet, SHURflo Industrial
- See [DATA_38-06-01](../06-MATERIALS_M_AND_P/DATA_38-06-01_Approved-Seals-And-Lubricants.csv) for current approved list

#### Backup/Redundant Water Pump

**Type:** Positive displacement diaphragm pump

**Specifications:**
- **Flow Rate:** 10-15 L/min backup mode
- **Discharge Pressure:** 40-50 psi
- **Power:** 28 VDC, 10A maximum
- **Activation:** Automatic upon primary pump failure
- **Self-priming:** Yes, up to 3 meters vertical lift

**Features:**
- Independent power supply (essential bus)
- Cockpit failure indication
- Manual override capability
- Chemical resistant diaphragm
- Serviceable in-place

#### Hot Water Recirculation Pump (Optional)

**Type:** Low-flow centrifugal pump

**Specifications:**
- **Flow Rate:** 5-8 L/min
- **Pressure:** Matches system pressure
- **Power:** 28 VDC, 5A
- **Duty Cycle:** Intermittent (20 min on, 10 min off typical)

**Purpose:**
- Maintains hot water temperature in distribution lines
- Reduces wait time at faucets
- Energy efficient with temperature sensor control

### Waste System Pumps

#### Gray Water Transfer Pump

**Type:** Positive displacement vane pump

**Specifications:**
- **Flow Rate:** 20-30 L/min
- **Suction Lift:** Up to 2 meters
- **Discharge Pressure:** 15-25 psi
- **Power:** 28 VDC, 20A peak
- **Duty Cycle:** Intermittent (used during waste tank servicing)

**Features:**
- Chemical resistant construction (polypropylene, PTFE seals)
- Handles particulates up to 5mm
- External mounting for serviceability
- Ground operation only (not flight-critical)

#### Vacuum Generator (Waste Flush System)

**Type:** Venturi-driven vacuum system or electric vacuum pump

**Specifications:**
- **Vacuum Level:** 0.3-0.5 bar below ambient
- **Air Flow:** 15-20 CFM
- **Power:** 115 VAC 400Hz or 28 VDC depending on configuration
- **Noise:** <65 dBA at source

**Applications:**
- Toilet flush system
- Waste transfer to holding tanks

#### Waste Tank Drain Pump (Ground Service)

**Type:** Centrifugal pump (on service cart, not aircraft-mounted)

**Specifications:**
- **Flow Rate:** 40-60 L/min for rapid servicing
- **Discharge Height:** Up to 3 meters
- **Power:** External 115VAC or pneumatic

---

## Valve Systems

### Potable Water System Valves

#### Solenoid Valves

**Type:** 2-way or 3-way normally closed solenoid valves

**Specifications:**
- **Orifice Size:** 1/4" to 1/2" NPT
- **Pressure Rating:** 0-150 psi
- **Power:** 28 VDC, <1A per valve
- **Response Time:** <100 milliseconds
- **Body Material:** Brass or stainless steel (NSF 61)
- **Seal Material:** EPDM or Viton (NSF 61 certified)

**Applications:**
- Galley water dispensers
- Automatic shutoff
- Zone isolation
- Coffee maker supply

**Control:**
- Electronic control unit (ECU) interface
- Manual override available on critical valves
- Cockpit switchable for main isolation

#### Check Valves (Backflow Prevention)

**Type:** Spring-loaded poppet or swing check valves

**Specifications:**
- **Size:** 1/2" to 1" line size
- **Cracking Pressure:** 0.5-2.0 psi
- **Max Reverse Pressure:** 150 psi
- **Leak Rate:** <1 mL/min at rated pressure
- **Certification:** NSF 61, meets backflow preventer standards

**Applications:**
- Prevent water backflow from distribution to tank
- Isolate pump discharge
- Prevent drain-back during depressurization
- Cross-contamination prevention between zones

**Installation:**
- Must be installed in correct flow direction (arrow marking)
- Horizontal or vertical orientation per manufacturer
- Accessible for inspection and testing

#### Manual Shutoff Valves

**Type:** Ball valves with quarter-turn operation

**Specifications:**
- **Size:** 1/2" to 1-1/2" NPT
- **Pressure Rating:** 0-200 psi
- **Body:** Brass or stainless steel (NSF 61)
- **Seal:** PTFE seats, EPDM O-rings
- **Handle:** Removable for security/safety

**Applications:**
- Main tank isolation
- Service port isolation
- Maintenance isolation points
- Emergency shutoff

**Locations (Typical):**
- Tank outlet (primary isolation)
- Service fill connection
- Service drain connection
- Pump inlet and outlet
- Each major distribution zone

#### Pressure Relief Valves

**Type:** Spring-loaded direct-acting relief valve

**Specifications:**
- **Set Pressure:** 75-85 psi (adjustable)
- **Flow Capacity:** 15 L/min minimum at 10% overpressure
- **Reseat Pressure:** 70 psi typical
- **Discharge:** Piped to drain or overboard
- **Body Material:** Brass (NSF 61)

**Function:**
- Protects system from overpressure
- Prevents pump runaway condition
- Protects tank structure
- Required by FAA 14 CFR 25.1439

**Testing:**
Per [PROC_38-04-02](PROC_38-04-02_Pump-Bench-Test-And-Calib.md):
- Annual function test
- Pop pressure verification
- Reseat test (no leakage)
- Replace if fails test

#### Anti-Siphon Valves (Vacuum Breakers)

**Type:** Atmospheric vacuum breaker or pressure vacuum breaker

**Specifications:**
- **Size:** 1/2" inlet/outlet
- **Opening Pressure:** Opens at -1 to -2 psi
- **Certification:** ASSE 1001 or equivalent
- **Material:** Brass body, stainless check (NSF 61)

**Purpose:**
- Prevents backflow due to siphon action
- Breaks vacuum to prevent contamination
- Critical for potable water safety

**Installation:**
- Must be installed 6" minimum above highest downstream outlet
- Requires air gap/vent port to atmosphere
- Cannot be submerged or pressurized continuously

**Applications:**
- After each solenoid valve
- At highest point in each zone
- Before non-potable connections (if any)

### Waste System Valves

#### Flush Valves (Toilet System)

**Type:** Electrically or pneumatically actuated

**Specifications:**
- **Actuation:** 28 VDC solenoid or 50 psi pneumatic
- **Flow Time:** 3-5 seconds per flush
- **Water Volume:** 1.0-1.5 liters per flush (low-flow design)
- **Vacuum Assist:** Pulls 0.4 bar vacuum during flush

**Features:**
- Timed flush cycle
- Rinse and drain sequence
- Interlock with vacuum system
- Manual override capability

**Materials:**
- Chemical resistant plastics (PVC, ABS)
- Stainless steel actuation components
- Viton or EPDM seals

#### Drain Valves

**Type:** Quarter-turn ball valve or butterfly valve

**Specifications:**
- **Size:** 2" to 4" for waste tanks
- **Operation:** Manual or pneumatic actuation
- **Seal:** EPDM or Viton suitable for waste chemistry
- **Body:** Aluminum or stainless steel

**Applications:**
- Ground service drain connection
- Emergency drain
- Tank maintenance access

**Safety Features:**
- External locking provision (prevent in-flight opening)
- Visible position indicator
- Captive fasteners (cannot be lost during service)

#### Vent Valves

**Type:** Check valve or float-operated vent valve

**Specifications:**
- **Flow Area:** Sized for tank venting requirements
- **Cracking Pressure:** 0.1-0.5 psi
- **Filter:** Activated carbon for odor control
- **Body:** Corrosion-resistant plastic or aluminum

**Function:**
- Allows air to enter tank during draining
- Pressure relief during filling
- Prevents pressurization/vacuum damage
- Odor filtration to cabin/overboard

---

## Materials and Certification

### Potable Water Contact Materials

All materials in contact with potable water must meet:

**NSF/ANSI 61 Certification**
- Demonstrates no leaching of harmful substances
- Tested for toxicological effects
- Maintains water taste and odor requirements
- Re-certification required every 5 years or upon formulation change

**Approved Materials:**

| Component | Material | Standard | Notes |
|-----------|----------|----------|-------|
| Pump body | Stainless steel 316, Noryl (PPO) | NSF 61 | Food grade |
| Impeller | Stainless 304/316 | NSF 61 | Corrosion resistant |
| Valve body | Brass (lead-free), SS 316 | NSF 61, NSF 372 | No lead content |
| Seals | EPDM, Viton, Silicone | NSF 61 | Potable water grade |
| Gaskets | EPDM, PTFE | NSF 61 | |
| Piping | PEX, SS 316, CPVC | NSF 61 | See [DATA_38-06-01](../06-MATERIALS_M_AND_P/DATA_38-06-01_Approved-Seals-And-Lubricants.csv) |

**Prohibited Materials (Potable Water):**
- Lead-containing brass or bronze (except NSF 372 compliant low-lead)
- Galvanized steel (zinc leaching concern)
- Copper (unless specifically approved for potable use)
- Rubber compounds not NSF certified
- Adhesives or sealants not NSF certified

### Waste System Materials

**Requirements:**
- Chemical resistance to cleaning agents (quaternary ammonium, peroxide, bleach)
- Corrosion resistance
- Mechanical strength for pressure/vacuum cycling

**Approved Materials:**

| Component | Material | Standard | Notes |
|-----------|----------|----------|-------|
| Pump body | Polypropylene, PVDF | Chemical resistant | |
| Impeller/vanes | Polypropylene, rubber | | |
| Valve body | Aluminum alloy, SS 316, PVC | | Anodized if aluminum |
| Seals | Viton, EPDM, Nitrile | | Chemical compatible |
| Tank | Aluminum alloy, composite | FAA approved | See [DATA_38-03-03](../03-WASTE_TANKS_AND_DRAINS/DATA_38-03-03_Tank-Capacity-And-Inspection.csv) |

### Traceability Requirements

Per [PROC_38-06-02](../06-MATERIALS_M_AND_P/PROC_38-06-02_M&P-Traceability-And-Storage.md):

- All components require Certificate of Conformance (CoC)
- NSF certification documents maintained
- Lot numbers traceable to installation
- Material Safety Data Sheets (MSDS) on file
- Shelf life tracking for elastomeric components

---

## Performance Specifications

### Pump Performance

#### Acceptance Criteria (Bench Test)

Per [PROC_38-04-02_Pump-Bench-Test-And-Calib.md](PROC_38-04-02_Pump-Bench-Test-And-Calib.md):

| Parameter | Specification | Tolerance | Test Method |
|-----------|---------------|-----------|-------------|
| Flow rate | 15-25 L/min | ±5% | Flow meter, 40 psi discharge |
| Discharge pressure | 45-55 psi | ±2 psi | Calibrated gauge, dead-head |
| Current draw | <15A at 28VDC | +10% | Ammeter, full load |
| Noise | <60 dBA | - | Sound meter, 1m distance |
| Vibration | <0.5 g RMS | - | Accelerometer, mounting points |
| Leak test | Zero leakage | 0 mL/min | Pressure test, 60 psi, 5 min |

**Performance Curve:**
- Must meet manufacturer's published curve
- Efficiency >40% at rated flow
- Stable operation across flow range (no cavitation)

#### Field Performance Criteria

| Parameter | In-Service Limit | Action if Out of Spec |
|-----------|------------------|----------------------|
| Flow rate | >12 L/min minimum | Inspect for blockage, worn impeller |
| Pressure | 35-55 psi operating | Check accumulator, relief valve, leaks |
| Noise | <65 dBA | Bearing wear, replace pump |
| Cycling | <20 cycles/hour at no demand | Check for leaks, accumulator charge |

### Valve Performance

#### Leak Test Requirements

**Shutoff Valves:**
- Forward leak: <1 mL/min at 100 psi
- Reverse leak: <1 mL/min at 100 psi
- Test duration: 5 minutes
- Test method: Graduated cylinder collection

**Check Valves:**
- Reverse leak: <0.5 mL/min at rated pressure
- Cracking pressure: Within ±10% of specification
- Full flow at 5 psi above cracking pressure

**Solenoid Valves:**
- Closed leak: <0.1 mL/min at 50 psi
- Response time: <100 ms (from energize to full open)
- Endurance: >100,000 cycles minimum

#### Flow Test Requirements

**Full-Port Ball Valves:**
- Pressure drop: <0.5 psi at rated flow (full open)
- 90° operation: smooth, no binding
- Handle torque: <5 Nm to operate

**Check Valves:**
- Forward pressure drop: <1 psi at rated flow
- Chattering: None observable
- Closure: Immediate upon flow reversal

---

## Installation Requirements

### General Installation Guidelines

#### Pump Installation

1. **Mounting:**
   - Vibration-isolated mounting required
   - Minimum 4 mounting points with rubber grommets
   - Accessible for service (no hard-to-reach locations)
   - Clearance for removal without aircraft disassembly

2. **Electrical:**
   - Power from appropriate bus per electrical load analysis
   - Circuit breaker protection sized to pump rating
   - Wire gauge per DO-160 and company standards
   - Bonding jumper for EMI/lightning protection
   - Connector backshell grounded

3. **Plumbing:**
   - Suction line: Short as practical, no sharp bends
   - Suction strainer: 40-mesh minimum, accessible
   - Discharge line: Support to prevent vibration
   - Flexible hoses at pump connections (vibration absorption)
   - Check valve in discharge line (prevent backflow)

4. **Drainage:**
   - Pump must be installed at or above lowest water point
   - Drain provision for service and winterization
   - No water traps in suction line

#### Valve Installation

1. **Orientation:**
   - Follow manufacturer's installation instructions
   - Check valves and anti-siphon valves have specific orientation
   - Solenoid valves typically mounted with coil horizontal or up
   - Avoid inverted installations where sediment can accumulate

2. **Accessibility:**
   - Manual valves must be accessible for operation
   - Solenoid valves should be accessible for electrical maintenance
   - Check valves may require removal for cleaning (provide unions)

3. **Support:**
   - Pipe supports within 12" of valve (avoid valve supporting pipe weight)
   - Large valves (>1") may require independent support
   - Allow for thermal expansion

4. **Identification:**
   - Valve tags: Function, position indication, isolates what
   - Flow direction arrow (check valves)
   - Color coding: Blue for potable water, Gray for waste

### Pressure and Flow Considerations

**System Design:**
- Minimum pressure at faucet: 20 psi for adequate flow
- Maximum pressure at any point: 75 psi (relief valve set point)
- Pressure drops:
  - Pump to farthest faucet: <15 psi typical
  - Filters: <5 psi clean, <10 psi at change interval
  - Valves/fittings: <2 psi cumulative

**Accumulator (if installed):**
- Pre-charge: 2/3 of pump cut-in pressure (typically 17 psi)
- Size: 2-3 liters typical
- Reduces pump cycling
- Provides pressure during pump start delay

---

## Inspection and Testing

### Routine Inspection (Per [PROC_38-02-01](../02-POTABLE_WATER_SYSTEM/PROC_38-02-01_Potable-Water-Service-And-Flush.md))

**Visual Inspection:**
- Check for leaks at pump and valve connections
- Inspect electrical connections for corrosion or damage
- Verify pump mounting secure (no loose fasteners)
- Check flexible hoses for cracks, abrasion, or degradation
- Inspect valve handles and position indicators

**Functional Test:**
- Operate all manual valves (should move smoothly)
- Test solenoid valve operation (click/flow when energized)
- Verify pump starts and stops at correct pressures
- Check check valve function (no backflow audible)
- Test pressure relief valve (pop test if due per schedule)

### Bench Testing

Per [PROC_38-04-02_Pump-Bench-Test-And-Calib.md](PROC_38-04-02_Pump-Bench-Test-And-Calib.md):

**Pump Bench Test:**
- Performed before installation (new/repaired pumps)
- Performed at overhaul intervals (typically 5000 hours or 5 years)
- Tests: Flow, pressure, current, noise, vibration, leak

**Valve Testing:**
- Leak test at overhaul or if suspected faulty
- Cracking pressure test (check valves)
- Relief valve pop test (annually)
- Solenoid valve response time (if failure suspected)

### Troubleshooting Common Issues

#### Pump Issues

| Symptom | Possible Cause | Corrective Action |
|---------|----------------|-------------------|
| Pump won't start | No power, blown breaker, faulty switch | Check electrical, test switch |
| Low pressure | Worn impeller, air in system, leak | Bleed air, test output, inspect for leaks |
| High current draw | Bearing wear, blocked discharge | Check rotation, remove blockage |
| Excessive noise | Cavitation, bearing wear, loose mount | Check suction, tighten mounts, replace bearings |
| Rapid cycling | Leak in system, accumulator fault | Pressure test system, check accumulator |

#### Valve Issues

| Symptom | Possible Cause | Corrective Action |
|---------|----------------|-------------------|
| Valve won't close | Debris, worn seal, spring failure | Disassemble and clean, replace seal |
| Leaking when closed | Worn seat, debris | Inspect and clean seat, replace if damaged |
| Hard to operate | Corrosion, overtightening | Lubricate with food-grade lubricant, check torque |
| Check valve chatter | Undersized, turbulent flow | Verify sizing, add damping |
| Solenoid won't open | No power, coil burnout, plunger stuck | Test voltage, check coil resistance, clean plunger |

---

## References

### Internal Documents
- [00_README.md](../00_README.md) - ATA 38 Chapter Overview
- [DESC_38-01-01](../01-GENERAL/DESC_38-01-01_Scope-Governance-And-Effectivity.md) - Scope and Regulatory Framework
- [PROC_38-02-01](../02-POTABLE_WATER_SYSTEM/PROC_38-02-01_Potable-Water-Service-And-Flush.md) - Water Service Procedure
- [DATA_38-03-03](../03-WASTE_TANKS_AND_DRAINS/DATA_38-03-03_Tank-Capacity-And-Inspection.csv) - Tank Specifications
- [PROC_38-04-02](PROC_38-04-02_Pump-Bench-Test-And-Calib.md) - Pump Testing and Calibration
- [DATA_38-06-01](../06-MATERIALS_M_AND_P/DATA_38-06-01_Approved-Seals-And-Lubricants.csv) - Approved Materials List
- [PROC_38-06-02](../06-MATERIALS_M_AND_P/PROC_38-06-02_M&P-Traceability-And-Storage.md) - Materials Traceability

### External Standards
- [NSF/ANSI 61](https://www.nsf.org/knowledge-library/nsf-ansi-standard-61) - Drinking Water System Components
- [NSF/ANSI 372](https://www.nsf.org/) - Lead Content Requirements
- [FAA 14 CFR Part 25.1439](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/section-25.1439) - Waste Water Systems
- [DO-160G](https://www.rtca.org/) - Environmental Conditions for Airborne Equipment
- [ASSE 1001](https://www.asse-plumbing.org/) - Pipe Applied Atmospheric Type Vacuum Breakers

### Manufacturer Documentation
- Component Maintenance Manuals (CMM) - Pump and valve manufacturers
- AMPEL360 Aircraft Maintenance Manual (AMM) - System-specific procedures
- Illustrated Parts Catalog (IPC) - Part number cross-reference

---

**Revision History:**
| Rev | Date | Author | Changes |
|-----|------|--------|---------|
| 1.0.0 | 2025-10-30 | Environmental Systems Eng | Initial release - comprehensive content |

**Approved By:** [Name], Chief Engineer - Environmental Systems  
**Next Review:** 2026-10-30

---

[↑ Return to Pumps & Valves Section](../) | [Next: Pump Bench Test Procedure →](PROC_38-04-02_Pump-Bench-Test-And-Calib.md)
