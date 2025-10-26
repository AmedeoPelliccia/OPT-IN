# PROC - Servicing Hydraulic Reservoir
**Revision:** 1.1.0  
**Effective Date:** 2028-08-22  
**System:** ATA 12 - SERVICING / ATA 29 - HYDRAULIC POWER  

## Purpose
Establish procedures for filling, draining, and sampling hydraulic fluid in AMPEL360 aircraft.

## Scope
Applies to all hydraulic system servicing operations.

## Prerequisites
* Certified Servicing Technician
* Hydraulic fluid: MIL-PRF-83282 Type IV
* System depressurized (0 bar)

## Environmental Requirements
* Temperature: 10–40°C
* Wind: ≤ 15 knots
* Humidity: ≤ 80%
* Fume detection active

## Safety Precautions
* PPE: Chemical-resistant gloves, safety glasses
* Hydraulic fluid under pressure can penetrate skin
* Ensure system fully depressurized before opening

## Procedure - Hydraulic Fluid Fill

### Step 1: Preparation
1. Verify hydraulic system depressurized
2. Check reservoir sight glass for current level
3. Inspect servicing port for contamination

### Step 2: Contamination Check
1. Collect pre-fill sample from reservoir
2. Perform particle count analysis
3. Verify cleanliness level meets Target_ISO4406 per DATA_Hydraulic-Cleanliness-Levels
4. If contamination exceeds Action_Limit, perform system flush

### Step 3: Fluid Addition
1. Connect filtered servicing cart (10-micron absolute filtration)
2. Remove reservoir servicing cap
3. Insert servicing nozzle
4. Add fluid slowly (max 20 L/min)
5. Monitor reservoir level
6. Fill to full mark (typically 180 L total capacity)

### Step 4: Post-Service
1. Remove servicing nozzle
2. Replace reservoir cap with new O-ring if required
3. Collect post-fill sample
4. Wipe any spillage immediately
5. Document servicing event

## Procedure - Hydraulic System Drain

### Step 1: Preparation
1. Ensure system fully depressurized
2. Position approved drain container under drain port
3. Label container with fluid type and date

### Step 2: Fluid Removal
1. Open drain valve slowly
2. Allow fluid to drain completely (approximately 30 minutes)
3. Collect sample during drain for analysis
4. Monitor for particulate contamination

### Step 3: Post-Drain
1. Close drain valve
2. Inspect drain port seal
3. Dispose of hydraulic fluid per environmental regulations
4. Document drain event in ATA 95 DPP

## Contamination Control
* Independent tooling: Hydraulic hoses marked RED
* Serialized filters in servicing cart
* Return line filter monitored per DATA_Hydraulic-Cleanliness-Levels
* Replace filters when ΔP reaches action limit

## Cleanliness Requirements
* Target: ISO 4406 16/14/11 (reservoir)
* Action: ISO 4406 18/16/13 (initiate corrective action)
* Method: Patch test + particle counter

## Traceability
* Batch ID from fluid supplier
* Pre-fill and post-fill particle count results
* GSE ID and filter serial number
* Operator ID and signoff

## Records Required
* Servicing event JSON per servicing-event.schema.json
* Particle count analysis report
* Filter differential pressure reading

## Cross-References
* ATA 03 - GSE calibration
* ATA 29 - Hydraulic power system
* ATA 95 - Digital Product Passport

## Revision History
| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0.0 | 2028-06-15 | T. Martinez | Initial release |
| 1.1.0 | 2028-08-22 | R. Johnson | Added cleanliness verification steps |

---
**Checksum (SHA256):** TBD  
**Approved by:** Chief Engineer - Hydraulics  
**Next Review:** 2029-08-22
