# LTSP-PROC: Cryogenic H₂ System Inerting for Storage

**Document ID**: LTSP-PROC_28-60_Cryo-H2-System-Inerting  
**ATA Chapter**: 28-60 (Cryogenic Hydrogen Storage & Distribution)  
**Storage Type**: Long-Term Storage Component-Specific  
**Revision**: 1.0.0  
**Date**: 2025-10-27

---

## 1. Purpose

Procedure for safely inerting and preserving the AMPEL360 cryogenic hydrogen (LH₂) storage and distribution system for long-term storage.

## 2. Scope

Applies to all AMPEL360 aircraft equipped with ATA 28-60 cryogenic hydrogen fuel system during long-term storage (> 30 days).

## 3. Safety Precautions

- ⚠️ **DANGER**: Cryogenic liquid and gas - severe cold burns and asphyxiation hazard
- ⚠️ **DANGER**: Hydrogen is extremely flammable - no ignition sources within 30m
- ⚠️ **WARNING**: Confined space hazard - ensure adequate ventilation
- ⚠️ **PPE Required**: Cryo-protective gloves, face shield, protective clothing
- ⚠️ **Fire watch**: Required during defueling and inerting operations
- ⚠️ **O₂/H₂ monitoring**: Continuous atmospheric monitoring required

## 4. Prerequisites

- Aircraft in designated hydrogen servicing area
- Ground power available
- LH₂ system monitoring active
- Qualified hydrogen technician assigned
- Fire suppression equipment staged
- Environmental monitoring equipment operational

## 5. Equipment and Materials

### Servicing Equipment
- LH₂ ground servicing unit (defueling capable)
- High-purity nitrogen supply (99.999%) with pressure regulation
- Vacuum pump system (if complete purge required)
- Pressure relief monitoring equipment

### Safety Equipment
- O₂/H₂ atmospheric monitors (minimum 3 locations)
- Fire extinguishers (Class D minimum)
- Safety barriers and signage
- Emergency shutdown controls accessible

### Inspection Equipment
- Thermal imaging camera
- Pressure gauges (cryogenic rated)
- Leak detection equipment (H₂ specific)
- Documentation tablets/forms

## 6. Pre-Inerting System Status Check

### 6.1 System Assessment

| Check | Acceptable | Action if Abnormal |
|-------|-----------|-------------------|
| LH₂ tank pressure | 50-500 kPa | Verify vent system functional |
| LH₂ quantity indication | Displays correctly | Troubleshoot before proceeding |
| Tank insulation vacuum | < 10⁻³ mbar | Acceptable for storage |
| Leak detection system | No alarms | Investigate and repair leaks |
| Emergency vent clear | Unobstructed | Clear obstructions |
| Fuel cell H₂ lines | Isolated from tank | Verify valves closed |

### 6.2 Documentation Review

- [ ] Review LH₂ system maintenance history
- [ ] Verify all scheduled maintenance completed
- [ ] Check tank certification and inspection dates
- [ ] Confirm vent and relief device inspection current

---

## 7. LH₂ DEFUELING PROCEDURE

### 7.1 Defueling Decision Matrix

| Storage Duration | LH₂ Action | Rationale |
|-----------------|-----------|-----------|
| 31-90 days | **Option A**: Maintain at stable level (> 50%) | Easier RTS, maintains tank conditioning |
| 31-90 days | **Option B**: Defuel to < 5% | Reduced monitoring, safer |
| 91-180 days | Defuel to < 5% + inert | Standard for medium storage |
| > 180 days | **Complete defuel** + inert + seal | Maximum safety for extended storage |

**This procedure covers Option B and complete defuel.**

### 7.2 Defueling Steps

**Step 1: Pre-Defuel Configuration**
1. Verify ground power connected and stable
2. Activate LH₂ system monitoring panel
3. Configure defueling ground unit
4. Connect defueling hose to aircraft service panel
5. Verify all connections leak-tight (soap bubble test)
6. Establish safety zone (30m radius, no personnel)

**Step 2: Defueling Operation**
1. Open aircraft defueling valve slowly
2. Start ground unit defueling pump
3. Monitor:
   - LH₂ quantity decreasing
   - Tank pressure stable (auto-vent functioning)
   - No leaks detected
   - Ground unit receiving LH₂
4. Continue until quantity < 5% (or 0% for > 180 day storage)
5. Close aircraft defueling valve
6. Depressurize and disconnect ground unit
7. Cap and seal aircraft service panel

**Step 3: Post-Defuel Verification**
1. Allow tank to warm naturally (ambient temperature)
2. Monitor pressure increase as residual LH₂ boils off
3. Verify emergency vent functioning during boil-off
4. When pressure stable at ambient: proceed to inerting

**Note**: Complete boil-off may take 24-72 hours depending on residual quantity and ambient temperature.

---

## 8. INERTING PROCEDURE

### 8.1 Inerting Overview

Purpose: Remove all hydrogen gas and replace with nitrogen to prevent:
- Flammable mixture during storage
- Moisture ingress
- Internal corrosion
- Contamination

### 8.2 Purge Method Selection

| Storage Duration | Method | Nitrogen Quantity |
|-----------------|--------|------------------|
| 31-180 days | **Pressure purge** (3 cycles) | ~50 kg |
| > 180 days | **Vacuum + nitrogen backfill** | ~30 kg |

### 8.3 Pressure Purge Method (Standard)

**Cycle 1:**
1. Connect nitrogen supply to LH₂ service panel (inert fill port)
2. Slowly pressurize tank to 300 kPa with nitrogen
3. Monitor pressure stabilization
4. Open vent valve and depressurize to 100 kPa
5. Close vent valve

**Cycle 2:**
6. Pressurize to 300 kPa again
7. Depressurize to 100 kPa
8. H₂ concentration should be < 1% (verify with detector if available)

**Cycle 3:**
9. Final pressurize to 300 kPa
10. Depressurize to 100 kPa
11. H₂ concentration should be < 0.1%

**Final State:**
12. Pressurize to 150 kPa nitrogen (storage pressure)
13. Close all valves
14. Verify pressure stable (no leaks)

### 8.4 Vacuum + Backfill Method (Extended Storage)

**Phase 1: Vacuum Purge**
1. Connect vacuum pump to service panel
2. Evacuate tank to < 10 kPa (75 mmHg vacuum)
3. Hold vacuum for 30 minutes
4. Monitor for pressure rise (indicates leak)
5. Close vacuum valve

**Phase 2: Nitrogen Backfill**
6. Connect nitrogen supply
7. Slowly backfill to 150 kPa
8. Close nitrogen valve
9. Verify pressure stable

**Phase 3: Verification**
10. Sample atmosphere from tank (if sampling port available)
11. Verify O₂ < 0.1%, H₂ < 0.01%
12. Document results

---

## 9. SYSTEM CONFIGURATION FOR STORAGE

### 9.1 Valve Lineup

Set all LH₂ system valves as follows:

| Valve | Position | Lock/Tag |
|-------|----------|----------|
| Main tank isolation | **CLOSED** | Lock & tag |
| Defuel/refuel valve | **CLOSED** | Lock & tag |
| Fuel cell supply valves | **CLOSED** | Lock & tag |
| Emergency vent | **OPEN** | Do not lock |
| Normal vent | **CLOSED** | Lock & tag |
| Pressure relief | **Active** | Verify functional |
| Service panel cap | **INSTALLED** | Seal with wire |

### 9.2 Instrumentation Configuration

| Instrument | Setting | Purpose |
|------------|---------|---------|
| Pressure transducers | **Active** (if power available) | Monitor storage pressure |
| Temperature sensors | **Active** (if power available) | Monitor ambient warming |
| Leak detectors | **Deactivated** (unless monitoring) | Conserve power |
| Tank level indication | **Deactivated** | Not needed (tank empty) |

### 9.3 Electrical Systems

**If aircraft power available during storage:**
- Maintain LH₂ system monitoring panel powered
- Tank pressure and temperature recorded automatically
- Alarm system active for over-pressure

**If aircraft unpowered during storage:**
- Install mechanical pressure relief only
- Manual inspections required (weekly recommended)
- Placards installed: "H₂ SYSTEM INERTED - NO POWER MONITORING"

---

## 10. EXTERNAL PROTECTION

### 10.1 Service Panel Sealing

1. Clean service panel threads
2. Apply corrosion inhibitor to threads
3. Install service panel cap with new O-ring
4. Torque to specification (120 Nm)
5. Install tamper-evident wire seal
6. Document seal number

### 10.2 Vent and Relief Protection

1. Inspect vent outlets for obstructions
2. Install wire mesh screens (prevent insect/debris entry)
3. Do **NOT** seal or cap vent outlets
4. Mark vents clearly: "DO NOT OBSTRUCT - PRESSURE RELIEF"

### 10.3 External Line Protection

1. Inspect all external H₂ lines for damage
2. Apply corrosion inhibitor to fittings
3. Cover exposed lines with protective wrap
4. Support lines to prevent sagging

---

## 11. PLACARDING

Install the following placards:

**Cockpit Placard (Red):**
```
⚠️ LH₂ SYSTEM INERTED FOR STORAGE
TANK DEFUELED AND NITROGEN PURGED
DO NOT OPERATE FUEL SYSTEM
Inerting Date: [DATE]
Inerted By: [NAME]
Contact: [PHONE]
```

**External Placard (Service Panel):**
```
CRYOGENIC H₂ SYSTEM IN STORAGE
DEFUELED: [DATE]
INERTED WITH NITROGEN
PRESSURE: ~150 kPa
NEXT INSPECTION: [DATE]
EMERGENCY CONTACT: [PHONE]
```

---

## 12. INSPECTION DURING STORAGE

Perform these checks per storage schedule:

| Check | Frequency | Acceptance Criteria |
|-------|-----------|-------------------|
| Tank pressure | Weekly | 100-200 kPa (stable) |
| External leaks (H₂ detector) | Weekly | No hydrogen detected |
| Vent outlets clear | Monthly | Unobstructed |
| Service panel seal | Monthly | Intact and undisturbed |
| Corrosion | Monthly | No new corrosion |
| Documentation current | Monthly | All logs updated |

**If pressure decreases below 50 kPa**: Investigate for leak, re-inert if necessary  
**If pressure increases above 300 kPa**: Investigate for contamination or external heating

---

## 13. RETURN TO SERVICE PREPARATION

**Minimum 7 days before planned RTS:**

1. **System Inspection**
   - Visual inspection of all components
   - Leak check all fittings and valves
   - Verify pressure relief devices functional
   - Check insulation vacuum integrity

2. **De-Inerting**
   - Connect vacuum system
   - Evacuate nitrogen to < 10 kPa
   - Leak check entire system under vacuum
   - Document results

3. **System Certification**
   - Perform functional tests of all valves
   - Calibrate pressure and temperature sensors
   - Test emergency vent operation
   - Re-certify leak detection system

4. **Clearance for Refueling**
   - Engineering approval
   - Regulatory clearance (if required)
   - Ground crew briefing
   - Safety equipment staged

**See RTS-Checklist_From-Long-Term-Storage for complete RTS procedures.**

---

## 14. COMPLETION SIGN-OFF

**Aircraft Registration**: _______________  
**Storage Start Date**: _______________  
**LH₂ Defueling Completed**: [ ] Yes  Final Quantity: _______%  
**Inerting Method**: [ ] Pressure Purge (3x)  [ ] Vacuum + Backfill  
**Final Tank Pressure**: _______ kPa (nitrogen)  
**H₂ Concentration Verified**: [ ] < 0.1%  
**All Valves Tagged**: [ ] Yes  
**Placards Installed**: [ ] Yes  

**Performed by** (Hydrogen Technician):  
Name: _______________ License: _______________ Date: _______________  
Signature: _______________

**Inspected by**:  
Name: _______________ License: _______________ Date: _______________  
Signature: _______________

**Engineering Approval** (if > 180 days):  
Name: _______________ Signature: _______________ Date: _______________

---

## 15. Related Documents

- AMM 28-60: Cryogenic Hydrogen System
- LTSP_Master-Procedure-Long-Term-Prep_rev2.0.0_20281201.md
- Hydrogen Ground Servicing Manual
- RTS-Checklist_From-Long-Term-Storage_rev2.0.0_20281201.md

## 16. Emergency Contact

**H₂ System Engineer**: [Phone]  
**24/7 Emergency**: [Phone]  
**Fire Department**: [Local]

---

**⚠️ CRITICAL SAFETY PROCEDURE - HYDROGEN SYSTEM**  
**QUALIFIED PERSONNEL ONLY**

---

**Approval**: Chief Engineer - Fuel Systems  
**Next Review**: 2025-10-27
