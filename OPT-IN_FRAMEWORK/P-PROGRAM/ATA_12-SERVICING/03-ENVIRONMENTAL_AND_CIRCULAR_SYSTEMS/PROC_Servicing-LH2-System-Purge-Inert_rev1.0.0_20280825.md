# PROC - Servicing LH₂ System Purge and Inert
**Revision:** 1.0.0  
**Effective Date:** 2028-08-25  
**System:** ATA 12 - SERVICING / ATA 28 - FUEL (Cryogenic)  

## Purpose
Define safe procedures for purging and inerting liquid hydrogen (LH₂) fuel systems using helium.

## Scope
Applies to all LH₂ system servicing, maintenance, and storage preparation operations.

## Prerequisites
* Cryo-Authorized Operator certification required
* Helium gas: 99.995% minimum purity
* LH₂ system empty or depressurized
* Cryogenic PPE available

## Environmental Requirements
* Temperature: 10–40°C ambient
* Wind: ≤ 15 knots
* Humidity: ≤ 80%
* Fume detection and oxygen monitoring active
* Minimum 3 m clearance from ignition sources

## Safety Precautions
* **Cryogenic hazard:** LH₂ at 20 K (-253°C) causes severe cold burns
* **Asphyxiation hazard:** Helium displaces oxygen in confined spaces
* **Explosion hazard:** Hydrogen/air mixtures 4-75% by volume
* PPE: Cryogenic gloves, face shield, insulated coveralls
* Oxygen monitor calibrated and active

## Procedure - Helium Purge

### Step 1: Pre-Purge Verification
1. Verify LH₂ tank empty (quantity = 0 L)
2. Confirm all LH₂ valves closed
3. Check tank pressure (should be ≤ 2 bar residual)
4. Inspect purge connection point for ice formation
5. Verify helium supply pressure (10 bar service pressure)

### Step 2: System Connection
1. Connect helium supply line to purge inlet port
2. Connect vent line to approved vent stack (minimum 5 m height)
3. Verify all connections with leak detector
4. Install flow meter in purge line

### Step 3: Purge Sequence
1. **Initial Vent:** Open vent valve, allow residual H₂ to vent (5 minutes minimum)
2. **Helium Purge Cycle 1:**
   - Slowly open helium supply valve
   - Flow rate: 50 L/min
   - Duration: 15 minutes
   - Monitor oxygen concentration at vent (target < 0.1% O₂)
3. **Helium Purge Cycle 2:**
   - Increase flow to 100 L/min
   - Duration: 10 minutes
4. **Verification:**
   - Sample gas from vent line
   - Analyze for H₂ content (must be < 0.1% H₂)
   - If H₂ > 0.1%, repeat purge cycle

### Step 4: Leak Test
1. Close all valves except helium inlet
2. Pressurize system to 5 bar with helium
3. Isolate helium supply
4. Monitor pressure for 30 minutes
5. Pressure drop must be < 0.1 bar/30 min
6. If leak detected, depressurize and repair

### Step 5: Inert Storage (if required)
1. Maintain helium pressure at 1-2 bar for storage
2. Install blanking caps on all service ports
3. Label system "INERTED - HELIUM"

### Step 6: Post-Purge Actions
1. Close helium supply valve
2. Vent system pressure slowly
3. Disconnect purge equipment
4. Replace protective caps on ports
5. Document purge event in ATA 95 DPP

## Temperature Requirements
* Ensure line temperature ≤ 80 K before any liquid LH₂ transfer
* Allow natural warm-up for 24 hours after LH₂ drain
* Do not apply external heat to cryogenic components

## Gas Purity Requirements
* Helium: 99.995% minimum per DATA_Gas-Purity-and-Pressure-Limits
* Service pressure: 10 bar
* Relief pressure: 15 bar

## Contamination Control
* Independent tooling: LH₂/He hoses marked BLUE
* Cryogenic-rated quick-disconnects with serialized caps
* No oil or hydrocarbon contamination permitted

## Traceability
* Helium batch ID and purity certificate
* Pre-purge and post-purge gas analysis results
* Leak test pressure decay data
* Operator ID (Cryo-Authorized)
* GSE ID and calibration date

## Records Required
* Servicing event JSON per servicing-event.schema.json
* Gas purity analysis certificate
* Leak test results
* Oxygen monitor calibration certificate

## Cross-References
* ATA 02 - Line operations sequencing
* ATA 03 - GSE and PPE requirements
* ATA 28 - Fuel system (cryogenic section)
* ATA 95 - Digital Product Passport

## Emergency Procedures
* **LH₂ Spill:** Evacuate area, allow natural evaporation, monitor oxygen levels
* **Oxygen Deficiency:** Evacuate immediately, ventilate area, do not re-enter until O₂ > 19.5%
* **Fire:** Evacuate, activate emergency response, do not attempt to extinguish H₂ fire

---
**Checksum (SHA256):** TBD  
**Approved by:** Chief Engineer - Cryogenic Systems  
**Cryo Safety Officer Approval Required**  
**Next Review:** 2029-02-25
