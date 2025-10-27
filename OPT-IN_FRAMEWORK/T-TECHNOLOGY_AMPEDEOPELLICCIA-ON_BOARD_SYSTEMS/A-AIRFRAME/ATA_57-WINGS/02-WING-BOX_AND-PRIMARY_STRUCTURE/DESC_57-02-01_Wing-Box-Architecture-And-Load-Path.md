# DESC 57-02-01: Wing Box Architecture and Load Path

## Document Information
- **Document ID:** DESC_57-02-01
- **Title:** Wing Box Architecture and Load Path
- **Revision:** 1.0.0
- **Effective Date:** 2028-01-01
- **ATA Chapter:** 57-02 - Wing Box and Primary Structure

## 1. Wing Box Overview

The wing box is the primary load-carrying structure of the wing, designed to withstand:
- Aerodynamic bending moments
- Shear forces from lift distribution
- Torsional loads from control surface deflection
- Inertial loads from fuel, engines, and landing gear

### 1.1 Structural Configuration

**Construction Type:** Multi-spar, multi-rib box beam with integral fuel tank

**Primary Load Path Elements:**
- Front spar (approximately 15% chord)
- Rear spar (approximately 65% chord)
- Optional mid spar (for extended range configuration)
- Upper skin panel (compression surface)
- Lower skin panel (tension surface)
- Main ribs at defined stations
- Intermediate ribs for skin buckling support

## 2. Spar Design

### 2.1 Front Spar
- **Material:** Aluminum 7075-T6 (spar caps), 2024-T3 (web)
- **Section:** I-beam with machined caps and riveted web
- **Load Function:** Primary bending moment resistance (compression/tension in caps)
- **Inspection Access:** Via wing box access panels at rib stations

### 2.2 Rear Spar
- **Material:** Aluminum 7075-T6 (spar caps), 2024-T3 (web)
- **Section:** Similar to front spar with flap hinge attachments
- **Load Function:** Secondary bending resistance + flap support loads
- **Inspection Access:** Via wing box and trailing edge access

### 2.3 Spar Caps
- **Critical Element:** Spar caps are the highest stressed elements
- **Crack Growth:** Monitored via eddy current inspection per SSI program
- **Life Limits:** No life limit; damage tolerance substantiated

## 3. Rib Design

### 3.1 Main Ribs
- **Locations:** Wing root, pylon attach, landing gear attach, wing fold (if applicable)
- **Material:** 7075-T6 forgings (high load areas), 2024-T3 sheet (formed ribs)
- **Function:** Transfer shear and concentrated loads to spars, maintain wing contour

### 3.2 Intermediate Ribs
- **Spacing:** Approximately 20-24 inches
- **Material:** 2024-T3 sheet metal
- **Function:** Support skin panels against buckling, maintain aerodynamic shape

## 4. Skin Panels

### 4.1 Upper Skin
- **Material:** 2024-T3 clad aluminum or CFRP composite (depending on configuration)
- **Thickness Range:** 0.040 - 0.125 inch (metallic), 8-ply to 24-ply (composite)
- **Load Function:** In-plane compression from wing bending
- **Critical Failure Mode:** Buckling, compression failure after impact (composites)

### 4.2 Lower Skin
- **Material:** 2024-T3 clad aluminum or CFRP composite
- **Thickness Range:** Similar to upper skin
- **Load Function:** In-plane tension from wing bending
- **Critical Failure Mode:** Fatigue cracking (metallic), fiber breakage (composite)

## 5. Load Transfer and Attachments

### 5.1 Wing-to-Fuselage Attachment
- **Type:** Multi-lug fitting with large-diameter pins
- **Material:** Titanium Ti-6Al-4V or high-strength steel
- **Load Transfer:** Wing bending moment, shear, and torsion to fuselage keel beam
- **Inspection:** Fluorescent penetrant per SSI schedule

### 5.2 Engine Pylon Attach Points
- **Type:** Machined fittings on front and rear spars
- **Material:** 7075-T6 or titanium
- **Load Transfer:** Engine thrust, side loads, vertical loads to wing structure
- **Inspection:** Magnetic particle or penetrant per SSI schedule

### 5.3 Landing Gear Attach Fittings (if wing-mounted)
- **Type:** Heavy forged fittings attached to multiple ribs and spar
- **Material:** High-strength steel or titanium
- **Load Transfer:** Landing impact loads, braking loads, side loads
- **Inspection:** Ultrasonic + fluorescent penetrant per SSI schedule

## 6. Fuel Tank Integration

### 6.1 Integral Fuel Tanks
- **Construction:** Wing box forms the fuel tank boundary
- **Sealing:** Polysulfide or polythioether sealant at all joints
- **Access:** Via upper surface access panels with sealant gaskets
- **Vent System:** Surge tanks at wing tip, NACA scoop vents

### 6.2 Fuel Tank Structural Considerations
- **Corrosion Protection:** Chromate conversion coating or anodizing
- **Sealant Compatibility:** All materials fuel-compatible per ATA 28
- **Inspection Access:** Limited; external ultrasonic thickness measurement preferred

## 7. Design Loads and Margins

### 7.1 Design Load Cases
- **Limit Load:** Maximum expected load in service (Load Factor 2.5g to -1.0g typical)
- **Ultimate Load:** 1.5 × Limit Load (must sustain for 3 seconds without failure)

### 7.2 Critical Load Cases
- Symmetric pull-up maneuver (positive bending)
- Symmetric push-over maneuver (negative bending, upper skin in tension)
- Rolling maneuver (torsion + bending)
- Gust encounter (rapid load application)
- Landing impact (vertical acceleration)

### 7.3 Factors of Safety
- **Static Strength:** 1.5 (ultimate = 1.5 × limit)
- **Fatigue:** 4.0 scatter factor on crack growth rate
- **Inspection Interval:** 2.0 factor on calculated crack growth life

## 8. Material Specifications

### 8.1 Metallic Materials
- **Spar Caps:** AMS 4123 (7075-T6 extrusion or plate)
- **Spar Webs:** AMS 4037 (2024-T3 sheet)
- **Ribs:** AMS 4037 (2024-T3 sheet), AMS 4123 (7075-T6 forgings)
- **Skin:** AMS 4035 (2024-T3 clad sheet)
- **Fasteners:** Per ATA 20 approved fastener list

### 8.2 Composite Materials (if applicable)
- **Skin Panels:** CFRP prepreg per BMS 8-276 or equivalent
- **Stiffeners:** CFRP or co-bonded aluminum
- **Core (if sandwich):** Aluminum honeycomb per AMS 4029

## 9. Inspection and Maintenance Access

### 9.1 Access Panels
- Upper surface access panels at each rib station
- Lower surface access limited (fuel tank boundary)
- Leading edge removable for access to front spar
- Trailing edge removable for access to rear spar

### 9.2 Inspection Methods
- **External Visual:** Pre-flight and routine maintenance
- **Internal Visual:** Via access panels during detailed inspections
- **NDT (Eddy Current):** Spar caps and critical fittings
- **NDT (Ultrasonic):** Thickness measurement for corrosion monitoring
- **NDT (Ultrasonic C-scan):** Composite skin panel integrity

## 10. Repair Considerations

### 10.1 Primary Structure Repairs
- **Spar Cap Damage:** Requires engineering analysis and FEA
- **Doubler or splice plate repair:** Must restore full strength and stiffness
- **Test substantiation:** Required for any load path alteration

### 10.2 Skin Panel Repairs
- **Metallic Skin:** Bolted patch per SRM or bonded repair per ATA 51
- **Composite Skin:** Scarf or stepped-lap repair per ATA 51
- **Fuel Tank Sealant:** Reseal per ATA 28 fuel-compatible procedures

### 10.3 Fastener Holes
- **Elongated Holes:** Oversize fastener or bushing repair per SRM
- **Cracked Holes:** Stop-drill and reinforce or replace component

## 11. References
- Structural Design Drawing: DWG-WING-BOX-001
- Stress Analysis Report: SAR-WING-001
- Full-Scale Test Report: TST-WING-001
- ATA 51 - Composite Repair Practices
- ATA 20 - Standard Practices
- SRM Section 57-02

## 12. Revision History

| Revision | Date       | Description     | Approved By    |
|----------|------------|-----------------|----------------|
| 1.0.0    | 2028-01-01 | Initial Release | Chief Engineer |

---

**Approval:**
- **Structures Engineering:** [Signature Required]

**Next Review Date:** 2029-01-01
