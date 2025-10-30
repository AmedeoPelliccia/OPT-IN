---
schema_version: "1.1"
id: "PROC_44-04-03_Oxygen-Module-Replacement_rev1.0.0_20251030"
document:
  type: "PROC"
  title: "44-04-03: Oxygen Module Replacement"
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
  - "OXY-SVC-L3"
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
    - id: "PROC_44-04-01"
      title: "PROC_44-04-01 Oxygen System Inspection and Service"
      path: "04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT/PROC_44-04-01_Oxygen-System-Inspection-And-Service_rev1.0.0_20251030.md"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT/PROC_44-04-01_Oxygen-System-Inspection-And-Service_rev1.0.0_20251030.md"
    - id: "DATA_44-04-03"
      title: "DATA_44-04-03 Oxygen Module Specs And LifeLimits"
      path: "04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT/DATA_44-04-03_Oxygen-Module-Specs-And-LifeLimits.csv"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_44-CABIN_SYSTEMS_INCL_IFE_IFX/04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT/DATA_44-04-03_Oxygen-Module-Specs-And-LifeLimits.csv"
---
# PROC_44-04-03 — Oxygen Module Replacement
**Revision:** 1.0.0  
**Effective date:** 2025-10-30  
**Owner:** Cabin Systems Engineering  
**Skill level:** Advanced  
**Estimated duration:** 1.5–3 hours (per module)  
**Personnel required:** 2

---

## 1.0 Safety Warnings
- **HIGH-PRESSURE OXYGEN SYSTEM.** No oil, grease or hydrocarbons near the work area. No smoking or open flame.  
- **PRESSURE HAZARD.** Always confirm system depressurized before disconnecting fittings. Use PPE.  
- **FIRE HAZARD.** Oxygen-enriched atmospheres increase fire risk. Use oxygen-compatible tools and consumables only.

---

## 2.0 Scope
Removal and replacement of cabin oxygen modules (PSU, portable, reserve, or hybrid modules). Covers mechanical, pneumatic and electrical interfaces, functional verification and final documentation. Use only modules with valid CoC and proper effectivity.

---

## 3.0 Tools, GSE and Consumables
- Calibrated pressure gauge (system range).  
- Calibrated flow meter and mask adaptor.  
- Torque wrench with applicable AMM/OEM torque bits.  
- Oxygen-safe sealant, oxygen-compatible O-rings and cleaning solvent.  
- Leak detection solution approved for oxygen service.  
- ESD and electrical connector preservation tools.  
- Lifting/handling GSE for heavy modules (if required).  
- PPE: safety glasses, oxygen-compatible gloves, face shield, non-combustible apron.

---

## 4.0 Prerequisites
1. Verify aircraft effectivity and that replacement module PN/SN is approved for the MSN/CFG.  
2. Obtain and review module CoC, hydrostatic and service records. Confirm no prohibitions.  
3. Aircraft parked, maintenance locks applied, electrical power as AMM.  
4. Isolate oxygen system and bleed to ambient pressure. Verify zero pressure at test port. Tag isolation.  
5. Technician certification: **OXY-SVC-L3** or as required by local authority.  
6. Tools calibrated and available. Access panels and GSE in place.

---

## 5.0 Replacement Procedure

### 5.1 Preparation
1. Record current module serial, location, and condition in log. Capture photographs and file hashes for evidence.  
2. Verify replacement module CoC, serial and expiry. Confirm hydrostatic test date and next due.  
3. Inspect replacement module for transport damage, dents, corrosion and correct fittings. Do not proceed with visible damage.  
4. Prepare new O-rings and oxygen-compatible thread sealant per M&P.

### 5.2 Depressurize and Isolate
1. Verify system isolation valves closed and bleed point verifies zero pressure.  
2. Lock/tag isolation per LOTO procedure.  
3. Confirm via gauge at module test port: **0 psi** (or ambient). Do not open fittings under pressure.

### 5.3 Electrical & Pneumatic Disconnect
1. Document and photograph electrical connector and harness routing.  
2. Disconnect electrical harnesses using ESD-safe procedure. Protect connector pins with approved caps.  
3. Cap and protect pneumatic tubing and fittings immediately after disconnect to prevent contamination.

### 5.4 Mechanical Removal
1. Remove mounting fasteners per AMM. Keep hardware for inspection or discard per M&P if single-use.  
2. Support module during removal. Use lifting GSE if required.  
3. Place removed module in clean, designated container for inspection, quarantine or return to supplier.

### 5.5 Interface Inspection
1. Inspect mounting datum, fittings, brackets, and wiring for damage, fretting or corrosion.  
2. Clean mounting surfaces with oxygen-compatible solvent. Replace damaged fasteners/bushings per parts list.

### 5.6 Install Replacement Module
1. Verify replacement module serial and CoC again at point of install.  
2. Fit module into mounting datum. Hand-start approved fasteners.  
3. Tighten fasteners in the sequence specified by AMM to the OEM torque value. Record torque values and tool IDs. *(If AMM torque not available use values in DATA_44-04-03 or obtain engineering disposition.)*  
4. Reconnect pneumatic fittings with new O-rings and oxygen-safe sealant as required. Ensure correct orientation and torque per AMM.  
5. Reconnect electrical harnesses. Ensure correct retention and sealing. Restore any shielding or LSP bonding if disturbed.

### 5.7 Initial Integrity Checks
1. Verify module mounting is secure and placarding/labels present and legible.  
2. Verify LSP continuity across any restored bonding straps if applicable. Record continuity reading.

---

## 6.0 Post-Installation Verification

### 6.1 Pressure & Leak Test
1. With isolation still available, pressurize module to normal operating pressure.  
2. Allow pressure stabilization per AMM (typical 1–5 min). Record pressure and ambient temperature.  
3. Apply approved leak detection solution to all accessible pneumatic fittings and joints. Observe for bubbles.  
4. **Acceptance:** No leaks. If leak found, depressurize and remediate (retorque/replace O-ring) then retest.

### 6.2 Functional Tests
1. Perform Mask Deployment test on sample masks served by this module (see PROC_44-04-01).  
2. Perform Flow test at mask: flow meets minimum in DATA_44-04-03.  
3. Verify any module electrical functions: indicators, switches, fault signaling to cabin network.  
4. Verify regulator output and stability within limits.

### 6.3 Electrical Verification
1. Verify connector security and ground continuity. Test for shorts/opens per AMM.  
2. If module interfaces to data networks (IFE/IFX), confirm logical interface is isolated or tested per DO-178C/DO-160 guidance and cyber rules.

---

## 7.0 Acceptance Criteria
- Replacement module returns to service with: no leaks; pressures within DATA_44-04-03 limits; sample mask deployment and flow tests pass; electrical interfaces verified; placarding and serial logged.  
- Torque values recorded and within ±10% of specified torque.  
- LSP continuity restored where applicable.

---

## 8.0 Disposal, Quarantine and Returns
1. Quarantine removed modules pending inspection report and supplier disposition.  
2. For failed modules, prepare return package with photographs, NDT reports and CoC. Follow hazardous materials transport rules for oxygen cylinders.  
3. Dispose single-use components per M&P.

---

## 9.0 Documentation & Traceability
1. Complete repair record with: aircraft MSN, location, old & new module PN/SN, CoC references, hydrostatic dates, installation torque log, pressure/flow readings, NDT attachments with SHA-256 hashes, inspector name/cert and disposition.  
2. Create or update DPP entry with replacement event and links/hashes to evidence.  
3. Submit records to Engineering within 24 hours.

---

## 10.0 Nonconformance & Escalation
- Any engineering deviation, damage to structure/fittings, or failure to meet acceptance requires immediate stop-work and escalation to Structural/Cabin Systems and Airworthiness. Document NCR.

---

## 11.0 References
- AMM 35-11-00 (Oxygen Systems)  
- IPC 35-11-00  
- DATA_44-04-03_Oxygen-Module-Specs-And-LifeLimits.csv  
- PROC_44-04-01_Oxygen-System-Inspection-And-Service

---

## 12.0 Revision History
- **1.0.0 — 2025-10-30** Initial issue.
