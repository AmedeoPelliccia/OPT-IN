# PROC 44-07-02: IFE Removal, Installation, and Software Load

## Procedure Information
- **ATA Chapter:** 44 - Cabin Systems
- **Section:** 07 - IFE/IFX and Cabin Connectivity
- **Procedure Type:** Removal/Installation and Software Load
- **Skill Level:** Advanced (IFE/Avionics Technician)
- **Estimated Duration:** 2-3 hours per unit
- **Personnel Required:** 1-2
- **Revision:** 1.0.0
- **Effective Date:** 2025-10-30

## Safety Warnings
⚠️ **ESD SENSITIVE** - Use ESD wrist strap and mat. IFE electronics are ESD sensitive.
⚠️ **ELECTRICAL HAZARD** - Ensure aircraft power is OFF before disconnecting IFE units.
⚠️ **SOFTWARE INTEGRITY** - Only load approved software versions per DATA_44-07-04 baseline.

## Required Tools and Equipment
- Torque screwdriver (5-20 in-lbf)
- ESD wrist strap and mat
- IFE software loading laptop (approved configuration)
- Software integrity verification tool
- Multimeter
- Connector insertion/extraction tools

## Required Software/Data
- Approved IFE software baseline (per DATA_44-07-04)
- Software load procedure (manufacturer-specific)
- Software integrity checksum file
- Rollback software version (for contingency)

## Prerequisites
1. Aircraft power OFF or IFE circuit breakers pulled
2. Approved software version verified per DATA_44-07-04
3. DO-178C certification evidence reviewed
4. Cyber security assessment completed per DO-326A
5. ESD precautions in place

## Part 1: IFE Unit Removal

### 1.1 Preparation
1. Don ESD wrist strap connected to aircraft ground
2. Open access panel per AMM
3. Take photo of existing installation for reference
4. Record existing unit serial number and software version: __________

### 1.2 Electrical Disconnection
1. Verify aircraft power OFF or CB pulled
2. Disconnect power connector (connector P1)
   - Pull connector locking lever
   - Pull connector straight out (do not twist)
3. Disconnect data connector (connector J1)
   - Release locking clips
   - Pull connector straight out
4. Cap connectors with protective caps

### 1.3 Mechanical Removal
1. Remove mounting screws (4 places)
   - Note: Use magnetic screwdriver to prevent dropped screws
2. Support unit weight while removing last screw
3. Carefully withdraw unit from rack
4. Place unit in ESD-protective bag

### 1.4 Documentation
1. Record removal in logbook
2. Create DPP entry for unit removal
3. Tag removed unit with:
   - Removal date
   - Removal reason
   - Aircraft MSN
   - Removed by (name and cert #)

## Part 2: IFE Unit Installation

### 2.1 Pre-Installation Checks
1. Verify new/serviceable unit against IPC:
   - Part number correct
   - Serial number recorded: __________
   - Hardware version matches aircraft config
   - Unit has no visible damage
2. Verify software version (if pre-loaded): __________
3. Check unit mounting holes align with rack

### 2.2 Mechanical Installation
1. Guide unit into rack carefully
2. Align unit with mounting holes
3. Install mounting screws hand-tight (4 places)
4. Torque mounting screws to 12 ± 2 in-lbf
5. Apply torque seal

### 2.3 Electrical Connection
1. Remove protective caps from connectors
2. Inspect connectors for damage or contamination
3. Connect power connector (P1):
   - Align connector keys
   - Push until locking lever clicks
   - Verify secure connection
4. Connect data connector (J1):
   - Align connector keys
   - Push until locking clips engage
   - Verify secure connection

### 2.4 Ground Bonding Verification
1. Measure DC resistance from unit chassis to aircraft ground
2. **Acceptance:** Resistance < 0.1 ohm
3. If resistance exceeds 0.1 ohm, check mounting screw torque and grounding straps

## Part 3: Software Load

### 3.1 Software Load Preparation
1. Connect software loading laptop to IFE unit via service port
2. Verify communication established
3. Record current software version (if readable): __________
4. Verify approved software version from DATA_44-07-04: __________

### 3.2 Software Load Procedure
1. Launch software loading tool
2. Select approved software version file
3. Verify software file integrity:
   - Calculate SHA-256 checksum
   - Compare to approved checksum: __________
   - **Acceptance:** Checksums must match exactly
4. If checksums match, proceed with load
5. Monitor load progress (typically 15-30 minutes)
6. Do NOT interrupt power during software load

### 3.3 Software Verification
1. After load completes, verify:
   - Software version displayed: __________
   - Software integrity check passes (built-in self-test)
   - No error codes displayed
2. **Acceptance:** Version matches approved baseline, no errors

### 3.4 Software Rollback (if load fails)
1. If software load fails or unit does not boot:
   - Power cycle unit
   - Attempt reload (one retry)
2. If reload fails:
   - Load rollback software version
   - Document failure in logbook
   - Contact IFE engineering for troubleshooting

## Part 4: Functional Test

### 4.1 Power-On Test
1. Apply aircraft power or reset CBs
2. Verify unit powers on
3. Observe boot sequence (typically 30-60 seconds)
4. **Acceptance:** Unit completes boot with no error messages

### 4.2 Display Test
1. Verify display illuminates
2. Check for:
   - Dead pixels (accept up to 3 per display per manufacturer spec)
   - Screen brightness (min 200 cd/m2)
   - Touchscreen response
3. **Acceptance:** Display functional, brightness acceptable

### 4.3 Audio Test
1. Test headphone audio output
2. Verify:
   - Left and right channels functional
   - Volume control responsive
   - No distortion at normal volume
3. **Acceptance:** Audio clear, both channels functional

### 4.4 Network Connectivity Test
1. Verify IFE unit connects to cabin network
2. Check network status LED (should be solid green)
3. Verify content library accessible
4. **Acceptance:** Network connected, content loads

### 4.5 Cyber Security Verification
1. Verify network isolation:
   - IFE unit cannot ping aircraft critical systems (should fail)
   - IFE unit can access content server only
2. **Acceptance:** Isolation verified per DO-326A requirements

## Part 5: HIL Functional Test (Critical Systems Only)

For flight-critical IFE systems (e.g., cabin pressure indication via IFE), perform HIL test per PROC_44-07-03.

## Part 6: Final Documentation

### 6.1 Logbook Entry
1. Record installation and software load in logbook:
   - Installation date
   - Unit P/N and S/N
   - Software version loaded
   - Functional test results
   - Next inspection due
   - Installer name and cert #

### 6.2 Digital Product Passport Entry
1. Create DPP entry for IFE installation and SW load:
   - Unit serial number
   - Software baseline (version and checksum)
   - Installation date and aircraft MSN
   - Functional test results
   - DO-178C certification evidence reference

### 6.3 Software Baseline Verification
1. Update aircraft software configuration record
2. Verify all IFE units on aircraft have approved software versions
3. Document any deviations or mixed versions

## Acceptance Criteria Summary
| Parameter | Requirement |
|-----------|-------------|
| Mounting screw torque | 12 ± 2 in-lbf |
| Ground bonding resistance | < 0.1 ohm |
| Software checksum | Must match approved baseline exactly |
| Boot time | < 60 seconds |
| Display brightness | > 200 cd/m2 |
| Network isolation | Aircraft systems not reachable from IFE |

## Troubleshooting
| Symptom | Possible Cause | Corrective Action |
|---------|----------------|-------------------|
| Unit won't power on | Power connector not seated | Reseat power connector |
| Unit won't boot | Software corrupt | Reload software |
| Display blank | Display cable loose | Check internal connections (authorized personnel only) |
| No network | Data connector not seated | Reseat data connector |
| Slow performance | Insufficient RAM/storage | Verify unit P/N matches config |

## References
- Aircraft Maintenance Manual (AMM) 46-10-00 (IFE Systems)
- [DATA_44-07-04: IFE HW/SW Baseline and Cyber Notes](./DATA_44-07-04_IFE-HW-SW-Baseline-And-Cyber-Notes_rev1.0.0_20251030.csv)
- [PROC_44-07-03: IFE HIL Functional Test](./PROC_44-07-03_IFE_HIL_Functional_Test.md) (to be created)
- [DO-178C](https://www.rtca.org/content/standards-guidance-materials) Software certification evidence
- [DO-326A](https://www.rtca.org/content/standards-guidance-materials) Cyber security assessment
- [ATA-46 Information Systems](../../I-INFORMATION_INTELLIGENCE_INTERFACES/ATA_46-40-xx-DATA_LOADING_AND_CONFIGURATION/)
- [DESC_44-07-01: IFE/IFX System Overview](./DESC_44-07-01_IFE_IFX_System-Overview_rev1.0.0_20251030.md)

## Software Baseline Cross-Reference
Refer to [DATA_44-07-04](./DATA_44-07-04_IFE-HW-SW-Baseline-And-Cyber-Notes_rev1.0.0_20251030.csv) for:
- Approved software versions by aircraft MSN
- [DO-178C](https://www.rtca.org/content/standards-guidance-materials) Design Assurance Level (DAL) information
- Software release notes and known issues
- Cyber security isolation verification evidence

---
**Procedure Control:**
- **Owner:** IFE/IFX Engineering
- **Approved By:** Cabin Systems Engineering, Cyber Security, Airworthiness
- **Next Review:** 2026-10-30
