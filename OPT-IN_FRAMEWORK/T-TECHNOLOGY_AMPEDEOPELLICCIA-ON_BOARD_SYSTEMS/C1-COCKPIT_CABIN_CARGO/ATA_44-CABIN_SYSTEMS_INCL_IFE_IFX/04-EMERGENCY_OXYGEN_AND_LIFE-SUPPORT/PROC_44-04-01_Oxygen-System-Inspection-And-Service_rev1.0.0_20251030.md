# PROC 44-04-01: Oxygen System Inspection and Service

## Procedure Information
- **ATA Chapter:** 44 - Cabin Systems
- **Section:** 04 - Emergency Oxygen and Life-Support
- **Procedure Type:** Inspection and Service
- **Skill Level:** Intermediate
- **Estimated Duration:** 3-4 hours (full cabin)
- **Personnel Required:** 2
- **Revision:** 1.0.0
- **Effective Date:** 2025-10-30

## Safety Warnings
⚠️ **HIGH PRESSURE OXYGEN SYSTEM** - Exercise extreme caution. No smoking, open flames, or oil/grease near oxygen system.
⚠️ **FIRE HAZARD** - Oxygen accelerates combustion. Keep flammable materials away from work area.
⚠️ **PRESSURE HAZARD** - Depressurize system before disconnecting fittings.

## Required Tools and Equipment
- Oxygen pressure gauge (0-3000 psi, calibrated)
- Torque wrench (10-50 in-lbf)
- Oxygen-compatible thread sealant (per approved materials list)
- Leak detection solution (approved for oxygen service)
- Safety glasses and gloves
- Fire extinguisher (Class D minimum)

## Required Consumables
- Oxygen-compatible O-rings (per IPC)
- Thread sealant (oxygen-compatible)
- Torque seal
- Cleaning solvent (oxygen-compatible)

## Prerequisites
1. Aircraft on ground with parking brake set
2. Cabin electrical power available
3. Oxygen system isolated (if performing invasive maintenance)
4. Access panels opened per access diagram

## Procedure Steps

### 1. Visual Inspection

#### 1.1 PSU Module External Inspection
1. Inspect each Passenger Service Unit (PSU) oxygen module for:
   - Physical damage (cracks, dents, corrosion)
   - Security of mounting
   - Proper placarding
   - Mask deployment door condition
2. **Acceptance:** No visible damage, secure mounting, placards legible

#### 1.2 Distribution System Inspection
1. Inspect visible oxygen tubing for:
   - Chafing or wear
   - Proper routing and support
   - Secure connections
   - Corrosion at fittings
2. **Acceptance:** No chafing, proper support every 24 inches max, no corrosion

### 2. Functional Tests

#### 2.1 Oxygen Module Pressure Check
1. Connect calibrated pressure gauge to test port on oxygen module
2. Record pressure reading: __________ psi
3. **Acceptance Criteria:**
   - Minimum pressure: 1800 psi at 70°F
   - Maximum pressure: 2000 psi at 70°F
4. If pressure is below minimum, replace oxygen module per PROC_44-04-03

#### 2.2 Mask Deployment Test (Sample)
1. Select 10% of passenger oxygen masks for deployment test
2. Deploy mask by pulling deployment handle
3. Verify:
   - Mask deploys smoothly within 2 seconds
   - Lanyard extends fully
   - Mask reservoir bag inflates within 3 seconds
   - No leaks audible at mask seal
4. **Acceptance:** All criteria met
5. Stow mask and reset deployment door

#### 2.3 Flow Test (Sample)
1. Connect flow meter to selected mask
2. Activate oxygen flow
3. Measure flow rate: __________ liters/min
4. **Acceptance Criteria:**
   - Minimum flow: 1.5 liters/min at sea level equivalent
   - Typical flow: 2-4 liters/min
5. If flow is below minimum, troubleshoot per troubleshooting guide

### 3. Leak Test

#### 3.1 System Leak Test
1. Pressurize oxygen system to normal operating pressure
2. Apply leak detection solution to all accessible fittings
3. Observe for bubbles indicating leaks
4. **Acceptance:** No leaks detected
5. If leaks detected:
   - Depressurize system
   - Tighten fitting to specified torque (per DATA_44-04-03)
   - Retest

### 4. Module Expiry Check

#### 4.1 Chemical Generator Expiry
1. Check expiry date on each oxygen generator module
2. Record expiry dates in logbook
3. **Acceptance:** No modules expired or within 3 months of expiry
4. Replace expired or near-expiry modules per PROC_44-04-03

### 5. Documentation

#### 5.1 Logbook Entry
1. Record inspection results in aircraft logbook:
   - Inspection date
   - Pressure readings (min, max, average)
   - Number of masks tested
   - Any defects found and corrective action
   - Inspector name and certification number

#### 5.2 Digital Product Passport Entry
1. Create DPP entry for oxygen system inspection
2. Include:
   - Inspection record ID
   - Pressure readings
   - Module expiry dates
   - Next inspection due (FH and date)

## Acceptance Criteria Summary
| Parameter | Minimum | Maximum | Typical |
|-----------|---------|---------|---------|
| Oxygen pressure (70°F) | 1800 psi | 2000 psi | 1850-1950 psi |
| Mask flow rate | 1.5 L/min | N/A | 2-4 L/min |
| Deployment time | N/A | 2 seconds | 1-1.5 seconds |
| Reservoir inflation time | N/A | 3 seconds | 2-2.5 seconds |

## Troubleshooting
| Symptom | Possible Cause | Corrective Action |
|---------|----------------|-------------------|
| Low pressure | Leak in system | Perform leak test, repair leak |
| Low pressure | Module depleted | Replace oxygen module |
| Low flow rate | Restricted orifice | Clean or replace orifice |
| Mask won't deploy | Deployment mechanism jammed | Inspect mechanism, lubricate or replace |
| Bag won't inflate | Flow restrictor blocked | Clear or replace flow restrictor |

## References
- Aircraft Maintenance Manual (AMM) 35-11-00
- Illustrated Parts Catalog (IPC) 35-11-00
- DATA_44-04-03: Oxygen Module Specs and Life Limits
- PROC_44-04-03: Oxygen Module Replacement

## Next Inspection Due
- **Interval:** 1200 flight hours OR 12 calendar months, whichever occurs first
- **Type:** Functional test and pressure check (this procedure)

---
**Procedure Control:**
- **Owner:** Cabin Systems Engineering
- **Approved By:** Safety Engineering, Airworthiness Engineering
- **Next Review:** 2026-10-30
