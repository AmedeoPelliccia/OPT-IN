# PROC_28-40-11 — SAF Conditioning Procedure

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Standard procedure for conditioning Sustainable Aviation Fuel (SAF) prior to aircraft fueling operations.

## Scope

Applies to all SAF deliveries and in-service conditioning activities for aircraft configured with SAF capability.

## Safety Requirements

**Hazards:**
- Flammability (flash point typically >38°C)
- Skin/eye irritation
- Vapor inhalation
- Static electricity accumulation

**PPE Required:**
- Safety glasses or face shield
- Chemical-resistant gloves
- Fire-resistant clothing
- Safety footwear

**Precautions:**
- Verify grounding and bonding
- Ensure proper ventilation
- Eliminate ignition sources within 7.6m (25 ft)
- Have fire extinguishers readily available
- Follow LOTO procedures for maintenance

## Prerequisites

1. Valid Certificate of Analysis (CoA) from fuel supplier
2. Storage tank and transfer system inspection completed
3. Filtration system operational and verified clean
4. Instrumentation calibrated and operational
5. Personnel trained and qualified (FUEL-SYS-L1 minimum)

## Conditioning Steps

### 1. Pre-Delivery Inspection

1.1. Verify storage tank cleanliness and dryness
1.2. Check filter elements for damage or saturation
1.3. Inspect all transfer lines and connections for leaks
1.4. Verify water separator drain valves are closed
1.5. Record tank level and temperature

### 2. Fuel Receipt

2.1. Verify delivery matches purchase order (quantity, grade, batch)
2.2. Review supplier CoA for compliance with ASTM D7566
2.3. Obtain representative sample from delivery vehicle
2.4. Perform field tests:
    - Visual inspection (clarity, color, foreign matter)
    - Water detection test
    - Temperature measurement

### 3. Transfer and Filtration

3.1. Connect grounding cables (delivery vehicle to ground point)
3.2. Connect bonding cable (delivery vehicle to storage tank)
3.3. Verify all connections secure and leak-free
3.4. Open isolation valves in sequence
3.5. Start transfer pump at low flow rate
3.6. Monitor filter differential pressure (ΔP)
3.7. Increase to normal flow rate once stable
3.8. Monitor transfer continuously:
    - Flow rate
    - Temperature
    - Pressure
    - Water separator indication

### 4. Quality Verification

4.1. Allow fuel to settle (minimum 30 minutes)
4.2. Obtain representative sample from storage tank
4.3. Perform laboratory tests per DATA_28-40-13:
    - Density
    - Viscosity
    - Flash point
    - Freeze point
    - Water content
    - Particulate contamination
    - Additive levels (if applicable)

4.4. Compare results to acceptance limits
4.5. Document results in conditioning record

### 5. Documentation

5.1. Complete fuel conditioning record with:
    - Date and time
    - Delivery vehicle ID and batch number
    - Quantity received
    - CoA reference
    - Test results
    - Operator name and signature
    - Storage tank designation

5.2. Update [DPP entry](../09-TRACEABILITY_AND_DPP/PROC_28-40-80_DPP-Entry-And-Record.md) with batch traceability
5.3. Calculate SHA-256 hash of conditioning record
5.4. Store electronic and paper records per retention policy

## Acceptance Criteria

- All field tests pass visual inspection
- Laboratory test results meet [DATA_28-40-13](DATA_28-40-13_SAF-Quality-Limits.csv) limits
- No water detected above 30 ppm
- Particulate contamination <1 mg/L
- Temperature within operating range: -40°C to +50°C

## Nonconformance

If fuel fails acceptance criteria:
1. Segregate fuel in separate storage
2. Initiate NCR per [PROC_28-40-90](../10-NONCONFORMANCE_AND_DEVIATION/PROC_28-40-90_Nonconformance-Handling-And-Engineering-Disposition.md)
3. Contact supplier for resolution
4. Do not use for aircraft fueling until disposition approved

## Records

- Fuel conditioning record (retain 5 years)
- Laboratory test results (retain 5 years)
- CoA from supplier (retain 5 years)
- DPP entry with batch traceability
- SHA-256 hash of all documents

## References

- [ASTM D7566](https://www.astm.org/d7566-24.html): SAF Specifications
- [ASTM D1655](https://www.astm.org/d1655-24.html): Aviation Turbine Fuels
- [DESC_28-40-10: SAF Conditioning Philosophy](DESC_28-40-10_SAF-Conditioning-Philosophy.md)
- [DATA_28-40-13: SAF Quality Limits](DATA_28-40-13_SAF-Quality-Limits.csv)
- [PROC_28-40-90: Nonconformance Handling](../10-NONCONFORMANCE_AND_DEVIATION/PROC_28-40-90_Nonconformance-Handling-And-Engineering-Disposition.md)

---

*This procedure must be followed for all SAF conditioning operations.*
