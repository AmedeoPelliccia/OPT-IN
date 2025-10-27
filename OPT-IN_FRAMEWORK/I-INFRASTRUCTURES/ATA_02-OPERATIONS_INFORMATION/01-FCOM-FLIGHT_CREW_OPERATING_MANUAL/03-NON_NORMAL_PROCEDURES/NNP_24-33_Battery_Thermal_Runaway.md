AMPEL360 FLIGHT CREW OPERATING MANUAL
======================================

NON-NORMAL PROCEDURE
====================

SOLID-CO₂ BATTERY THERMAL RUNAWAY
ATA 24-33

Document ID: NNP_24-33_Battery_Thermal_Runaway
Revision: 1.1.0
Effective Date: 2025-10-27

═══════════════════════════════════════════════════════════════════

HEADER: Related Systems
- ATA 26-30-xx: Fire Detection & Suppression
- ATA 21-50-xx: Power Electronics Cooling
- ATA 24-33-00: Solid-CO₂ Battery Modules

═══════════════════════════════════════════════════════════════════

CONDITION:
Battery thermal runaway detected - indicated by:
- BATTERY OVERHEAT warning (EICAS/ECAM)
- Battery temperature exceeding 65°C
- Battery compartment smoke/fire detection
- Visible smoke or unusual odor in cabin
- Battery management system isolation command

═══════════════════════════════════════════════════════════════════

MEMORY ITEMS (Immediate Action):
1. BATTERY MASTER................................OFF
2. AFFECTED BATTERY CONTACTOR....................OPEN
3. BATTERY FIRE SUPPRESSION......................ARMED

═══════════════════════════════════════════════════════════════════

PROCEDURE (Reference QRH):

1. Verify battery system isolation:
   - Battery Master Switch........................OFF
   - Affected battery module contactor............OPEN
   - Battery management system....................ISOLATED

2. Assess fire/smoke condition:
   - Battery compartment fire detection...........CHECK
   - Smoke in cabin...............................ASSESS
   - If fire confirmed........................DISCHARGE EXTINGUISHER

3. Configure electrical system:
   - Essential bus power..........................VERIFY (from remaining batteries or fuel cells)
   - Non-essential loads..........................SHED
   - Fuel cell output.............................INCREASE (if available)

4. Thermal management:
   - Battery cooling system.......................MAX (for unaffected modules)
   - Battery compartment ventilation..............CLOSED (affected compartment)
   - Monitor temperature trend....................CONTINUOUS

5. Plan for landing:
   - Nearest suitable airport.....................IDENTIFY
   - Declare emergency............................AS REQUIRED
   - Brief cabin crew.............................POTENTIAL EVACUATION
   - Land as soon as conditions permit............CONSIDER

6. Post-landing:
   - Remain on battery power......................UNTIL FIRE SERVICES CLEAR
   - Do not connect ground power..................UNTIL INSPECTION COMPLETE
   - Evacuate if directed by fire services........AS REQUIRED

═══════════════════════════════════════════════════════════════════

CAUTIONS:
⚠ Do NOT attempt to reset battery system until thermal runaway is confirmed stopped
⚠ Do NOT open battery compartment - risk of thermal runaway spread
⚠ Battery module may continue to generate heat for up to 30 minutes
⚠ Toxic fumes may be present - use oxygen if smoke enters cabin

═══════════════════════════════════════════════════════════════════

NOTES:
• Battery thermal runaway is a progressive, self-sustaining reaction
• Immediate isolation is critical to prevent cascade to adjacent modules
• Fire suppression system is optimized for solid-CO₂ battery chemistry
• Multiple battery modules available - loss of one module does not prevent safe flight
• If multiple modules affected, consider landing immediately

═══════════════════════════════════════════════════════════════════

CROSS-REFERENCES:
- Fire Detection/Suppression: ATA 26-30-xx
- Battery System Description: FCOM SYS 24-33
- MEL Dispatch Requirements: Section 24-33
- Ground Handling After Thermal Event: GSE Manual §5.2

═══════════════════════════════════════════════════════════════════

Footer: QRH §EMER-1.1 | NNP_24-33_Battery_Thermal_Runaway Rev 1.1.0 | © 2028 AMPEL360
