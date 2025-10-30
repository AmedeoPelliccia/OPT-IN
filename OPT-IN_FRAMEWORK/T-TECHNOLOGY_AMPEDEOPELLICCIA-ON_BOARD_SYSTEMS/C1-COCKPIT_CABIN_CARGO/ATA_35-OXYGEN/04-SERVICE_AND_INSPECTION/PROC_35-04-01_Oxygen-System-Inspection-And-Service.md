# PROC_35-04-01 — Oxygen System Inspection and Service

**Revision:** 1.0.0  
**Effective date:** 2025-10-30  
**Owner:** Cabin Systems / Oxygen

## Purpose

Routine inspection and functional verification of oxygen distribution systems, regulators, valves, and deployment systems to ensure continued airworthiness and emergency readiness.

## Safety

**CRITICAL SAFETY WARNING:** Oxygen system failure can result in crew/passenger incapacitation. All inspections must be completed per schedule. Any deficiency must be corrected before return to service.

- Oxygen-enriched environment creates fire hazard
- Use only oxygen-safe tools and materials
- No smoking, flames, or sparks within 25 feet of work area
- Ensure adequate ventilation during testing
- Personnel must be trained and qualified (training: OXY-SVC-L2)

## Inspection Frequencies

- **General Visual Inspection (GVI):** 12 months or 1000 flight hours, whichever occurs first
- **Detailed Inspection (DVI):** 36 months or 3000 flight hours, whichever occurs first
- **Pressure Test:** Per cylinder hydrostatic test interval or after any repair to pressure boundary
- **Functional Test:** 12 months or after any maintenance action

## Prerequisites

- Aircraft oxygen system depressurized and isolated
- Cylinder CoC and maintenance records available
- Calibrated test equipment available:
  - Pressure gauges (accuracy ±1% full scale)
  - Flow meters (accuracy ±2% reading)
  - Leak detector (sensitivity 0.01 mbar·L/s minimum)
  - Stopwatch or timer (accuracy ±0.1 s)
- Personnel qualified in oxygen system maintenance

## Procedure

### 1. Documentation Review

1.1. Verify the following documentation is current and available:
   - Cylinder Certificates of Conformance (CoC)
   - Last hydrostatic test date and results
   - Previous inspection reports
   - Maintenance history
   - Any open discrepancies or NCRs

1.2. Verify all cylinders are within hydrostatic test interval (typically 60 months).

1.3. Review system configuration and any recent modifications.

### 2. General Visual Inspection (GVI)

2.1. Inspect all accessible oxygen system components:
   - Cylinders: external condition, markings, mounting
   - Lines and hoses: routing, support, condition, chafing
   - Regulators and valves: mounting, connections, leakage
   - Masks and deployment panels: condition, stowage, accessibility
   - Pressure indicators and sensors: condition, readings

2.2. Acceptance criteria:
   - No visible damage, corrosion, or wear exceeding limits
   - All connections secure, no leakage evidence
   - All markings and labels legible
   - Proper routing and support of lines
   - Masks and panels properly stowed and accessible

2.3. Photograph any anomalies found.

2.4. Document all findings in inspection report.

### 3. Detailed Inspection (DVI)

3.1. In addition to GVI, perform the following:

3.2. Cylinder inspection:
   - Remove protective covers or fairings as necessary
   - Inspect mounting brackets and attach fittings
   - Measure and record service pressure
   - Inspect valve body and threads for damage
   - Check relief valve condition and setpoint marking

3.3. Distribution system inspection:
   - Inspect all fittings and connections for corrosion or damage
   - Check hose condition (flexibility, no hardening or cracking)
   - Verify proper hose routing and support
   - Inspect quick-disconnect fittings for proper operation

3.4. Acceptance criteria:
   - Cylinder mounting secure, no cracks in brackets
   - Service pressure within specification (typically 150-200 bar)
   - No corrosion or damage at valve threads or fittings
   - Hoses flexible, no visible damage or deterioration
   - All quick-disconnect fittings operate smoothly

### 4. Regulator Functional Test

4.1. Connect calibrated pressure gauges at regulator inlet and outlet.

4.2. Slowly pressurize system to service pressure.

4.3. Verify regulator output pressure and tolerance:
   - Crew oxygen: 200-400 kPa (29-58 psi), tolerance ±10 kPa
   - Passenger oxygen (if regulated): per system design specification

4.4. Verify flow rate at demand:
   - Crew: minimum 2 L/min continuous flow or demand-equivalent
   - Passenger: 2-4 L/min demand flow (or per system specification)

4.5. Acceptance criteria:
   - Output pressure within tolerance across full flow range
   - No pressure fluctuation or instability
   - Flow rate meets minimum requirements
   - No leakage at regulator body or connections

4.6. If regulator fails acceptance, remove for bench test or replacement.

### 5. Pressure and Leak Test

5.1. Isolate test section (cylinder, regulator, or distribution assembly).

5.2. Pressurize to service pressure (typically 200 bar for cylinders, 200 kPa for distribution).

5.3. Using calibrated leak detector, check all connections, fittings, and welds.

5.4. Acceptance criteria:
   - **Cylinder and high-pressure lines:** Leak rate ≤ 0.05 mbar·L/s at 200 bar
   - **Regulated distribution lines:** Leak rate ≤ 0.05 mbar·L/s at 200 kPa
   - **Isolated assembly pressure drop:** ≤ 5% over 30 minutes

5.5. If leak rate exceeds acceptance, identify and repair leak source.

5.6. Re-test after repair to verify acceptance.

### 6. Mask Deployment Functional Test

6.1. Select a representative sample of passenger service units (minimum 10% or per maintenance program).

6.2. Manually or electrically trigger mask deployment.

6.3. Measure time from trigger signal to first mask available.

6.4. Acceptance criteria:
   - **Deployment time:** ≤ 5 seconds from trigger to first mask drop
   - All masks deploy freely without binding
   - Mask count matches installation specification
   - No damage to masks or deployment doors

6.5. Verify mask flow (if equipped with flow indicators):
   - Connect mask to test fixture or oxygen source
   - Verify flow indicator activates with normal breathing simulation

6.6. Reset deployment mechanism per manufacturer instructions.

6.7. Document deployment test results including unit location and deployment time.

### 7. NDT (As Applicable)

7.1. If DVI reveals suspect areas or after impact/damage, perform NDT:
   - **Ultrasonic (UT):** Cylinder neck, valve threads, attach fittings
   - **Dye Penetrant (PT):** Surface cracks in fittings or brackets
   - **Radiographic (RT):** Welds in high-pressure lines (if accessible)

7.2. Refer to ATA-35-08 for detailed NDT procedures and acceptance criteria.

7.3. Record NDT results with SHA-256 hash of NDT report files.

## Disposition

- **Pass:** Component/system meets all acceptance criteria, return to service
- **Monitor:** Minor finding within limits, document and monitor at next inspection
- **Repair:** Deficiency exceeds limits, repair per ATA-35-09 and re-inspect
- **Replace:** Component cannot be repaired or exceeds life limits
- **NCR:** Finding requires engineering disposition, log NCR per ATA-35-11

If any acceptance criteria are exceeded, notify Structural/Systems Engineering and log NCR.

## Documentation

Complete Oxygen System Inspection Report with the following:
- Date and aircraft MSN
- Inspection type (GVI, DVI, Functional Test, Pressure Test)
- Cylinders inspected (serials, pressures, conditions)
- Regulators tested (IDs, output pressures, flow rates)
- Leak test results (locations, leak rates, pass/fail)
- Mask deployment test results (units tested, deployment times)
- Any anomalies found and disposition
- NDT report references (if applicable)
- Inspector name, qualification, and signature

## References

### Internal Documents
- [ATA-35-02](../02-OXYGEN_SYSTEM_DESIGN/): Oxygen System Design
- [ATA-35-03](../03-CYLINDERS_AND_STORAGE/): Cylinders and Storage
- [ATA-35-08](../08-NDT_AND_INSPECTION_RECORDS/): NDT and Inspection Records
- [ATA-35-09](../09-REPAIR_GUIDELINES/): Repair Guidelines
- [ATA-35-11](../11-NONCONFORMANCE_AND_DEVIATION/): Nonconformance and Deviation
- [DATA_35-02-03](../02-OXYGEN_SYSTEM_DESIGN/DATA_35-02-03_Oxygen-System-Limits-And-Parameters.csv): Oxygen System Limits and Parameters
- [DATA_35-04-04](DATA_35-04-04_Inspection-Intervals-And-Acceptance.csv): Inspection Intervals and Acceptance

### Regulations
- [FAA Part 25.1441](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR14d23180bde74c3/section-25.1441): Oxygen equipment and supply
- [EASA CS-25.1441](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-large-aeroplanes): Oxygen equipment and supply

## Revision History

| Revision | Date       | Author | Description |
|----------|------------|--------|-------------|
| 1.0.0    | 2025-10-30 | Cabin Systems / Oxygen | Initial release |
