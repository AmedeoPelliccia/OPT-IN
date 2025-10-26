# ATA 12 – SERVICING

**OPT-IN Framework – P-PROGRAM**  
**Revision:** 1.0.0  
**Effective Date:** 2028-08-25  

## Overview

This chapter defines audit-ready servicing procedures, fluid specifications, and contamination control standards for the AMPEL360 BWB aircraft, expanded to OPT-IN compliance and BWB-specific system integrity requirements.

---

## Governance and Control

### Hazard Control
* **Flammable:** Sustainable Aviation Fuel (SAF)
* **Cryogenic:** Liquid Hydrogen (LH₂) at 20 K (-253°C)
* **Pressurized Gases:** Helium (He), Nitrogen (N₂), Oxygen (O₂), Compressed Air
* **Biohazard:** Lavatory waste systems

### Contamination Control
* Independent tooling per servicing medium (color-coded)
* Serialized filters and hoses with traceability
* Periodic laboratory sampling for quality assurance
* Cross-contamination barriers with check valves and quick-disconnect caps

### Traceability
* Each fill, drain, purge, or sample operation logged in ATA 95 Digital Product Passport
* Batch ID from suppliers recorded
* GSE ID and calibration date documented
* Operator ID and certification status verified

### Personnel Requirements
* **Certified Servicing Technician:** Required for all servicing operations
* **Cryo-Authorized Operator:** Required for LH₂ system operations
* **Biohazard Training:** Required for waste system servicing

---

## Directory Structure

```
/ATA_12-SERVICING
├── 00_README.md (this file)
├── INDEX.meta.yaml
├── ci/
│   └── validate_ata12.sh
├── schemas/
│   ├── procedure.meta.schema.json
│   ├── servicing-event.schema.json
│   └── fluid-spec.schema.json
├── 01-FUEL_AND_OIL/
│   ├── PROC_Servicing-Engine-Oil_rev1.0.0_20280820.md
│   ├── PROC_Servicing-SAF-Refuel-Defuel_rev1.2.0_20280820.md
│   └── DATA_Fuel-Filter-Integrity_rev1.0.0_20280822.csv
├── 02-HYDRAULICS_AND_PNEUMATICS/
│   ├── PROC_Servicing-Hydraulic-Reservoir_rev1.1.0_20280822.md
│   └── DATA_Hydraulic-Cleanliness-Levels_rev1.0.0_20280822.csv
├── 03-ENVIRONMENTAL_AND_CIRCULAR_SYSTEMS/
│   ├── PROC_Servicing-Power-Electronics-Coolant_rev1.0.0_20280825.md
│   ├── PROC_Servicing-LH2-System-Purge-Inert_rev1.0.0_20280825.md
│   ├── PROC_Servicing-LCO2-Offload_rev1.0.0_20280825.md
│   └── DATA_Gas-Purity-and-Pressure-Limits_rev1.0.0_20280825.csv
├── 04-WATER_AND_WASTE/
│   ├── PROC_Servicing-Potable-Water-System_rev1.0.0_20280818.md
│   └── PROC_Servicing-Lavatory-Waste-System_rev1.0.0_20280818.md
└── 05-DIAGRAMS_AND_TABLES/
    ├── FIG_Servicing-Panel-Locations_rev2.0.0_20280815.dxf
    └── DATA_Fluid-And-Gas-Specifications_rev2.1.0_20280816.csv
```

---

## Key Procedural Requirements

### Purge Sequencing
For LH₂ systems:
1. Helium purge to remove hydrogen
2. Vent to atmosphere via approved vent stack
3. Leak test at 5 bar with helium
4. Refill or inert as required
5. Ensure line temperature ≤ 80 K before liquid transfer

### Static Bonding
* Verify resistance < 10 Ω between aircraft, GSE, and ground rod before fuel or LH₂ transfer
* Use calibrated bonding tester
* Document bonding resistance in servicing log

### Sampling Requirements
* Collect pre-fill and post-fill samples for fuel and coolant
* Label with batch ID, timestamp, GSE ID, operator ID
* Send to approved laboratory for analysis
* Retain samples for 30 days minimum

### Drain Controls
* Perform drains in designated catch areas
* Vent gases to approved recovery skid or vent stack
* Use appropriate containment for hazardous materials
* Dispose per environmental regulations

### Recording
* Each servicing action logged via ATA 95 JSON payload
* Signed PDF work package retained for audit
* Digital signature with timestamp
* Minimum retention: 10 years

### Cross-Contamination Barriers
* Color-coded hoses by servicing medium:
  - GREEN: SAF fuel
  - BLUE: LH₂ and helium
  - RED: Hydraulic fluid
  - YELLOW: Engine oil
  - ORANGE: Power electronics coolant
  - WHITE: Potable water
  - BROWN: Waste systems
* Check valves on all servicing ports
* Serialized quick-disconnect caps

---

## Environmental Requirements (All Procedures)

```yaml
environment:
  temp_C_range: [10, 40]
  wind_knots_max: 15
  humidity_pct_max: 80
  fume_detection_required: true
materials_traceability: true
sampling_required: true
disposal:
  waste_stream: "ATA12-HazMat"
  container_spec: "UN-rated drum or vacuum cart"
```

---

## Servicing Media Specifications

| System | Fluid/Gas | Specification | Capacity (L) | Notes |
|--------|-----------|---------------|--------------|-------|
| SAF Fuel | Sustainable Aviation Fuel | ASTM D7566 | 45,000 | Main fuel tanks |
| LH₂ Fuel | Liquid Hydrogen | ISO 14687-2 | 15,000 | Cryogenic at 20 K |
| Hydraulic | Synthetic Fluid | MIL-PRF-83282 | 180 | Type IV |
| Engine Oil | Turbine Oil | MIL-PRF-23699 | 120 | Type II synthetic |
| LH₂ Purge | Helium | 99.995% purity | N/A | 10 bar service |
| Potable Water | Drinking Water | NSF/ANSI 60 | 300 | Chlorine < 0.2 ppm |
| Waste | Lavatory Waste | Blue Ice Type III | 200 | Non-hazardous |

---

## Cross-References

* **ATA 02:** Line operations sequencing
* **ATA 03:** SDS, PPE, and GSE calibration records
* **ATA 21:** Air conditioning and pressurization (oxygen, cabin air)
* **ATA 21-80-00:** CO₂ Capture & Processing (Provisional)
* **ATA 24:** Electrical power (coolant systems)
* **ATA 28:** Fuel systems (SAF and LH₂)
* **ATA 29:** Hydraulic power
* **ATA 38:** Water/Waste systems
* **ATA 79:** Engine oil systems
* **ATA 95:** Digital Product Passport ingestion

---

## Validation

Run the validation script to verify compliance:

```bash
cd /ATA_12-SERVICING
./ci/validate_ata12.sh
```

The script validates:
* Filename conventions (semantic versioning and date format)
* Checksum references
* JSON schema validity
* CSV file structure
* Required procedure sections
* Directory structure completeness

---

## Revision History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0.0 | 2028-08-25 | System Integration Team | Initial audit-ready release |

---

**Approved by:** Chief Engineer - Aircraft Servicing  
**Next Review:** 2029-08-25  
**Checksum (SHA256):** TBD
