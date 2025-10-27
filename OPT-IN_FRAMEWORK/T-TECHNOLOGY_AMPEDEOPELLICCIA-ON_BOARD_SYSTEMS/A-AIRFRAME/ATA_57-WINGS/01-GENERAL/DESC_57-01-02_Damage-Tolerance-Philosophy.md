# DESC 57-01-02: Damage Tolerance Philosophy

## Document Information
- **Document ID:** DESC_57-01-02
- **Title:** Damage Tolerance Philosophy
- **Revision:** 1.0.0
- **Effective Date:** 2028-01-01
- **ATA Chapter:** 57 - Wings

## 1. Introduction

This document defines the damage tolerance philosophy for wing structures in accordance with 14 CFR §25.571 (or equivalent EASA CS-25.571) and establishes the foundation for all inspection and repair programs.

## 2. Design Philosophy

### 2.1 Safe-Life vs. Damage Tolerant Design

The AMPEL360 wing structure employs a **hybrid approach**:

- **Primary Load Path (Spar Caps, Wing Box):** Damage-tolerant design
  - Multiple load paths for crack arrest
  - Inspectable for discrete source damage
  - Substantiated by full-scale fatigue testing
  
- **Secondary Structure (Fairings, Access Panels):** Safe-life design
  - Single load path acceptable with conservative design factors
  - Scheduled replacement at life limits

- **Fail-Safe Elements:** Crack stoppers, tear straps, and doubler reinforcements at critical locations

### 2.2 Damage Tolerance Requirements

Wing structure must withstand:

1. **Discrete Source Damage (DSD):**
   - Impact from runway debris
   - Tool drops during maintenance
   - Hail impact
   - Bird strike (leading edge)
   - Tire/wheel fragment impact

2. **Fatigue Damage:**
   - Pressurization cycles (wing center section)
   - Ground-air-ground (GAG) cycles
   - Gust loading cycles
   - Taxi and landing gear cycles

3. **Environmental Degradation:**
   - Corrosion (especially in fuel tank areas)
   - Moisture ingress
   - UV degradation (composite components)

## 3. Structural Significant Items (SSI)

### 3.1 SSI Definition

Structural Significant Items are locations where:
- Single element failure could result in catastrophic failure
- Multiple load path structure where inspectability cannot be guaranteed
- Widely dispersed structure not amenable to inspection

### 3.2 SSI Locations in Wing

Primary SSI locations:
- Spar cap attachments at wing root
- Wing-to-fuselage carry-through structure
- Engine pylon attach fittings
- Landing gear support structure (wing-mounted gear)
- Flap/slat track support fittings

### 3.3 SSI Inspection Program

Each SSI has defined:
- **Initial inspection threshold** (flight hours/cycles)
- **Repeat inspection interval**
- **Inspection method** (visual, NDT technique)
- **Acceptance criteria**

## 4. Damage Tolerance Evaluation (DTE)

### 4.1 Analysis Methodology

Damage tolerance substantiation includes:

1. **Crack Growth Analysis:**
   - Assumed initial flaw size (manufacturing quality level)
   - Stress intensity factor (K) calculation
   - Crack growth rate using Paris Law or equivalent
   - Residual strength at detectable crack size

2. **Residual Strength:**
   - Ultimate load capability with damage present
   - Minimum required: limit load + safety margin

3. **Inspection Intervals:**
   - Based on time to grow from detectable size to critical size
   - Divided by factor of 2 for inspection interval

### 4.2 Assumed Initial Flaw Sizes

Based on manufacturing quality:
- **Metallic structure:** 0.05 inch (1.27 mm) surface crack
- **Composite structure:** 1-inch (25.4 mm) delamination
- **Fastener holes:** 0.05 inch corner crack at hole

### 4.3 Detectable Crack Sizes

Minimum detectable crack sizes by method:
- **Visual (GVI):** 0.50 inch (12.7 mm)
- **Detailed Visual (DVI):** 0.25 inch (6.4 mm)
- **NDT (Eddy Current):** 0.10 inch (2.54 mm)
- **NDT (Ultrasonic):** Delamination > 0.5 inch diameter

## 5. Inspection Program Structure

### 5.1 Inspection Types

**General Visual Inspection (GVI):**
- Conducted during routine maintenance checks
- No disassembly required
- Identify obvious damage, corrosion, or distress

**Detailed Inspection (DET):**
- Requires access panels removal
- Enhanced lighting and inspection aids
- Identify damage not detectable by GVI

**Special Detailed Inspection (SDI):**
- Extensive access required
- NDT methods employed
- Targeted at SSI locations
- Qualified inspectors with Level II certification minimum

### 5.2 Inspection Intervals

Baseline intervals (subject to DTE analysis):
- **GVI:** Every A-check (approximately 500 FH)
- **DET:** Every C-check (approximately 5,000 FH)
- **SDI:** Per SSI schedule (typically 10,000-15,000 FH)

Intervals may be adjusted based on:
- Operational environment (corrosive, high-cycle)
- Service experience (fleet findings)
- Regulatory directives (AD compliance)

## 6. Damage Classification and Limits

### 6.1 Allowable Damage

Minor damage that may be dispatched without repair:
- Surface scratches < 0.010 inch deep (metallic)
- Small dents < 0.25 inch diameter and < 0.030 inch deep
- Corrosion within allowable limits per DATA_57-01-03

### 6.2 Repairable Damage

Damage requiring repair but not immediate grounding:
- Cracks < maximum repairable length
- Delaminations < maximum repairable area
- Corrosion exceeding allowable but within repairable limits

### 6.3 Non-Repairable Damage

Damage requiring component replacement:
- Cracks exceeding maximum repairable length
- Delaminations exceeding maximum repairable area
- Corrosion exceeding repairable limits
- Burn-through or heat damage to primary structure

Reference **DATA_57-01-03_Damage-Limits-And-Classification.csv** for specific numeric limits.

## 7. Repair Philosophy

### 7.1 Repair Objectives

All repairs must:
- Restore structural strength to at least original design strength
- Restore stiffness to prevent load redistribution
- Maintain or improve fatigue life
- Maintain damage tolerance characteristics
- Be inspectable for future damage

### 7.2 Load Path Considerations

**Primary Load Path Repairs:**
- Require FEA analysis or test substantiation
- Must demonstrate residual strength ≥ ultimate load
- Must demonstrate fatigue life ≥ remaining aircraft life
- Require engineering approval

**Secondary Structure Repairs:**
- May use approved data from SRM
- Must restore load capability
- No FEA required if within SRM limits

### 7.3 Material Selection

Repair materials must:
- Meet or exceed original material properties
- Be compatible with adjacent structure (galvanic compatibility)
- Be fuel-compatible if in fuel tank area
- Have traceable certification (CoC required)

## 8. Test and Analysis Requirements

### 8.1 Full-Scale Testing

Full-scale wing test program demonstrated:
- Limit load capability (100% design load)
- Ultimate load capability (150% limit load for 3 seconds)
- Fail-safe capability with assumed damage
- Fatigue life to 2× design service goal (DSG)

### 8.2 Component Testing

Critical components require:
- Static strength testing (fittings, hinges, attachments)
- Fatigue testing (actuator attachments, high-cycle components)
- Environmental testing (corrosion resistance, temperature extremes)

### 8.3 Repair Substantiation

Major repairs require:
- Repair coupon testing (static and fatigue)
- NDT proof of repair quality
- Engineering analysis of stress distribution
- Comparison to original structure capability

## 9. Service Experience Feedback

### 9.1 Fleet Monitoring

Continuous monitoring includes:
- Scheduled inspection findings
- Unscheduled maintenance actions
- Service difficulty reports (SDR)
- Pilot reports of anomalies

### 9.2 Program Adjustments

Based on service experience:
- Inspection intervals may be reduced
- Additional inspections may be mandated
- Repairs may be modified or improved
- Component replacement may be required

Changes implemented via:
- Service Bulletins (SB)
- Airworthiness Directives (AD)
- Maintenance Program updates (ATA 05)

## 10. Composite-Specific Considerations

### 10.1 Impact Damage

Composite structures are susceptible to:
- Barely Visible Impact Damage (BVID)
- Internal delamination with minimal surface indication
- Compression strength reduction after impact

### 10.2 Inspection Techniques

Composite inspections require:
- Coin tap testing for delamination detection
- Ultrasonic C-scan for internal damage mapping
- Shearography for bondline integrity
- Thermography for moisture ingress detection

### 10.3 Environmental Degradation

Monitor for:
- Moisture absorption in honeycomb core
- UV degradation of surface resin
- Freeze-thaw damage in wet composites
- Galvanic corrosion at composite-to-metal interfaces

## 11. References

- 14 CFR §25.571 - Damage Tolerance and Fatigue Evaluation
- AC 25.571-1D - Damage Tolerance and Fatigue Evaluation of Structure
- ASTM E647 - Fatigue Crack Growth Testing
- MIL-HDBK-5 - Metallic Materials Properties
- CMH-17 - Composite Materials Handbook
- ATA 04 - Airworthiness Limitations
- ATA 05 - Maintenance Program
- ATA 51 - Composite Repair Practices

## 12. Revision History

| Revision | Date       | Description                  | Approved By          |
|----------|------------|------------------------------|----------------------|
| 1.0.0    | 2028-01-01 | Initial Release              | Chief Engineer       |

---

**Approval:**
- **Structures Engineering:** [Signature Required]
- **Airworthiness Engineering:** [Signature Required]

**Next Review Date:** 2029-01-01
