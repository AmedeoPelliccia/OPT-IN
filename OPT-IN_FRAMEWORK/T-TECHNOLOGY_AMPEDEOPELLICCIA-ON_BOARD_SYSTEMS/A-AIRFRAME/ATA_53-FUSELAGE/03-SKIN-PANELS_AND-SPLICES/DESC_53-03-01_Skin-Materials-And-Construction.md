---
schema_version: "1.1"
id: "DESC_53-03-01_Skin-Materials-And-Construction_rev1.0.0"
document:
  type: "DESC"
  title: "53-03-01: Skin Materials and Construction"
  revision: "1.0.0"
  effective_date: "2025-10-27"
effectivity: { msn: "ALL" }
safety:
  hazards: ["Composite dust","Chemical exposure","ESD"]
  criticality: "Flight-Critical"
training_required: ["COMP-MFG-L2","COMP-REPAIR-L3"]
approvals:
  - { authority: "Structural Materials Engineering", status: "Released", date: "2025-10-27" }
integrity: { checksum: { algorithm: "sha256", value: "" } }
---
# DESC_53-03-01 — Skin Materials and Construction
**Chapter:** ATA 53 — Fuselage / 03 — Skin Panels and Splices  
**Revision:** 1.0.0  
**Effective date:** 2025-10-27  
**Owner:** Structural Materials Engineering

## 1.0 Purpose
Define materials, layups, thickness zoning, manufacturing and joining methods for the AMPEL360 BWB fuselage skin. Provide minimum QA, inspection and traceability requirements for skin panels and splices.

## 2.0 Scope
Applies to all fuselage skin panels, splices and skin-to-structure interfaces on AMPEL360 BWB baseline and production configurations unless otherwise stated in `INDEX.meta.yaml`.

## 3.0 Base Material
- **Material:** Carbon Fiber Reinforced Polymer (CFRP)  
- **Fiber:** Toray T800S or OEM equivalent  
- **Resin:** Cytec 5320-1 epoxy or OEM equivalent (M&P to specify accepted substitutes)  
- **Forms:** Unidirectional prepreg tape, woven fabric, and tailored ply preforms

## 4.0 Typical Layup (example)
**Outer surface (external to internal):**
- LSP mesh (conductive mesh embedded in outer ply)  
- [45/0/-45/90]s base layup  
- Additional 0° plies for longitudinal strength as required by location  
- Additional ±45° plies for shear where shown on drawing

**Inner surface:**
- Moisture barrier coating and inner cosmetic plies as specified

> All layups must follow part-specific ply book. Any deviation requires engineering disposition and FEA substantiation.

## 5.0 Thickness Zones
- **Zone A — Low Load Areas:** 4–6 mm. Layup: [45/0/-45/90]2s. Examples: upper aft, low-stress belly.  
- **Zone B — Standard Load Areas:** 6–8 mm. Layup: [45/0/-45/90]3s + additional 0° plies. Examples: general cabin panels.  
- **Zone C — High Load Areas:** 8–12 mm. Layup: [45/0/-45/90]4s + additional 0° and ±45° plies. Examples: wing–body integration, gear/door surrounds.

Numeric thickness, ply counts and ply orientations are defined in the part ply book and master laminate schedules.

## 6.0 Manufacturing Process
- **Prepreg layup:** Hand layup or Automated Tape/Placement per part program.  
- **Tooling:** Clean-room or controlled environment per `PROC_51-41-01`.  
- **Cure:** Autoclave cure 180°C at 6 bar (example); follow material M&P for actual cycle.  
- **Post-cure / Conditioning:** Per resin M&P. Room-temperature aging until moisture equilibrium as required.  
- **Inspection:** Mandatory ultrasonic C-scan of each cured panel. Additional shearography/thermography for bonded assemblies.

## 7.0 Protective Systems
- **External finish:** Paint system per AMPEL360 paint spec.  
- **Lightning Strike Protection (LSP):** Copper or aluminum mesh embedded in outer ply or conductive coating. Repairs in LSP zones must restore electrical continuity and meet resistance targets.  
- **Moisture protection:** Sealed edges, edge doublers and internal moisture barrier coatings per M&P.

## 8.0 Joining Methods
- **Skin-to-frame:** Bonded with secondary mechanical fastening. Adhesives and fastener classes per M&P and ATA-20 torque standards.  
- **Skin-to-stringer:** Co-cured or co-bonded as specified on assembly drawings.  
- **Skin splices:**  
  - Bonded scarf joints for CFRP monolithic with scarf ratios per `DATA_53-03-04`.  
  - Co-cured pads or bolted doubler plates for sandwich constructions.  
  - Hybrid metal-to-composite splices require pad, controlled hole pattern and FEA substantiation.

## 9.0 Inspection & Acceptance
- **Mandatory:** C-scan for delamination, ultrasonic for core crush, thermography/shearography as applicable.  
- **Acceptance benchmarks:** Defined in `DATA_53-03-04` (max delam, max void fraction, ply drop limits).  
- **Post-repair:** Bonded splices require C-scan and peel/tensile verification per ATA-51. LSP continuity test (4-wire) required where applicable.

## 10.0 Materials, M&P and Traceability
- All raw materials and adhesives must have CoC and lot/batch traceability. Record: material spec, lot, date received, shelf life, and storage conditions.  
- Maintain ply book, cure logs (thermocouple traces), and NDT files with sha256 checksums in repair/production records.

## 11.0 Safety & Handling
- Composite dust control, certified respirators for sanding/grinding, and chemical PPE for adhesives/solvents are mandatory.  
- Follow ESD and LSP handling precautions for conductive meshes.

## 12.0 Cross-references
- ATA-20 — Workmanship and fastener standards  
- ATA-51 — Composite repair methods and qualification (bonded scarf repair)  
- DATA_53-03-04 — Skin splice details and numeric limits  
- PROC_51-41-01 — Composite clean-room and surface prep

## 13.0 Revision history
- **1.0.0 — 2025-10-27** Initial issue
