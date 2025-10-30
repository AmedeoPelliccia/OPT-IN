---
schema_version: "1.1"
id: "PROC_44-04-01_Oxygen-System-Inspection-And-Service_rev1.0.0"
document:
  type: "PROC"
  title: "44-04-01: Oxygen System Inspection and Service"
  revision: "1.0.0"
  effective_date: "2025-10-30"
effectivity: { msn: "ALL" }
safety:
  hazards:
    - "High-pressure oxygen"
    - "Fire hazard (oxygen-enriched environment)"
    - "Pressure hazard (risk of sudden depressurization)"
  criticality: "Flight-Critical"
training_required:
  - "OXY-SVC-L2"
approvals:
  - { authority: "Cabin Systems Engineering", status: "Released", date: "2025-10-30" }
  - { authority: "Safety Engineering", status: "Released", date: "2025-10-30" }
  - { authority: "Airworthiness Engineering", status: "Released", date: "2025-10-30" }
integrity:
  checksum:
    algorithm: "sha256"
    value: ""
---
# PROC_44-04-01 — Oxygen System Inspection and Service
**Revision:** 1.0.0  
**Effective date:** 2025-10-30  
**Owner:** Cabin Systems Engineering  
**Skill level:** Intermediate  
**Estimated duration:** 3–4 hours (full cabin)  
**Personnel required:** 2

## 1.0 Safety Warnings
- **HIGH PRESSURE OXYGEN SYSTEM.** Exercise extreme caution. No smoking, open flames, or oil/grease near oxygen system.  
- **FIRE HAZARD.** Oxygen accelerates combustion. Remove flammable materials from work area.  
- **PRESSURE HAZARD.** Depressurize system before disconnecting fittings. Use PPE and an appropriate fire extinguisher.

## 2.0 Scope
Routine inspection and functional service of cabin oxygen systems including PSU modules, distribution tubing, regulators, masks, chemical generators and portable cylinders. Applies to AMPEL360 cabin installations unless overridden by aircraft-specific AMM.

## 3.0 Tools, GSE and Consumables
**Tools**
- Calibrated oxygen pressure gauge (0–3000 psi / appropriate range)
- Calibrated flow meter
- Torque wrench (10–50 in-lb)
- Leak detection solution (oxygen-safe)
- Mask deployment test rig (if available)

**Consumables**
- Oxygen-compatible O-rings and thread sealant (approved list)
- Cleaning solvent (oxygen-compatible)
- Torque seal

**Safety PPE**
- Safety glasses, oxygen-compatible gloves, non-combustible apron

## 4.0 Prerequisites
- Aircraft parked with parking brake set and electrical power available.  
- Oxygen system isolated where invasive work is required.  
- Access panels opened per access diagrams and GSE positioned.  
- Technician certification: OXY-SVC-L2 or higher.  
- Tools and test instrumentation calibrated and tagged.

## 5.0 Procedure Steps

### 5.1 Visual Inspection
#### 5.1.1 PSU Module External Inspection
1. Inspect each PSU oxygen module for cracks, dents, corrosion, security of mounting, placarding and mask deployment door condition.  
2. Acceptance: no visible damage, secure mounting, placards legible.

#### 5.1.2 Distribution System Inspection
1. Inspect visible oxygen tubing for chafing, wear, support and secure connections. Check fittings for corrosion.  
2. Acceptance: no chafing, support spacing ≤ 24 in (610 mm), no corrosion.

### 5.2 Functional Tests
#### 5.2.1 Oxygen Module Pressure Check
1. Connect calibrated gauge to module test port. Record ambient temperature and pressure reading (psi).  
2. Acceptance: 1800–2000 psi at 70°F (nominal 1850–1950 psi).  
3. If below minimum, tag module for replacement per `PROC_44-04-03`.

#### 5.2.2 Mask Deployment Test (Sample)
1. Select 10% of passenger masks (random sample). Pull deployment handle.  
2. Verify mask deploys within 2 s, lanyard extends fully, reservoir bag inflates within 3 s and no audible leaks.  
3. Acceptance: all sample masks meet criteria. Stow and reset masks after test.

#### 5.2.3 Flow Test (Sample)
1. Attach flow meter to mask. Activate oxygen flow. Record flow (L/min).  
2. Acceptance: minimum 1.5 L/min at sea-level equivalent; typical 2–4 L/min. Troubleshoot low flow per troubleshooting section.

### 5.3 Leak Test
1. Pressurize assembly to normal operating pressure. Apply approved leak detection solution to fittings.  
2. Acceptance: no bubbles / no detectable leaks. If leaks, depressurize, tighten to torque (see `DATA_44-04-03`), retest.

### 5.4 Module Expiry Check (Chemical Generators)
1. Inspect expiry dates. Record dates in log.  
2. Acceptance: no modules expired or within 3 months of expiry. Replace per `PROC_44-04-03`.

## 6.0 Acceptance Criteria Summary
| Parameter | Minimum | Maximum | Typical |
|-----------|---------:|--------:|--------:|
| Oxygen pressure (70°F) | 1800 psi | 2000 psi | 1850–1950 psi |
| Mask flow rate | 1.5 L/min | — | 2–4 L/min |
| Mask deployment time | — | 2 s | 1–1.5 s |
| Reservoir inflation time | — | 3 s | 2–2.5 s |

## 7.0 Troubleshooting (summary)
- **Low pressure:** check for leaks, perform leak test, replace depleted module.  
- **Low flow:** check orifice, clean/replace flow restrictor.  
- **Mask won't deploy:** inspect mechanism, clear jam, replace as necessary.  
- **Bag won't inflate:** check flow supply and flow restrictor.

## 8.0 Documentation & Traceability
### 8.1 Logbook Entry (minimum fields)
- Aircraft MSN, station/location, inspection date, inspector name & cert, pressure readings (per module), number of masks tested, NDT/functional attachments (file hashes), corrective actions, disposition.

### 8.2 Digital Product Passport (DPP)
- Create an entry with inspection record ID, pressure readings, module expiry dates, and next inspection due (FH and date). Include SHA-256 for all attached evidence files.

## 9.0 Intervals and Types
- GVI: 1200 FH or 12 months (whichever sooner) — Visual + basic functional checks.  
- DVI: 3600 FH or 36 months — Detailed inspection + NDT as required.  
- Pressure Test / Cylinder Hydro: per manufacturer and regulatory interval (recorded in `DATA_44-04-03`).

## 10.0 References
- AMM 35-11-00 (Oxygen Systems)  
- IPC 35-11-00  
- `DATA_44-04-03_Oxygen-Module-Specs-And-LifeLimits.csv`  
- `PROC_44-04-03 — Oxygen Module Replacement`  
- ATA-35 — Oxygen Systems (cross-reference)

## 11.0 Approval & Revision Control
- Owner: Cabin Systems Engineering  
- Approved by: Safety Engineering; Airworthiness Engineering  
- Next review: 2026-10-30

---

