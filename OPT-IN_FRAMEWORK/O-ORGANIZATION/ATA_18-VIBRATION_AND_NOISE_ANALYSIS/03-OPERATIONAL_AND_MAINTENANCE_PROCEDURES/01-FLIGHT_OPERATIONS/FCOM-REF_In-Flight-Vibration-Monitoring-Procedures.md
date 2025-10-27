# FCOM-REF – In-Flight Vibration Monitoring Procedures

**Document ID:** FCOM-REF_In-Flight-Vibration-Monitoring-Procedures  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Status:** Released

---

## 1. Purpose

This document provides flight crew guidance for monitoring and responding to vibration and noise alerts during AMPEL360 operations. It is intended as supplementary reference material to the Flight Crew Operating Manual (FCOM).

---

## 2. System Description

### 2.1 Vibration and Noise Monitoring System

The AMPEL360 is equipped with an advanced Health and Usage Monitoring System (HUMS) that continuously monitors:
- **Propulsor vibration** (open-fan, gearbox)
- **Engine core vibration** (compressor, turbine)
- **Airframe vibration** (fuselage, wings, empennage)
- **Cabin acoustic levels**

### 2.2 Alert Levels

| Level | Color | Meaning | Action Required |
|-------|-------|---------|----------------|
| **GREEN** | Green | Normal operation | Continue monitoring |
| **AMBER** | Amber | Caution - degraded condition | Action within specified time |
| **RED** | Red | Warning - critical condition | Immediate action required |

---

## 3. EICAS/ECAM Indications

### 3.1 Display Format

**Normal Operation (GREEN):**
```
PROP VIB L: 0.08 IPS [GREEN]
PROP VIB R: 0.07 IPS [GREEN]
```

**AMBER Alert:**
```
EICAS MESSAGE: "L PROP VIB HIGH"
PROP VIB L: 0.19 IPS [AMBER]
MASTER CAUTION: Illuminated
```

**RED Alert:**
```
EICAS MESSAGE: "L PROP VIB CRITICAL"
PROP VIB L: 0.28 IPS [RED]
MASTER WARNING: Illuminated
AURAL: "PROPULSOR VIBRATION"
```

### 3.2 Message Priority

Vibration alerts are **Level 2** (Caution) or **Level 1** (Warning) messages and will appear on the primary EICAS display.

---

## 4. Normal Operations Monitoring

### 4.1 Pre-Flight

**During Preflight Walk-Around:**
- Visually inspect propulsor blades for damage, erosion, or foreign object debris (FOD)
- Check for loose or missing balance weights on spinner
- Note any recent maintenance actions related to propulsion or structure

**During Cockpit Preparation:**
- Verify HUMS system status on EICAS: "VIB SYSTEM OK"
- Review maintenance log for any previous vibration alerts

### 4.2 Engine Start and Taxi

- Monitor vibration indications during engine start
- Normal vibration during start transient: < 0.20 ips (brief)
- Stable idle vibration: 0.04-0.06 ips typical

**If elevated vibration (> 0.10 ips) at idle:**
1. Note affected engine/propulsor
2. Check for unusual noise or airframe buffet
3. If vibration persists > 2 minutes, notify maintenance before takeoff

### 4.3 In-Flight Monitoring

**Normal Cruise Vibration:**
- Propulsor: 0.06-0.10 ips
- Engine core: 0.04-0.06 ips
- Airframe: Not displayed (monitored by system)

**Monitor for Changes:**
- Sudden increase in vibration (> 0.02 ips step change)
- Gradual trending (> 0.01 ips per hour)
- Correlation with flight maneuvers or power changes

**Pilot Actions (Normal Ops):**
- Scan vibration page every 15 minutes during cruise
- Note and report any trends to maintenance via ACARS

---

## 5. AMBER Alert Response

### 5.1 Propulsor Vibration AMBER

**EICAS Message:** "L PROP VIB HIGH" or "R PROP VIB HIGH"

**Immediate Actions:**
1. Note time, altitude, airspeed, and vibration level
2. Check associated engine parameters:
   - N1, N2 RPM
   - EGT (Exhaust Gas Temperature)
   - Oil pressure and temperature
   - Fuel flow
3. Assess for unusual noise or airframe vibration (pilot perception)

**If All Engine Parameters Normal and No Unusual Noise:**
- Continue flight per original flight plan
- Notify ATC if planning diversion (not required for AMBER)
- Contact Maintenance Control via ACARS:
  ```
  "L PROP VIB AMBER, 0.19 IPS AT FL350, CONTINUING TO DEST.
  ENG PARAMS NORMAL, NO ABNORMAL NOISE."
  ```
- Monitor vibration trend; if increasing, consider precautionary diversion

**If Engine Parameters Abnormal or Unusual Noise Detected:**
- Refer to FCOM Section 70-XX: Engine Abnormal Vibration procedure
- Consider precautionary power reduction on affected engine
- Plan diversion to nearest suitable airport

**Logbook Entry (Post-Flight):**
```
"L PROP VIB AMBER ALERT, 0.19 IPS, FL350, 1430Z. 
ENGINE PARAMS NORMAL. REQ: VIBRATION ANALYSIS."
```

**Minimum Equipment List (MEL) Consideration:**
- AMBER vibration alert allows 10 flight hours to corrective maintenance
- Aircraft may continue in service with AMBER alert if specified in MEL

### 5.2 Cabin Noise AMBER

**EICAS Message:** "CAB NOISE HIGH"

**Immediate Actions:**
1. Verify cabin altitude and pressurization normal
2. Check Active Noise Cancellation (ANC) system status
3. If ANC system faulted, attempt reset (ANC RESET button on overhead panel)

**If ANC Reset Successful:**
- Verify noise level returns to GREEN
- Monitor for remainder of flight
- Log ANC system fault for maintenance

**If ANC Reset Unsuccessful or No ANC Fault:**
- Probable cause: Propulsor or engine tone increase
- Refer to propulsor/engine vibration procedures
- Continue flight; passenger comfort affected but not safety

**Crew Actions:**
- Brief cabin crew on elevated noise (inform passengers if excessive)
- Consider in-flight entertainment volume adjustment

---

## 6. RED Alert Response

### 6.1 Propulsor Vibration RED

**EICAS Message:** "L PROP VIB CRITICAL" or "R PROP VIB CRITICAL"  
**Master Warning:** Illuminated  
**Aural Alert:** "PROPULSOR VIBRATION"

**MEMORY ITEMS:**
1. **Throttle (affected engine):** RETARD to idle
2. **Monitor vibration level:** Should decrease
3. **Engine parameters:** Check N1, N2, EGT, oil pressure/temp

**Non-Memory Items:**
1. If vibration decreases below RED threshold at idle:
   - Maintain idle thrust on affected engine
   - Continue flight on remaining engine(s)
2. If vibration remains in RED at idle:
   - Refer to FCOM Section 70-XX: Engine Shutdown (Abnormal)
   - Consider precautionary engine shutdown
3. Declare emergency to ATC (PAN-PAN or MAYDAY as appropriate)
4. Divert to nearest suitable airport
5. Notify cabin crew and passengers
6. Request emergency equipment standing by (precautionary)

**Landing Considerations:**
- Single-engine approach and landing (if engine shut down)
- Increased landing distance due to reduced thrust
- Consider overweight landing if fuel dump not available

**Post-Landing:**
- Park aircraft clear of active taxiways
- Do not shutdown remaining engine until clear of runway
- Notify maintenance immediately
- Aircraft remains grounded until maintenance investigation complete

### 6.2 Airframe Vibration RED

**EICAS Message:** "AIRFRAME VIB HIGH"  
**Master Warning:** Illuminated

**MEMORY ITEMS:**
1. **Autopilot:** DISENGAGE
2. **Autothrottle:** DISENGAGE
3. **Airspeed:** REDUCE (smoothly decelerate to 250 KIAS or lower)
4. **Altitude:** DESCEND (if vibration decreases, maintain lower altitude)

**Non-Memory Items:**
1. Avoid abrupt control inputs
2. Check for flight control anomalies:
   - Unusual control forces
   - Asymmetric control response
   - Control surface position indications
3. If vibration persists or increases:
   - Declare emergency to ATC
   - Divert to nearest suitable airport
   - Brief cabin crew: potential turbulence or structural issue
4. If vibration decreases:
   - Maintain reduced airspeed and altitude
   - Continue to destination or divert based on crew assessment

**Note:** Airframe RED alerts are rare and may indicate:
- Severe turbulence (transient)
- Loose structure (fastener failure)
- Flight control flutter onset (critical)

---

## 7. Special Conditions

### 7.1 Icing Conditions

**Awareness:**
- Ice accumulation on propulsor blades can cause temporary imbalance
- Ice shedding during/after icing encounter may trigger AMBER alerts

**Crew Actions:**
- Activate engine and wing anti-ice as required per FCOM
- Monitor vibration during and after icing encounter (30 minutes after exiting icing)
- If AMBER alert occurs during/after icing:
  - Note in logbook: "AMBER ALERT, ICING ENCOUNTER"
  - Vibration typically returns to GREEN after landing (ice melts)

### 7.2 Turbulence

**Awareness:**
- Severe turbulence can cause transient airframe vibration spikes
- EICAS may momentarily display AMBER/RED, then clear

**Crew Actions:**
- Reduce airspeed to turbulence penetration speed (per FCOM)
- If vibration alert persists > 30 seconds after exiting turbulence, follow standard alert procedures

### 7.3 High Crosswind Takeoff/Landing

**Awareness:**
- Strong crosswinds (> 25 knots) can excite lateral airframe modes
- AMBER airframe vibration alerts possible during crosswind operations (normal)

**Crew Actions:**
- If AMBER alert during crosswind ops, note in logbook but no further action required unless vibration persists in cruise

---

## 8. Communication and Reporting

### 8.1 ACARS Messages

**Standard ACARS Vibration Report Format:**
```
VIB ALERT: [L/R] [PROP/ENG/AIRFRAME]
LEVEL: [AMBER/RED]
VALUE: [X.XX IPS or G]
FL: [XXXXX]
TIME: [HHMMZ]
ENG PARAMS: [NORMAL/ABNORMAL]
ACTION: [CONTINUING/DIVERTING]
```

### 8.2 ATC Communication

**For AMBER Alerts:**
- No requirement to notify ATC unless planning diversion

**For RED Alerts:**
```
"[Callsign], declaring PAN-PAN, propulsor vibration alert, 
requesting diversion to [Airport], souls on board [XXX], 
fuel remaining [X.X] hours."
```

### 8.3 Maintenance Logbook Entry

**Required Information:**
- Alert level and time
- Vibration value
- Flight conditions (altitude, airspeed, power setting)
- Engine parameters
- Corrective actions taken
- Maintenance action required

---

## 9. Pilot Training

**Initial Training:**
- HUMS system familiarization (1 hour)
- Vibration alert procedures (simulator scenarios)

**Recurrent Training:**
- Reviewed annually in ground school
- Simulator practice: AMBER and RED alert response

---

## 10. Cross-References

- **FCOM Section 70-XX**: Engine Abnormal Vibration
- **FCOM Section 27-XX**: Flight Control Abnormal
- **MEL Item XX-XX**: Vibration Monitoring System
- **QRH**: Quick Reference Handbook (AMBER/RED vibration checklists)
- **ATA 18**: Vibration and Noise Analysis (Maintenance)

---

**Document Control:**
- **Next Review:** 2025-10-27
- **Change Authority:** Flight Operations

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
