# DESC_53-02-01 — Primary Load Path Description  
**Chapter:** ATA 53 — Fuselage / 02 — Primary Structure  
**Revision:** 1.0.0  
**Effective date:** 2025-10-27  
**Owner:** Structural Design Engineering  
**Scope:** Describe the primary load paths for the AMPEL360 BWB fuselage and the structural interfaces that must be restored by repair actions.

---

## Purpose — short
Define how flight, ground and operational loads flow through the fuselage primary structure. Identify components that form the primary load path. Specify critical interfaces and locations that require special inspection and repair controls. Link to numeric limits and repair methods in `DATA_53-02-04` and ATA-51.

---

## Definitions and coordinate system
- **Primary load path:** The continuous set of structural members and joints that transmit operational loads to the airframe supports or to the ground without redistribution through non-primary elements.  
- **BWB note:** The AMPEL360 blended wing-body integrates wing and fuselage skins into a continuous torsion and bending box. Skin is the principal load carrying element.  
- **Axes:** X = longitudinal (positive forward), Y = lateral (positive right), Z = vertical (positive down). **Stations** are given along X. Zones follow ATA conventions.

---

## Primary structural components
1. **Load-bearing skin (CFRP monolithic / sandwich panels).**  
   - Carries membrane loads (axial, hoop), shear flow and bending. Primary element in BWB.  
2. **Spars / Wing carry-through box.**  
   - Transmit aerodynamic wing lift and bending into the fuselage box. Integral with skin and frames.  
3. **Stringers and stiffeners.**  
   - Provide local bending stiffness and prevent panel buckling. Transfer skin loads into frames and floor beams.  
4. **Frames / Frames caps / Frame webs.**  
   - Distribute concentrated loads around openings and support cutouts, doors and floors. Provide circumferential stiffness.  
5. **Floor beams and keel / carry-through beams.**  
   - Carry concentrated cabin and landing/gear reaction loads into frames and skin. In BWB, floor beams form an internal load distribution network.  
6. **Attachment fittings and fittings pads.**  
   - Interface for pylons, landing gear, landing loads, engine attachments, and major GSE supports. Usually metallic and co-bonded or bolted to reinforced local structure.  
7. **Splice plates, shear ties and fastened joints.**  
   - Join panels and transfer shear across panel boundaries.  
8. **Bonded joints and co-cured doublers.**  
   - Restore continuous load path in composite skins when used per ATA-51 methods.

---

## Principal load cases and flow (high level)
1. **Wing lift / cruise bending:**  
   - Aerodynamic lift → wing spars → wing carry-through box → fuselage skin and spars → frames → keel / fittings → reaction path to empennage/landing gear.  
2. **Global bending (pitch):**  
   - Aerodynamic and inertial moments → skin (membrane+bending) and spars → stringers → frames → floor and keel.  
3. **Torsion (yaw/roll induced):**  
   - Distributed shear flow in skin → shear ties, spars and frames → attachment fittings. Skin shear stiffness is primary.  
4. **Pressurization (hoop stress):**  
   - Internal pressure → hoop and longitudinal membrane in skin → frames and stringers → pressure bulkheads and seals.  
5. **Landing / ground reactions:**  
   - Gear loads → fittings → floor beams/keel → frames and skin → distributed to airframe support points. Local peak loads high.  
6. **Gusts and dynamic loads:**  
   - Rapid load redistribution through skin, spars and frames. Fatigue critical for cutouts and fasteners.  
7. **Local concentrated loads (doors, cutouts, service points):**  
   - Local reinforcement transmits load into surrounding primary net. Door frames and cutouts create stress raisers.

---

## Load path characteristics for AMPEL360 BWB
- **Distributed, non-linear paths.** Loads follow several parallel routes through skins, stiffeners and internal spars. Repairs must restore the original distribution.  
- **Membrane—bending coupling.** Composite laminate coupling causes changes in bending terms when ply orientation altered. Repairs that change laminate must be verified by FEA/qualification.  
- **Integrated torsion box.** Wing, fuselage and floor beams act as a single torsion box. Any repair that severs this box requires engineering disposition.  
- **High-risk zones:** wing carry-through, door cutouts, pylon/engine attachment pads, floor-to-frame junctions, splice joints, and pressure bulkhead areas.

---

## Interfaces and critical joints
- **Skin→stringer→frame** interface. Fastener/adhesive integrity needed. Typical failure modes: rivet/fitting pull-through, skin delamination at stud/boss, bolt hole elongation.  
- **Spar→carry-through→skin** joint. Must transmit bending and shear. Metal fittings in CFRP zones require pad reinforcement and controlled hole patterns.  
- **Attachment fittings (engine/gear/pylon).** Local metallic fittings bonded/bolted to reinforced laminate. Fastener preload and bearing capacity mandatory.  
- **Splices and shear ties.** Must maintain shear flow continuity. Bolted splices must meet torque retention and shear capacity. Bonded splices must meet void fraction and peel/tensile acceptance.  
- **Pressure bulkheads and seals.** Bulkheads are ultimate load paths for pressurization. Seal attachments and frames transfer hoop loads.

---

## Damage modes that break the load path
- **Composite:** fiber breakage, matrix cracking, delamination, core crush, adhesive bond failure, ply drop-offs. Non-visible damage (NVD) common.  
- **Metallic:** crack, corrosion pits, fretting, rivet pull-through, bearing failure.  
- **Fasteners and fittings:** torque loss, fatigue fracture, hole elongation.  
- **Cutouts and repairs:** poor scarf/profile geometry, inadequate ply orientation, incomplete cure, voids, contaminations.

---

## Repair and qualification implications
- **Restore continuous path.** Every repair must restore the original load path or provide an approved alternative validated by FEA and test evidence. Do not rely on local, non-primary members to carry primary loads.  
- **FEA and test coupons.** Any repair that alters laminate, joint stiffness or load introduction requires FEA substantiation and coupon/full-scale testing per ATA-51 qualification rules.  
- **Bonded repairs.** Follow scarf ratios, cure cycles, and NDT acceptance (C-scan void %). Post-repair C-scan and peel/tensile tests required.  
- **Bolted repairs.** Restore bearing and shear through approved fastener classes and torque. Use oversize/clearance rules only with engineering disposition.  
- **Splice/patch design.** Use tapers, progressive ply drop, and load transfer doublers per ATA-51 and DATA_53-02-04 limits.  
- **LSP and continuity.** For conductive paths, ensure lightning strike mesh continuity restored. Electrical continuity tests mandatory after repair.

---

## Inspection priorities and intervals
- Inspect high-risk zones more frequently: wing carry-through, door cutouts, bulkheads, attachment fittings, splice locations. See `DATA_53-08-04` and `DATA_53-02-04` for numeric intervals.  
- Use NDT appropriate to material and damage type: C-scan/ultrasonic for delamination and core crush. Eddy current / DPT for surface cracks. Thermography and shearography for bonded assemblies.  
- Verify fastener torque retention and bearing clearance after any repair.

---

## Data and traceability requirements
- Every action that affects the primary load path must be logged in a `repair-record` per chapter schema. Include: material batch numbers, cure records, torque logs, NDT evidence with file hashes, FEA version and test reports. See `schemas/repair-record.schema.json`.  
- Sidecar metadata must reference effectivity (MSN/config) and approvals.

---

## Safety warnings
- Do not perform any cutout, hole enlargement or bonded/bolted alteration that changes the primary load path without engineering authorization. Such actions may require full-scale requalification.  
- Composite sanding/grinding must follow M&P controls to avoid fiber loss that reduces local stiffness. Respiratory protection required.

---

## Cross references
- **ATA-20** Workmanship and fastener standards.  
- **ATA-51** Composite repair methods, qualification, and NDT.  
- **DATA_53-02-04** Frame/Stringer strength limits and numeric acceptance limits.  
- **ATA-08/11** for testing and qualification plans.

---

## Effectivity
Applicable to AMPEL360 BWB baseline configuration and all production blocks unless otherwise stated in `INDEX.meta.yaml` effectivity. Any deviation shall be recorded and approved.

---

## Revision history
- **1.0.0** 2028-11-01 — Initial release.
