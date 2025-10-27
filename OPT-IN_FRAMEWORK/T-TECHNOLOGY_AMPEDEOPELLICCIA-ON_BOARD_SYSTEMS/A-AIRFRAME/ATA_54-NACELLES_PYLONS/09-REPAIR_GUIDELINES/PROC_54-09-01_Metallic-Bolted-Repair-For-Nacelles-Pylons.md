# PROC 54-09-01: Metallic Bolted Repair for Nacelles and Pylons

**Revision:** 1.0.0  
**Effectivity:** All AMPEL360 aircraft

## Purpose
This procedure describes bolted repair methods for metallic (aluminum and titanium) nacelle and pylon structures.

## Critical Warning
**WARNING:** Repairs to primary load-path elements (pylon spars, engine mount fittings) require Engineering Disposition before commencing work. This procedure covers only secondary structure repairs within SRM limits.

## Applicability
- Aluminum core cowl panels
- Non-primary pylon structure
- Access panel repairs
- Fairing attachments

## NOT Applicable To
- Pylon main spars or ribs
- Engine mount fittings
- Primary attach fittings
- Any cracks in primary structure

## Repair Philosophy
Bolted repairs restore structural integrity through:
- Mechanical fastening (Hi-Lok, lockbolts)
- Doubler plates to redistribute loads
- Proper edge distance and spacing per ATA 51

## Materials (Per DATA 54-09-04)
- Doubler plates: Same material and thickness as parent structure
- Fasteners: Hi-Lok or lockbolts per specification
- Sealant: Fuel-resistant sealant for fuel zone areas
- Primer and paint: Per ATA 20

## Damage Assessment
1. Measure damage size (length, width, depth)
2. Classify damage per `/schemas/damage-classification.schema.json`
3. Verify damage is within SRM limits:
   - Single dent < 50 mm diameter
   - Single crack < 25 mm length (non-propagating)
   - Corrosion depth < 10% of material thickness

## Repair Procedure

### 1. Preparation
- Remove paint from repair area (extend 50 mm beyond damage)
- Clean with solvent per ATA 20
- Perform NDT to verify damage extent
- Mark repair boundaries

### 2. Damage Removal
- For cracks: Drill stop-holes at crack ends (4.8 mm dia)
- For dents: Blend out if depth < 0.5 mm, otherwise remove material
- For corrosion: Remove all corroded material, feather edges
- Create smooth transition (no sharp corners)

### 3. Doubler Design and Fabrication
- Doubler material: Same as parent structure
- Doubler thickness: Equal to or greater than parent
- Doubler size: Extend 40 mm beyond damage in all directions
- Round all corners (radius ≥ 6 mm)

### 4. Fastener Layout
- Fastener type: Hi-Lok (CRES) or equivalent
- Fastener size: Per DATA 54-09-04
- Edge distance: Minimum 2.5 x fastener diameter
- Spacing: 5-7 x fastener diameter
- Rows: Minimum 2 rows around perimeter

### 5. Drilling
- Drill pilot holes 0.5 mm undersize
- Drill final size per fastener specification
- Deburr all holes
- Remove all chips and debris

### 6. Assembly
- Apply sealant to doubler mating surface (if in fuel zone)
- Position doubler with alignment pins
- Install fasteners from skin side
- Torque fasteners per DATA 54-09-04
- Install collars/nuts per specification
- Verify proper fastener grip length

### 7. Finishing
- Remove excess sealant
- Apply corrosion protection (primer)
- Apply topcoat paint to match surrounding area
- Mark repair with permanent identification

## Inspection and Testing
- Visual inspection for proper assembly
- Torque check of all fasteners
- Seal integrity check (if in sealed area)
- LSP continuity test (if LSP area)

## Documentation
- Complete repair record per `/schemas/repair-record.schema.json`
- Include:
  - Damage description and size
  - Repair method and materials used
  - Fastener type, size, and quantity
  - NDT results (before and after)
  - Photographs of damage and completed repair

## Acceptance Criteria
- All fasteners properly torqued
- No gaps between doubler and skin
- Smooth surface contour
- Proper sealant application (if required)
- LSP continuity within limits (if applicable)

## References
- ATA 20: Standard structural practices
- ATA 51: Structural repair manual
- DATA 54-09-04: Approved materials and specifications

**Rev 1.0.0 (2028-12-05):** Initial release
