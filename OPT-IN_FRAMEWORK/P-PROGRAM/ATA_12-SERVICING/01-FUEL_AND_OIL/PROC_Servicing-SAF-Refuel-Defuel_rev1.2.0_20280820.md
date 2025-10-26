# PROC - Servicing SAF Refuel/Defuel
**Revision:** 1.2.0  
**Effective Date:** 2028-08-20  
**System:** ATA 12 - SERVICING / ATA 28 - FUEL  

## Purpose
Establish safe and contamination-free procedures for filling and defueling Sustainable Aviation Fuel (SAF) in AMPEL360 BWB aircraft.

## Scope
Applies to all ground servicing operations involving SAF fuel systems.

## Prerequisites
* Certified Servicing Technician on duty
* GSE calibration valid within 90 days
* Static bonding equipment verified
* Fire watch personnel on standby

## Environmental Requirements
* Temperature: 10–40°C
* Wind: ≤ 15 knots
* Humidity: ≤ 80%
* Fume detection active

## Safety Precautions
1. **Static bonding:** Verify resistance < 10 Ω between aircraft, GSE, and ground rod
2. **Fire protection:** Fire extinguisher and fire watch within 15 m
3. **PPE:** Fire-resistant coveralls, safety glasses, gloves
4. **No smoking/open flames** within 30 m radius

## Procedure - Refueling

### Step 1: Pre-Service Inspection
1. Verify aircraft on chocks with parking brake set
2. Confirm all electrical systems powered down except as required
3. Inspect refueling panel for damage or contamination
4. Check fuel filter differential pressure (ΔP < 0.7 bar alert threshold)

### Step 2: Static Bonding
1. Connect static bonding cable from ground rod to aircraft bonding point
2. Connect bonding cable from GSE to aircraft
3. Verify resistance < 10 Ω using bonding tester
4. Document bonding resistance in servicing log

### Step 3: System Connection
1. Remove protective cap from refueling receptacle
2. Inspect O-ring seal for damage
3. Connect refueling nozzle with positive lock engagement
4. Verify no fuel leakage at connection

### Step 4: Fuel Transfer
1. Pre-sample fuel from GSE tanker into laboratory vial
2. Label sample with batch ID, date, time, GSE ID
3. Open refueling valve slowly
4. Monitor flow rate (max 500 L/min)
5. Monitor fuel quantity indicator
6. Stop when desired quantity reached or tank full indication

### Step 5: Post-Service
1. Close refueling valve
2. Allow pressure equalization (30 seconds minimum)
3. Disconnect refueling nozzle
4. Replace protective cap on receptacle
5. Post-sample fuel from aircraft sampling port
6. Disconnect static bonding cables in reverse order
7. Complete servicing event record

## Procedure - Defueling

### Step 1: Preparation
1. Follow Steps 1-3 from Refueling procedure
2. Connect defueling hose to approved recovery container

### Step 2: Fuel Transfer
1. Open defueling valve
2. Monitor flow rate and tank quantity
3. Collect sample every 5000 L for quality verification
4. Continue until tank empty or desired quantity removed

### Step 3: System Purge (if required)
1. For extended storage, purge fuel lines with inert gas
2. Follow PROC_Servicing-LH2-System-Purge-Inert procedure

### Step 4: Post-Service
1. Follow Step 5 from Refueling procedure
2. Dispose of fuel per environmental regulations

## Contamination Control
* Independent tooling: SAF hoses marked GREEN
* Serialized filters replaced per DATA_Fuel-Filter-Integrity schedule
* Periodic laboratory sampling every 500 flight hours

## Traceability
* Each fill/drain event logged in ATA 95 Digital Product Passport
* Batch ID from fuel supplier recorded
* GSE ID and calibration date recorded
* Operator ID and signature captured

## Records Required
* Servicing event JSON per servicing-event.schema.json
* Pre-fill and post-fill fuel samples
* Static bonding resistance measurement
* Filter differential pressure reading

## Cross-References
* ATA 02 - Operations sequencing
* ATA 03 - GSE calibration records
* ATA 28 - Fuel system technical data
* ATA 95 - Digital Product Passport

## Revision History
| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0.0 | 2028-06-15 | J. Smith | Initial release |
| 1.1.0 | 2028-07-10 | M. Chen | Added contamination control section |
| 1.2.0 | 2028-08-20 | A. Kumar | Updated bonding requirements, added DPP integration |

---
**Checksum (SHA256):** TBD  
**Approved by:** Chief Engineer - Servicing Operations  
**Next Review:** 2029-08-20
