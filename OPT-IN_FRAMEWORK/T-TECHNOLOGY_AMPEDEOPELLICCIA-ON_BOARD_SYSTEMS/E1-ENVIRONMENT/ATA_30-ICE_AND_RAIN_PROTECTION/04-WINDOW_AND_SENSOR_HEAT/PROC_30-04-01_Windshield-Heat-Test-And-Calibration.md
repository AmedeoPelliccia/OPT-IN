# PROC_30-04-01 — Windshield Heat Test and Calibration
Revision: 1.0.0
Effective date: 2025-10-30
Owner: Ice & Rain Engineering

## Safety

**CRITICAL SAFETY WARNING:** High voltage systems and high temperature glass surfaces. Risk of electrical shock and burns. Do not touch windshield during test. Use appropriate PPE.

## Purpose

Verify windshield heating element integrity, temperature control, power consumption, and fault detection after installation, repair, or per maintenance schedule.

## Applicability

All windshield heating systems on AMPEL360 BWB aircraft.

## Acceptance Criteria

- Setpoint tolerance: ±2°C
- Temperature uniformity: ≤ ±5% across windshield surface
- Control latency: ≤ 3 seconds
- Power consumption: Within ±10% of design specification
- Insulation resistance: ≥ 20 MΩ

## Procedure (Summary)

1. De-energize and lockout windshield heat system
2. Measure insulation resistance (cold test)
3. Install thermocouple array on windshield surface (non-invasive)
4. Connect data acquisition and power monitoring
5. Energize windshield heat to operational setpoint
6. Monitor temperature profile and power consumption
7. Verify uniformity and control response
8. Test overtemp protection and fault detection
9. Document results with thermal images and SHA-256 hashes
10. Update maintenance records and DPP

## Training Required

- Electrical Systems Safety
- Ice & Rain Protection Systems Level 2

## References

- DATA_30-04-02: Sensor Heat Setpoints
- ATA-24: Electrical Power

## Revision History

| Revision | Date       | Author                 | Description             |
|----------|------------|------------------------|-------------------------|
| 1.0.0    | 2025-10-30 | Ice & Rain Engineering | Initial release         |
