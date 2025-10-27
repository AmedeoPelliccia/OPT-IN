---
schema_version: "1.1"
id: "PROC_53-02-03_Frame-Repair-And-Splice_rev1.0.0"
document:
  type: "PROC"
  title: "53-02-03: Frame Repair and Splice Procedure"
  revision: "1.0.0"
  effective_date: "2025-10-27"
effectivity: { msn: "ALL" }
safety:
  hazards: ["Fall from height","Confined space","Composite dust","Chemical exposure"]
  criticality: "Flight-Critical"
training_required: ["STRUCT-REPAIR-L3","COMP-REPAIR-L3"]
approvals:
  - { authority: "Structural Repair Engineering", status: "Released", date: "2025-10-27" }
integrity: { checksum: { algorithm: "sha256", value: "" } }
---
# PROC_53-02-03 — Frame Repair and Splice Procedure
**Revision:** 1.0.0  
**Effective date:** 2025-10-27  
**Owner:** Structural Repair Engineering

## 1.0 Purpose
Define requirements and stepwise actions to repair and splice damaged fuselage frames. Restores structural integrity and original load path for AMPEL360 BWB primary structure.

## 2.0 Scope
Applies to fuselage frames, frame caps, webs and associated fittings. Flight-critical repairs that affect primary load path are covered. Effectivity: AMPEL360 baseline and production blocks unless otherwise stated in `INDEX.meta.yaml`.

## 3.0 Safety & Hazards
- Fall from height, confined-space and sharp-edge hazards.  
- Respiratory hazard from composite dust. Use certified respirators during sanding/grinding.  
- Chemical exposure from adhesives/solvents. Use chemical-resistant gloves and eye protection.  
- Electrical/thermal hazards when using ovens, hot-bonders or induction cure equipment.

## 4.0 Prerequisites
- Damage assessment completed per ATA-51.  
- Engineering disposition obtained for Category 4 damage or any splice changing load path.  
- Materials, tooling, and GSE verified per M&P (procurement documents and CoC).  
- NDT and fastener equipment calibrated and current.

## 5.0 Repair classifications
- **Minor Frame Repair (Category 2–3):** Small cracks <25 mm in non-critical areas. Bonded doubler permitted per ATA-51. No splice required.  
- **Major Frame Repair (Category 3–4):** Cracks >25 mm, cracks in critical zones, or damaged frames requiring removal. Splice or replacement required with engineering approval.

## 6.0 Materials & tooling (examples)
- Replacement frame sections: CFRP per drawing and material spec.  
- Adhesive: 3M AF-163-2 or OEM-approved equivalent (follow M&P).  
- Fasteners: Hi-Lok HL70 series or OEM approved.  
- Sealant: PR-1440 Class B or OEM approved.  
- Tooling/GSE: alignment fixtures, drill guides, rivet guns/Hi-Lok installation tools, calibrated torque wrenches, hot bonder or oven (if required by adhesive), thermocouples.

## 7.0 Acceptance & NDT criteria
- Post-repair NDT (minimum): ultrasonic/C-scan for bond integrity and subsurface defects. Use two-method verification for critical zones.  
- Typical acceptance (unless M&P/adhesive spec states otherwise):  
  - Bonded area void fraction ≤ 2% (or as defined by adhesive/material M&P).  
  - No delaminations > 15 mm in primary laminate within repair area.  
  - Peel/tensile tests meet minimum values in M&P or qualification report.  
  - Fastener torque retention within ±10% of specified torque.  
- Any deviation requires engineering disposition.

## 8.0 Frame splice procedure (stepwise)
### 8.1 Step 1 — Damage removal
1. Document location (station/zone), take photos and record pre-repair NDT.  
2. Mark damaged area extending **50 mm** beyond visible damage or per engineering disposition.  
3. Remove damaged material using controlled cutting/grinding. Minimize fiber loss. Collect and log waste per M&P.  
4. Verify complete damage removal with NDT (ultrasonic or C-scan). Record results and file hashes.

### 8.2 Step 2 — Splice preparation
1. Fabricate replacement section to drawing tolerances. Verify part number and CoC.  
2. Prepare mating surfaces per ATA-51 surface preparation and `PROC_51-41-01`. Clean, abrade, and solvent wipe as specified.  
3. Trial fit splice using alignment fixtures. Confirm fairing, gap, and butt alignment within engineering limits. Record fitment measurements.

### 8.3 Step 3 — Splice installation
1. Apply adhesive strictly per manufacturer M&P (use specified bondline thickness, primers, and dispense method).  
2. Position splice using alignment fixtures. Use temporary fasteners only if authorized by engineering.  
3. If temporary fasteners used, install as specified and record locations.  
4. Cure per adhesive specification. If room-temperature cure specified use stated hold time (example 24 h). If elevated cure required use oven/hot bonder with thermocouples placed per M&P.

### 8.4 Step 4 — Fastener installation
1. Drill holes following engineering drill guides. Maintain hole finish and cleanliness.  
2. Install approved fasteners (Hi-Lok or equivalent). Follow hole lubrication/finish requirements.  
3. Torque fasteners per ATA-20 torque chart. Record torque values and tool calibration IDs.  
4. Apply sealant at fastener sites and along splice seams as required.

### 8.5 Step 5 — Post-repair finishing and protection
1. Blend and fair repaired geometry per allowable limits. Do not remove excessive parent laminate.  
2. Apply protective coatings/paint per M&P. Restore lightning strike mesh continuity where applicable.

### 8.6 Step 6 — Inspection and verification
1. Remove temporary tooling. Perform visual inspection.  
2. Execute NDT verification (ultrasonic/C-scan). For critical splices perform two independent NDT methods.  
3. If pressure boundary affected perform pressure/leak test per `PROC_53-06-02`.  
4. Complete functional checks for adjacent systems and fittings.

## 9.0 Documentation and traceability
- Complete repair record with these minimum fields: aircraft MSN, location (station/zone), component ID, damage description, engineering disposition reference, materials (part numbers and lot/batch/CoC), tooling/GSE IDs, cure cycle logs with thermocouple data, fastener torque log, NDT reports and file hashes, inspector name/cert, photos and disposition.  
- Submit repair record to Engineering within 48 hours. Stamp release by authorized inspector required before return-to-service.

## 10.0 Disposition rules
- **Acceptable:** Meets visual, dimensional and NDT acceptance. Close repair record and sign off.  
- **Conditional:** Minor nonconformances allowed only with documented repair action and monitoring plan.  
- **Reject / Rework:** Any nonconformance exceeding acceptance limits requires rework and requalification testing where necessary. Major deviations require engineering requalification or replacement.

## 11.0 Qualification & testing
- Splices that alter stiffness, load introduction or laminate stacking require FEA substantiation and coupon or representative test evidence per ATA-51 qualification plan.  
- Maintain test reports and qualification evidence in engineering file.

## 12.0 Cross references
- ATA-51 — Composite repair and qualification.  
- ATA-20 — Workmanship and fastener installation.  
- DATA_53-02-04 — Frame and stringer strength limits.  
- PROC_53-06-02 — Pressure test and seal verification.  
- PROC_51-41-01 — Composite clean room and surface prep.

## 13.0 Revision history
- **1.0.0 — 2025-10-27** Initial issue.

