AMPEL360 FLIGHT CREW OPERATING MANUAL
======================================

NON-NORMAL PROCEDURE
====================

HYDROGEN LEAK - IN FLIGHT
ATA 26-40

Document ID: NNP_26-40_H2_Leak_In_Flight
Revision: 1.0.0
Effective Date: 2028-10-01

═══════════════════════════════════════════════════════════════════

HEADER: Related Systems
- ATA 26-40-xx: H₂ Leak/Fire Detection
- ATA 28-60-00: Cryogenic H₂ Storage & Distribution
- ATA 24-60-00: Fuel Cell Stacks
- Sensors: H₂/O₂ Detection Systems
- Isolation: High-Voltage System

═══════════════════════════════════════════════════════════════════

CONDITION:
Hydrogen leak detected - indicated by:
- H2 LEAK warning (EICAS/ECAM)
- H₂ sensor concentration >25% LEL (Lower Explosive Limit)
- Cryogenic tank pressure drop
- Fuel cell system isolation command
- Unusual frost patterns on structure

═══════════════════════════════════════════════════════════════════

MEMORY ITEMS (Immediate Action):
1. H₂ SUPPLY SHUTOFF VALVES........................CLOSE
2. FUEL CELL SYSTEM..............................ISOLATE
3. H₂ TANK VENT..................................OPEN (if safe)

═══════════════════════════════════════════════════════════════════

PROCEDURE (Reference QRH):

1. Verify hydrogen system isolation:
   - H₂ supply shutoff valves.....................CLOSED
   - Fuel cell system.............................ISOLATED
   - H₂ sensor readings...........................MONITOR (decreasing trend expected)

2. Assess leak severity:
   - H₂ concentration.............................CHECK TREND
   - If concentration increasing..................EMERGENCY DESCENT
   - If concentration stable/decreasing...........CONTINUE MONITORING

3. Configure power system:
   - Fuel cell output.............................ZERO
   - Battery power................................PRIMARY SOURCE
   - SAF engines.................................VERIFY AVAILABLE
   - Load shedding................................AS REQUIRED

4. Ventilation and fire prevention:
   - Cabin ventilation............................MAXIMUM (if H₂ not in cabin)
   - Equipment compartment ventilation............MAXIMUM
   - Ignition sources.............................MINIMIZE
   - Electrical loads in affected area............ISOLATE

5. Tank pressure management:
   - Monitor tank pressure........................CONTINUOUS
   - If pressure continues dropping...............CONFIRM ISOLATION
   - Tank vent system.............................AS REQUIRED (away from ignition sources)

6. Plan for landing:
   - Nearest suitable airport.....................IDENTIFY
   - Airport with H₂ handling capability..........PREFERRED
   - Declare emergency............................MAYDAY
   - Alert airport fire services..................H₂ LEAK IN FLIGHT
   - Land as soon as practical....................EXECUTE

7. Approach and landing considerations:
   - Battery endurance............................CALCULATE
   - Single-engine capability.....................VERIFY (if H₂ unavailable)
   - Minimize electrical load.....................UNTIL LANDING

8. Post-landing:
   - Park in isolation area.......................AS DIRECTED
   - Allow H₂ to vent/disperse....................DO NOT APPROACH
   - Wait for fire services clearance.............BEFORE DEPLANING

═══════════════════════════════════════════════════════════════════

WARNINGS:
⚠ HYDROGEN IS HIGHLY FLAMMABLE - explosive range 4% to 75% in air
⚠ HYDROGEN IS COLORLESS AND ODORLESS - rely on sensors only
⚠ CRYOGENIC HYDROGEN at -253°C - severe cold burns possible
⚠ DO NOT use portable electronic devices near leak area
⚠ If fire develops, refer to NNP_26-40_H2_Fire

═══════════════════════════════════════════════════════════════════

CAUTIONS:
⚠ Battery endurance limited - plan for nearest suitable airport
⚠ H₂ tank pressure may increase if vent blocked
⚠ Frost formation indicates active cryogenic leak
⚠ Multiple H₂ sensors provide redundancy - verify with multiple sources

═══════════════════════════════════════════════════════════════════

NOTES:
• H₂ detection system has multiple sensors in tank bay, fuel cell bay, and ventilation ducts
• Automatic isolation occurs at 25% LEL to provide safety margin below 4% explosive limit
• Hydrogen is lighter than air and will naturally vent upward
• System designed with multiple redundant shutoff valves
• Small leaks may be acceptable for continued flight after isolation
• Large leaks require immediate landing

═══════════════════════════════════════════════════════════════════

CROSS-REFERENCES:
- H₂ Fire Procedure: NNP_26-40_H2_Fire
- Fuel Cell System Description: FCOM SYS 24-60
- H₂ Storage System Description: FCOM SYS 28-60
- H₂ Sensor System: ATA 26-40-xx
- Ground H₂ Leak Procedure: Ground Operations Manual §3.4

═══════════════════════════════════════════════════════════════════

Footer: QRH §EMER-2.1 | NNP_26-40_H2_Leak_In_Flight Rev 1.0.0 | © 2028 AMPEL360
