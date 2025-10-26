# OPT-IN
Amedeo Pelliccia's development and documentation methodology

**OPT-IN methodology** is described as a **structured framework for development and documentation** used across aerospace systems projects, including AQUA OS and AMPEL360.

### Core structure

OPT-IN is organized into four principal axes—**Organization, Program, Technology, Infrastructure, Neural**—each decomposed into subdomains that mirror ATA chapter logic for traceability and certification alignment.

* **O (Organization):** governance, compliance, airworthiness, and maintenance policies.
* **P (Program):** aircraft-level configuration control, servicing, and dimensional data.
* **T (Technology):** the on-board systems tree organized into functional domains that map to ATA codes for documentation uniformity (see T-TECHNOLOGY section below for complete subdomain breakdown).
* **I (Infrastructure):** ground, airport, and supply-chain assets; flight simulators.
* **N (Neural):** data lineage, user traceability, and AI/ML models for digital passporting.

### Methodological principles

1. **ATA-anchored documentation:** every technical artifact—requirement, code module, subsystem—is indexed by ATA chapter.section.subject to ensure interoperability with iSpec 2200 and S1000D deliverables.
2. **Cross-referenced traceability:** logical, thermal, and energy interfaces are documented through secondary ATA references inside each branch.
3. **Reduction of provisional subjects:** new technologies (e.g., quantum scheduling, CO₂ batteries) are introduced under provisional codes until validated by standards review.
4. **Bidirectional linking:** development repositories and technical manuals share identifiers so that commits, verification steps, and documentation updates remain synchronized.
5. **Audit readiness:** every addition must be traceable to a requirement and classification entry, guaranteeing certification evidence continuity .

### Outcome

This framework yields a **single-source-of-truth architecture** where engineering design, certification data, and maintenance documentation remain coherent across aircraft life-cycle phases, making OPT-IN both a configuration-management scheme and a documentation ontology.

The following framework ensures the critical interfaces between systems are formally documented.

---

### **Locked-Down and Final AMPEL360 ATA Chapter Mapping**
---

## Hyperlinked index

* **O-ORGANIZATION**

  * [`ATA_00-GENERAL/`](OPT-IN FRAMEWORK/O-ORGANIZATION/ATA_00-GENERAL/) - Comprehensive governance framework with detailed subdirectories
  * [`ATA_01-MAINTENANCE_POLICY_INFORMATION/`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_01-MAINTENANCE_POLICY_INFORMATION/)
  * [`ATA-04_AIRWORTHINESS_LIMITATIONS/`](O-ORGANIZATION/ATA-04_AIRWORTHINESS_LIMITATIONS/)
  * [`ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/)
  * [`ATA-18_VIBRATION_NOISE/`](O-ORGANIZATION/ATA-18_VIBRATION_NOISE/)

* **P-PROGRAM**

  * [`ATA-06_DIMENSIONS_AREAS/`](P-PROGRAM/ATA-06_DIMENSIONS_AREAS/)
  * [`ATA-07_LIFTING_SHORING/`](P-PROGRAM/ATA-07_LIFTING_SHORING/)
  * [`ATA-08_LEVELING_WEIGHING/`](P-PROGRAM/ATA-08_LEVELING_WEIGHING/)
  * [`ATA-09_TOWING_TAXIING/`](P-PROGRAM/ATA-09_TOWING_TAXIING/)
  * [`ATA-12_SERVICING/`](P-PROGRAM/ATA-12_SERVICING/)

* **I-INFRASTRUCTURES**

  * [`ATA-02_OPS_INFO/`](I-INFRASTRUCTURES/ATA-02_OPS_INFO/)
  * [`ATA-03_SUPPORT_INFO/`](I-INFRASTRUCTURES/ATA-03_SUPPORT_INFO/)
  * [`ATA_10-PARKING_MOORING_STORAGE_RTS/`](OPT-IN FRAMEWORK/I-INFRASTRUCTURES/ATA_10-PARKING_MOORING_STORAGE_RTS/)
  * [`ATA-13_TOOLS/`](I-INFRASTRUCTURES/ATA-13_TOOLS/)
  * [`ATA-115_FLIGHT_SIM_SYSTEMS/`](I-INFRASTRUCTURES/ATA-115_FLIGHT_SIM_SYSTEMS/)
  * [`ATA-116_FLIGHT_SIM_CUING/`](I-INFRASTRUCTURES/ATA-116_FLIGHT_SIM_CUING/)

* **N-NEURAL_NETWORKS_USERS_TRACEABILITY**

  * [`00_README.md`](OPT-IN%20FRAMEWORK/N-NEURAL%20NETWORKS,%20USERS,%20TREACEABILITY/00_README.md)
  * [`ATA_95-DIGITAL_PRODUCT_PASSPORT/`](OPT-IN%20FRAMEWORK/N-NEURAL%20NETWORKS,%20USERS,%20TREACEABILITY/ATA_95-DIGITAL_PRODUCT_PASSPORT/)

* **T-TECHNOLOGY (AMEDEOPELLICCIA - ON_BOARD_SYSTEMS)**

  * `A-AIRFRAME`

    * ATA 20: STANDARD PRACTICES - AIRFRAME
    * ATA 50: CARGO & ACCESSORY COMPARTMENTS
    * ATA 51: STANDARD PRACTICES AND STRUCTURES - GENERAL
    * ATA 52: DOORS
    * ATA 53: FUSELAGE
    * ATA 54: NACELLES/PYLONS
    * ATA 55: STABILIZERS
    * ATA 56: WINDOWS
    * ATA 57: WINGS
  * `M-MECHANICS`

    * ATA 27: FLIGHT CONTROLS (ACTUATION SYSTEMS)
    * ATA 29: HYDRAULIC POWER
    * ATA 32: LANDING GEAR
    * ATA 37: VACUUM / WASTE DISPOSAL
    * ATA 41: WATER BALLAST
  * `E1-ENVIRONMENT`

    * ATA 21: AIR CONDITIONING & PRESSURIZATION
    * ATA 26: FIRE PROTECTION
    * ATA 30: ICE AND RAIN PROTECTION
    * ATA 36: PNEUMATIC
    * ATA 38: WATER/WASTE
  * `D-DATA`

    * ATA 31: INDICATING / RECORDING SYSTEMS (RECORDING FUNCTION - FDR/CVR)
  * `E2-ENERGY`

    * ATA 24: ELECTRICAL POWER
    * ATA 47: INERTING SYSTEM
    * ATA 49: AIRBORNE AUXILIARY POWER
    * ATA 80: STARTING
  * `O-OPERATING_SYSTEMS`

    * ATA 42: INTEGRATED MODULAR AVIONICS (ARCHITECTURAL GOVERNANCE & STANDARDS)
  * `P-PROPULSION`

    * ATA 60: STANDARD PRACTICES - PROP./ROTOR
    * ATA 61: PROPELLERS / PROPULSORS
    * ATA 70: STANDARD PRACTICES - ENGINE
    * ATA 71: POWER PLANT
    * ATA 72: ENGINE
    * ATA 73: ENGINE FUEL AND CONTROL
    * ATA 74: IGNITION
    * ATA 75: AIR
    * ATA 76: ENGINE CONTROLS
    * ATA 78: EXHAUST
    * ATA 79: OIL
  * `E3-ELECTRONICS`

    * ATA 34: NAVIGATION
    * ATA 39: ELECTRICAL - ELECTRONIC PANELS AND MULTIPURPOSE COMPONENTS
    * ATA 42: INTEGRATED MODULAR AVIONICS (HARDWARE MODULES - CPM/IOM)
  * `L1-LOGICS`

    * ATA 22: AUTOFLIGHT
    * ATA 27: FLIGHT CONTROLS (CONTROL LAW COMPUTERS/SOFTWARE)
    * ATA 42: INTEGRATED MODULAR AVIONICS (HOSTED APPLICATION PARTITIONS)
  * `L2-LINKS`

    * ATA 23: COMMUNICATIONS
    * ATA 42: INTEGRATED MODULAR AVIONICS (NETWORK FABRIC - e.g., AFDX)
    * ATA 91: CHARTS (FLIGHT OPERATIONS)
  * `I-INFORMATION_INTELLIGENCE_INTERFACES`

    * ATA 31: INDICATING / RECORDING SYSTEMS (INDICATING FUNCTION)
    * ATA 42: INTEGRATED MODULAR AVIONICS (CORE OS SERVICES, APIS & HEALTH MONITORING)
    * ATA 45: ONBOARD MAINTENANCE SYSTEMS (OMS/CMS)
    * ATA 46: INFORMATION SYSTEMS (ACARS, DATALINK)
    * ATA 77: ENGINE INDICATING
    * ATA 93 (Reserved): ONBOARD DATA LOAD AND CONFIGURATION
  * `C1-COCKPIT_CABIN_CARGO`

    * ATA 11: PLACARDS AND MARKINGS
    * ATA 15: AIRCREW INFORMATION
    * ATA 16: CHANGE OF ROLE
    * ATA 25: EQUIPMENT / FURNISHINGS
    * ATA 33: LIGHTS
    * ATA 35: OXYGEN
    * ATA 44: CABIN SYSTEMS
  * `C2-CIRCULAR_CRYOGENIC_SYSTEMS`

    * ATA 28: FUEL (SAF & CRYOGENIC H₂)
    * ATA 21-80-00 (Prov): CO₂ Capture & Processing
  * `I2-I+D`

    * ATA 40: MULTISYSTEM (RESERVED FOR AI INTEGRATION)
    * ATA 42-55-00 (Prov): Powertrain/Energy Orchestration Framework
    * ATA 42-60-00 (Prov): Quantum-Inspired Scheduler & Resource Orchestration
    * ATA 48 (Reserved): IN-FLIGHT MAINTENANCE (AI-ENABLED)
    * ATA 92 (Prov): MODEL BASED MAINTENANCE
  * `A2-AERODYNAMICS`

    * ATA 27: FLIGHT CONTROLS (SYSTEM FOR AERODYNAMIC MANIPULATION)

---

## Mermaid overview (compact)

```mermaid
flowchart LR
  ROOT["OPT-IN Framework"]
  O["O-Organization"]:::a -->|ATA 00/01/04/05/18| ROOT
  P["P-Program"]:::b -->|ATA 06/07/08/09/12| ROOT
  I["I-Infrastructures"]:::c -->|ATA 02/03/10/13/115/116| ROOT
  N["N-Neural"]:::d -->|ATA 95| ROOT
  T["T-Technology"]:::e --> A & M & E & Dd & E2 & OS & PP & E3 & L1 & L2 & IF & C1 & C2 & I2 & A2

  subgraph A["A-AIRFRAME"]
    direction TB
    A20["20"]
    A50["50"]
    A51["51"]
    A52["52"]
    A53["53"]
    A54["54"]
    A55["55"]
    A56["56"]
    A57["57"]
  end

  subgraph M["M-MECHANICS"]
    direction TB
    M27["27"]
    M29["29"]
    M32["32"]
    M37["37"]
    M41["41"]
  end

  subgraph E["E1-ENVIRONMENT"]
    direction TB
    E21["21"]
    E2150["21-50"]
    E2180["21-80"]
    E26["26"]
    E30["30"]
    E36a["36"]
    E38["38"]
  end

  subgraph Dd["D-DATA"]
    direction TB
    D31["31"]
  end

  subgraph E2["E2-ENERGY"]
    direction TB
    EP24["24"]
    EP2433["24-33"]
    EP2434["24-34"]
    EP2460["24-60"]
    EP47["47"]
    EP49["49"]
    EP80["80"]
  end

  subgraph OS["O-OPERATING_SYSTEMS"]
    direction TB
    OS42["42"]
    OS4260["42-60"]
  end

  subgraph PP["P-PROPULSION"]
    direction TB
    P60["60"]
    P61["61"]
    P70["70"]
    P71["71"]
    P72["72"]
    P73["73"]
    P74["74"]
    P75["75"]
    P76["76"]
    P77["77"]
    P78["78"]
    P79["79"]
    P83["83"]
  end

  subgraph E3["E3-ELECTRONICS"]
    direction TB
    E334["34"]
    E339["39"]
    E342["42"]
  end

  subgraph L1["L1-LOGICS"]
    direction TB
    L122["22"]
    L127["27"]
    L14255["42-55"]
  end

  subgraph L2["L2-LINKS"]
    direction TB
    L223["23"]
    L246["46"]
    L291["91"]
  end

  subgraph IF["I-INTERFACES"]
    direction TB
    IF31["31"]
    IF4640["46-40"]
  end

  subgraph C1["C1-COCKPIT.CABIN.CARGO"]
    direction TB
    C111["11"]
    C115["15"]
    C116["16"]
    C125["25"]
    C133["33"]
    C135["35"]
    C144["44"]
  end

  subgraph C2["C2-CIRCULAR"]
    direction TB
    C228["28"]
    C2860["28-60"]
  end

  subgraph I2["I2-INFORMATION_INTELLIGENCE"]
    direction TB
    I240["40"]
    I245["45"]
    I248["48"]
    I292["92"]
  end

  subgraph A2["A2-AERODYNAMICS"]
    direction TB
    A227["27"]
  end

  classDef a fill:#e6e6f9,stroke:#6564a1;
  classDef b fill:#e6f2fa,stroke:#2b78c5;
  classDef c fill:#fffaf0,stroke:#bb8b00;
  classDef d fill:#fce5ee,stroke:#c2528a;
  classDef e fill:#f6eec8,stroke:#f1ad10;
```


```
OPT-IN FRAMEWORK/
├── O-ORGANIZATION/ 
│   ├── ATA 00: GENERAL
│   ├── ATA_01-MAINTENANCE_POLICY_INFORMATION
│   ├── ATA 04: AIRWORTHINESS LIMITATIONS
│   ├── ATA 05: TIME LIMITS / MAINTENANCE CHECKS
│   └── ATA 18: VIBRATION AND NOISE ANALYSIS
├── P-PROGRAM/
│   ├── ATA 06: DIMENSIONS AND AREAS
│   ├── ATA 07: LIFTING AND SHORING
│   ├── ATA 08: LEVELING AND WEIGHING
│   ├── ATA 09: TOWING AND TAXIING
│   └── ATA 12: SERVICING
├── T-TECHNOLOGY (AMEDEOPELLICCIA - ON_BOARD_SYSTEMS)/
│   ├── A-AIRFRAME/
│   │   ├── ATA 20: STANDARD PRACTICES - AIRFRAME
│   │   ├── ATA 50: CARGO & ACCESSORY COMPARTMENTS
│   │   ├── ATA 51: STANDARD PRACTICES AND STRUCTURES - GENERAL
│   │   ├── ATA 52: DOORS
│   │   ├── ATA 53: FUSELAGE
│   │   ├── ATA 54: NACELLES/PYLONS
│   │   ├── ATA 55: STABILIZERS
│   │   ├── ATA 56: WINDOWS
│   │   └── ATA 57: WINGS
│   ├── M-MECHANICS/
│   │   ├── ATA 27: FLIGHT CONTROLS (ACTUATION SYSTEMS)
│   │   ├── ATA 29: HYDRAULIC POWER
│   │   ├── ATA 32: LANDING GEAR
│   │   ├── ATA 37: VACUUM / WASTE DISPOSAL
│   │   └── ATA 41: WATER BALLAST
│   ├── E1-ENVIRONMENT/
│   │   ├── ATA 21: AIR CONDITIONING & PRESSURIZATION
│   │   ├── ATA 26: FIRE PROTECTION
│   │   ├── ATA 30: ICE AND RAIN PROTECTION
│   │   ├── ATA 36: PNEUMATIC
│   │   └── ATA 38: WATER/WASTE
│   ├── D-DATA/
│   │   └── ATA 31: INDICATING / RECORDING SYSTEMS (RECORDING FUNCTION - FDR/CVR)
│   ├── E2-ENERGY/
│   │   ├── ATA 24: ELECTRICAL POWER
│   │   ├── ATA 47: INERTING SYSTEM
│   │   ├── ATA 49: AIRBORNE AUXILIARY POWER
│   │   └── ATA 80: STARTING
│   ├── O-OPERATING_SYSTEMS/
│   │   └── ATA 42: INTEGRATED MODULAR AVIONICS (ARCHITECTURAL GOVERNANCE & STANDARDS)
│   ├── P-PROPULSION/
│   │   ├── ATA 60: STANDARD PRACTICES - PROP./ROTOR
│   │   ├── ATA 61: PROPELLERS / PROPULSORS
│   │   ├── ATA 70: STANDARD PRACTICES - ENGINE
│   │   ├── ATA 71: POWER PLANT
│   │   ├── ATA 72: ENGINE
│   │   ├── ATA 73: ENGINE FUEL AND CONTROL
│   │   ├── ATA 74: IGNITION
│   │   ├── ATA 75: AIR
│   │   ├── ATA 76: ENGINE CONTROLS
│   │   ├── ATA 78: EXHAUST
│   │   └── ATA 79: OIL
│   ├── E3-ELECTRONICS/
│   │   ├── ATA 34: NAVIGATION
│   │   ├── ATA 39: ELECTRICAL - ELECTRONIC PANELS AND MULTIPURPOSE COMPONENTS
│   │   └── ATA 42: INTEGRATED MODULAR AVIONICS (HARDWARE MODULES - CPM/IOM)
│   ├── L1-LOGICS/
│   │   ├── ATA 22: AUTOFLIGHT
│   │   ├── ATA 27: FLIGHT CONTROLS (CONTROL LAW COMPUTERS/SOFTWARE)
│   │   └── ATA 42: INTEGRATED MODULAR AVIONICS (HOSTED APPLICATION PARTITIONS)
│   ├── L2-LINKS/
│   │   ├── ATA 23: COMMUNICATIONS
│   │   ├── ATA 42: INTEGRATED MODULAR AVIONICS (NETWORK FABRIC - e.g., AFDX)
│   │   └── ATA 91: CHARTS (FLIGHT OPERATIONS)
│   ├── I-INFORMATION_INTELLIGENCE_INTERFACES/
│   │   ├── ATA 31: INDICATING / RECORDING SYSTEMS (INDICATING FUNCTION)
│   │   ├── ATA 42: INTEGRATED MODULAR AVIONICS (CORE OS SERVICES, APIS & HEALTH MONITORING)
│   │   ├── ATA 45: ONBOARD MAINTENANCE SYSTEMS (OMS/CMS)
│   │   ├── ATA 46: INFORMATION SYSTEMS (ACARS, DATALINK)
│   │   ├── ATA 77: ENGINE INDICATING
│   │   └── ATA 93 (Reserved): ONBOARD DATA LOAD AND CONFIGURATION
│   ├── C1-COCKPIT_CABIN_CARGO/
│   │   ├── ATA 11: PLACARDS AND MARKINGS
│   │   ├── ATA 15: AIRCREW INFORMATION
│   │   ├── ATA 16: CHANGE OF ROLE
│   │   ├── ATA 25: EQUIPMENT / FURNISHINGS
│   │   ├── ATA 33: LIGHTS
│   │   ├── ATA 35: OXYGEN
│   │   └── ATA 44: CABIN SYSTEMS
│   ├── C2-CIRCULAR_CRYOGENIC_SYSTEMS/
│   │   ├── ATA 28: FUEL (SAF & CRYOGENIC H₂)
│   │   └── ATA 21-80-00 (Prov): CO₂ Capture & Processing
│   ├── I2-I+D/
│   │   ├── ATA 40: MULTISYSTEM (RESERVED FOR AI INTEGRATION)
│   │   ├── ATA 42-55-00 (Prov): Powertrain/Energy Orchestration Framework
│   │   ├── ATA 42-60-00 (Prov): Quantum-Inspired Scheduler & Resource Orchestration
│   │   ├── ATA 48 (Reserved): IN-FLIGHT MAINTENANCE (AI-ENABLED)
│   │   └── ATA 92 (Prov): MODEL BASED MAINTENANCE
│   └── A2-AERODYNAMICS/
│       └── ATA 27: FLIGHT CONTROLS (SYSTEM FOR AERODYNAMIC MANIPULATION)
├── I-INFRASTRUCTURES/
│   ├── ATA_02-OPERATIONS_INFORMATION
│   ├── ATA_03-SUPPORT_INFORMATION_GSE
│   ├── ATA_10-PARKING_MOORING_STORAGE_RTS
│   ├── ATA_13-HARDWARE_AND_GENERAL_TOOLS
│   ├── ATA_85-90-INFRASTRUCTURE_INTERFACE_STANDARDS
│   ├── ATA_115-FLIGHT_SIMULATOR_SYSTEMS
│   └── ATA_116-FLIGHT_SIMULATOR_CUING_SYSTEM
└── N-NEURAL_NETWORKS_USERS_TRACEABILITY/
    └── ATA_95-DIGITAL_PRODUCT_PASSPORT_AND_TRACEABILITY
```

---

### Hyperlinkable Index — `O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS`

# ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS

Operator-approved scheduled maintenance program. Consolidates MPD (ATA_01) and ALS (ATA_04) into executable work packages (A/C/S checks) with full traceability.

- [`00_README.md`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/00_README.md)
- [`INDEX.meta.yaml`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/INDEX.meta.yaml)

## 01 — Maintenance Program Manual (MPM)
- [`MPM_Master-Document_rev1.0.0_20280701.md`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/MPM_Master-Document_rev1.0.0_20280701.md)
- **01-A-CHECKS**
  - [`A-CHECK_Program-Definition.md`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/01-A-CHECKS/A-CHECK_Program-Definition.md)
  - [`A-CHECK_Work-Package-A01.md`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/01-A-CHECKS/A-CHECK_Work-Package-A01.md)
  - [`A-CHECK_Work-Package-A02.md`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/01-A-CHECKS/A-CHECK_Work-Package-A02.md)
- **02-C-CHECKS**
  - [`C-CHECK_Program-Definition.md`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/02-C-CHECKS/C-CHECK_Program-Definition.md)
  - [`C-CHECK_Work-Package-C01.md`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/02-C-CHECKS/C-CHECK_Work-Package-C01.md)
- **03-STRUCTURAL_CHECKS_S-CHECKS**
  - [`S-CHECK_Program-Definition.md`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/03-STRUCTURAL_CHECKS_S-CHECKS/S-CHECK_Program-Definition.md)

## 02 — Traceability and Compliance
- [`TRACE_Matrix-MPD-ALS-to-Checks.csv`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/02-TRACEABILITY_AND_COMPLIANCE/TRACE_Matrix-MPD-ALS-to-Checks.csv)

## 03 — Program Customization and Deviations
- [`PROC_Program-Deviation-Request.md`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/03-PROGRAM_CUSTOMIZATION_AND_DEVIATIONS/PROC_Program-Deviation-Request.md)
- [`LOG_Approved-Deviations.csv`](OPT-IN%20FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/03-PROGRAM_CUSTOMIZATION_AND_DEVIATIONS/LOG_Approved-Deviations.csv)

---

## Governance (minimal, enforceable)
- **Regulatory basis:** NAA-approved program. ALS items are non-escalable.
- **Intervals:** Defined per package; tolerance explicit:
  ```yaml
  interval: { basis: FH|FC|CAL, value: <int>, tolerance: { plus: <int>, minus: <int> } }
  ```

---

### Hyperlinkable Index — `I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS`

* [`00_README.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/00_README.md)
* [`INDEX.meta.yaml`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/INDEX.meta.yaml)

## 01 — Hardware Catalogs

* **01 — Fasteners**

  * [`CAT_Standard-Bolts-MS-NAS.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/01-FASTENERS/CAT_Standard-Bolts-MS-NAS.md)
  * [`CAT_Standard-Screws-AN-NAS.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/01-FASTENERS/CAT_Standard-Screws-AN-NAS.md)
  * [`CAT_Hi-Lok-Fasteners.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/01-FASTENERS/CAT_Hi-Lok-Fasteners.md)
* **02 — Structural Components**

  * [`CAT_Standard-Rivets.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/02-STRUCTURAL_COMPONENTS/CAT_Standard-Rivets.md)
  * [`CAT_Standard-Bearings.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/02-STRUCTURAL_COMPONENTS/CAT_Standard-Bearings.md)
* **03 — Electrical Components**

  * [`CAT_Standard-Connectors-MIL-DTL-38999.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/03-ELECTRICAL_COMPONENTS/CAT_Standard-Connectors-MIL-DTL-38999.md)
  * [`CAT_Standard-Wire-And-Cable.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/03-ELECTRICAL_COMPONENTS/CAT_Standard-Wire-And-Cable.md)
  * [`CAT_Standard-Circuit-Breakers.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/03-ELECTRICAL_COMPONENTS/CAT_Standard-Circuit-Breakers.md)
* **04 — Fluid Fittings**

  * [`CAT_Standard-AN-MS-Fittings.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/04-FLUID_FITTINGS/CAT_Standard-AN-MS-Fittings.md)

## 02 — Consumables Catalog

* [`CAT_Adhesives-And-Sealants.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/02-CONSUMABLES_CATALOG/CAT_Adhesives-And-Sealants.md)
* [`CAT_Lubricants-Greases-And-Oils.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/02-CONSUMABLES_CATALOG/CAT_Lubricants-Greases-And-Oils.md)
* [`CAT_Cleaning-Agents-And-Solvents.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/02-CONSUMABLES_CATALOG/CAT_Cleaning-Agents-And-Solvents.md)

## 03 — General Tools Catalog

* [`CAT_Hand-Tools-Standard.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/03-GENERAL_TOOLS_CATALOG/CAT_Hand-Tools-Standard.md)
* [`CAT_Pneumatic-Tools.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/03-GENERAL_TOOLS_CATALOG/CAT_Pneumatic-Tools.md)
* [`CAT_Torque-Wrenches-General-Use.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/03-GENERAL_TOOLS_CATALOG/CAT_Torque-Wrenches-General-Use.md)

## 04 — Inventory and Control

* **01 — Interchangeability Data**

  * [`DATA_Part-Number-Cross-Reference-Table.csv`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/04-INVENTORY_AND_CONTROL/01-INTERCHANGEABILITY_DATA/DATA_Part-Number-Cross-Reference-Table.csv)
* **02 — Shelf Life Program**

  * [`PROC_Shelf-Life-Control-Procedure.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/04-INVENTORY_AND_CONTROL/02-SHELF_LIFE_PROGRAM/PROC_Shelf-Life-Control-Procedure.md)
* **03 — Tool Control Program**

  * [`PROC_Tool-Control-And-FOD-Prevention.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/04-INVENTORY_AND_CONTROL/03-TOOL_CONTROL_PROGRAM/PROC_Tool-Control-And-FOD-Prevention.md)
  * **calibration**

    * [`schedule.csv`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/04-INVENTORY_AND_CONTROL/03-TOOL_CONTROL_PROGRAM/calibration/schedule.csv)

## 05 — Safety Data

* **safety_data_sheets**

  * [`SDS_MIL-PRF-23377_Primer.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/05-SAFETY_DATA/safety_data_sheets/SDS_MIL-PRF-23377_Primer.md)
  * [`SDS_BMS-3-26_Grease.md`](OPT-IN%20FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/05-SAFETY_DATA/safety_data_sheets/SDS_BMS-3-26_Grease.md)

---

## **`O-ORGANIZATION / ATA 18 – VIBRATION AND NOISE ANALYSIS`**

This chapter governs all vibration and acoustic monitoring across the AMPEL360 fleet. It defines how vibration and sound data are acquired, analyzed, and used to detect early failures in propulsion and structure, and to maintain passenger-comfort and certification limits.

### **Governance and Purpose**

* **Propulsion Health:** Early detection of open-fan propulsor, gearbox, and turbine anomalies.
* **Structural Integrity:** Tracking abnormal airframe vibration or potential flutter conditions in the BWB.
* **Passenger Comfort:** Management of cabin acoustic levels and support for active noise-cancellation systems.
* **Data-Driven Maintenance:** Supplies condition-monitoring inputs for ATA 92 (Model-Based Maintenance) and ATA 95 (DPP).

---

### **Audit-Ready Directory Structure**

```
/O-ORGANIZATION
└── /ATA_18-VIBRATION_AND_NOISE_ANALYSIS
    ├── 00_README.md
    ├── INDEX.meta.yaml
    ├── /01-PROGRAM_PLAN_AND_GOVERNANCE
    │   └── PLAN_Vibration-And-Noise-Management-Program.md
    ├── /02-SYSTEM_ARCHITECTURE_AND_DESCRIPTION
    │   ├── ARCH_Data-Acquisition-And-Processing-Unit.md
    │   └── MAP_Sensor-Locations-And-Part-Numbers.md
    ├── /03-OPERATIONAL_AND_MAINTENANCE_PROCEDURES
    │   ├── /01-FLIGHT_OPERATIONS
    │   │   └── FCOM-REF_In-Flight-Vibration-Monitoring-Procedures.md
    │   └── /02-MAINTENANCE
    │       ├── PROC_Ground-Vibration-Survey-GVS.md
    │       ├── PROC_Routine-Data-Download-And-Analysis.md
    │       └── PROC_Open-Fan-Propulsor-Balancing.md
    ├── /04-BASELINE_SIGNATURES_AND_LIMITS
    │   ├── SIG_Baseline-Vibration-Signature-Open-Fan.json
    │   ├── SIG_Baseline-Acoustic-Signature-Cabin.json
    │   └── LIMITS_Vibration-And-Noise-Alert-Levels.md
    └── /05-ANALYSIS_DATA_AND_REPORTS
        ├── /incident_reports
        │   └── INCIDENT_MSN-001_High-Vib-Event_20290315.md
        └── /fleet_trending_reports
            └── REPORT_Fleet-Vibration-Trend-Analysis_2029-Q1.md
```

---

### **Baseline Alert Limits**

*(File – `LIMITS_Vibration-And-Noise-Alert-Levels.md`)*

| Subsystem          | Metric               | Green  | Amber (Action)                    | Red (Ground)                  |
| ------------------ | -------------------- | ------ | --------------------------------- | ----------------------------- |
| Open-Fan Propulsor | 1× synchronous (ips) | ≤ 0.15 | 0.16–0.25 (complete within 10 FH) | > 0.25 (immediate inspection) |
| Gearbox            | BPFO/BPFI (g RMS)    | ≤ 0.20 | 0.21–0.35 (trend 7 days)          | > 0.35                        |
| Turbine Core       | 1× spool (ips)       | ≤ 0.10 | 0.11–0.18                         | > 0.18                        |
| Cabin (Seat 25C)   | dB(A) Cruise         | ≤ 78   | 79–82 (adjust ANC)                | > 82 (root-cause analysis)    |

*(Replace placeholder values with certified limits.)*

---

### **Sensor Mapping Guidelines**

*(File – `MAP_Sensor-Locations-And-Part-Numbers.md`)*

| Rule            | Example                                                                           |
| --------------- | --------------------------------------------------------------------------------- |
| Naming          | `VIB_<ATA>-<LOC>-<AXIS>-<IDX>` → `VIB_61-NAC_L-AX_01`                             |
| Types           | IEPE 10 mV/g (propulsor), triax 100 mV/g (airframe), optical tach, acoustic array |
| Sampling        | 25.6 kHz (rotating), 2 kHz (structure), 48 kHz/24-bit (acoustic)                  |
| Synchronization | IEEE-1588 PTP / TAI timestamps                                                    |

---

### **Program Plan (Excerpt)**

*(File – `PLAN_Vibration-And-Noise-Management-Program.md`)*

* **Objectives:** safety, efficiency, comfort.
* **On-Board Flow:** sensors → DAU → CMS (ATA 45) alerts.
* **Ground Flow:** full data download ≤ 24 h; ingested into analytics platform; archived to DPP (ATA 95).
* **Retention:** raw 24 months, features 10 years, critical events indefinite.

---

### **Routine Data Analysis Procedure (Excerpt)**

*(File – `PROC_Routine-Data-Download-And-Analysis.md`)*

* **KPIs:** RMS, kurtosis, crest factor, spectral kurtosis, envelope analysis, cepstrum.
* **Order tracking:** 1×, 2×, ½× with sidebands ± N× fₘₒd.
* **Trend rule:** EWMA λ = 0.2; alert if z-score > 3 for 3 consecutive flights.
* **Outputs:** HUMS summary + DPP update + ATA 92 RUL input.

---

### **Metadata Sidecar Example**

*(File – `PLAN_Vibration-And-Noise-Management-Program.md.meta.yaml`)*

```yaml
schema_version: "1.1"
id: "PLAN_Vibration-And-Noise-Management-Program"
document:
  type: "PLAN"
  title: "Vibration and Noise Management Program Plan"
  revision: "1.0.0"
  effective_date: "2028-04-15"
effectivity:
  scope: "Program-Wide"
approvals:
  - authority: "Airworthiness Engineering"
    status: "Released"
    date: "2028-04-10"
traceability:
  crossrefs: ["ATA 61", "ATA 72", "ATA 45", "ATA 92", "ATA 95"]
integrity:
  checksum: { algorithm: "sha256", value: "<sha256>" }
```

---

### **CI Validation Rules**

* Verify all `.meta.yaml` sidecars follow schema v1.1.
* Confirm every `INCIDENT_*.md` includes MSN, phase, violated limit, corrective action, DPP link.
* Validate `.json` signatures against checksums in `INDEX.meta.yaml`.
* Ensure each sensor record defines PN, range, sensitivity, position, and routing to ATA 91 network.

---

### **Extended Fields for Baseline Signatures**

```yaml
environment: { oew_kg: <int>, fuel_state: "<SAF/H2 mix>", temp_C: <int>, wind_kts: <int> }
repeatability: { runs: 3, max_delta_percent: 5 }
instrumentation: { gse_id: "AP360-T020", calibration_due: "YYYY-MM-DD" }
```

---

**Cross-References:**

* ATA 61 / 72 / 79 (engine and propulsion health)
* ATA 03 (GSE tooling)
* ATA 92 / 95 (for predictive maintenance and data traceability)
* ATA 05 (for scheduled GVS integration)
