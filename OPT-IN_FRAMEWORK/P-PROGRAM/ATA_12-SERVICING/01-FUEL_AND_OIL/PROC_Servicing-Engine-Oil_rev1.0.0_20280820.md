# PROC - Servicing Engine Oil
**Revision:** 1.0.0  
**Effective Date:** 2028-08-20  
**System:** ATA 12 - SERVICING / ATA 79 - OIL  

## Purpose
Define procedures for servicing turbine engine oil in AMPEL360 aircraft powerplants.

## Scope
Applies to oil servicing for all installed turbine engines.

## Prerequisites
* Certified Servicing Technician
* Engine cool (< 50°C case temperature)
* Oil specification: MIL-PRF-23699 Type II

## Environmental Requirements
* Temperature: 10–40°C
* Wind: ≤ 15 knots
* Humidity: ≤ 80%
* Fume detection active

## Procedure - Oil Servicing

### Step 1: Pre-Service Check
1. Verify engine is cool to touch
2. Check oil quantity indication
3. Inspect oil servicing panel for contamination

### Step 2: Oil Addition
1. Connect static bonding
2. Remove oil filler cap
3. Insert oil servicing nozzle
4. Add oil slowly to avoid foaming
5. Monitor oil quantity indicator
6. Stop at full mark (typically 120 L total capacity)

### Step 3: Post-Service
1. Remove nozzle and replace filler cap
2. Wipe any spills immediately
3. Check for leaks
4. Record servicing event in ATA 95 DPP

## Contamination Control
* Use dedicated oil servicing equipment marked YELLOW
* Filter oil through 10-micron filter during transfer
* Collect oil sample every servicing event

## Traceability
* Oil batch ID recorded
* Operator ID and signature
* GSE ID and calibration status

## Records Required
* Servicing event JSON per servicing-event.schema.json
* Oil sample sent to laboratory
* Oil quantity before and after

## Cross-References
* ATA 03 - GSE records
* ATA 79 - Engine oil system
* ATA 95 - Digital Product Passport

---
**Checksum (SHA256):** TBD  
**Approved by:** Chief Engineer - Powerplant  
**Next Review:** 2029-08-20
