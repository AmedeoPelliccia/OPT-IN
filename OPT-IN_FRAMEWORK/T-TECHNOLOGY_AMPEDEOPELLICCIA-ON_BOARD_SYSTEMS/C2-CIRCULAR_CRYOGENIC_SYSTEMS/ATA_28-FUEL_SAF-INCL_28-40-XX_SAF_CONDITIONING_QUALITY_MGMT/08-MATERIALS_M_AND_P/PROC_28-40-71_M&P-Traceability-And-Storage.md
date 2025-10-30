# PROC_28-40-71 — Materials & Processes Traceability and Storage

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Establishes requirements for materials traceability, Certificate of Conformance (CoC), and proper storage of cryogenic system materials.

## Material Receiving

All materials for cryogenic service must be received with:
1. Certificate of Conformance (CoC) or Certificate of Analysis
2. Material Test Report (MTR) with chemical composition and mechanical properties
3. Heat/Lot number marked on material
4. Traceability to ASTM, ASME, or equivalent specification

## CoC Requirements

Mandatory information on CoC:
- Manufacturer name and address
- Purchase order and line item
- Material specification and grade
- Heat/Lot number
- Quantity and dimensions
- Test results (chemical analysis, mechanical properties, impact testing)
- Statement of conformance to specification
- Authorized signature and date

## Storage Requirements

**Stainless Steel and Aluminum:**
- Store indoors in dry environment
- Separate from carbon steel to prevent contamination
- Protect from moisture and corrosion
- No shelf life restriction

**CFRP and Prepreg:**
- Store in freezer at -18°C (0°F) or per manufacturer specification
- Sealed packaging (moisture barrier bags)
- Log in/out times for shelf life tracking
- Typical shelf life: 6-12 months at -18°C

**Elastomers and Seals:**
- Store in cool, dry, dark location
- Original sealed containers
- Track shelf life per manufacturer specification
- Typical shelf life: 10-15 years for PTFE, 5-10 years for elastomers

**Insulation Materials:**
- Store in dry location
- Protect from moisture and contamination
- Rolled materials stored vertically to prevent deformation

## Traceability

**Material Marking:**
All materials must be marked with heat/lot number using:
- Stamping (for metals, in non-critical areas)
- Engraving
- Tags (for items too small to mark directly)

**DPP Entry:**
Each material lot must have Digital Product Passport entry including:
- Material specification and grade
- Heat/Lot number
- CoC reference and SHA-256 hash
- Receipt date
- Storage location
- Usage tracking (which components used this material)

## Nonconforming Material

Materials without proper CoC or outside storage specifications:
1. Segregate and quarantine
2. Initiate NCR per PROC_28-40-90
3. Engineering disposition required
4. Do not use until resolved

## References

- DATA_28-40-70: Approved Materials and CoC
- PROC_28-40-90: Nonconformance Handling
- PROC_28-40-80: DPP Entry and Record

---

*Material traceability is mandatory for all flight-critical components.*
