# PROC_30-02-01 — Deice Boot Inspection and Repair
Revision: 1.0.0
Effective date: 2025-10-30
Owner: Ice & Rain Engineering

## Safety

**CRITICAL SAFETY WARNING:** High-pressure pneumatic systems and lifting hazards during removal. Use appropriate PPE including safety glasses, gloves, and hearing protection. Ensure aircraft is properly supported before de-ice boot removal.

**Hazards:**
- High pressure (up to 50 kPa) during inflation testing
- Chemical hazards from adhesives and solvents
- Lifting and ergonomic hazards during boot installation
- Foreign object debris (FOD) risk in open leading edge

## Purpose

Inspect pneumatic de-ice boots for delamination, tears, punctures, bond integrity, and perform standard repairs or replacement per approved methods.

## Applicability

All pneumatic de-ice boots installed on AMPEL360 BWB leading edges, wing surfaces, and empennage surfaces.

## Tools and Materials

- Boot inflation test kit (0-100 kPa range, certified/calibrated)
- Ultrasonic bond inspection equipment (if available)
- Approved adhesive per DATA_30-06-01 (with current CofC)
- Boot patch kit or replacement boot
- Cleaning solvent (MEK or approved equivalent)
- Surface preparation tools (abrasive pads, primers)
- Infrared thermometer or pyrometer
- PPE (safety glasses, chemical-resistant gloves, respirator if required)

## Acceptance Criteria

- **Visual:** No delamination > 10 mm, no tears > 5 mm, no punctures
- **Bond integrity:** No bond lift > 5 mm at any edge
- **Inflation test:** Pressure hold test shows ≤ 5% decay over 10 minutes
- **Leak rate:** ≤ 1×10⁻⁴ mbar·L/s (if measured with leak detector)
- **Cycle life:** Replace if approaching expected cycle limit (typically 20,000 cycles)

## Procedure (Summary)

### 1. Pre-Inspection Setup
1.1. Ensure aircraft is in maintenance configuration, properly supported
1.2. De-energize pneumatic ice protection system, tag and lockout
1.3. Review aircraft maintenance records for boot installation date and cycles
1.4. Prepare inspection tools and calibrated test equipment

### 2. Visual Inspection (GVI/DVI)
2.1. Inspect entire boot surface for:
     - Cracks, tears, punctures
     - Discoloration or heat damage
     - Delamination or lifting at edges
     - Foreign object damage
     - Surface contamination
2.2. Document findings with photographs and measurements
2.3. Mark any discrepancies with removable tape for detailed inspection

### 3. Bond Integrity Check
3.1. Perform "tap test" along bond line listening for hollow sound indicating delamination
3.2. If available, perform ultrasonic bond inspection per manufacturer procedure
3.3. Check all edges for bond lift using feeler gauge (max 5 mm allowable)
3.4. Document all bond anomalies

### 4. Inflation Pressure Hold Test
4.1. Connect calibrated inflation test kit to boot pneumatic port
4.2. Slowly inflate boot to maximum service pressure (see DATA_30-02-03)
4.3. Visually inspect for uniform inflation, bulges, or weak spots
4.4. Hold pressure for 10 minutes and monitor decay
4.5. Calculate pressure decay percentage: (P_initial - P_final) / P_initial × 100%
4.6. Acceptable: ≤ 5% decay over 10 minutes
4.7. If leak suspected, apply soapy water solution to locate leak point

### 5. Repair (if applicable)
5.1. For minor damage (tear ≤ 10 mm, no delamination):
     - Clean damaged area with approved solvent
     - Apply approved boot patch per adhesive manufacturer procedure
     - Allow cure per adhesive specification (temperature, time)
     - Re-inspect per steps 2-4 after cure
5.2. For major damage or delamination > 10 mm:
     - Remove and replace boot per PROC_30-02-02
     - Perform root cause analysis for premature failure

### 6. Post-Repair Cycle Test
6.1. After repair, perform functional cycle test:
     - 50 inflation/deflation cycles at maximum service pressure
     - Each cycle: inflate for 10 seconds, deflate for 10 seconds
     - Monitor for anomalies during cycling
6.2. Final pressure hold test per step 4

### 7. Documentation
7.1. Record all inspection findings, measurements, and NDT results
7.2. Photograph all repairs and document material lot numbers
7.3. Compute SHA-256 hash of all NDT raw files and photos
7.4. Update boot record in Digital Product Passport (ATA-95)
7.5. Update aircraft maintenance logbook
7.6. Complete repair record per `schemas/repair-record.schema.json`

## Training Required

- Ice & Rain Protection Systems Level 2 (ICE-RN-SVC-L2)
- Composite Bonding Procedures (if applicable)
- Pneumatic Systems Safety

## References

- DATA_30-02-03: De-ice Boot Limits
- DATA_30-06-01: Approved Seals, Lubricants, and Fabrics
- PROC_30-02-02: De-ice Boot Installation and Removal
- ATA-20: Standard Practices - Airframe

## Revision History

| Revision | Date       | Author                 | Description             |
|----------|------------|------------------------|-------------------------|
| 1.0.0    | 2025-10-30 | Ice & Rain Engineering | Initial release         |
