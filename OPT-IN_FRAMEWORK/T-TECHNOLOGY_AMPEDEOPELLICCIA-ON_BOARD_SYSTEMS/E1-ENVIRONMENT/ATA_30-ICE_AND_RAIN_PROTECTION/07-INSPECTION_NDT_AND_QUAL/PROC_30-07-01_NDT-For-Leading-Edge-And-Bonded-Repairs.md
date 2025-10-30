# PROC_30-07-01 — NDT for Leading Edge and Bonded Repairs
Revision: 1.0.0
Effective date: 2025-10-30
Owner: NDT Engineering

## Purpose

Define Non-Destructive Testing (NDT) methods, acceptance criteria, and documentation requirements for leading edge structures, de-ice boot bond lines, and thermal system installations.

## Applicable NDT Methods

1. **Ultrasonic Testing (UT):** Bond line inspection, delamination detection
2. **Thermography (IR):** Thermal system functionality, bond anomalies
3. **Visual Inspection (VI):** Surface condition, visible damage
4. **Eddy Current (EC):** Conductive mesh continuity (if applicable)

## Acceptance Criteria

### Ultrasonic Testing (De-ice Boot Bond Line)
- No bond voids > 25 mm diameter
- Total void area ≤ 5% of bonded area
- No voids within 50 mm of boot edges

### Thermography (Thermal Systems)
- Temperature uniformity within specification (±10% typical)
- No cold spots > 10°C below setpoint
- No hot spots > 20°C above setpoint

### Visual Inspection
- No tears, punctures, or delamination
- Surface discoloration limited to cosmetic only
- No foreign object damage

### Eddy Current (LSP Continuity)
- Resistance ≤ 2.5 mΩ across conductive mesh
- No breaks in continuity path

## Procedure (Summary)

### Ultrasonic Bond Inspection

1. **Equipment Setup:**
   - Calibrated ultrasonic transducer (typically 5-10 MHz)
   - Reference standard with known bond conditions
   - Data acquisition system

2. **Inspection Process:**
   - Apply coupling gel to boot surface
   - Scan bond line in systematic pattern (grid or serpentine)
   - Record amplitude and time-of-flight data
   - Mark any indications for further evaluation

3. **Data Analysis:**
   - Compare amplitude to reference standard
   - Identify voids, delamination, or weak bonds
   - Generate C-scan image of bond area
   - Compute SHA-256 hash of raw data file

4. **Documentation:**
   - Record inspection date, technician, equipment S/N
   - Archive raw data and C-scan images
   - Update repair record with NDT results

### Thermography Inspection

1. **Equipment Setup:**
   - Calibrated thermal imaging camera
   - Energize thermal system to operational setpoint
   - Allow stabilization (minimum 30 minutes)

2. **Imaging Process:**
   - Capture thermal images from multiple angles
   - Record temperature at reference points
   - Identify temperature anomalies

3. **Analysis:**
   - Compare temperature distribution to specification
   - Identify hot spots, cold spots, non-uniformity
   - Generate temperature profile plot

4. **Documentation:**
   - Archive thermal images with SHA-256 hash
   - Record equipment calibration date
   - Update test report

## Training Required

- NDT Level II Certification (UT, IR, or EC as applicable)
- Ice & Rain Protection Systems familiarization

## References

- [DATA_30-07-02: Inspection Intervals and Acceptance](DATA_30-07-02_Inspection-Intervals-And-Acceptance.csv)
- [ASTM E1444](https://www.astm.org/e1444-16.html): Standard Practice for Ultrasonic Testing
- [ASTM E1933](https://www.astm.org/e1933-14r21.html): Standard Practice for Thermography

## Revision History

| Revision | Date       | Author         | Description             |
|----------|------------|----------------|-------------------------|
| 1.0.0    | 2025-10-30 | NDT Engineering | Initial release         |
