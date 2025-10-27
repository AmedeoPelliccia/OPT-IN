---
schema_version: "1.1"
id: "PROC_53-02-02_Frame-And-Stringer-Inspection_rev1.0.0"
document:
  type: "PROC"
  title: "53-02-02: Frame and Stringer Inspection Procedure"
  revision: "1.0.0"
  effective_date: "2025-10-27"
effectivity: { msn: "ALL" }
safety:
  hazards: ["Fall from height", "Confined space", "Sharp edges"]
  criticality: "Maintenance"
training_required: ["STRUCT-INSPECT-L2","NDT-L2"]
approvals:
  - { authority: "Structural Inspection Engineering", status: "Released", date: "2025-10-27" }
integrity: { checksum: { algorithm: "sha256", value: "" } }
---
# PROC_53-02-02 — Frame and Stringer Inspection Procedure
**Revision:** 1.0.0  
**Effective date:** 2025-10-27  
**Owner:** Structural Inspection Engineering

## 1.0 Purpose
Define mandatory inspection types, zones, frequencies, acceptance criteria, and reporting requirements for fuselage frames and stringers on the AMPEL360 BWB.

## 2.0 Scope
Applies to all fuselage primary structure frames, frame caps, webs, stringers and related fittings. Effectivity: AMPEL360 baseline and production blocks unless otherwise stated in `INDEX.meta.yaml`.

## 3.0 Safety & Hazards
- Working at height and confined-space hazards.  
- Sharp edges, moving parts, and pinch points when removing panels.  
- Use fall protection, gloves, eye protection, and respirators when required for access/cleaning.

## 4.0 Prerequisites
- Technician certification: STRUCT-INSPECT-L2 or higher.  
- Tools calibrated and tagged. NDT equipment calibration current.  
- Access panels and GSE per local procedures. Electrical isolation where required.

## 5.0 Inspection types and frequencies
### 5.1 General Visual Inspection (GVI)
- **Frequency:** Every 1000 flight hours or 12 months (whichever sooner).  
- **Method / Tools:** Flashlight, mirror, borescope for inaccessible areas. Record all observations.

### 5.2 Detailed Visual Inspection (DVI)
- **Frequency:** Every 3000 flight hours or 36 months.  
- **Method / Tools:** 10x magnifier, calipers, straightedge. Close, hands-on inspection.

### 5.3 NDT Inspection
- **Frequency:** Per maintenance planning document; minimums by zone below.  
- **Methods:** Ultrasonic/C-scan (CFRP delamination/core crush), Eddy current (metallic cracks/fretting), Thermography/Shearography (large area composites), DPT for surface cracks.

## 6.0 Inspection zones and additional requirements
### Zone 1 — General Fuselage (Green)
- Routine visual. Record anomalies. No mandatory NDT unless anomaly found.

### Zone 2 — Load Concentration Areas (Yellow)
- Frame-stringer intersections, cutout reinforcements.  
- **DVI** each 3000 h. **NDT** every 6000 h.

### Zone 3 — Critical Safety Areas (Red)
- Door and window frame reinforcements, pressure bulkhead, wing carry-through and attachment pads.  
- **DVI** every 3000 h. **NDT** every 3000 h (minimum). Enhanced protocols and two-method verification for critical findings.

## 7.0 Acceptance criteria (numeric)
- **CFRP delamination:** No delaminations > 15 mm diameter in primary load path areas.  
- **Frame flange distortion:** No flange distortion > 2 mm from nominal.  
- **Fasteners:** No loose or missing fasteners; torque retention within ±10% of torque chart.  
- **Corrosion:** No corrosion pits > 0.5 mm depth in primary members (frame caps, fittings).  
- **Cracks:** No visible cracks in CFRP primary structure. Metallic cracks to be evaluated per DATA_53-07-? and removed/repaired if present.  
- **NDT thresholds:** C-scan void fraction, eddy-current sizing, and ultrasonic reflectivity acceptance per chapter NDT DATA files (reference `DATA_53-08-04`).

> Any finding that exceeds these limits or is ambiguous requires immediate escalation to Structural Engineering for disposition.

## 8.0 Inspection procedure (stepwise)
1. Verify aircraft effectivity and open inspection record.  
2. Prepare access, follow lockout/tagout and PPE requirements.  
3. Perform GVI or DVI per zone and tools. Note and photo all anomalies.  
4. For suspected subsurface damage perform NDT method appropriate to material. Use at least two NDT methods for critical areas.  
5. Measure and log all dimensional nonconformances (e.g., flange distortion, hole ovality).  
6. Verify adjacent fastener torque where applicable. Record torque values.  
7. Clean and protect area after inspection per M&P. Restore any removed panels or covers with correct torque and sealing.  
8. If repairable per DATA_53-02-04 and ATA-51, tag as repairable and follow repair workflow. If not repairable, tag for replacement and escalate.

## 9.0 Documentation and records
Complete the inspection report using the chapter `repair-record` or inspection template. Minimum fields:
- Aircraft MSN, serial, location (station/zone), component ID.  
- Inspection type and date.  
- Inspector name, certificate level, signature.  
- Tools/NDT equipment used and calibration IDs.  
- Findings (text), measurement values, NDT file references and hashes, photo file hashes.  
- Disposition (Negligible / Repairable / Replace / Engineering Disposition).  
- If engineering disposition required, attach photos, NDT reports, and suggested containment actions.

## 10.0 Disposition & escalation
- **Negligible:** Document and close.  
- **Repairable:** Follow ATA-51/ATA-53 repair procedures. Record material batches, cure records, and NDT acceptance evidence.  
- **Replace / Engineering Disposition:** Stop maintenance line and notify Structural Engineering and Airworthiness. Provide full record package.

## 11.0 Cross-references
- DATA_53-02-04 — Frame & stringer strength limits.  
- DATA_53-08-04 — Inspection intervals and NDT acceptance.  
- ATA-51 — Composite repair and qualification.  
- ATA-20 — Workmanship, fastener installation, and torque standards.

## 12.0 Revision history
- **1.0.0 — 2025-10-27** Initial issue.
