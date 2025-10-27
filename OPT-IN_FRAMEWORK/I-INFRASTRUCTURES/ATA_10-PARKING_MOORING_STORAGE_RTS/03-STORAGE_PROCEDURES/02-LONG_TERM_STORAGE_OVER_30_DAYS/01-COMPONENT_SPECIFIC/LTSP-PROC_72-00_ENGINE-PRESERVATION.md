# LTSP-PROC: Engine Preservation for Long-Term Storage

**Document ID**: LTSP-PROC_72-00_Engine-Preservation  
**ATA Chapter**: 72-00 (Engine - Turbine/Electric)  
**Storage Type**: Long-Term Storage Component-Specific  
**Revision**: 1.0.0  
**Date**: 2025-10-27

---

## 1. Purpose

Procedure for preserving AMPEL360 powerplant systems during long-term storage to prevent corrosion, seizure, and degradation.

## 2. Scope

Applies to:
- Turbine engines (if equipped)
- Electric propulsion motors
- Accessory gearboxes (ATA 83)
- Engine fuel and oil systems (ATA 73, 79)

## 3. Storage Duration Categories

| Duration | Method | Oil Change | Motoring Frequency |
|----------|--------|-----------|-------------------|
| 31-90 days | **Lay-up** | Not required | Monthly |
| 91-180 days | **Lay-up + inhibitor** | Fresh oil before storage | Bi-weekly |
| > 180 days | **Full preservation** | Fresh oil + inhibitor | Weekly OR fog internals |

---

## 4. PRE-STORAGE ENGINE RUN (Recommended)

**Purpose**: Circulate fresh oil, burn off moisture, seat components

1. **Pre-Flight Inspection**
   - Oil level at maximum
   - No outstanding engine discrepancies
   - Fuel quality verified

2. **Engine Run**
   - Run at idle for 5 minutes minimum
   - Advance to 50% N1 for 2 minutes (turbine) or 50% power (electric)
   - Return to idle for 2 minutes
   - Normal shutdown

3. **Post-Run**
   - Allow 30 minutes cool-down
   - Check for new leaks
   - Proceed immediately to preservation (while engine warm)

---

## 5. ENGINE OIL SYSTEM PRESERVATION

### 5.1 Oil Change (if required)

**Required for storage > 90 days OR if oil contaminated**

1. Drain oil while engine warm (better drainage)
2. Change oil filter
3. Fill with fresh oil to maximum serviceable
4. **Optional**: Add corrosion inhibitor additive (MIL-C-6529 Type II or approved)
5. Run engine 1-2 minutes to circulate preserved oil
6. Shutdown and document

### 5.2 Oil System Inspection

- [ ] Oil level at maximum
- [ ] Oil condition acceptable (clean, no water/fuel contamination)
- [ ] Oil filter checked/changed
- [ ] All oil caps and fittings torqued
- [ ] Breather system clear
- [ ] Oil cooler drained if outdoor storage

---

## 6. ENGINE PRESERVATION METHODS

### 6.1 Method A: Lay-Up (31-180 Days)

**Suitable for**: Indoor storage, periodic motoring possible

**Procedure:**
1. Oil system prepared (Section 5)
2. Fuel system drained or fuel stabilizer added
3. Install inlet and exhaust covers
4. **Motoring schedule**:
   - Manually rotate engine (turbine) OR motor briefly (electric)
   - Frequency per duration table (Section 3)
   - Minimum 5 complete revolutions
   - Document each motoring session

### 6.2 Method B: Inhibited Preservation (> 180 Days)

**Suitable for**: Extended storage, limited access for motoring

**Procedure:**
1. Perform Method A steps
2. **Spray inhibitor into engine**:
   - Remove igniters or inspection ports
   - Spray corrosion inhibitor (MIL-C-6529 Type I) into combustor
   - For turbine: Rotate engine manually while spraying
   - For electric motor: Spray stator and rotor surfaces
   - Quantity: Per manufacturer specification (~500ml typical)
3. Reinstall plugs/covers with new seals
4. **Motoring frequency**: Weekly minimum (or every 2 weeks with additional inhibitor)

### 6.3 Method C: Full Preservation (> 365 Days OR Harsh Environment)

**Procedure:**
1. Perform Method B
2. **Additional protection**:
   - Fill engine interior with vaporized corrosion inhibitor (VCI)
   - Seal inlet and exhaust with moisture barrier bags + desiccant
   - Install humidity indicators in sealed bags
   - Apply external corrosion inhibitor to engine case exterior
3. **No motoring** (engine fully sealed)
4. **Inspection**: Monthly humidity indicator check, replace desiccant if saturated

---

## 7. ENGINE INLET AND EXHAUST COVERS

### 7.1 Installation

1. **Cleaning**
   - Clean inlet and exhaust flanges
   - Remove any debris or contaminants

2. **Cover Selection**
   - Fabric covers: Indoor, ventilated storage (< 180 days)
   - Rigid covers: Outdoor OR long-term (> 180 days)
   - Sealed covers with desiccant: Full preservation (> 365 days)

3. **Installation**
   - Verify covers fit properly and seal
   - Install per manufacturer instructions
   - Secure with straps or fasteners
   - Tag covers: "INLET COVER INSTALLED - REMOVE BEFORE OPERATION"

### 7.2 Desiccant (if applicable)

- Install desiccant bags inside covers
- Use indicator-type desiccant (color change when saturated)
- Quantity: ~200g per inlet/exhaust
- Check monthly, replace if saturated

---

## 8. FUEL SYSTEM PRESERVATION

### 8.1 Turbine Engine Fuel System

**Option A: Drain (> 180 days)**
1. Drain all fuel from engine fuel system
2. Flush with clean fuel
3. Fog fuel lines with corrosion inhibitor
4. Cap all fuel ports

**Option B: Fuel Stabilizer (< 180 days)**
1. Add fuel stabilizer to fuel system
2. Run engine briefly to circulate
3. Top off fuel to maximum (minimize vapor space)
4. Document fuel batch and stabilizer

### 8.2 Electric Propulsion System

- Disconnect power supply
- Discharge capacitors
- Lock out motor controller
- Verify cooling system drained (if liquid-cooled)

---

## 9. PROPELLER/PROPULSOR PRESERVATION

### 9.1 Propeller Blades

1. Clean blades thoroughly
2. Inspect for damage
3. Lubricate blade bearings
4. **Positioning**:
   - Rotate to vertical or protected position
   - Avoid leaving in horizontal (collects moisture)
5. Apply blade protective coating

### 9.2 Propeller Dome/Spinner

1. Inspect for cracks or damage
2. Verify drain holes clear
3. Apply corrosion inhibitor to internal components
4. Install covers if available

---

## 10. ENGINE ELECTRICAL AND INSTRUMENTATION

- [ ] Disconnect engine batteries (if equipped)
- [ ] Cover sensors and probes
- [ ] Apply corrosion inhibitor to electrical connectors
- [ ] Protect wiring harnesses from moisture
- [ ] Document FADEC/engine controller software version

---

## 11. ENGINE MOTORING PROCEDURE DURING STORAGE

**Frequency**: Per storage duration table (Section 3)

### 11.1 Turbine Engine Manual Motoring

1. Remove inlet cover
2. Verify no obstructions in inlet/compressor
3. Rotate engine manually:
   - Use approved manual rotation tool
   - Minimum 5 complete revolutions
   - Smooth rotation (no binding or unusual resistance)
4. Reinstall inlet cover
5. Document date and initials

### 11.2 Electric Motor Motoring

1. Reconnect power (low voltage DC test supply)
2. Slowly motor (< 10 RPM)
3. Minimum 10 revolutions
4. Monitor current draw (should be consistent)
5. Disconnect power
6. Document

**⚠️ NOTE**: If ANY unusual resistance or binding detected, DO NOT FORCE - investigate before continuing

---

## 12. INSPECTION DURING STORAGE

| Check | Frequency | Action if Abnormal |
|-------|-----------|-------------------|
| External condition | Weekly | Document and investigate |
| Covers installed | Weekly | Reinstall if disturbed |
| Fluid leaks | Weekly | Investigate source |
| Oil level | Monthly | Top off if low |
| Humidity indicators | Monthly | Replace desiccant if needed |
| Motoring (if scheduled) | Per table | Investigate binding |
| Corrosion inspection | Quarterly | Treat and re-preserve |

---

## 13. RETURN TO SERVICE

**Minimum 14 days before planned RTS:**

### 13.1 Inspection

1. **External Inspection**
   - Remove all covers and preservation materials
   - Inspect inlet, exhaust, and accessories
   - Check for corrosion, nests, or damage

2. **Internal Inspection** (if preserved)
   - Borescope inspection of hot section
   - Check for corrosion or contamination
   - Verify no foreign objects

3. **Oil System**
   - Drain preservation oil (if inhibitor added)
   - Install new oil filter
   - Fill with fresh operational oil
   - Prime oil system

4. **Fuel System**
   - Flush preservation fluids
   - Refuel with fresh fuel
   - Prime fuel system
   - Check for leaks

### 13.2 Functional Tests

1. **Ground Run**
   - First run: Idle only, 5 minutes
   - Monitor oil pressure, temperature, vibration
   - Check for unusual noises or operation

2. **Full Power Test** (if ground run normal)
   - Advance to rated power
   - Verify all parameters normal
   - Monitor for leaks or anomalies

3. **Post-Test Inspection**
   - Check for new leaks
   - Verify all systems normal
   - Document test results

### 13.3 Certification

- [ ] All preservation materials removed and accounted for
- [ ] Functional tests satisfactory
- [ ] No discrepancies noted
- [ ] Engine logbook updated
- [ ] Engine certified airworthy

---

## 14. COMPLETION SIGN-OFF

**Aircraft Registration**: _______________  
**Engine Position**: [ ] Engine 1  [ ] Engine 2  [ ] APU  
**Engine S/N**: _______________  
**Storage Method**: [ ] Method A (Lay-up)  [ ] Method B (Inhibited)  [ ] Method C (Full)  

**Preservation Actions:**
- [ ] Pre-storage engine run completed
- [ ] Oil system prepared (oil change: [ ] Yes  [ ] No)
- [ ] Fuel system preserved
- [ ] Inlet/exhaust covers installed
- [ ] Preservation spray applied (if Method B/C)
- [ ] Desiccant installed (if applicable)
- [ ] Motoring schedule established

**Motoring Frequency**: Every ______ days

**Performed by**:  
Name: _______________ License: _______________ Date: _______________  
Signature: _______________

**Inspected by**:  
Name: _______________ License: _______________ Date: _______________  
Signature: _______________

---

## 15. Related Documents

- AMM 72-00: Engine System
- AMM 79-00: Oil System
- AMM 61-00: Propellers/Propulsors
- Engine Manufacturer Service Bulletins
- LTSP_Master-Procedure-Long-Term-Prep_rev2.0.0_20281201.md
- RTS-Checklist_From-Long-Term-Storage_rev2.0.0_20281201.md

---

**Approval**: Chief Engineer - Powerplant  
**Next Review**: 2025-10-27
