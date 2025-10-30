# PROC_35-08-01 — NDT for Pressure Vessels and Fittings

**Revision:** 1.0.0  
**Effective date:** 2025-10-30  
**Owner:** Cabin Systems / Oxygen / NDT

## Purpose

Define Non-Destructive Testing (NDT) requirements, methods, and acceptance criteria for oxygen system pressure vessels (cylinders) and associated fittings to ensure structural integrity and continued airworthiness.

## Safety

**CRITICAL SAFETY WARNING:** Oxygen cylinders are pressure vessels that can catastrophically fail if damaged or improperly inspected. NDT must be performed by qualified Level II or Level III NDT technicians.

- High-pressure gas hazard - ensure cylinder is depressurized before NDT
- Use only NDT methods approved for oxygen service
- Do not introduce oil, grease, or contamination during NDT
- Personnel must be trained in pressure vessel NDT (NDT-L2-PV minimum)

## Scope

This procedure applies to:
- Oxygen storage cylinders (GOX bottles)
- Cylinder necks and valve threads
- Pressure vessel attach fittings and brackets
- High-pressure line fittings and connections
- Regulator and valve bodies (when suspect damage exists)

## Prerequisites

- Component removed from service and depressurized
- Cylinder cleaned per oxygen cleaning procedures (CGA G-4.4)
- NDT equipment calibrated and certified
- Personnel qualified: NDT Level II minimum for inspection, Level III for acceptance determination
- Applicable NDT procedures and standards available

## NDT Methods and Applications

### 1. Visual Inspection (Enhanced)

**Application:** Initial assessment of all pressure vessels and fittings

**Equipment:**
- Magnifying glass (5-10x)
- Borescope (for internal inspection)
- Adequate lighting (minimum 1000 lux)

**Procedure:**
1. Clean component thoroughly (oxygen-safe cleaning agents only)
2. Inspect external surfaces for:
   - Corrosion (pitting, general corrosion, stress corrosion cracking)
   - Mechanical damage (dents, gouges, scratches)
   - Cracks or fissures
   - Thread condition (cylinder neck, valve threads)
   - Weld condition (if applicable)

**Acceptance Criteria:**
- No cracks visible under 5x magnification
- Corrosion pit depth ≤ 0.5 mm (measure with depth gauge)
- Dents ≤ 5 mm depth and ≤ 25 mm diameter
- Threads undamaged, no cross-threading or stripping
- Welds smooth, no undercut or incomplete fusion

**Reject if:**
- Any crack detected
- Corrosion pit depth > 0.5 mm
- Dent exceeds dimensional limits
- Thread damage affecting sealing or torque retention

### 2. Ultrasonic Testing (UT)

**Application:** Cylinder wall thickness verification, detection of internal flaws, laminations

**Equipment:**
- Ultrasonic flaw detector (frequency: 2-10 MHz typical)
- Calibration block (known thickness and flaw size)
- Couplant (oxygen-compatible, water-based)

**Procedure:**
1. Calibrate UT equipment using reference block
2. Apply couplant to cylinder surface (external inspection)
3. Scan cylinder body, neck, and suspect areas in systematic pattern
4. Record wall thickness at multiple locations
5. Document any indications (size, depth, location)

**Acceptance Criteria:**
- Wall thickness ≥ minimum specified by manufacturer (typically 90% of nominal minimum)
- No indications exceeding 10% of wall thickness
- No laminations or delaminations detected

**Reject if:**
- Wall thickness below minimum specification
- Indication depth > 10% of wall thickness
- Any through-thickness indication

### 3. Dye Penetrant Testing (PT)

**Application:** Surface crack detection in fittings, cylinder necks, welds

**Equipment:**
- Penetrant (Type II visible dye or Type I fluorescent)
- Developer
- Cleaner/remover (oxygen-compatible)
- UV lamp (for fluorescent penetrant)

**Procedure:**
1. Clean component with oxygen-compatible cleaner
2. Apply penetrant, allow dwell time per manufacturer (typically 10-30 minutes)
3. Remove excess penetrant with cleaner
4. Apply developer, allow development time (typically 10 minutes)
5. Inspect under adequate lighting (white light for visible dye, UV for fluorescent)
6. Document any indications (length, width, orientation)

**Acceptance Criteria:**
- No linear indications > 1.5 mm length
- No rounded indications > 3 mm diameter
- No cluster of indications (4 or more in 16 mm² area)

**Reject if:**
- Any crack indication detected
- Linear indication > 1.5 mm
- Rounded indication > 3 mm
- Clustered indications present

### 4. Radiographic Testing (RT) - Limited Application

**Application:** Weld inspection in high-pressure lines (if accessible), internal cylinder assessment (rare)

**Equipment:**
- X-ray or gamma-ray source
- Film or digital detector
- Penetrameters (image quality indicators)

**Procedure:**
1. Set up radiographic exposure per component geometry
2. Place penetrameters for image quality verification
3. Expose film or detector per calculated exposure time
4. Develop film (if applicable) and review images
5. Document any indications

**Acceptance Criteria:**
- Per ASTM E1742 or manufacturer specification
- No crack indications
- Weld porosity ≤ acceptable limits per code

**Note:** RT typically not required for routine cylinder inspection unless internal damage is suspected.

## Inspection Intervals

Refer to **DATA_35-08-02_NDT-Intervals-And-Acceptance.csv** for complete schedule.

**General guidelines:**
- **Cylinder body UT:** Every 60 months (with hydrostatic test) or after impact damage
- **Cylinder neck PT:** Every 60 months or after valve replacement
- **Fittings PT:** After any suspected damage or stress event
- **Post-repair NDT:** After any repair to pressure boundary

## Documentation

Complete NDT Inspection Report with the following:
- Date, aircraft MSN, component serial number
- NDT method(s) used
- Equipment used and calibration status
- Technician name and NDT Level qualification
- Location(s) inspected
- Findings (dimensions, locations of indications)
- Acceptance determination (Pass/Fail/Conditional)
- SHA-256 hash of NDT report file for traceability
- NDT Level III reviewer name and signature (for critical findings)

Store NDT reports in Digital Product Passport (ATA-95) with secure hash.

## Disposition

- **Pass:** Component meets all acceptance criteria, return to service
- **Conditional:** Minor indication within limits, document and re-inspect at reduced interval
- **Reject:** Indication exceeds acceptance criteria, remove from service
- **Engineering Review:** Indication requires analysis, consult Structural/Materials Engineering

## Training and Qualification

NDT technicians performing oxygen pressure vessel inspections must:
1. Hold NDT Level II certification minimum in applicable method(s) per SNT-TC-1A or NAS-410
2. Complete oxygen system familiarization training (OXY-FAM-L1)
3. Complete pressure vessel NDT training (NDT-L2-PV)
4. Maintain currency: perform at least 5 inspections per year or requalify

## References

- ASTM E1444: Standard Practice for Magnetic Particle Testing
- ASTM E1417: Standard Practice for Liquid Penetrant Testing
- ASTM E1742: Standard Practice for Radiographic Examination
- ASTM E2375: Standard Practice for Ultrasonic Testing
- AMS 2644: Inspection, Magnetic Particle
- CGA G-4.4: Oxygen cleaning and compatibility
- ATA-35-03: Cylinders and Storage
- ATA-35-09: Repair Guidelines

## Revision History

| Revision | Date       | Author | Description |
|----------|------------|--------|-------------|
| 1.0.0    | 2025-10-30 | Cabin Systems / Oxygen / NDT | Initial release |
