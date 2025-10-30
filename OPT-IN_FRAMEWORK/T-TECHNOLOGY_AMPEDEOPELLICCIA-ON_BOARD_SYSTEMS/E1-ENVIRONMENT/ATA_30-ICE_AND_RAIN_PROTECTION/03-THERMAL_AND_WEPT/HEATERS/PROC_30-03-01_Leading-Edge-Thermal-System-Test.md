# PROC_30-03-01 — Leading Edge Thermal System Test
Revision: 1.0.0
Effective date: 2025-10-30
Owner: Ice & Rain Engineering

## Safety

**CRITICAL SAFETY WARNING:** High temperature hazards (up to 200°C). High voltage electrical systems (up to 115VAC or 28VDC high current). Risk of burns and electrical shock. Use appropriate PPE and ensure proper lockout/tagout procedures.

**Hazards:**
- High temperature elements (burns)
- High voltage/high current electrical systems (shock)
- Rapid temperature changes
- LSP disruption during testing

## Purpose

Verify heater element integrity, control logic, temperature uniformity, response time, and LSP continuity after installation or repair of electrothermal leading edge heating systems.

## Applicability

All electrothermal leading edge heating systems on AMPEL360 BWB aircraft.

## Tools and Equipment

- Thermocouple instrumentation (calibrated, multiple channels)
- Thermal imaging camera (if available)
- Power supply or ground power unit (GPE)
- Control unit test set
- Insulation resistance tester (megohmmeter, 500V or 1000V)
- LSP continuity tester (4-wire resistance measurement, milliohm range)
- Data acquisition system for temperature logging
- PPE (insulated gloves rated for voltage, safety glasses, heat-resistant clothing)

## Acceptance Criteria

- **Element setpoint tolerance:** ±3°C of commanded temperature
- **Temperature uniformity:** ±10% across active heating area
- **Control response latency:** ≤ 2 seconds from command to 90% of setpoint
- **Ramp rate:** Per design specification (typical 5-10°C/min)
- **Overtemp protection:** Must activate at setpoint + tolerance
- **LSP continuity:** ≤ 2.5 mΩ 4-wire resistance (if conductive mesh present)
- **Insulation resistance:** ≥ 10 MΩ at operating temperature

## Procedure (Summary)

### 1. Pre-Test Setup
1.1. Ensure aircraft is in maintenance configuration, properly grounded
1.2. De-energize thermal protection system, tag and lockout
1.3. Review installation records and design specifications
1.4. Install thermocouple instrumentation at defined test points
1.5. Connect data acquisition system
1.6. Verify test equipment calibration (thermocouples, power supply, meters)

### 2. Insulation Resistance Test (Cold)
2.1. Disconnect heater element from power supply
2.2. Measure insulation resistance between heater element and aircraft structure
2.3. Apply 500V or 1000V test voltage per design specification
2.4. Acceptance: ≥ 10 MΩ
2.5. Document results

### 3. Continuity and Resistance Test
3.1. Measure heater element resistance (should match design ±5%)
3.2. If LSP mesh integrated, perform 4-wire resistance measurement
3.3. Acceptance: LSP resistance ≤ 2.5 mΩ
3.4. Document results

### 4. Control Logic Functional Test
4.1. Apply power to control unit
4.2. Command heater to minimum setpoint
4.3. Verify control unit responds and energizes heater
4.4. Command heater to maximum setpoint
4.5. Verify control unit responds correctly
4.6. Test overtemp interlock (if testable without damaging element)
4.7. Test fault detection and crew alerting

### 5. Thermal Ramp Test
5.1. Command heater to operational setpoint (e.g., 120°C)
5.2. Monitor temperature at all instrumented points
5.3. Record ramp rate (°C/min)
5.4. Verify ramp rate within specification
5.5. Record time to reach 90% of setpoint (response latency)
5.6. Acceptance: ≤ 2 seconds latency

### 6. Steady-State Temperature Profile
6.1. Hold at setpoint for minimum 30 minutes
6.2. Record temperature at all instrumented points
6.3. Calculate temperature uniformity: (T_max - T_min) / T_avg × 100%
6.4. Acceptance: uniformity ≤ ±10%
6.5. Verify no hot spots or cold spots

### 7. Thermal Cycling Test
7.1. Cycle heater through operational range:
     - Heat to maximum setpoint, hold 10 minutes
     - Cool to minimum setpoint or ambient, hold 10 minutes
     - Repeat for 10 cycles minimum
7.2. Monitor for anomalies (resistance change, control issues, hot spots)
7.3. Document any degradation

### 8. Post-Test Inspection
8.1. Visual inspection of heater element surface
8.2. Check for discoloration, delamination, charring
8.3. Re-measure insulation resistance (hot, if possible)
8.4. Re-verify LSP continuity

### 9. Documentation
9.1. Record all test data (temperature profiles, ramp rates, resistance measurements)
9.2. Compute SHA-256 hash of raw temperature log files
9.3. Generate thermal profile plots
9.4. Update Digital Product Passport (ATA-95)
9.5. Update aircraft maintenance logbook
9.6. Complete test report per functional_test schema

## Training Required

- Ice & Rain Protection Systems Level 2 (ICE-RN-SVC-L2)
- Electrical Systems Safety and High Voltage Qualification
- Thermal Testing Procedures

## References

- [DATA_30-03-03: Thermal System Limits](DATA_30-03-03_Thermal-System-Limits.csv)
- [DATA_30-06-01: Approved Materials](../../06-MATERIALS_M_AND_P/DATA_30-06-01_Approved-Seals-Lubricants-And-Fabrics.csv)
- [PROC_30-03-02: Panel Heater Calibration](PROC_30-03-02_Panel-Heater-Calibration.md)
- [ATA-24: Electrical Power](../../../../E2-ENERGY/ATA_24-ELECTRICAL_POWER/)
- [ATA-51: LSP Restoration](../../../../A-AIRFRAME/ATA_51-STANDARD_PRACTICES_AND_STRUCTURES/)

## Revision History

| Revision | Date       | Author                 | Description             |
|----------|------------|------------------------|-------------------------|
| 1.0.0    | 2025-10-30 | Ice & Rain Engineering | Initial release         |
