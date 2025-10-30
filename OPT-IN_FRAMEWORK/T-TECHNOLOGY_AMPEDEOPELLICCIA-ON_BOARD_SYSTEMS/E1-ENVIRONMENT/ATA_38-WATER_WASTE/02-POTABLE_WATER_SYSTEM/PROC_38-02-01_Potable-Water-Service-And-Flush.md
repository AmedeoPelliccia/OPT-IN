# PROC_38-02-01 — Potable Water Service and Flush

**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Owner:** Environmental Systems Engineering  
**Classification:** Maintenance Procedure  
**Training Required:** WATER-SVC-L2

---

## Table of Contents
1. [Purpose](#purpose)
2. [Applicability](#applicability)
3. [Safety Requirements](#safety-requirements)
4. [Required Tools and Materials](#required-tools-and-materials)
5. [Prerequisites](#prerequisites)
6. [Detailed Procedure](#detailed-procedure)
7. [Quality Assurance](#quality-assurance)
8. [Documentation](#documentation)
9. [Troubleshooting](#troubleshooting)
10. [References](#references)

---

## Purpose

This procedure establishes the standard method for servicing potable water systems, performing sanitization flushes, and conducting bacteriological sampling in accordance with:
- [FAA AC 25-19](https://www.faa.gov/regulations_policies/advisory_circulars/) - Potable Water System Certification
- [WHO Guidelines for Drinking-water Quality](https://www.who.int/publications/i/item/9789240045064)
- [NSF/ANSI 61](https://www.nsf.org/knowledge-library/nsf-ansi-standard-61) - Materials Standards
- [EPA Method 9223](https://www.epa.gov/measurements) - Bacteriological Testing

The procedure ensures water quality meets health standards per [DATA_38-02-03_Potable-Water-Limits.csv](DATA_38-02-03_Potable-Water-Limits.csv) and maintains system cleanliness.

---

## Applicability

**Aircraft:** All AMPEL360 configurations  
**Systems:** Forward and aft potable water systems  
**Frequency:**
- **Routine Service:** Every 30 days or 300 flight hours (whichever first)
- **After Maintenance:** Any time system opened or components replaced
- **Post-Storage:** Aircraft stored >14 days without water system operation
- **Failed Test:** Immediately after any failed bacteriological test
- **On-Demand:** As specified by operator quality program

**Authority:** This procedure may only be performed by technicians with WATER-SVC-L2 certification or higher.

---

## Safety Requirements

### Personal Protective Equipment (PPE)

**Mandatory:**
- Nitrile or vinyl gloves (NSF food-safe rated)
- Safety glasses or face shield
- Liquid-resistant work clothing or apron

**Recommended:**
- Knee pads for low-access work
- Head lamp or work light for visual inspection

### Safety Precautions

⚠️ **WARNINGS:**
1. **Contamination Hazard:** Potable water systems supply drinking water. Maintain strict hygiene. Wash hands thoroughly before starting work.
2. **Chemical Hazard:** Approved sanitants may cause skin/eye irritation. Follow chemical SDS (Safety Data Sheet).
3. **Pressure Hazard:** System may be pressurized. Verify pressure relief before opening connections.
4. **Slip Hazard:** Water spillage creates slip hazards. Keep work area clean and dry.

⚠️ **CAUTIONS:**
1. Use only NSF/ANSI 61-certified materials. See [DATA_38-06-01](../06-MATERIALS_M_AND_P/DATA_38-06-01_Approved-Seals-And-Lubricants.csv)
2. Never use unapproved sanitants or cleaning agents
3. Avoid cross-contamination between potable and waste systems
4. Do not perform procedure near fuel, hydraulic, or waste system work

### Environmental Considerations

- Dispose of drained water per local environmental regulations
- Sanitant waste may require special handling - check local codes
- Minimize water waste; use collection containers where practical

---

## Required Tools and Materials

### Tools and Equipment

| Item | Specification | Purpose |
|------|---------------|---------|
| Service cart | Ground support equipment (GSE) qualified | Water supply and drainage |
| Torque wrench | 10-100 ft-lb, calibrated | Service port connections |
| Pressure gauge | 0-100 psi, calibrated | System pressure verification |
| Flow meter | 1-50 L/min | Flush flow rate measurement |
| pH meter | 0-14 range, calibrated | Water quality check |
| Residual chlorine test kit | DPD method, 0-5 mg/L | Sanitant verification |
| Turbidity meter | 0-100 NTU (Nephelometric Turbidity Units) | Water clarity |
| Thermometer | -20 to +100°C, digital | Water temperature |
| Flashlight/borescope | LED, explosion-proof rated | Visual inspection |
| Sample containers | Sterile, 500 mL, pre-labeled | Bacteriological sampling |
| Camera/smartphone | Minimum 5 MP resolution | Documentation photos |

### Consumables and Materials

| Item | Specification | Quantity | Reference |
|------|---------------|----------|-----------|
| Approved sanitant | Sodium hypochlorite 5.25%, NSF certified | 2-5 liters | [DATA_38-06-01](../06-MATERIALS_M_AND_P/DATA_38-06-01_Approved-Seals-And-Lubricants.csv) |
| Potable water | Meets EPA standards | Service cart capacity | Local utility or certified source |
| O-rings/gaskets | Per AMM, NSF 61 certified | As needed | [DATA_38-06-01](../06-MATERIALS_M_AND_P/DATA_38-06-01_Approved-Seals-And-Lubricants.csv) |
| Cleaning wipes | Non-linting, alcohol-free | 1 pack | |
| Sample labels | Pre-printed with barcode | Per sample | Laboratory-provided |
| Chain-of-custody forms | Lab-specific format | 1 per sampling event | See [PROC_38-02-02](PROC_38-02-02_Bacteriological-Test-And-Reporting.md) |

### Documentation Required

- Aircraft logbook
- Water service record form
- Bacteriological test requisition
- Chain-of-custody documentation
- Calibration certificates for test equipment
- Component traceability records (if parts replaced)

---

## Prerequisites

### Before Starting Work

1. **Verify Work Authorization**
   - Maintenance release signed by authorized inspector
   - Work card or task card issued
   - Required parts and materials available

2. **Review Aircraft History**
   - Check last water service date in logbook
   - Review any recent water quality test results
   - Check for open discrepancies on water system
   - Note any recent maintenance or modifications

3. **Aircraft Configuration**
   - Aircraft on ground, parking brake set, chocks in place
   - External power available (do not use aircraft battery)
   - Water system isolated from use (cabin crew notified)
   - "DO NOT OPERATE - WATER SERVICE IN PROGRESS" placards installed

4. **Environmental Conditions**
   - Ambient temperature: 5°C to 40°C (41°F to 104°F)
   - If below freezing: verify no ice in tanks or lines
   - Adequate ventilation if working inside aircraft
   - Weather suitable for exterior work (no heavy rain/snow)

5. **Equipment Preparation**
   - Service cart inspected and serviceable
   - All test equipment calibration current (within 30 days)
   - Sufficient potable water and sanitant on service cart
   - Waste collection containers staged and empty
   - All tools clean and in good condition

---

## Detailed Procedure

### Step 1: Initial Documentation and Inspection

**1.1 Record Initial Conditions**
- Aircraft MSN: _______________
- Date and time of service: _______________
- Technician name and certification: _______________
- Last service date (from logbook): _______________
- Water system operating hours since last service: _______________

**1.2 Photograph Serial Plates**
- Take clear photos of:
  - Forward water tank serial plate
  - Aft water tank serial plate (if installed)
  - Water pump serial numbers
  - Service port identification tags
- Upload photos to maintenance record system with SHA-256 hash
- Record equipment: Part Number (PN), Serial Number (SN), Software version (if applicable)

**1.3 Verify Certificate of Conformance (CoC)**
- Check that all installed components have valid CoC on file
- Verify materials meet NSF 61 requirements
- Record any recent component changes since last service

### Step 2: System Isolation and Pressure Relief

**2.1 Isolate Water System**
- Place "DO NOT USE" placards at all galley and lavatory faucets
- Close water system isolation valve (if installed)
- Notify cabin crew and flight crew of system isolation

**2.2 Relieve System Pressure**
- Open faucet at highest point in aircraft (typically aft lavatory)
- Open drain valve slowly to release pressure
- Verify pressure gauge reads 0 psi before proceeding
- Allow system to fully depressurize for 2-3 minutes

⚠️ **WARNING:** Do not open service connections while system is pressurized.

### Step 3: System Drainage

**3.1 Connect Drainage Equipment**
- Position service cart waste collection tank under aircraft drain point
- Connect drain hose to aircraft service drain port
- Torque connection to 25-30 ft-lb (34-41 Nm)
- Verify secure connection, no cross-threading

**3.2 Drain Water System**
- Open drain valve fully
- Activate drain pump (if installed) per Aircraft Maintenance Manual (AMM)
- Monitor drainage flow into service cart
- Record approximate volume drained: _______________ liters
- Continue until flow stops and only air discharges

**3.3 Visual Inspection of Drained Water**
- Observe water color: Should be clear to slightly cloudy
- Check for unusual odor: Should be chlorine-like or odorless
- Note any particulates, discoloration, or contamination
- Record observations: _______________
- If water appears contaminated, notify QA before proceeding

**3.4 Low Point Drainage**
- Ensure all low-point drains are opened
- Use compressed air (max 30 psi) if necessary to assist drainage
- Verify complete drainage by checking tank level sensors (should read 0%)

### Step 4: Visual Inspection and NDT (If Required)

**4.1 External Visual Inspection**
Inspect for:
- Corrosion or discoloration on tank exterior
- Dents, cracks, or deformation
- Loose or damaged mounting hardware
- Leaks or staining around fittings
- Condition of insulation (if installed)
- **Record:** "Inspection satisfactory" or describe discrepancies

**4.2 Internal Visual Inspection (When Accessible)**
Using borescope or inspection port:
- Check tank interior walls for corrosion, scale, biofilm
- Inspect baffles and internal structure
- Check condition of sensors and level probes
- Take photos of any anomalies with SHA-256 hash
- **Record:** "Internal condition satisfactory" or describe findings

**4.3 Non-Destructive Testing (NDT)**
*Required if:*
- Tank >5 years since last hydro test (per [DATA_38-03-03](../03-WASTE_TANKS_AND_DRAINS/DATA_38-03-03_Tank-Capacity-And-Inspection.csv))
- Suspected damage or corrosion
- Required by operator program

Perform per [DESC_38-04-01](../04-PUMPS_VALVES_AND_CONTROLS/DESC_38-04-01_Pumps-And-Valve-Types.md):
- Ultrasonic thickness measurement at tank critical areas
- Visual dye penetrant on welds (if accessible)
- Record NDT results with inspector signature
- Attach NDT report with SHA-256 hash to work package

### Step 5: Flush Procedure

**5.1 Initial Fresh Water Flush**
- Connect service cart supply hose to aircraft fill port
- Torque connection to 25-30 ft-lb (34-41 Nm)
- Open aircraft fill valve
- Begin filling at flow rate: 10-15 L/min (reference [DATA_38-02-03](DATA_38-02-03_Potable-Water-Limits.csv))
- Fill tank to 50% capacity
- Close fill valve, allow to settle 2-3 minutes

**5.2 Circulation Flush**
- Open all faucets (galley and lavatories) to purge air
- Activate water pump
- Run water through all distribution points for minimum 5 minutes each
- Verify flow rate at each faucet: minimum 4 L/min
- Monitor for smooth flow (no sputtering or air pockets)
- Record flush duration: _______________ minutes

**5.3 Complete Drainage After Initial Flush**
- Drain system completely per Step 3 procedures
- This removes any loosened sediment or contaminants
- Inspect drained water for particulates
- Record observations: _______________

### Step 6: Sanitization Procedure

**6.1 Prepare Sanitant Solution**
- Calculate required sanitant volume:
  - Tank capacity (liters) × 0.002 = Chlorine solution volume (liters)
  - Example: 1200L tank × 0.002 = 2.4L of 5.25% sodium hypochlorite
- Mix sanitant with potable water in service cart
- Target concentration: 50-100 ppm free chlorine
- Verify concentration with chlorine test kit before use
- Record actual concentration: _______________ ppm

⚠️ **CAUTION:** Never exceed 200 ppm chlorine concentration. Excessive chlorine can damage seals and coatings.

**6.2 Fill System with Sanitant Solution**
- Connect service cart to aircraft fill port
- Fill tank to 100% capacity with sanitant solution
- Activate water pump
- Flush sanitant through entire distribution system
- Open each faucet until chlorine is detected (typically 30-60 seconds per faucet)
- Close faucets once chlorine detected
- Verify system full and pressurized to 35-40 psi

**6.3 Sanitant Contact Time (Dwell)**
- **Minimum contact time:** 4 hours for standard sanitization
- **Extended contact time:** 24 hours if contamination suspected or failed test
- Record start time: _______________
- Record planned completion time: _______________
- During dwell period:
  - Maintain system pressure 35-40 psi
  - Keep aircraft in suitable temperature range (15-30°C optimal)
  - Monitor for leaks (visual inspection every hour for first 4 hours)
  - Do NOT operate the water system

**6.4 Verify Sanitant Effectiveness During Dwell**
At 2-hour mark:
- Sample water from forward and aft faucets
- Test for residual chlorine: should be 40-80 ppm
- If chlorine <40 ppm, investigate leak or chlorine demand issue
- Record chlorine levels: Forward _______ppm, Aft _______ppm

### Step 7: Post-Sanitization Flush

**7.1 Drain Sanitant Solution**
- After minimum dwell time, drain system completely per Step 3
- Collect sanitant waste in separate container
- Dispose of chlorinated water per local environmental regulations
- Do NOT discharge to storm drain unless permitted

**7.2 Rinse Flush - First Cycle**
- Fill system with fresh potable water to 100% capacity
- Flush through all distribution points for 5 minutes each
- Test residual chlorine at each faucet
- Target: <2 ppm chlorine (per [DATA_38-02-03](DATA_38-02-03_Potable-Water-Limits.csv))
- If chlorine >2 ppm, drain and repeat

**7.3 Rinse Flush - Second Cycle**
- Repeat flush procedure
- Continue until residual chlorine is within acceptable limits:
  - **Target range:** 0.2-2.0 mg/L (ppm)
  - **Typical after rinse:** 0.3-0.8 mg/L
- Record final residual chlorine: _______________ mg/L

**7.4 Final Water Quality Check**
Test water at forward and aft faucets:
- **pH:** Should be 6.5-8.5 (per [DATA_38-02-03](DATA_38-02-03_Potable-Water-Limits.csv))
- **Turbidity:** Should be <1.0 NTU
- **Temperature:** Record ambient water temp
- **Odor:** Should be slight chlorine or odorless (no foul odor)
- **Appearance:** Should be clear, no visible particulates

Record all measurements:
| Parameter | Forward | Aft | Limit | Pass/Fail |
|-----------|---------|-----|-------|-----------|
| pH | _____ | _____ | 6.5-8.5 | _____ |
| Residual Cl₂ (mg/L) | _____ | _____ | 0.2-2.0 | _____ |
| Turbidity (NTU) | _____ | _____ | <1.0 | _____ |

✅ All parameters must be within limits before proceeding to sampling.

### Step 8: Bacteriological Sampling

**8.1 Prepare for Sampling**
- Allow water to run from sample faucet for 2-3 minutes to clear line
- Clean faucet outlet with alcohol wipe
- Allow faucet to air dry (do not touch)
- Put on fresh gloves
- Prepare sterile sample containers (do not touch interior)

**8.2 Collect Samples**
Per [PROC_38-02-02_Bacteriological-Test-And-Reporting.md](PROC_38-02-02_Bacteriological-Test-And-Reporting.md):

**Forward System Sample:**
- Collect 500 mL sample from forward galley faucet
- Open container immediately before sampling
- Fill container, leave 1-inch airspace
- Cap immediately without touching interior
- Label: Aircraft MSN, Location "FWD", Date/Time, Technician initials
- Record sample ID: _______________

**Aft System Sample:**
- Repeat procedure at aft lavatory faucet
- Label: Aircraft MSN, Location "AFT", Date/Time, Technician initials
- Record sample ID: _______________

**Control Sample (if required by lab):**
- Collect sample directly from service cart
- Label as "SOURCE WATER"
- Record sample ID: _______________

**8.3 Sample Preservation and Transport**
- Place samples in insulated container with ice packs
- Maintain temperature: 2-8°C during transport
- Do NOT freeze samples
- Deliver to laboratory within 6 hours of collection
- Maximum hold time: 24 hours if refrigerated

**8.4 Chain of Custody Documentation**
Complete chain-of-custody form:
- Technician name and signature
- Date/time of collection
- Sample IDs
- Aircraft identification
- Delivery method and recipient
- Expected turnaround time
- See [PROC_38-02-02](PROC_38-02-02_Bacteriological-Test-And-Reporting.md) for complete protocol

📎 Attach laboratory requisition with:
- Required tests: Total coliforms, E. coli, Heterotrophic Plate Count (HPC)
- Test methods: EPA 9223 or EN ISO 9308-1
- Expected results timeline: typically 48-72 hours

### Step 9: Final Fill and System Commissioning

**9.1 Fill to Service Level**
- Fill forward tank to 80-90% capacity (operational level)
- Fill aft tank to 80-90% capacity (if installed)
- Do NOT overfill (allow expansion space)
- Record fill volume: Forward _______L, Aft _______L

**9.2 System Pressurization**
- Close all drain valves
- Activate water pump
- Verify system pressurizes to normal operating pressure: 35-45 psi
- Check for leaks at all service connections and fittings
- Record operating pressure: _______________ psi

**9.3 Functional Check**
Test each water outlet:
- Forward galley faucets (hot and cold)
- Aft galley faucets (if installed)
- All lavatory faucets
- Coffee maker connections (if installed)
- Any other water outlets per aircraft configuration

For each outlet, verify:
- ✅ Smooth flow, no air pockets
- ✅ Adequate flow rate (>4 L/min typical)
- ✅ Hot water reaches temperature (if applicable, 60-70°C)
- ✅ No leaks at connections
- ✅ Shutoff valves operate correctly

Record any discrepancies: _______________

**9.4 Sensor Verification**
- Check tank level indication: Forward _______%, Aft _______%
- Verify cockpit/cabin indication matches actual level (±5%)
- Test low-level warning (drain small amount if needed)
- Reset any caution messages
- Record sensor readings: _______________

### Step 10: System Return to Service

**10.1 Remove Placards and Notify Crew**
- Remove all "DO NOT USE" placards
- Remove "WATER SERVICE IN PROGRESS" placards
- Notify cabin crew that water system is operational
- Brief on any limitations (e.g., pending test results)

**10.2 Close Out Service Connections**
- Disconnect service cart hoses
- Install protective caps on fill and drain ports
- Torque service port caps to specification (per AMM)
- Stow all service equipment
- Clean up work area

---

## Quality Assurance

### Inspection Requirements

**Independent QA inspection required for:**
- First-time procedure performance by technician
- Post-maintenance return to service after major water system work
- After any failed bacteriological test
- As specified by operator quality program

**QA inspector verifies:**
- ✅ Procedure followed correctly
- ✅ All required tests performed and documented
- ✅ Water quality parameters within limits
- ✅ Samples collected and chain-of-custody complete
- ✅ No leaks or discrepancies
- ✅ All placards removed and system operational

QA Inspector Name: _______________  
QA Inspector Signature: _______________  
Date: _______________

### Hold Points for Test Results

**Aircraft water system status:**
- ✅ **Serviceable for operational use** - Chemical parameters within limits
- ⚠️ **Provisional release** - Pending bacteriological test results (typically 48-72 hours)
- ❌ **DO NOT OPERATE** - Any parameter out of limits or failed previous test

**Operator decision required for:**
- Using aircraft before bacteriological results available
- Re-service actions if test fails
- Extended sanitization procedures

---

## Documentation

### Maintenance Records

Complete and sign all required documentation:

1. **Aircraft Logbook Entry**
   ```
   Performed potable water service and flush per PROC_38-02-01.
   Forward tank filled to ___L, aft tank ___L.
   Water quality parameters within limits.
   Bacteriological samples collected, ID: [sample IDs].
   Pending lab results within 72 hours.
   Technician: [Name], Cert: WATER-SVC-L2
   Date: [Date] Time: [Time]
   ```

2. **Water Service Record Form**
   - Complete all fields per operator format
   - Attach water quality test results
   - Include photos of serial plates with SHA-256 hashes
   - Record equipment calibration due dates

3. **Bacteriological Test Results**
   - Attach laboratory report when received (typically 48-72 hours)
   - Verify lab accreditation (ISO 17025)
   - Confirm test methods used (EPA 9223 or equivalent)
   - Record SHA-256 hash of PDF report
   - File in aircraft records and DPP system

4. **Digital Product Passport (DPP) Entry**
   - Update DPP with service date and results
   - Upload all photos and test reports
   - Record SHA-256 hashes for all attachments
   - Link to component traceability (if parts replaced)
   - Tag with: #WaterService #Sanitization #BacterioTest

### Data Retention

- **Aircraft logbook:** Permanent record
- **Service records:** Maintain for 7 years minimum
- **Test results:** Maintain for aircraft operational life
- **Photos/inspection reports:** Maintain for 5 years
- **Digital records:** Backed up per corporate IT policy

---

## Troubleshooting

### Common Issues and Resolutions

#### High Residual Chlorine After Flush (>2 mg/L)

**Possible Causes:**
- Insufficient rinse flush volume
- Sanitant trapped in dead legs or low-flow areas
- Excessive initial sanitant concentration

**Corrective Actions:**
1. Perform additional rinse flush cycles
2. Run water through all outlets for extended time (10+ minutes each)
3. Test water every 30 minutes until chlorine <2 mg/L
4. If persistent, drain system and refill with fresh water
5. May require overnight settling and re-test next day

#### Low or No Residual Chlorine During Sanitization (<40 ppm at 2-hour check)

**Possible Causes:**
- System leak (chlorine escaping)
- Chlorine demand (contamination consuming chlorine)
- Incorrect initial concentration

**Corrective Actions:**
1. Inspect for leaks - repair if found
2. Test sample with chlorine kit to verify actual concentration
3. If chlorine consumed by contamination:
   - Drain system
   - Prepare fresh sanitant at higher concentration (100-150 ppm)
   - Extend dwell time to 24 hours
   - Consider pre-treatment with acidic cleaner (consult engineering)

#### Failed Bacteriological Test (Coliforms or E. coli Detected)

**Immediate Actions:**
1. ❌ **Remove aircraft from service immediately** - water not safe for consumption
2. Notify Quality Assurance and Health & Safety
3. Placard all water outlets "DO NOT USE - CONTAMINATED"
4. Investigate source of contamination

**Re-Sanitization Procedure:**
1. Drain system completely
2. Inspect for contamination sources (cracks, biofilm, damaged seals)
3. Replace any suspect components
4. Perform extended sanitization:
   - 100-150 ppm chlorine concentration
   - 24-hour dwell time minimum
   - Flush thoroughly
5. Re-sample and test
6. Repeat until test results pass (zero coliforms/E. coli)

**Root Cause Analysis:**
- Review recent maintenance history
- Check water source quality (test supply water)
- Inspect for cross-contamination pathways
- Review technician procedures and training
- Document findings and corrective actions

#### pH Out of Range

**Low pH (<6.5):**
- May indicate corrosion or acidic source water
- Flush system with known good water
- Inspect for corrosion
- Test source water pH
- Consult water treatment specialist if persistent

**High pH (>8.5):**
- May indicate alkaline deposits or source water issue
- Flush system thoroughly
- Test source water pH
- May require acidic cleaning solution (engineering approval required)

#### High Turbidity (>1.0 NTU)

**Causes:**
- Sediment or particulates in system
- Biofilm dislodged during sanitization
- Corroded particles

**Actions:**
1. Continue flushing until turbidity decreases
2. If turbidity persists:
   - Inspect and clean filters
   - Consider system acid cleaning (engineering approval)
   - Inspect for corrosion sources
3. Replace filters if contaminated
4. Re-test after corrective actions

#### Air in System (Sputtering Flow)

**Causes:**
- Air pockets after refill
- Leak allowing air ingress
- Low water level

**Actions:**
1. Open highest-point faucets to bleed air
2. Run pump continuously for 5-10 minutes
3. Verify system full and level sensors reading correctly
4. Check for leaks at fittings
5. May require multiple bleed cycles

---

## References

### Internal Documents
- [00_README.md](../00_README.md) - ATA 38 Chapter Overview
- [DESC_38-01-01](../01-GENERAL/DESC_38-01-01_Scope-Governance-And-Effectivity.md) - Scope and Governance
- [DATA_38-02-03](DATA_38-02-03_Potable-Water-Limits.csv) - Water Quality Limits and Standards
- [PROC_38-02-02](PROC_38-02-02_Bacteriological-Test-And-Reporting.md) - Bacteriological Testing Protocol
- [DATA_38-06-01](../06-MATERIALS_M_AND_P/DATA_38-06-01_Approved-Seals-And-Lubricants.csv) - Approved Materials
- [PROC_38-06-02](../06-MATERIALS_M_AND_P/PROC_38-06-02_M&P-Traceability-And-Storage.md) - Materials Traceability

### External Standards
- [FAA AC 25-19](https://www.faa.gov/regulations_policies/advisory_circulars/) - Potable Water Systems
- [EPA Method 9223](https://www.epa.gov/measurements) - Coliform Testing
- [NSF/ANSI 61](https://www.nsf.org/knowledge-library/nsf-ansi-standard-61) - Drinking Water Components
- [WHO Guidelines for Drinking-water Quality](https://www.who.int/publications/i/item/9789240045064)

### Training Resources
- WATER-SVC-L1: Basic Water System Servicing
- WATER-SVC-L2: Advanced Water Service and Sanitization (Required)
- QA-WATER-TEST: Water Quality Testing Certification

---

**Revision History:**
| Rev | Date | Author | Changes |
|-----|------|--------|---------|
| 1.0.0 | 2025-10-30 | Environmental Systems Eng | Initial release |

**Approved By:** [Name], Chief Engineer - Environmental Systems  
**Next Review:** 2026-10-30

---

[↑ Return to Potable Water System](../) | [Next: Bacteriological Testing →](PROC_38-02-02_Bacteriological-Test-And-Reporting.md)
