# Taxiing Under Own Power Procedure
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27  
**Document Type:** PROC  
**Effectivity:** ALL MSN

## Purpose
This procedure defines normal taxiing operations for the AMPEL360 aircraft under its own engine power.

## Scope
This procedure covers taxi operations in normal visibility conditions on paved surfaces. For low visibility operations, refer to PROC_LVO-Taxiing-Low-Visibility.

## Prerequisites

1. Aircraft cleared for taxi by ATC
2. Engines running normally
3. All flight controls checked and operational
4. Hydraulic systems operational
5. Nose Wheel Steering (NWS) operational
6. Brakes tested and operational
7. Current weight and CG known (from ATA 08)
8. Taxi route briefed and understood

## Operational Limits

### Speed Limits
- **Straight Sections:** Maximum 30 knots groundspeed
- **Turns:** Maximum 10 knots groundspeed
- **Congested Areas:** Maximum 15 knots groundspeed
- **Contaminated Surface:** Maximum 10 knots groundspeed

Refer to DATA_Steering-Angle_vs-Speed_rev1.0.0.csv for speed-dependent steering limitations.

### Environmental Limits
- **Wind:** Taxi operations may continue up to 45 knots sustained wind
  - Above 35 knots: Exercise extreme caution, consider holding until wind subsides
  - Crosswind component above 30 knots: Reduce taxi speed by 50%
- **Visibility:** Minimum 400 meters for normal operations
- **Surface:** Must be clear of standing water, snow, or ice exceeding contamination limits

### Turn Limits
- Maximum NWS deflection: 70 degrees (asymptotic at speeds >10 knots)
- Minimum turn radius varies with speed (see DATA_Wingtip-And-Tail-Clearance_Turns)
- Never turn with forward momentum if NWS unresponsive

## Steering System

### Nose Wheel Steering (NWS)
- **Control:** Tiller (high gain) or rudder pedals (low gain)
- **Tiller Range:** ±70 degrees
- **Pedal Range:** ±7 degrees
- **Transition:** Automatic based on speed and input

### Differential Braking
- Available as backup if NWS fails
- Not for routine turns
- Use symmetrically for speed control on straight sections

## Pre-Taxi Checks

### Cockpit Preparation
1. **Flight Crew Briefing**
   - Review taxi route
   - Identify hot spots or complex intersections
   - Confirm runway assignment
   - Brief contingency plan (return to gate, alternate routing)

2. **Systems Check**
   - NWS operational (green light)
   - Hydraulic pressure normal (both systems)
   - Brakes tested (accumulator pressure adequate)
   - Anti-skid operational
   - Tiller and rudder pedals free and responsive

3. **Exterior Check**
   - Wing tips and tail clear of obstacles
   - All ground equipment removed
   - Beacon/strobe lights ON
   - Taxi lights ON
   - Landing lights as required

4. **Performance Calculation**
   - Review current weight (ATA 08)
   - Check brake energy limits (DATA_Brake-Energy-Taxi_Profiles)
   - Determine max taxi speed for conditions

## Taxi Procedures

### Starting Movement

1. **Release Parking Brake**
   - Verify brake pressure before release
   - Announce "Parking brake off"

2. **Confirm Clearance**
   - Read back ATC taxi clearance
   - Verify taxi route on airport diagram

3. **Initiate Movement**
   - Add thrust gradually
   - Use symmetric thrust on both engines
   - Confirm aircraft begins to move
   - Verify NWS engaged and responsive

4. **Accelerate to Taxi Speed**
   - Do not exceed 10 knots until clear of parking area
   - Accelerate to appropriate taxi speed for taxiway

### During Taxi

**Speed Control:**
- Adjust thrust to maintain desired speed
- Use brakes smoothly for deceleration
- Avoid excessive braking (monitor brake energy)
- In crosswind: Aileron into wind, anticipate drift

**Steering:**
- Use tiller for small corrections and turns
- Anticipate aircraft momentum (do not oversteer)
- Verify nose wheel follows steering input
- Maintain taxiway centerline

**Situational Awareness:**
- Pilot Flying: Controls aircraft, primary focus on path ahead
- Pilot Monitoring: Monitors clearances, watches for traffic, calls out threats
- Continuous sterile cockpit below 80 knots

**Turns:**
1. Reduce speed to 10 knots before turn
2. Verify wingtip and tail clearance adequate
3. Initiate turn with tiller
4. Maintain constant radius (avoid cutting corner)
5. Monitor wingtips and engine clearance throughout turn
6. Accelerate after turn complete

**Crosswind Considerations:**
- Aileron into wind to prevent wing from lifting
- Anticipate weathervaning tendency
- Reduce speed if crosswind component high
- Be prepared for gusts

**Engine Considerations:**
- Use symmetric thrust for straight sections
- Asymmetric thrust may be used for very tight turns (use caution)
- Monitor engine parameters (EGT, N1, N2)
- LH₂ fuel system status (ATA 28) - monitor for any anomalies

### Holds and Intersections

**At Holding Point:**
1. Reduce speed well in advance
2. Stop with nose gear on hold line
3. Set parking brake
4. Announce "Holding short [runway/taxiway]"
5. Complete lineup checklist if applicable

**Crossing Active Runway:**
1. Obtain explicit clearance
2. Read back clearance including runway identifier
3. Verify runway clear visually
4. Cross expeditiously but safely
5. Do not stop on runway unless emergency

### Emergency Situations During Taxi

**Loss of Steering:**
1. Reduce thrust to idle immediately
2. Use differential braking to maintain directional control
3. Stop aircraft using brakes
4. Set parking brake
5. Notify ATC: "Unable to taxi, loss of steering"
6. Request tug assistance

**Brake Failure:**
1. Reduce speed using engine thrust reduction
2. Use available brake (if single brake failure)
3. Warn ATC if unable to stop normally
4. Consider runway exit strategy if failure near runway

**Engine Fire or Failure During Taxi:**
1. Stop aircraft immediately
2. Set parking brake
3. Execute engine fire/failure checklist
4. Notify ATC
5. Consider evacuation if fire not contained

**Collision Avoidance:**
- Pilot Monitoring: Call "STOP" if collision imminent
- Pilot Flying: Apply maximum braking
- Set parking brake when stopped
- Assess damage before attempting to move

## Completing Taxi

### Approaching Parking Stand

1. Contact ramp control or marshaller
2. Reduce speed to 5 knots
3. Follow marshaller signals precisely
4. Align with parking centerline
5. Verify clearance to wing tips and tail

### Final Stop

1. Stop at designated position (follow marshaller or markings)
2. Set parking brake
3. Announce "Parking brake set"
4. Complete shutdown checklist or proceed with engine run as appropriate

### Post-Taxi

1. If required, log taxi profile in LOG_Taxi-Profiles.csv:
   - Route
   - Duration
   - Conditions
   - Brake energy used (if calculated)
   - Any abnormalities

2. Report any abnormalities:
   - NWS issues
   - Brake performance
   - Surface conditions
   - Ground traffic conflicts

## Brake Energy Management

During taxi, especially on long or complex routes, monitor brake energy:
- Refer to DATA_Brake-Energy-Taxi_Profiles for typical energy accumulation
- Minimize brake use (control speed with thrust)
- Allow brakes to cool if necessary
- If brake energy limits approached, consider slower taxi or pause to cool

**Brake Energy Warning:**
If brake temp sensors indicate high energy:
- Reduce taxi speed
- Minimize further brake application
- Notify maintenance after parking
- May require brake cooling period before takeoff

## Sterile Cockpit

During taxi operations:
- No non-essential conversation
- Flight crew focused on taxi operation and traffic
- Cabin crew may prepare cabin but minimize flight deck interruptions
- Passenger announcements limited to essential safety information

## References

- ATA 08: Weight and Balance
- ATA 28: LH₂ Fuel System Status
- ATA 32: Landing Gear, Steering, and Braking systems
- DATA_Steering-Angle_vs-Speed_rev1.0.0.csv
- DATA_Brake-Energy-Taxi_Profiles_rev1.0.0.csv
- DATA_Wingtip-And-Tail-Clearance_Turns_rev1.0.0.csv
- PROC_LVO-Taxiing-Low-Visibility_rev1.0.0_20280801.md (for low visibility operations)
- PROC_Emergency-Stop-And-Return_rev1.0.0_20280801.md (for emergency situations)

---

**Document Control:**
- Version: 1.0.0
- Last Updated: 2025-10-27
- Next Review: 2025-10-27
- Owner: Flight Operations
- Classification: OPERATIONAL - Controlled Document
