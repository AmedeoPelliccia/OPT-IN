---
schema_version: "1.1"
id: "PROC_44-04-01_Oxygen-System-Inspection-And-Service_rev1.0.0_20251030"
document:
  type: "PROC"
  title: "44-04-01: Oxygen System Inspection and Service"
  revision: "1.0.0"
  effective_date: "2025-10-30"
effectivity:
  msn: "ALL"
safety:
  hazards:
    - "High-pressure oxygen"
    - "Fire hazard (oxygen-enriched environment)"
    - "Pressure hazard (risk of sudden depressurization)"
  criticality: "Flight-Critical"
training_required:
  - "OXY-SVC-L2"
approvals:
  - authority: "Cabin Systems Engineering"
    status: "Released"
    date: "2025-10-30"
  - authority: "Safety Engineering"
    status: "Released"
    date: "2025-10-30"
  - authority: "Airworthiness Engineering"
    status: "Released"
    date: "2025-10-30"
integrity:
  checksum:
    algorithm: "sha256"
    value: ""
traceability:
  links:
    - id: "DATA_44-04-03"
      title: "DATA_44-04-03 Oxygen Module Specs And LifeLimits"
      path: "04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT/DATA_44-04-03_Oxygen-Module-Specs-And-LifeLimits.csv"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT/DATA_44-04-03_Oxygen-Module-Specs-And-LifeLimits.csv"

---
# PROC_44-04-01 — Oxygen System Inspection and Service
**Revision:** 1.0.0  
**Effective date:** 2025-10-30  
**Owner:** Cabin Systems Engineering  
**Skill level:** Intermediate  
**Estimated duration:** 3–4 hours (full cabin)  
**Personnel required:** 2

---

## 1.0 Safety Warnings
- **HIGH PRESSURE OXYGEN SYSTEM.** Exercise extreme caution. No smoking, open flames, oil/grease near oxygen system.  
- **FIRE HAZARD.** Oxygen accelerates combustion. Remove flammable materials from work area.  
- **PRESSURE HAZARD.** Depressurize system before disconnecting fittings. Use PPE and an appropriate fire extinguisher.

---

## 2.0 Scope
Routine inspection and functional service of cabin oxygen systems including PSU modules, distribution tubing, regulators, masks, chemical generators and portable cylinders. Applies to AMPEL360 cabin installations unless overridden by aircraft-specific AMM.

---

## 3.0 Tools, GSE and Consumables

**Tools**
- Calibrated oxygen pressure gauge (range appropriate to system, example 0–3000 psi)  
- Calibrated flow meter and mask flow adaptor  
- Torque wrench (10–50 in·lb) with calibration tag  
- Leak detection solution approved for oxygen service  
- Mask deployment test rig (if available)  
- Access GSE per AMM

**Consumables**
- Oxygen-compatible O-rings (per IPC / approved materials list)  
- Oxygen-compatible thread sealant (per M&P)  
- Cleaning solvent (oxygen-compatible)  
- Torque seal

**PPE**
- Safety glasses, oxygen-compatible gloves, non-combustible apron

---

## 4.0 Prerequisites
1. Aircraft parked, parking brake set, chocks in place.  
2. Cabin electrical power available per AMM.  
3. Oxygen system isolated if performing invasive maintenance.  
4. Access panels opened and GSE positioned per access diagrams.  
5. Technician certification: **OXY-SVC-L2** or higher.  
6. Tools and instruments calibrated and tagged.

---

## 5.0 Procedure Steps

### 5.1 Visual Inspection

#### 5.1.1 PSU Module External Inspection
1. Inspect each PSU oxygen module for: cracks, dents, corrosion, security of mounting, placarding legibility and mask-deployment door condition.  
2. Check electrical/connector security where applicable.  
3. **Acceptance:** No visible damage, secure mounting, placards legible. Record anomalies with photographs and file hashes.

#### 5.1.2 Distribution System Inspection
1. Inspect visible oxygen tubing for chafing, abrasion, correct routing, adequate support and secure fittings.  
2. Check fittings for corrosion, fretting or evidence of fluid ingress.  
3. **Acceptance:** No chafing; support spacing ≤ 24 in (610 mm); no corrosion or compromised fittings.

---

### 5.2 Functional Tests

#### 5.2.1 Oxygen Module Pressure Check
1. Note ambient temperature (°F/°C). Connect calibrated pressure gauge to module test port.  
2. Record pressure: `________ psi`.  
3. **Acceptance:** 1800–2000 psi at 70°F (nominal 1850–1950 psi).  
4. If below minimum, tag module for replacement per `PROC_44-04-03` and record action.

#### 5.2.2 Mask Deployment Test (Sample)
1. Select 10% of passenger masks (random sample). Pull deployment handle.  
2. Verify:
   - Mask deploys within **2 s**.  
   - Lanyard extends fully.  
   - Reservoir bag inflates within **3 s**.  
   - No audible leak at mask seal.
3. **Acceptance:** All sampled masks meet criteria. Stow masks and reset doors.

#### 5.2.3 Flow Test (Sample)
1. Connect flow meter to mask port or mask adaptor. Activate oxygen flow.  
2. Record flow: `________ L/min`.  
3. **Acceptance:** minimum **1.5 L/min** at sea-level equivalent. Typical **2–4 L/min**.  
4. If below minimum, follow troubleshooting and corrective actions.

---

### 5.3 Leak Test

#### 5.3.1 System Leak Test
1. Pressurize assembly to normal operating pressure (per `DATA_44-04-03`).  
2. Apply approved leak detection solution to accessible fittings.  
3. Observe for bubbles indicating leaks.  
4. **Acceptance:** No leaks detected.  
5. If leaks detected:
   - Depressurize system, tighten fitting to specified torque (see `DATA_44-04-03`), replace seal if required, and retest.

---

### 5.4 Module Expiry Check (Chemical Generators)
1. Inspect expiry dates on each chemical oxygen generator module.  
2. Record expiry dates in logbook.  
3. **Acceptance:** No modules expired or within **3 months** of expiry. Replace expired/near-expiry modules per `PROC_44-04-03`.

---

## 6.0 Acceptance Criteria Summary

| Parameter | Minimum | Maximum | Typical |
|-----------|--------:|--------:|--------:|
| Oxygen pressure (70°F) | 1800 psi | 2000 psi | 1850–1950 psi |
| Mask flow rate | 1.5 L/min | — | 2–4 L/min |
| Mask deployment time | — | 2 s | 1–1.5 s |
| Reservoir inflation time | — | 3 s | 2–2.5 s |

---

## 7.0 Troubleshooting (summary)

| Symptom | Possible Cause | Corrective Action |
|---------|----------------|-------------------|
| Low pressure | Leak in system | Perform leak test, repair leak |
| Low pressure | Module depleted | Replace oxygen module |
| Low flow rate | Restricted orifice | Clean/replace orifice |
| Mask won't deploy | Jammed mechanism | Inspect, lubricate or replace mechanism |
| Bag won't inflate | Flow restrictor blocked | Clear/replace flow restrictor |

---

## 8.0 Documentation & Traceability

### 8.1 Logbook Entry (minimum fields)
- Aircraft MSN, component location/station, inspection date, inspector name & cert, pressure readings per module, number of masks tested, NDT/functional attachments with SHA-256 hashes, defects and corrective actions, disposition.

### 8.2 Digital Product Passport (DPP)
- Create DPP entry including: inspection record ID, pressure readings, module expiry dates, next inspection due (FH and date), and links/hashes to attached evidence.

---

## 9.0 Intervals and Types
- **GVI:** 1200 FH or 12 months — Visual + basic functional checks.  
- **DVI:** 3600 FH or 36 months — Detailed inspection + NDT as required.  
- **Pressure Test / Cylinder Hydro:** Per manufacturer and regulatory intervals (recorded in `DATA_44-04-03`).

---

## 10.0 References

- [AMM 35-11-00 — Oxygen Systems (Aircraft Maintenance Manual)](https://github.com/AmedeoPelliccia/OPT-IN/blob/main/AMM/35-11-00.md) *(replace with your AMM repository link if different)*
- [IPC 35-11-00 — Illustrated Parts Catalog](https://github.com/AmedeoPelliccia/OPT-IN/blob/main/IPC/35-11-00.md) *(replace with your IPC link)*
- [DATA_44-04-03_Oxygen-Module-Specs-And-LifeLimits.csv](https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT/DATA_44-04-03_Oxygen-Module-Specs-And-LifeLimits.csv)
- [PROC_44-04-03 — Oxygen Module Replacement (rev 1.0.0)](https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT/PROC_44-04-03_Oxygen-Module-Replacement_rev1.0.0_20251030.md)
- [ATA-35 — Oxygen Systems (chapter README)](https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_35-OXYGEN/00_README.md)


---

## 11.0 Approval & Revision Control
- **Owner:** Cabin Systems Engineering  
- **Approved by:** Safety Engineering; Airworthiness Engineering  
- **Next review:** 2026-10-30

---

*End of procedure.*
```



