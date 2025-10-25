# GOM_AP360-S001_LH2-Refueler_rev2.0.0_20281101

## Ground Operations Manual: LH2 Cryogenic Refueling System

**Document Type:** Ground Operations Manual (GOM)  
**GSE ID:** AP360-S001  
**Model:** LH2 Cryogenic Refueler  
**Revision:** 2.0.0  
**Effective Date:** 2028-11-01  
**Status:** Released

---

## 1. System Overview

### 1.1 Purpose
The AP360-S001 LH2 Cryogenic Refueling System provides safe, efficient refueling of AMPEL360 aircraft with liquid hydrogen (LH2) fuel. The system includes:
- 5000 kg capacity LH2 storage tank (vacuum-insulated)
- Cryogenic transfer pump (variable speed, 0-50 kg/min)
- ISO 21013 quick-disconnect coupling assembly
- 800 Vdc electrical ground power connection
- Integrated safety monitoring and emergency shutdown systems

### 1.2 Operational Capabilities
- **Refuel Rate:** 10-40 kg/min LH2 (adjustable based on aircraft acceptance rate)
- **Tank Capacity:** 5000 kg LH2 (approximately 3-4 aircraft refuelings per tank fill)
- **Electrical Output:** 800 Vdc, 500 A continuous (for aircraft battery pre-charging)
- **Operating Range:** -40°C to +50°C ambient temperature

---

## 2. Safety Precautions

### 2.1 Hazards
- **Cryogenic Burn Hazard:** LH2 at -253°C can cause severe frostbite on contact
- **Fire/Explosion Hazard:** Hydrogen is highly flammable (4-75% mixture in air)
- **Asphyxiation Hazard:** Hydrogen displaces oxygen in confined spaces
- **High Voltage Hazard:** 800 Vdc electrical system can cause electrocution

### 2.2 Required Personal Protective Equipment (PPE)
- Cryogenic-rated gloves (Kevlar/Nomex, -253°C rated)
- Face shield or safety goggles with side shields
- Flame-resistant coveralls (Nomex or equivalent)
- Steel-toed safety boots with ESD protection
- Hard hat with chin strap

### 2.3 Area Requirements
- **Zone Classification:** ATEX Zone 2 (H₂ atmosphere possible under abnormal conditions)
- **Ventilation:** Outdoor operations or forced ventilation (≥ 10 air changes/hour)
- **Monitoring:** Continuous H₂ gas detectors (alarm at 1% LEL, 0.4% v/v)
- **Exclusion Zone:** 15-meter radius around coupling point during refueling

### 2.4 Emergency Procedures
1. **Hydrogen Leak Detected:**
   - Activate emergency stop
   - Evacuate exclusion zone
   - Do not operate electrical switches (potential ignition source)
   - Allow natural ventilation to dissipate hydrogen
   
2. **Cryogenic Spill:**
   - Do not touch spilled LH2 or frosted surfaces
   - Evacuate area; allow LH2 to evaporate naturally
   - Monitor for hydrogen concentration buildup
   
3. **Fire:**
   - Activate emergency stop
   - Evacuate area immediately
   - Do not attempt to extinguish LH2 fire unless trained
   - Call emergency services

---

## 3. Pre-Operation Checklist

### 3.1 GSE System Checks (Before Approaching Aircraft)
- [ ] LH2 tank pressure: 3-5 bar (verify on tank gauge)
- [ ] LH2 tank level: > 500 kg remaining (sufficient for planned refuel)
- [ ] Cryogenic pump operational (run self-test mode)
- [ ] All E-stop buttons functional (test and reset)
- [ ] H₂ gas detectors operational and calibrated (within 30 days)
- [ ] Coupling and hose inspection: no visible damage, frost leaks, or wear
- [ ] Electrical cable inspection: no cuts, abrasion, or exposed conductors
- [ ] Fire extinguisher present and charged (dry powder or CO₂ type)

### 3.2 Aircraft Interface Checks
- [ ] Aircraft chocks in place, parking brake set
- [ ] Aircraft fuel system armed and ready (coordinated with flight crew)
- [ ] Bonding cable connected and verified (< 0.1 Ω resistance)
- [ ] Aircraft fueling port accessible and clear of obstructions
- [ ] Aircraft E-stop button location identified and accessible

---

## 4. Operating Procedures

### 4.1 Connection Sequence

**Step 1: Position GSE**
1. Approach aircraft from designated side (typically port side aft)
2. Position GSE so coupling hose can reach fueling port without tension
3. Set GSE parking brake and place wheel chocks
4. Verify exclusion zone is clear of personnel

**Step 2: Establish Bonding**
1. Connect bonding cable from GSE to aircraft bonding point
2. Verify continuity with bonding meter (< 0.1 Ω)
3. Do not proceed if bonding resistance exceeds 0.1 Ω

**Step 3: Connect Electrical Interlock**
1. Mate electrical connector (800 Vdc + CAN bus + interlock)
2. Verify connector fully seated and locked
3. Confirm "Interlock OK" indication on GSE display

**Step 4: Connect LH2 Coupling**
1. Inspect coupling seals for damage or contamination
2. Align coupling with aircraft receptacle
3. Push coupling forward and rotate bayonet lock clockwise to engage
4. Verify audible "click" and visual lock indication
5. Perform leak check (H₂ detector scan around coupling)

**Step 5: Communication Handshake**
1. GSE sends heartbeat message (CAN ID 0x100) at 1 Hz
2. Wait for aircraft handshake response (CAN ID 0x200)
3. Verify "Comms OK" indication on GSE display
4. If handshake fails after 30 seconds, troubleshoot CAN bus connection

### 4.2 Refueling Sequence

**Step 6: Initiate Refuel**
1. Verify all pre-start checks complete on GSE display
2. Confirm with aircraft crew that aircraft is ready to receive fuel
3. Select "Start Refuel" on GSE touchscreen
4. System will automatically:
   - Chill LH2 lines (1-2 minute cooldown period)
   - Open flow control valve gradually
   - Ramp up pump speed to target flow rate

**Step 7: Monitor Refuel Progress**
1. Observe GSE display for:
   - LH2 flow rate (target: 20-40 kg/min)
   - Delivery pressure (4-6 bar at coupling)
   - Coupling temperature (-250 to -245°C during flow)
   - Aircraft fuel level (%)
2. Monitor aircraft indicators per flight crew coordination
3. Watch for any abnormal conditions:
   - Sudden pressure drop (possible leak)
   - Excessive coupling frosting (insulation failure)
   - H₂ gas detector alarm
   - Aircraft fuel system fault

**Step 8: Complete Refuel**
1. System will automatically stop when aircraft signals "tank full" (CAN ID 0x210)
2. Pump ramps down gradually (30-second shutdown sequence)
3. Flow control valve closes
4. Verify "Refuel Complete" on GSE display
5. Allow 1 minute for LH2 lines to depressurize

### 4.3 Disconnection Sequence

**Step 9: Disconnect LH2 Coupling**
1. Verify pressure at coupling < 0.5 bar (depressurized)
2. Rotate bayonet lock counterclockwise to disengage
3. Pull coupling straight back from aircraft receptacle
4. Inspect coupling for any ice buildup or damage
5. Stow coupling in protective cap on GSE hose reel

**Step 10: Disconnect Electrical**
1. Confirm HV power is de-energized (verify on GSE display)
2. Press connector release latch
3. Pull electrical connector straight back from aircraft
4. Stow connector in protective holder on GSE

**Step 11: Remove Bonding Cable**
1. Disconnect bonding cable from aircraft bonding point
2. Stow bonding cable on GSE reel
3. Record bonding resistance in GSE log (if equipped)

**Step 12: Post-Operation**
1. Release aircraft chocks and parking brake (per ground crew)
2. Drive GSE clear of aircraft
3. Complete refueling log entry (GSE ID, aircraft tail number, fuel delivered, date/time)
4. Inspect GSE for any damage or anomalies
5. Report any defects or non-conformances to maintenance

---

## 5. Maintenance & Calibration

### 5.1 Daily Inspections (Before First Use)
- Visual inspection of hoses, couplings, and electrical cables
- H₂ gas detector bump test (expose to test gas, verify alarm)
- LH2 tank level and pressure check
- E-stop button functional test

### 5.2 Weekly Maintenance
- Cryogenic pump lubrication check (automatic system, verify reservoir level)
- Coupling seal inspection (replace if damaged or worn)
- Electrical connector pin inspection (clean if contaminated)

### 5.3 Monthly Maintenance
- H₂ gas detector calibration (certified test gas, adjust zero and span)
- Pressure transducer calibration check (compare to reference gauge)
- Bonding cable resistance test (must be < 0.1 Ω)

### 5.4 Annual Certification
- Pressure vessel inspection and re-certification (per local regulations)
- LH2 tank hydrostatic test (1.5× working pressure, visual inspection for leaks)
- Electrical safety test (dielectric withstand, 2000 Vdc for 1 minute)
- Complete functional test per ATP_AP360-S001_LH2-Coupling

---

## 6. Troubleshooting

### 6.1 Common Faults

| Fault Code | Description | Probable Cause | Corrective Action |
|:-----------|:------------|:---------------|:------------------|
| E001 | Interlock Failure | Connector not fully seated | Re-seat electrical connector; verify lock |
| E002 | H₂ Leak Detected | Coupling seal failure | Stop refuel; inspect coupling seal; replace if needed |
| E010 | CAN Bus Timeout | Communication failure | Check CAN cable; verify aircraft system powered |
| E015 | Pressure Drop | Line blockage or leak | Check coupling connection; inspect hose for damage |
| E020 | Low LH2 Level | Tank nearly empty | Return to depot for tank refill |

### 6.2 Emergency Shutdown Conditions
System will automatically initiate emergency shutdown if:
- E-stop button pressed (GSE or aircraft)
- H₂ gas concentration exceeds 1% LEL (0.4% v/v)
- Interlock circuit broken
- Excessive coupling temperature rise (> -200°C, indicates poor thermal insulation)
- Loss of communication with aircraft for > 5 seconds

---

## 7. Technical Specifications

### 7.1 LH2 System
- **Tank Capacity:** 5000 kg LH2 (70,000 liters)
- **Tank Pressure:** 3-5 bar (nominal operating range)
- **Insulation:** Vacuum-jacketed with multi-layer insulation (MLI)
- **Boil-Off Rate:** < 0.5% per day (25 kg/day at full tank)
- **Transfer Pump:** Centrifugal cryogenic pump, variable speed 0-3000 RPM
- **Flow Rate:** 10-50 kg/min (adjustable via GSE controller)

### 7.2 Electrical System
- **HV Output:** 800 Vdc nominal (720-880 Vdc range)
- **HV Current:** 500 A continuous, 600 A peak (30 sec)
- **HV Source:** Lithium-ion battery bank (1000 kWh capacity)
- **Control Voltage:** 24 Vdc (battery-backed, for safety-critical systems)

### 7.3 Communication System
- **Protocol:** CAN FD 2.0, ISO 11898-1:2015
- **Baud Rate:** 500 kbit/s nominal, 2 Mbit/s data phase
- **Message Rate:** 1 Hz heartbeat, 100 ms telemetry updates

---

## 8. Training Requirements

All personnel operating the AP360-S001 LH2 Refueling System must complete:
1. **COURSE-H2-001:** Hydrogen Safety Awareness (4 hours classroom)
2. **COURSE-LH2-002:** Cryogenic Safety & PPE (8 hours classroom + practical)
3. **COURSE-AP360-S001:** GSE-Specific Operation & Maintenance (16 hours, includes hands-on)
4. **CERT-HV-001:** High Voltage Safety (800V) Certification (8 hours)

**Recertification:** Every 24 months for all courses

---

## 9. Related Documents

- `ICD_AP360-S001_LH2-Coupling_rev3.0.0_20280901.md` - Interface Control Document
- `ATP_AP360-S001_LH2-Coupling_rev1.2.0_20280815.md` - Acceptance Test Procedure
- `SDS_LH2_rev4.0.0_20280601.md` - Safety Data Sheet (Liquid Hydrogen)
- `TRAIN_AP360-S001_Operator_rev1.0.0_20281001.md` - Operator Training Manual

---

## 10. Revision History

| Revision | Date | Author | Changes |
|:---------|:-----|:-------|:--------|
| 1.0.0 | 2028-03-01 | K. Brown | Initial release |
| 1.5.0 | 2028-07-15 | K. Brown | Added troubleshooting section |
| 2.0.0 | 2028-11-01 | L. Davis | Updated safety procedures, added training requirements |

---

## 11. Approval

| Role | Name | Signature | Date |
|:-----|:-----|:----------|:-----|
| Ground Ops Manager | TBD | ___________ | 2028-11-01 |
| Safety Officer | TBD | ___________ | 2028-11-01 |
| Quality Manager | TBD | ___________ | 2028-11-01 |

---

*Document ID: GOM-AP360-S001-20281101*  
*Classification: Controlled - Distribution: Authorized Personnel Only*  
*© 2028 AMPEL360 Program - All Rights Reserved*
