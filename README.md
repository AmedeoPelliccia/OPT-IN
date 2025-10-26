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

  * [`ATA_00-GENERAL/`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_00-GENERAL/) - Comprehensive governance framework with detailed subdirectories
  * [`ATA_01-MAINTENANCE_POLICY_INFORMATION/`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_01-MAINTENANCE_POLICY_INFORMATION/)
  * [`ATA-04_AIRWORTHINESS_LIMITATIONS/`](O-ORGANIZATION/ATA-04_AIRWORTHINESS_LIMITATIONS/)
  * [`ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/)
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
  * [`ATA_10-PARKING_MOORING_STORAGE_RTS/`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_10-PARKING_MOORING_STORAGE_RTS/)
  * [`ATA-13_TOOLS/`](I-INFRASTRUCTURES/ATA-13_TOOLS/)
  * [`ATA-115_FLIGHT_SIM_SYSTEMS/`](I-INFRASTRUCTURES/ATA-115_FLIGHT_SIM_SYSTEMS/)
  * [`ATA-116_FLIGHT_SIM_CUING/`](I-INFRASTRUCTURES/ATA-116_FLIGHT_SIM_CUING/)

* **N-NEURAL_NETWORKS_USERS_TRACEABILITY**

  * [`00_README.md`](OPT-IN_FRAMEWORK/N-NEURAL_NETWORKS_USERS_TREACEABILITY/00_README.md)
  * [`ATA_95-DIGITAL_PRODUCT_PASSPORT/`](OPT-IN_FRAMEWORK/N-NEURAL_NETWORKS_USERS_TREACEABILITY/ATA_95-DIGITAL_PRODUCT_PASSPORT/)

* **T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS**

  * `A-AIRFRAME`

    * ATA_20-STANDARD_PRACTICES_-_AIRFRAME
    * ATA_50-CARGO_AND_ACCESSORY_COMPARTMENTS
    * ATA_51-STANDARD_PRACTICES_AND_STRUCTURES_-_GENERAL
    * ATA_52-DOORS
    * ATA_53-FUSELAGE
    * ATA_54-NACELLES/PYLONS
    * ATA_55-STABILIZERS
    * ATA_56-WINDOWS
    * ATA_57-WINGS
  * `M-MECHANICS`

    * ATA_27-FLIGHT_CONTROLS_(ACTUATION_SYSTEMS)
    * ATA_29-HYDRAULIC_POWER
    * ATA_32-LANDING_GEAR
    * ATA_37-VACUUM_WASTE_DISPOSAL
    * ATA_41-WATER_BALLAST
  * `E1-ENVIRONMENT`

    * ATA_21-AIR_CONDITIONING_AND_PRESSURIZATION
    * ATA_26-FIRE_PROTECTION
    * ATA_30-ICE_AND_RAIN_PROTECTION
    * ATA_36-PNEUMATIC
    * ATA_38-WATER/WASTE
  * `D-DATA`

    * ATA_31-INDICATING_RECORDING_SYSTEMS_(RECORDING_FUNCTION_-_FDR/CVR)
  * `E2-ENERGY`

    * ATA_24-ELECTRICAL_POWER
    * ATA_47-INERTING_SYSTEM
    * ATA_49-AIRBORNE_AUXILIARY_POWER
    * ATA_80-STARTING
  * `O-OPERATING_SYSTEMS`

    * ATA_42-INTEGRATED_MODULAR_AVIONICS_(ARCHITECTURAL_GOVERNANCE_AND_STANDARDS)
  * `P-PROPULSION`

    * ATA_60-STANDARD_PRACTICES_-_PROP./ROTOR
    * ATA_61-PROPELLERS_PROPULSORS
    * ATA_70-STANDARD_PRACTICES_-_ENGINE
    * ATA_71-POWER_PLANT
    * ATA_72-ENGINE
    * ATA_73-ENGINE_FUEL_AND_CONTROL
    * ATA_74-IGNITION
    * ATA_75-AIR
    * ATA_76-ENGINE_CONTROLS
    * ATA_78-EXHAUST
    * ATA_79-OIL
  * `E3-ELECTRONICS`

    * ATA_34-NAVIGATION
    * ATA_39-ELECTRICAL_-_ELECTRONIC_PANELS_AND_MULTIPURPOSE_COMPONENTS
    * ATA_42-INTEGRATED_MODULAR_AVIONICS_(HARDWARE_MODULES_-_CPM/IOM)
  * `L1-LOGICS`

    * ATA_22-AUTOFLIGHT
    * ATA_27-FLIGHT_CONTROLS_(CONTROL_LAW_COMPUTERS/SOFTWARE)
    * ATA_42-INTEGRATED_MODULAR_AVIONICS_(HOSTED_APPLICATION_PARTITIONS)
  * `L2-LINKS`

    * ATA_23-COMMUNICATIONS
    * ATA_42-INTEGRATED_MODULAR_AVIONICS_(NETWORK_FABRIC_-_e.g.,_AFDX)
    * ATA_91-CHARTS_(FLIGHT_OPERATIONS)
  * `I-INFORMATION_INTELLIGENCE_INTERFACES`

    * ATA_31-INDICATING_RECORDING_SYSTEMS_(INDICATING_FUNCTION)
    * ATA_42-INTEGRATED_MODULAR_AVIONICS_(CORE_OS_SERVICES,_APIS_AND_HEALTH_MONITORING)
    * ATA_45-ONBOARD_MAINTENANCE_SYSTEMS_(OMS/CMS)
    * ATA_46-INFORMATION_SYSTEMS_(ACARS,_DATALINK)
    * ATA_77-ENGINE_INDICATING
    * ATA 93 (Reserved): ONBOARD DATA LOAD AND CONFIGURATION
  * `C1-COCKPIT_CABIN_CARGO`

    * ATA_11-PLACARDS_AND_MARKINGS
    * ATA_15-AIRCREW_INFORMATION
    * ATA_16-CHANGE_OF_ROLE
    * ATA_25-EQUIPMENT_FURNISHINGS
    * ATA_33-LIGHTS
    * ATA_35-OXYGEN
    * ATA_44-CABIN_SYSTEMS
  * `C2-CIRCULAR_CRYOGENIC_SYSTEMS`

    * ATA_28-FUEL_(SAF_AND_CRYOGENIC_H₂)
    * ATA 21-80-00 (Prov): CO₂ Capture & Processing
  * `I2-I+D`

    * ATA_40-MULTISYSTEM_(RESERVED_FOR_AI_INTEGRATION)
    * ATA 42-55-00 (Prov): Powertrain/Energy Orchestration Framework
    * ATA 42-60-00 (Prov): Quantum-Inspired Scheduler & Resource Orchestration
    * ATA 48 (Reserved): IN-FLIGHT MAINTENANCE (AI-ENABLED)
    * ATA 92 (Prov): MODEL BASED MAINTENANCE
  * `A2-AERODYNAMICS`

    * ATA_27-FLIGHT_CONTROLS_(SYSTEM_FOR_AERODYNAMIC_MANIPULATION)

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
OPT-IN_FRAMEWORK/
├── O-ORGANIZATION/ 
│   ├── ATA_00-GENERAL
│   ├── ATA_01-MAINTENANCE_POLICY_INFORMATION
│   ├── ATA_04-AIRWORTHINESS_LIMITATIONS
│   ├── ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS
│   └── ATA_18-VIBRATION_AND_NOISE_ANALYSIS
├── P-PROGRAM/
│   ├── ATA_06-DIMENSIONS_AND_AREAS
│   ├── ATA_07-LIFTING_AND_SHORING
│   ├── ATA_08-LEVELING_AND_WEIGHING
│   ├── ATA_09-TOWING_AND_TAXIING
│   └── ATA_12-SERVICING
├── T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/
│   ├── A-AIRFRAME/
│   │   ├── ATA_20-STANDARD_PRACTICES_-_AIRFRAME
│   │   ├── ATA_50-CARGO_AND_ACCESSORY_COMPARTMENTS
│   │   ├── ATA_51-STANDARD_PRACTICES_AND_STRUCTURES_-_GENERAL
│   │   ├── ATA_52-DOORS
│   │   ├── ATA_53-FUSELAGE
│   │   ├── ATA_54-NACELLES/PYLONS
│   │   ├── ATA_55-STABILIZERS
│   │   ├── ATA_56-WINDOWS
│   │   └── ATA_57-WINGS
│   ├── M-MECHANICS/
│   │   ├── ATA_27-FLIGHT_CONTROLS_(ACTUATION_SYSTEMS)
│   │   ├── ATA_29-HYDRAULIC_POWER
│   │   ├── ATA_32-LANDING_GEAR
│   │   ├── ATA_37-VACUUM_WASTE_DISPOSAL
│   │   └── ATA_41-WATER_BALLAST
│   ├── E1-ENVIRONMENT/
│   │   ├── ATA_21-AIR_CONDITIONING_AND_PRESSURIZATION
│   │   ├── ATA_26-FIRE_PROTECTION
│   │   ├── ATA_30-ICE_AND_RAIN_PROTECTION
│   │   ├── ATA_36-PNEUMATIC
│   │   └── ATA_38-WATER/WASTE
│   ├── D-DATA/
│   │   └── ATA_31-INDICATING_RECORDING_SYSTEMS_(RECORDING_FUNCTION_-_FDR/CVR)
│   ├── E2-ENERGY/
│   │   ├── ATA_24-ELECTRICAL_POWER
│   │   ├── ATA_47-INERTING_SYSTEM
│   │   ├── ATA_49-AIRBORNE_AUXILIARY_POWER
│   │   └── ATA_80-STARTING
│   ├── O-OPERATING_SYSTEMS/
│   │   └── ATA_42-INTEGRATED_MODULAR_AVIONICS_(ARCHITECTURAL_GOVERNANCE_AND_STANDARDS)
│   ├── P-PROPULSION/
│   │   ├── ATA_60-STANDARD_PRACTICES_-_PROP./ROTOR
│   │   ├── ATA_61-PROPELLERS_PROPULSORS
│   │   ├── ATA_70-STANDARD_PRACTICES_-_ENGINE
│   │   ├── ATA_71-POWER_PLANT
│   │   ├── ATA_72-ENGINE
│   │   ├── ATA_73-ENGINE_FUEL_AND_CONTROL
│   │   ├── ATA_74-IGNITION
│   │   ├── ATA_75-AIR
│   │   ├── ATA_76-ENGINE_CONTROLS
│   │   ├── ATA_78-EXHAUST
│   │   └── ATA_79-OIL
│   ├── E3-ELECTRONICS/
│   │   ├── ATA_34-NAVIGATION
│   │   ├── ATA_39-ELECTRICAL_-_ELECTRONIC_PANELS_AND_MULTIPURPOSE_COMPONENTS
│   │   └── ATA_42-INTEGRATED_MODULAR_AVIONICS_(HARDWARE_MODULES_-_CPM/IOM)
│   ├── L1-LOGICS/
│   │   ├── ATA_22-AUTOFLIGHT
│   │   ├── ATA_27-FLIGHT_CONTROLS_(CONTROL_LAW_COMPUTERS/SOFTWARE)
│   │   └── ATA_42-INTEGRATED_MODULAR_AVIONICS_(HOSTED_APPLICATION_PARTITIONS)
│   ├── L2-LINKS/
│   │   ├── ATA_23-COMMUNICATIONS
│   │   ├── ATA_42-INTEGRATED_MODULAR_AVIONICS_(NETWORK_FABRIC_-_e.g.,_AFDX)
│   │   └── ATA_91-CHARTS_(FLIGHT_OPERATIONS)
│   ├── I-INFORMATION_INTELLIGENCE_INTERFACES/
│   │   ├── ATA_31-INDICATING_RECORDING_SYSTEMS_(INDICATING_FUNCTION)
│   │   ├── ATA_42-INTEGRATED_MODULAR_AVIONICS_(CORE_OS_SERVICES,_APIS_AND_HEALTH_MONITORING)
│   │   ├── ATA_45-ONBOARD_MAINTENANCE_SYSTEMS_(OMS/CMS)
│   │   ├── ATA_46-INFORMATION_SYSTEMS_(ACARS,_DATALINK)
│   │   ├── ATA_77-ENGINE_INDICATING
│   │   └── ATA 93 (Reserved): ONBOARD DATA LOAD AND CONFIGURATION
│   ├── C1-COCKPIT_CABIN_CARGO/
│   │   ├── ATA_11-PLACARDS_AND_MARKINGS
│   │   ├── ATA_15-AIRCREW_INFORMATION
│   │   ├── ATA_16-CHANGE_OF_ROLE
│   │   ├── ATA_25-EQUIPMENT_FURNISHINGS
│   │   ├── ATA_33-LIGHTS
│   │   ├── ATA_35-OXYGEN
│   │   └── ATA_44-CABIN_SYSTEMS
│   ├── C2-CIRCULAR_CRYOGENIC_SYSTEMS/
│   │   ├── ATA_28-FUEL_(SAF_AND_CRYOGENIC_H₂)
│   │   └── ATA 21-80-00 (Prov): CO₂ Capture & Processing
│   ├── I2-I+D/
│   │   ├── ATA_40-MULTISYSTEM_(RESERVED_FOR_AI_INTEGRATION)
│   │   ├── ATA 42-55-00 (Prov): Powertrain/Energy Orchestration Framework
│   │   ├── ATA 42-60-00 (Prov): Quantum-Inspired Scheduler & Resource Orchestration
│   │   ├── ATA 48 (Reserved): IN-FLIGHT MAINTENANCE (AI-ENABLED)
│   │   └── ATA 92 (Prov): MODEL BASED MAINTENANCE
│   └── A2-AERODYNAMICS/
│       └── ATA_27-FLIGHT_CONTROLS_(SYSTEM_FOR_AERODYNAMIC_MANIPULATION)
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

- [`00_README.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/00_README.md)
- [`INDEX.meta.yaml`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/INDEX.meta.yaml)

## 01 — Maintenance Program Manual (MPM)
- [`MPM_Master-Document_rev1.0.0_20280701.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/MPM_MASTER-DOCUMENT_REV100_20280701.md)
- **01-A-CHECKS**
  - [`A-CHECK_Program-Definition.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/01-A-CHECKS/A-CHECK_PROGRAM-DEFINITION.md)
  - [`A-CHECK_Work-Package-A01.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/01-A-CHECKS/A-CHECK_WORK-PACKAGE-A01.md)
  - [`A-CHECK_Work-Package-A02.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/01-A-CHECKS/A-CHECK_WORK-PACKAGE-A02.md)
- **02-C-CHECKS**
  - [`C-CHECK_Program-Definition.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/02-C-CHECKS/C-CHECK_PROGRAM-DEFINITION.md)
  - [`C-CHECK_Work-Package-C01.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/02-C-CHECKS/C-CHECK_WORK-PACKAGE-C01.md)
- **03-STRUCTURAL_CHECKS_S-CHECKS**
  - [`S-CHECK_Program-Definition.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/03-STRUCTURAL_CHECKS_S-CHECKS/S-CHECK_PROGRAM-DEFINITION.md)

## 02 — Traceability and Compliance
- [`TRACE_Matrix-MPD-ALS-to-Checks.csv`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/02-TRACEABILITY_AND_COMPLIANCE/TRACE_MATRIX-MPD-ALS-TO-CHECKS.csv)

## 03 — Program Customization and Deviations
- [`PROC_Program-Deviation-Request.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/03-PROGRAM_CUSTOMIZATION_AND_DEVIATIONS/PROC_PROGRAM-DEVIATION-REQUEST.md)
- [`LOG_Approved-Deviations.csv`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/03-PROGRAM_CUSTOMIZATION_AND_DEVIATIONS/LOG_APPROVED-DEVIATIONS.csv)

---

## Governance (minimal, enforceable)
- **Regulatory basis:** NAA-approved program. ALS items are non-escalable.
- **Intervals:** Defined per package; tolerance explicit:
  ```yaml
  interval: { basis: FH|FC|CAL, value: <int>, tolerance: { plus: <int>, minus: <int> } }
  ```

---

### Hyperlinkable Index — `I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS`

* [`00_README.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/00_README.md)
* [`INDEX.meta.yaml`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/INDEX.meta.yaml)

## 01 — Hardware Catalogs

* **01 — Fasteners**

  * [`CAT_Standard-Bolts-MS-NAS.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/01-FASTENERS/CAT_STANDARD-BOLTS-MS-NAS.md)
  * [`CAT_Standard-Screws-AN-NAS.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/01-FASTENERS/CAT_STANDARD-SCREWS-AN-NAS.md)
  * [`CAT_Hi-Lok-Fasteners.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/01-FASTENERS/CAT_HI-LOK-FASTENERS.md)
* **02 — Structural Components**

  * [`CAT_Standard-Rivets.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/02-STRUCTURAL_COMPONENTS/CAT_STANDARD-RIVETS.md)
  * [`CAT_Standard-Bearings.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/02-STRUCTURAL_COMPONENTS/CAT_STANDARD-BEARINGS.md)
* **03 — Electrical Components**

  * [`CAT_Standard-Connectors-MIL-DTL-38999.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/03-ELECTRICAL_COMPONENTS/CAT_STANDARD-CONNECTORS-MIL-DTL-38999.md)
  * [`CAT_Standard-Wire-And-Cable.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/03-ELECTRICAL_COMPONENTS/CAT_STANDARD-WIRE-AND-CABLE.md)
  * [`CAT_Standard-Circuit-Breakers.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/03-ELECTRICAL_COMPONENTS/CAT_STANDARD-CIRCUIT-BREAKERS.md)
* **04 — Fluid Fittings**

  * [`CAT_Standard-AN-MS-Fittings.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/01-HARDWARE_CATALOGS/04-FLUID_FITTINGS/CAT_STANDARD-AN-MS-FITTINGS.md)

## 02 — Consumables Catalog

* [`CAT_Adhesives-And-Sealants.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/02-CONSUMABLES_CATALOG/CAT_ADHESIVES-AND-SEALANTS.md)
* [`CAT_Lubricants-Greases-And-Oils.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/02-CONSUMABLES_CATALOG/CAT_LUBRICANTS-GREASES-AND-OILS.md)
* [`CAT_Cleaning-Agents-And-Solvents.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/02-CONSUMABLES_CATALOG/CAT_CLEANING-AGENTS-AND-SOLVENTS.md)

## 03 — General Tools Catalog

* [`CAT_Hand-Tools-Standard.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/03-GENERAL_TOOLS_CATALOG/CAT_HAND-TOOLS-STANDARD.md)
* [`CAT_Pneumatic-Tools.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/03-GENERAL_TOOLS_CATALOG/CAT_PNEUMATIC-TOOLS.md)
* [`CAT_Torque-Wrenches-General-Use.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/03-GENERAL_TOOLS_CATALOG/CAT_TORQUE-WRENCHES-GENERAL-USE.md)

## 04 — Inventory and Control

* **01 — Interchangeability Data**

  * [`DATA_Part-Number-Cross-Reference-Table.csv`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/04-INVENTORY_AND_CONTROL/01-INTERCHANGEABILITY_DATA/DATA_PART-NUMBER-CROSS-REFERENCE-TABLE.csv)
* **02 — Shelf Life Program**

  * [`PROC_Shelf-Life-Control-Procedure.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/04-INVENTORY_AND_CONTROL/02-SHELF_LIFE_PROGRAM/PROC_SHELF-LIFE-CONTROL-PROCEDURE.md)
* **03 — Tool Control Program**

  * [`PROC_Tool-Control-And-FOD-Prevention.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/04-INVENTORY_AND_CONTROL/03-TOOL_CONTROL_PROGRAM/PROC_TOOL-CONTROL-AND-FOD-PREVENTION.md)
  * **calibration**

    * [`schedule.csv`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/04-INVENTORY_AND_CONTROL/03-TOOL_CONTROL_PROGRAM/CALIBRATION/SCHEDULE.csv)

## 05 — Safety Data

* **safety_data_sheets**

  * [`SDS_MIL-PRF-23377_Primer.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/05-SAFETY_DATA/SAFETY_DATA_SHEETS/SDS_MIL-PRF-23377_PRIMER.md)
  * [`SDS_BMS-3-26_Grease.md`](OPT-IN_FRAMEWORK/I-INFRASTRUCTURES/ATA_13-HARDWARE_AND_GENERAL_TOOLS/05-SAFETY_DATA/SAFETY_DATA_SHEETS/SDS_BMS-3-26_GREASE.md)

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

---

## **`T-TECHNOLOGY / A-AIRFRAME / ATA 52 – DOORS`**

This chapter contains all maintenance procedures, data, and documentation for aircraft door systems including passenger, cargo, service, and emergency exits. It implements a comprehensive, safety-critical maintenance framework with zero-deviation governance.

### **Directory Structure**

```
/T-TECHNOLOGY/A-AIRFRAME
└── /ATA_52-DOORS
    ├── /01-52-00_GENERAL
    │   ├── 00_README.md
    │   ├── ci
    │   │   └── validate_ata52.sh
    │   ├── INDEX.meta.yaml
    │   └── schemas
    │       ├── checklist.schema.json
    │       └── limits.schema.json
    ├── /02-52-10_PASSENGER_DOORS
    │   ├── PROC_52-10-01_Rigging-And-Sealing-Passenger-Door_rev1.0.0_20280910.md
    │   └── PROC_52-10-01_Rigging-And-Sealing-Passenger-Door_rev1.0.0_20280910.meta.yaml
    ├── /03-52-20_SERVICE_DOORS
    │   └── PROC_52-20-01_Inspection-And-Lubrication-Service-Doors_rev1.0.0_20280912.md
    ├── /04-52-30_CARGO_DOORS
    │   └── PROC_52-30-01_Operational-Check-Cargo-Door_rev1.0.0_20280915.md
    ├── /05-52-40_EMERGENCY_EXITS
    │   └── PROC_52-40-01_Functional-Check-Overwing-Exit_rev1.0.0_20280918.md
    ├── /06-52-50_MECHANISMS_CONTROLS
    │   └── DATA_52-50-01_Mechanism-Wear-And-Torque-Limits_rev1.1.0_20280905.csv
    ├── /07-52-60_SEALS_PRESSURIZATION
    │   └── PROC_52-60-01_Inflatable-Seal-Leak-Test_rev1.2.0_20280911.md
    ├── /08-52-70_WARNING_INDICATION
    │   └── DATA_52-70-02_Indication-Matrix_rev1.0.0_20280908.csv
    ├── /09-52-80_POWER_INTERLOCKS
    │   └── DESC_52-80-01_Power-And-Interlock-Logic_rev1.0.0_20280902.md
    ├── /10-52-90_INSPECTION_NDT
    │   └── INSP_52-90-01_Zonal-Inspection-Door-Surrounds_rev1.0.0_20280920.md
    ├── /11-52-95_TROUBLESHOOTING
    │   └── TS_52-95-01_Fault-Tree-Door-Will-Not-Lock_rev1.0.0_20280922.md
    ├── /12-52-A1_ACCEPTANCE_TESTS
    │   ├── ATP_52-A1-01_Return-To-Service-Checklist_rev1.1.0_20280910.md
    │   └── DATA_52-A1-01_Acceptance-Test-Matrix_rev1.1.0_20280910.csv
    ├── /13-52-A2_TOLERANCES_LIMITS
    │   └── DATA_52-A2-01_Tolerances-And-Limits_rev1.2.0_20280905.csv
    ├── /14-52-A3_TOOLS_GSE
    │   └── CAT_52-A3-01_Tools-And-GSE-Catalog_rev1.0.0_20280901.md
    ├── /15-52-D1_DIAGRAMS_REFERENCES
    │   └── FIG_52-D1-01_Door-And-Exit-Locations_rev1.0.0_20280901.dxf
    └── /16-52-R1_REPAIRS_MINOR
        └── REP_52-R1-01_Seal-Seat-Touch-Up_rev1.0.0_20280925.md
```

---

### **Supporting File Content**

#### **`/01-52-00_GENERAL/00_README.md`**

```markdown
# ATA 52: Doors

**CRITICAL SAFETY WARNING:** This chapter contains procedures vital to flight safety. Incorrect maintenance can lead to in-flight depressurization, structural failure, or failure of emergency evacuation systems. All safety gates, such as verifying slide disarming and system depressurization, are mandatory.

## Scope and Structure
This chapter is organized by subject-level folders (e.g., `02-52-10_PASSENGER_DOORS`) to provide direct access to specific procedures and data. All maintenance must adhere to the methods, tolerances, and tooling defined herein.

## Governance
- **Zero Deviation:** Procedures are mandatory. Any deviation requires a formal Engineering Order.
- **Permits:** All rigging and major component replacement tasks require signed-off permits (e.g., "Door Rigging Permit", "Slide Safe Permit").
- **Tooling:** All specified tools must be calibrated and inspected before use.
- **Environmental Gates:** Work is prohibited if cabin ΔP > 0 kPa, or if ambient conditions exceed limits specified in the `INDEX.meta.yaml`.
```

#### **`/01-52-00_GENERAL/INDEX.meta.yaml`**

```yaml
schema_version: "1.1"
id: "ATA_52_INDEX"
chapter: "ATA 52 - DOORS"
governance:
  owner_role: "Structures Engineering"
  review_board: ["Airworthiness", "Systems", "MRO Support"]
tolerances_ref: "/13-52-A2_TOLERANCES_LIMITS/DATA_52-A2-01_Tolerances-And-Limits_rev1.2.0_20280905.csv"
acceptance_matrix_ref: "/12-52-A1_ACCEPTANCE_TESTS/DATA_52-A1-01_Acceptance-Test-Matrix_rev1.1.0_20280910.csv"
environment:
  temp_C: [10, 35]
  wind_knots_max: 15
  cabin_deltaP_kPa: 0
permits_required: ["Door Rigging Permit", "Slide Safe Permit"]
integrity: { checksum_algorithm: "sha256" }
```

#### **`/01-52-00_GENERAL/ci/validate_ata52.sh`**

```bash
#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

echo "--- Running validation on ATA 52 repository ---"
error_count=0

# 1. Validate filenames against convention (must start with a standard prefix)
echo "1. Checking filenames for standard prefixes..."
noncompliant_files=$(find "$root" -type f -not -path "*/ci/*" -not -path "*/schemas/*" -not -path "*README.md" -not -path "*INDEX.meta.yaml" -not -path "*.dxf" | grep -vE '/(PROC_|DATA_|FIG_|DESC_|INSP_|TS_|ATP_|REP_|CAT_)[0-9]{2}-' || true)
if [[ -n "$noncompliant_files" ]]; then
  echo "❌ ERROR: The following filenames do not match the required prefix convention:"
  echo "$noncompliant_files"
  error_count=$((error_count + 1))
else
  echo "✅ Filenames OK."
fi

# 2. Check for missing metadata sidecars
echo "2. Checking for missing .meta.yaml sidecars..."
sidecar_errors=0
for f in $(find "$root" -type f \( -name "*.md" -o -name "*.csv" -o -name "*.dxf" \) -not -path "*/ci/*" -not -path "*/schemas/*" -not -name "*README.md" -not -name "INDEX.meta.yaml"); do
  if [[ ! -f "${f}.meta.yaml" ]]; then
    echo "❌ ERROR: Missing sidecar for $f"
    error_count=$((error_count + 1))
    sidecar_errors=$((sidecar_errors + 1))
  fi
done
if [[ $sidecar_errors -eq 0 ]]; then
    echo "✅ All required sidecars are present."
fi

# 3. Validate JSON schemas
echo "3. Validating JSON schemas..."
if command -v python3 &> /dev/null; then
  for schema in "$root"/01-52-00_GENERAL/schemas/*.json; do
    if [ -f "$schema" ]; then
      if python3 -c "import json, sys; json.load(open(sys.argv[1]))" "$schema" 2>/dev/null; then
        echo "✅ Valid JSON schema: $(basename "$schema")"
      else
        echo "❌ ERROR: Invalid JSON syntax in $(basename "$schema")"
        error_count=$((error_count + 1))
      fi
    fi
  done
else
  echo "⚠️  Python3 not available, skipping JSON schema validation"
fi

echo "--- Validation finished. Total errors: $error_count ---"
[[ $error_count -gt 0 ]] && exit 1 || exit 0
```

#### **`/01-52-00_GENERAL/schemas/limits.schema.json`**

```json
{
  "$schema":"http://json-schema.org/draft-07/schema#",
  "title": "Limits and Tolerances Schema",
  "type":"object",
  "required":["items"],
  "properties":{
    "items":{"type":"array","items":{
      "type":"object",
      "required":["id","desc","subject","nom","unit","min","max","method"],
      "properties":{
        "id":{"type":"string"},
        "desc":{"type":"string"},
        "subject":{"type":"string"},
        "nom":{"type":["number", "null"]},
        "unit":{"type":"string"},
        "min":{"type":["number", "null"]},
        "max":{"type":["number", "null"]},
        "method":{"type":"string"}
      }
    }}
  }
}
```

#### **`/01-52-00_GENERAL/schemas/checklist.schema.json`**

```json
{
  "$schema":"http://json-schema.org/draft-07/schema#",
  "title": "Checklist Schema",
  "type":"object",
  "required":["id","title","steps"],
  "properties":{
    "id":{"type":"string"},
    "title":{"type":"string"},
    "steps":{"type":"array","items":{
      "type":"object",
      "required":["seq","text","hold","evidence"],
      "properties":{
        "seq":{"type":"integer"},
        "text":{"type":"string"},
        "hold":{"type":"boolean"},
        "evidence":{"type":"string"}
      }
    }}
  }
}
```

#### **`/06-52-50_MECHANISMS_CONTROLS/DATA_52-50-01_Mechanism-Wear-And-Torque-Limits_rev1.1.0_20280905.csv`**

```csv
Item,Location,Metric,Limit_Min,Limit_Max,Unit,Tool,Notes
Hinge_Radial_Play,L1_Upper,Play,0.0,0.5,mm,Dial_Indicator,Measure @ 12/6 o'clock
Hinge_Axial_Play,L1_Upper,Play,0.0,0.8,mm,Feeler,Shim if >0.8
Latch_Backlash,Main_Lock,Angle,0.0,2.0,deg,Protractor,With handle detent
Torque_Tube_Torque,Drive,Shaft_Torque,12,16,N·m,Cal_Torque_Wrench,Dry thread
Counterbalance_Spring,Assist,Force,180,220,N,Force_Gauge,At mid-stroke
```

#### **`/07-52-60_SEALS_PRESSURIZATION/PROC_52-60-01_Inflatable-Seal-Leak-Test_rev1.2.0_20280911.md`**

```markdown
# Procedure: 52-60-01 - Inflatable Seal Leak Test
**Revision:** 1.2.0

## 1. Prerequisites
- Door closed and locked. Cabin ΔP = 0 kPa.
- **Instrument:** Calibrated mass-flow ultrasonic leak sensor (ULS), range 0–2,000 sccm, accuracy ±1% of reading.

## 2. Procedure
1.  Connect regulated pressure source to the seal inflation test port.
2.  Slowly pressurize seal to the test setpoint of **7.0 kPa ±0.2 kPa**.
3.  Allow pressure to stabilize for **60 seconds**.
4.  Begin measurement. Average the leak rate reading over a **120-second period**.
5.  Record the average leak rate, ambient temperature, and ambient pressure.
6.  Calculate the leak rate per meter of door perimeter.

## 3. Pass/Fail Criteria
- **PASS:** Leak rate is **≤ 500 sccm/m**.
- **FAIL:** Leak rate is > 500 sccm/m. Abort test, depressurize, and investigate for leaks.
```

#### **`/08-52-70_WARNING_INDICATION/DATA_52-70-02_Indication-Matrix_rev1.0.0_20280908.csv`**

```csv
Sensor,Type,State_Condition,MAINT_Page_Text,EICAS_Message,Setpoint,Unit,Debounce_ms
L1_Lock_Prox,Proximity,Door_Locked,LOCKED,DOOR L1 LOCKED,3.0,mm,200
L1_Handle_Switch,Discrete,Handle_Stowed,CLOSED,DOOR L1 OPEN (if not stowed),N/A,N/A,100
Inflatable_Seal_Press,Analog,Seal_Pressurized,SEAL OK,DOOR L1 SEAL LOW (if < setpoint),7.0,kPa,500
```

#### **`/12-52-A1_ACCEPTANCE_TESTS/DATA_52-A1-01_Acceptance-Test-Matrix_rev1.1.0_20280910.csv`**

```csv
Test_ID,Subject,Condition,Measurement,Limit,Unit,Pass_Fail_Evidence
ATP-52-001,Seal_Leak,ΔP=7 kPa,Leak_Rate,<=500,sccm/m,ULS Trace ID
ATP-52-002,Indication,Door_Closed_Locked,Sensor_State,=LOCKED,N/A,EICAS Screenshot
ATP-52-003,Cycle_Time,3 Cycles,Time,5-9,s,Video Timecode
ATP-52-004,Manual_Force,Closing,Peak_Force,<=180,N,Force Gauge Reading
ATP-52-005,Backlash,Latch_Mechanism,Angle,<=2.0,deg,Protractor Gauge Photo
```

#### **`/12-52-A1_ACCEPTANCE_TESTS/ATP_52-A1-01_Return-To-Service-Checklist_rev1.1.0_20280910.md`**

```markdown
# ATP: 52-A1-01 - Door Return-To-Service Checklist
**Revision:** 1.1.0

1.  Slide DISARMED flag and pin verified installed. **HOLD POINT.**
2.  Door rigging completed and verified per `PROC_52-10-01`. All rigging pins removed and accounted for.
3.  Seal leak test (`PROC_52-60-01`) completed. Result: `485` sccm/m (must be ≤ 500). Evidence ID: `ULS-TRACE-1138`.
4.  Indication matrix (`DATA_52-70-02`) verified on EICAS/MAINT pages. Evidence ID: `EICAS-SCR-009`.
5.  Functional cycles (x3) completed. No abnormal noise or binding recorded.
6.  Slide ARMED and "ARMED" indicator illuminated. **HOLD POINT.**
7.  Work area FOD sweep completed. All panels closed and fasteners torqued/marked.
8.  Technical log entry completed and certified.

**Technician Sign-off:** A. Technician / 2029-10-26
**Inspector Sign-off:** B. Inspector / 2029-10-26
```

#### **`/13-52-A2_TOLERANCES_LIMITS/DATA_52-A2-01_Tolerances-And-Limits_rev1.2.0_20280905.csv`**

```csv
Limit_ID,Description,ATA_Subject,Nominal_Value,Unit,Min,Max,Method_Reference
TOL-52-001,"Seal Leak Rate @ ΔP=7 kPa",52-60,450,sccm/m,N/A,500,PROC_52-60-01
TOL-52-002,"Latch Pin Engagement Depth",52-10,20.0,mm,19.0,21.0,Depth Gauge
TOL-52-003,"Manual Close Force @ Handle",52-10,150,N,N/A,180,Force Gauge
TOL-52-004,"Hinge Radial Play",52-50,0.1,mm,N/A,0.5,Dial Indicator
TOL-52-005,"Proximity Sensor Gap (Closed)",52-70,3.0,mm,2.5,3.5,Feeler Gauge
TOL-52-006,"Door Cycle Time (Open→Locked)",52-10,7.0,s,5.0,9.0,Stopwatch
```

#### **Sample Sidecar: `/02-52-10_PASSENGER_DOORS/PROC_52-10-01_Rigging-And-Sealing-Passenger-Door_rev1.0.0_20280910.meta.yaml`**

```yaml
schema_version: "1.1"
id: "PROC_52-10-01_Rigging-And-Sealing-Passenger-Door_rev1.0.0_20280910"
document:
  type: "PROC"
  title: "52-10-01: Rigging and Sealing - Passenger Door"
  revision: "1.0.0"
  effective_date: "2028-09-10"
effectivity: { msn: "ALL" }
safety:
  hazards: ["Explosive Decompression", "Inadvertent Slide Deployment"]
  criticality: "High"
gse_required:
  - { part_number: "AP360-T050", description: "Door Rigging Pin Set" }
approvals:
  - { authority: "Structures Engineering", status: "Released", date: "2028-09-01" }
integrity: { checksum: { algorithm: "sha256", value: "a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2" } }
```

---

### **Key Features**

* **Safety-Critical Framework:** Zero-deviation governance with mandatory hold points and dual sign-off requirements
* **Comprehensive Coverage:** 16 subject-level folders covering all door maintenance aspects
* **Traceability:** Cross-references between procedures, tolerances, acceptance tests, and tools
* **Validation:** Automated CI validation script ensures naming conventions and metadata completeness
* **Metadata Sidecars:** All technical documents have YAML metadata for version control and traceability
* **Structured Data:** CSV files for limits, tolerances, test matrices, and indication specifications

### **File Naming Convention**

All technical files follow a strict naming pattern:
- `PROC_` = Procedure
- `DATA_` = Data file (CSV)
- `DESC_` = Description/specification
- `INSP_` = Inspection procedure
- `TS_` = Troubleshooting guide
- `ATP_` = Acceptance Test Procedure
- `REP_` = Repair procedure
- `CAT_` = Catalog
- `FIG_` = Figure/drawing

Format: `TYPE_XX-YY-ZZ_Description_revX.Y.Z_YYYYMMDD.ext`

### **Governance and Compliance**

* All procedures require **Door Rigging Permit** and **Slide Safe Permit**
* Environmental gates: Temperature 10-35°C, Wind ≤15 knots, Cabin ΔP = 0 kPa
* Dual sign-off required for all critical procedures
* Engineering Order required for any deviation from procedures
* Full traceability to ATA 95 Digital Product Passport

### **Related Chapters**

* ATA 50: Cargo and Accessory Compartments
* ATA 51: Standard Practices and Structures
* ATA 53: Fuselage
* ATA 13: Tools and GSE (for tool catalog integration)
* ATA 05: Time Limits/Maintenance Checks (for scheduled inspections)
