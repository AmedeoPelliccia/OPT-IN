# Procedure: 51-05-01 - Lightning Strike Protection Mesh Repair
**Revision:** 1.0.0

## 1. Purpose
This procedure defines the methodology for restoring lightning strike protection (LSP) after composite structural repairs.

## 2. Applicability
All composite repairs on lightning strike zones (LSZ) as defined in aircraft lightning protection plan. Typical areas:
- Wing leading edges
- Fuselage nose and tail
- Vertical and horizontal stabilizers
- Engine nacelles

## 3. Prerequisites
- **Personnel:** COMP-REPAIR-L3 with LSP-CERT add-on certification
- **Structural Repair:** Complete and accepted (post-repair NDT passed)
- **Surface Condition:** Clean, dry, cured (minimum 24 hours since paint/primer)

## 4. Materials and Equipment
- **LSP Mesh:** Expanded copper foil per `DATA_51-06-01` (LSP-MESH-01, 195 g/m²)
- **Conductive Adhesive:** Silver-filled epoxy or conductive film adhesive
- **Bonding Straps:** Braided copper (if required for large repairs)
- **Resistance Meter:** 4-wire milliohm meter, calibrated, accuracy ±1 mΩ
- **Cutting Tools:** Scissors (dedicated to copper cutting), templates
- **PPE:** Cut-resistant gloves (copper edges are sharp)

## 5. LSP Mesh Installation Procedure

### 5.1 Mesh Sizing and Cutting
1. Measure repair area boundaries
2. Cut LSP mesh to extend 25-50 mm beyond repair perimeter (overlaps existing mesh)
3. Create smooth, rounded corners (no sharp edges or points)
4. If repair crosses existing mesh seams, plan overlap pattern (minimum 25 mm overlap)

### 5.2 Surface Preparation
1. Lightly sand repair area with 320-400 grit (to promote adhesion)
2. Clean with IPA (isopropyl alcohol); allow to dry
3. Mark mesh position on surface with pencil or masking tape

### 5.3 Adhesive Application
**Option A: Film Adhesive (Preferred for Large Areas)**
1. Cut conductive film adhesive to same size as mesh
2. Remove backing film
3. Position adhesive on repair area
4. Place mesh on adhesive; smooth with squeegee
5. Cure per adhesive manufacturer's specification (typically 30-60 minutes at 120°C or 24 hours at room temperature)

**Option B: Wet Adhesive (Preferred for Small Repairs)**
1. Mix conductive epoxy per manufacturer's instructions (typically 10:1 ratio)
2. Apply thin, uniform coat to repair surface using brush or spatula
3. Position mesh; press firmly into adhesive
4. Squeegee to remove air bubbles and excess adhesive
5. Allow to cure (typically 24 hours at room temperature)

### 5.4 Overlap Bonding
1. Where new mesh overlaps existing mesh:
   - Ensure minimum 25 mm overlap
   - Apply conductive adhesive to overlap zone
   - Press together firmly
   - If using film adhesive, heat overlap zone with heat gun (120°C, 5 minutes)

2. For high-current zones (wing leading edge), add bonding strap:
   - Drill small hole through both mesh layers (edge of overlap)
   - Install copper rivet or screw with conductive washer
   - Apply sealant around fastener (moisture seal)

### 5.5 Mesh Trimming (if required)
1. After adhesive cure, trim excess mesh if needed (leave 25 mm minimum overlap)
2. Fold edges under or seal with conductive adhesive (no sharp edges exposed)

## 6. Electrical Continuity Verification

### 6.1 Resistance Measurement
1. **Equipment Setup:**
   - Use 4-wire Kelvin measurement method
   - Apply current: 1-10 A (to overcome contact resistance)
   - Measure across repair: Place probes 150 mm apart, spanning repair center

2. **Measurement Points:**
   - Minimum 4 measurements per repair (0°, 90°, 180°, 270° orientations)
   - Additional measurements across each overlap seam

3. **Acceptance Criteria:**
   - Resistance ≤ 10 mΩ across any 150 mm span
   - No open circuits (infinite resistance)
   - Resistance should be uniform (variation <5 mΩ indicates poor bonding)

### 6.2 Troubleshooting High Resistance
| Resistance Value | Likely Cause | Corrective Action |
|------------------|--------------|-------------------|
| 10-20 mΩ | Marginal bond or overlap | Re-apply pressure; add bonding strap if needed |
| 20-100 mΩ | Poor adhesive coverage | Remove mesh; clean; re-apply with fresh adhesive |
| >100 mΩ or open | Mesh not contacting parent mesh | Inspect overlap; may need to remove and enlarge mesh |

## 7. Protective Finish
1. Apply conductive primer (if required by paint scheme)
2. Apply topcoat paint (use conductive paint in LSZ areas if specified)
3. Re-verify resistance after paint cure (acceptance: ≤15 mΩ to account for paint resistance)

## 8. Documentation
Record in repair record:
- LSP mesh material specification and batch/lot number
- Adhesive type and batch number
- Resistance measurements (all values and locations)
- Photos of mesh installation and overlap areas
- Technician ID and date

## 9. Special Considerations

### 9.1 Radome and Non-Conductive Areas
- Use thin mesh (95 g/m²) to minimize RF interference
- Verify radome transparency per aircraft specification after repair

### 9.2 High-Voltage Areas (Near Antennas)
- Ensure LSP mesh is grounded to aircraft structure via bonding strap
- Verify bonding strap resistance: ≤2.5 mΩ to ground

### 9.3 Fuel Tank Areas
- Use non-sparking tools
- Ensure all fasteners used in mesh attachment are bonded (no galvanic corrosion)

## 10. Quality Assurance
- LSP repairs witnessed by inspector (100% inspection)
- Resistance measurements recorded in QA database
- Aircraft lightning protection test performed after major repairs (per aircraft maintenance manual)

## 11. Cross-References
- `DATA_51-06-01`: LSP mesh and adhesive specifications
- `PROC_51-04-02`: Composite scarf repair (LSP restoration follows structural repair)
- Aircraft Lightning Protection Plan (defines LSZ and requirements)
- ATA 24: Electrical bonding and grounding standards

---
**Document Control:**
- **Owner:** Electrical & Structural Engineering
- **Approved By:** Chief Engineer, Electrical Systems Engineer
- **Effective Date:** 2025-10-27
- **Next Review:** 2027-10-27
