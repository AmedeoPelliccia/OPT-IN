# PROC_11-03-01: Placard Removal and Installation

## Document Information
- **Document ID**: PROC_11-03-01
- **Title**: Placard Removal and Installation Procedure
- **Revision**: 1.0.0
- **Effective Date**: 2025-10-30
- **Procedure Category**: Installation, Removal_Installation
- **Skill Level**: Intermediate
- **Estimated Duration**: 1-2 hours (depending on placard type and location)
- **Personnel Required**: 1 installer + 1 inspector (2 for RII items)

## 1. Scope and Purpose

### 1.1 Purpose
This procedure establishes the standardized method for removing damaged, faded, or obsolete placards and installing new or replacement placards on AMPEL360 aircraft. The procedure ensures proper surface preparation, adhesive application, placard placement, and quality verification to maintain airworthiness and regulatory compliance.

### 1.2 Applicability
This procedure applies to:
- Adhesive-bonded placards (acrylic, polycarbonate, aluminum substrate)
- Mechanically-fastened placards (rivets, screws)
- Temporary placards (magnetic or removable adhesive)
- Interior and exterior placards (cabin, flight deck, exterior surfaces)

### 1.3 Exclusions
- Electronic displays and active signage (see ATA 46)
- Painted or engraved permanent markings (see PROC_11-03-02)
- Structural data plates attached by OEM (see component-specific ATAs)

## 2. Safety and Precautions

### 2.1 Hazards
- **Chemical exposure**: Cleaning solvents, adhesive primers, and activators
- **Sharp edges**: Metal substrate placards, cutting tools
- **Eye injury**: Solvent splashes, debris during removal
- **Inhalation risk**: Solvent vapors, adhesive fumes

### 2.2 Required Personal Protective Equipment (PPE)
- Safety glasses or face shield
- Chemical-resistant gloves (nitrile or neoprene)
- Respirator (for solvent use in confined spaces)
- Protective apron (for large placard installations)

### 2.3 Safety-Critical Considerations
- **Class 1 Critical placards** (emergency exits, oxygen, fire suppression) require RII (Required Inspection Item) inspection
- Aircraft must be in safe configuration (power off, systems de-energized)
- Temporary placards must be installed if permanent placard is removed and replacement not immediately available
- Work area must be FOD (Foreign Object Damage) controlled

### 2.4 Environmental Conditions
- Temperature: 15°C to 30°C (59°F to 86°F) for optimal adhesive performance
- Humidity: 30% to 70% RH
- Surface temperature: Must be above dew point to prevent condensation

## 3. References and Related Documents

### 3.1 Procedures
- [PROC_11-04-01: GVI for Placards and Markings](../04-GVI_DVI_INSPECTION/PROC_11-04-01_GVI-For-Placards-And-Markings_rev1.0.0_20251030.md)
- [PROC_11-06-01: Temporary Placard Management](../06-TEMPORARY_PLACARDS/PROC_11-06-01_Temporary-Placard-Management_rev1.0.0_20251030.md)
- Surface Preparation for Adhesive Bonding (see [ATA 20](../../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES_AIRFRAME/00_README.md))

### 3.2 Data Files
- [DATA_11-03-03: Placard Location Table](./DATA_11-03-03_Placard-Location-Table_rev1.0.0_20251030.csv)
- [DATA_11-05-02: Approved Adhesives and Application Data](../05-MATERIALS_AND_PROCESSES/DATA_11-05-02_Approved-Adhesives-And-Application-Data_rev1.0.0_20251030.csv)
- [DATA_11-02-02: Font Sizes and Contrast Limits](../02-PLACARD_DESIGN_AND_LEGIBILITY/DATA_11-02-02_Font-Sizes-And-Contrast-Limits_rev1.0.0_20251030.csv)

### 3.3 Schemas
- [placard.schema.json](../schemas/placard.schema.json): Placard specification
- [repair-record.schema.json](../schemas/repair-record.schema.json): Installation record

### 3.4 Standards
- [SAE AS5942](https://www.sae.org/standards/content/as5942/) - Aeronautical Labeling Requirements
- [RTCA DO-160](https://www.rtca.org/content/standards-guidance-materials) - Environmental testing requirements

## 4. Tools and Materials

### 4.1 Special Tools
- Torque wrench: 0-50 in-lbf (0-5.6 Nm) for mechanical fasteners
- Plastic scraper or spatula (for adhesive placard removal)
- Heat gun: 200-300°F (93-149°C) for adhesive softening
- Digital calipers: 0-150mm, ±0.01mm accuracy
- Colorimeter or contrast meter: for legibility verification
- UV lamp: 365nm wavelength (for fluorescent adhesive inspection)

### 4.2 Consumables
- Cleaning solvent: Isopropyl alcohol (IPA) 99% or MEK (Methyl Ethyl Ketone) per AMS 2431
- Adhesive: See DATA_11-05-02 for approved adhesives by substrate and location
- Primer: If required by adhesive specification
- Lint-free wipes: Non-shedding cloth (e.g., Texwipe TX1009)
- Masking tape: Low-residue painter's tape for alignment
- Torque seal or witness marks: For mechanical fasteners

### 4.3 Reference Materials
- Placard location drawing (from DATA_11-03-03)
- Placard artwork and specification (from placard_id)
- Installation record template (EXAMPLE_11-12-01)

## 5. Procedure - Placard Removal

### 5.1 Pre-Removal Inspection
1. Verify work order or task card authorization
2. Identify placard to be removed using placard_id or location reference
3. Photograph existing placard (for record and comparison)
4. Verify replacement placard is available (if required immediately)
5. Check if placard is safety-critical (Class 1 or Class 2)
   - If yes: Coordinate with QA for RII inspection requirements
   - If yes: Prepare temporary placard if permanent replacement not immediately available

### 5.2 Adhesive-Bonded Placard Removal

#### 5.2.1 Heat Application (for stubborn adhesives)
1. Set heat gun to 200-250°F (93-121°C)
2. Apply heat evenly across placard surface for 30-60 seconds
3. Move heat gun continuously to avoid localized overheating
4. Do not exceed 300°F to prevent substrate damage

**CAUTION**: Keep heat gun moving. Do not apply heat to same spot for more than 5 seconds. Monitor substrate for discoloration or warping.

#### 5.2.2 Placard Removal
1. Using plastic scraper, gently lift one corner of placard
2. Apply steady, even pressure to peel placard away from surface
3. Peel at low angle (15-30 degrees) to minimize substrate damage
4. If adhesive is brittle, reapply heat as needed
5. Remove placard completely

#### 5.2.3 Adhesive Residue Removal
1. Apply isopropyl alcohol (IPA) or MEK to adhesive residue
2. Allow solvent to penetrate for 30-60 seconds
3. Use plastic scraper to gently remove softened adhesive
4. Repeat until all adhesive residue is removed
5. Wipe surface clean with IPA and lint-free cloth
6. Inspect surface for damage, corrosion, or defects
   - If damage found: Document with photos and notify engineering

### 5.3 Mechanically-Fastened Placard Removal

#### 5.3.1 Rivet Removal
1. Center punch rivet head
2. Drill rivet head with appropriate drill bit (typically 1/16" smaller than rivet shank)
3. Remove rivet head
4. Use punch to drive rivet shank out
5. Inspect hole for damage or elongation
   - If damage found: Notify engineering for repair disposition

#### 5.3.2 Screw Removal
1. Select correct screwdriver or bit (flathead, Phillips, Torx, etc.)
2. Apply steady downward pressure while unscrewing
3. If screw is seized: Apply penetrating oil and wait 15 minutes, then retry
4. Remove screw and inspect threads
5. Retain hardware if reusable per engineering disposition

### 5.4 Temporary Placard Removal
1. For magnetic placards: Lift gently to release magnetic attraction
2. For removable adhesive: Peel slowly at low angle
3. Check surface for adhesive residue
4. Clean with IPA if residue present

## 6. Procedure - Surface Preparation

### 6.1 Cleaning

**CRITICAL**: Proper surface preparation is essential for adhesive bond strength and placard longevity.

1. Clean installation area with IPA and lint-free cloth
2. Wipe in one direction (do not scrub in circles)
3. Allow IPA to evaporate completely (1-2 minutes)
4. Repeat cleaning with fresh cloth until cloth shows no contamination
5. Do not touch cleaned area with bare hands

### 6.2 Abrasion (for metal substrates only)
1. For aluminum or stainless steel surfaces: Lightly abrade with Scotch-Brite pad (red or maroon)
2. Abrade in crisscross pattern to create mechanical key
3. Do not over-abrade (surface should have dull, uniform finish)
4. Remove abrasion dust with IPA and lint-free cloth
5. Allow to dry completely

### 6.3 Priming (if required by adhesive specification)
1. Verify primer is specified in adhesive data sheet
2. Check primer shelf life and lot number
3. Apply thin, even coat of primer with brush or swab
4. Allow primer to dry per manufacturer's specification (typically 5-15 minutes)
5. Do not apply adhesive before primer is fully dried

## 7. Procedure - Placard Installation

### 7.1 Pre-Installation Verification
1. Verify placard part number matches work order
2. Inspect placard for damage, contamination, or defects
3. Check placard legibility:
   - Text is clear and readable
   - Colors are correct per specification
   - No scratches, cracks, or fading
4. Verify placard effectivity (MSN, configuration)
5. Check Certificate of Conformance (CofC) is available for traceability

### 7.2 Location Verification
1. Retrieve placard location from DATA_11-03-03 or installation drawing
2. Measure and mark installation location using aircraft datum references:
   - Fuselage Station (FS) in mm from datum
   - Buttock Line (BL) in mm from centerline
   - Water Line (WL) in mm from datum
3. Use masking tape to mark placard outline for alignment
4. Verify no interference with adjacent equipment or structures
5. Confirm viewing angle and distance meet specification (DATA_11-02-02)

### 7.3 Adhesive-Bonded Placard Installation

#### 7.3.1 Adhesive Preparation
1. Verify adhesive type matches specification (DATA_11-05-02)
2. Check adhesive shelf life and storage conditions
3. For two-part adhesives:
   - Mix components per manufacturer's ratio (e.g., 10:1, 1:1)
   - Mix thoroughly for specified time (typically 2-3 minutes)
   - Use mixed adhesive within pot life (typically 5-45 minutes)
4. For single-part pressure-sensitive adhesive (PSA):
   - Peel release liner just before application
   - Avoid touching adhesive surface

#### 7.3.2 Adhesive Application
1. Apply thin, even layer of adhesive to placard back or installation surface
   - For PSA: No application needed, pre-applied adhesive
   - For liquid adhesive: Use brush, roller, or applicator for uniform coverage
2. Avoid excess adhesive that will squeeze out during installation
3. Do not apply adhesive to areas that will not contact substrate

#### 7.3.3 Placard Placement
1. Align placard with masking tape outline
2. For PSA: Position placard, press center firmly, then work outward to edges
3. For liquid adhesive: Position placard, apply uniform pressure for 30-60 seconds
4. Use roller or squeegee to remove air bubbles and ensure full contact
5. Check alignment relative to aircraft datum references
   - Tolerance: ±0.5mm for cockpit, ±1.0mm for cabin

#### 7.3.4 Adhesive Cure
1. Follow adhesive manufacturer's cure schedule:
   - Room temperature cure: Typically 24-72 hours for full strength
   - Elevated temperature cure: Per adhesive specification (if required)
2. Apply weights or clamps if specified (avoid excessive pressure)
3. Protect installation from contamination during cure
4. Do not subject to service loads until full cure achieved

### 7.4 Mechanically-Fastened Placard Installation

#### 7.4.1 Rivet Installation
1. Insert rivet through placard and into pre-drilled hole
2. Verify rivet length is correct for grip range
3. Use rivet gun to set rivet per standard practices (ATA 20)
4. Inspect rivet head for proper formation (mushrooming)
5. Check rivet is flush or slightly below surface

#### 7.4.2 Screw Installation
1. Insert screw through placard hole and into tapped hole or nut plate
2. Hand-tighten screw until snug
3. Apply final torque using calibrated torque wrench:
   - Typical torque: 5-12 in-lbf (0.6-1.4 Nm) for #6 or #8 screws
   - Refer to ATA 20 torque tables for specific fastener
4. Apply torque seal or witness mark across screw head and surface
5. Verify screw is not over-torqued (no thread stripping or substrate cracking)

### 7.5 Temporary Placard Installation
1. For magnetic placards: Position placard on ferrous surface, press firmly
2. For removable adhesive: Position placard, press firmly for 10-15 seconds
3. Verify placard is secure and will not detach during normal operations
4. Mark placard with installation date and removal date (if time-limited)
5. Record temporary placard installation in aircraft log

## 8. Quality Control and Inspection

### 8.1 Visual Inspection
1. Verify placard is correctly positioned per location specification
2. Check placard is level and aligned (use spirit level for large placards)
3. Inspect for air bubbles, wrinkles, or gaps under adhesive placard
4. Verify no adhesive squeeze-out or contamination
5. Check placard surface is clean and free of fingerprints or smudges

### 8.2 Legibility Verification
1. View placard from normal viewing distance (per DATA_11-02-02)
2. Verify text is legible and symbols are recognizable
3. Measure contrast ratio using colorimeter (if available):
   - Minimum 4.5:1 for normal text
   - Minimum 7:1 for safety-critical text
4. Check under different lighting conditions (day, night, emergency if applicable)
5. For illuminated placards: Verify illumination is uniform and adequate

### 8.3 Adhesion Test (for adhesive-bonded placards)
1. After initial cure (minimum 1 hour), perform tape test:
   - Apply masking tape to placard edge
   - Pull tape at 90-degree angle with moderate force
   - Placard should not lift or separate from substrate
2. For critical applications: Perform pull test per specification (if required)
3. If adhesion is inadequate: Remove placard, repeat surface preparation, reinstall

### 8.4 Dimensional Verification
1. Measure placard position relative to datum references
2. Verify position is within tolerance (±0.5mm cockpit, ±1.0mm cabin)
3. Measure placard dimensions if dimensional accuracy is critical
4. Document any out-of-tolerance conditions and notify engineering

### 8.5 Required Inspection Item (RII) Hold Point
**For Class 1 Critical and Class 2 Major placards only:**
1. Notify Quality Assurance (QA) inspector that installation is ready for inspection
2. Do not proceed beyond this point until RII inspection is complete
3. QA inspector shall verify:
   - Correct placard part number and effectivity
   - Proper location and alignment
   - Adequate legibility and contrast
   - Adhesion or fastener torque acceptable
   - Installation record complete and accurate
4. QA inspector signs and stamps installation record
5. Proceed to final documentation

## 9. Documentation and Traceability

### 9.1 Installation Record
Complete installation record per EXAMPLE_11-12-01 schema including:
- Record ID (unique)
- Aircraft MSN and registration
- Placard ID and part number
- Installation date and time
- Location (FS, BL, WL, zone)
- Materials used (placard S/N, adhesive lot, CofC references)
- Personnel (installer name and certification, inspector name and stamp)
- Quality checks performed (legibility, adhesion, dimensional)
- Artwork file and SHA-256 hash
- Approvals (QA signature for RII items)

### 9.2 Logbook Entry
Make entry in aircraft logbook or CMMS:
- "Installed placard [placard_id] at [location] per PROC_11-03-01 rev 1.0.0. Installation record [record_id]. Inspector [name/stamp]."
- For temporary placards: Include removal date or flight hour limit

### 9.3 Traceability Data
Record the following for audit trail:
- Placard artwork version and SHA-256 hash
- Material lot numbers and CofC references
- Procedure revision followed
- Deviations from procedure (if any) with engineering authorization
- Photos: before removal, after surface preparation, after installation

## 10. Troubleshooting

| Problem | Possible Cause | Corrective Action |
|---------|----------------|-------------------|
| Placard will not adhere | Surface contamination | Re-clean surface with IPA, allow to dry, reapply adhesive |
| Placard will not adhere | Adhesive expired or improperly stored | Use fresh adhesive within shelf life, verify storage temperature |
| Air bubbles under placard | Insufficient pressure during application | Use roller or squeegee to work bubbles outward |
| Placard position out of tolerance | Measurement error or alignment issue | Remove placard (if adhesive not fully cured), reposition, reinstall |
| Adhesive squeezes out excessively | Too much adhesive applied | Remove excess adhesive with IPA immediately, re-trim if necessary |
| Placard illegible | Wrong font size or contrast | Verify placard specification, replace with correct placard |
| Rivet spins or does not set | Hole oversized or rivet undersized | Notify engineering for larger rivet or bushing repair |
| Screw strips threads | Over-torque or threads damaged | Helicoil or thread insert repair per ATA 20, notify engineering |

## 11. Completion and Sign-Off

### 11.1 Installer Certification
- Installer name: ___________________________
- Certification number: _____________________
- Signature: _________________ Date: ________

### 11.2 Inspector Certification
- Inspector name: ___________________________
- Certification/Stamp: _______________________
- Signature: _________________ Date: ________

### 11.3 RII Inspector Certification (Class 1 and Class 2 placards only)
- RII Inspector name: ________________________
- RII Stamp number: _________________________
- Signature: _________________ Date: ________

---
**END OF PROCEDURE**
