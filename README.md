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

## Scientific Note: Documentation Infrastructure for Open Source Conceptual Aircraft Development

### Abstract

The **Optin Framework** is a modular documentation architecture that enables building the complete technical documentation of a conceptual aircraft, even before the physical prototype. This approach seeks to establish a **verifiable, public, and replicable standard** for the development and evaluation of advanced aeronautical projects, facilitating traceability and certification compliance with international regulations (EASA/FAA).[¹](https://arxiv.org/html/2407.06320v2)

### Purpose and Motivation

This initiative arises from the need to accelerate the technical maturation of aeronautical concepts and open access to advanced design for both institutions and potential investors. The Optin system transforms **documentary evidence—requirements, analysis, and deliverables—into the first verifiable product** of any aircraft program, even without a physical prototype or initial investment.

### Modular Structure

The Framework organizes documentation into standardized sections, oriented toward a conceptual design program (CDR):

- **Requirements and Systems Integration:** Traceable identifiers for each requirement (REQ-001…REQ-00x), functional specifications, verification protocols, and certification pathways.
- **Aerodynamics and Propulsion:** Templates for CFD analysis, configuration studies, consumption profiles, and engine schematics, including hybrid, electric, and hydrogen variants.
- **Structures and Thermal Management:** Standardized CAD models, load and fatigue simulations, energy storage diagrams (batteries, H₂ tanks).
- **Management and Configuration Plan:** Change control procedures, deliverable review, and open PLM/CAx management workflow.

Each block is implemented through **interoperable schemas**—diagrams, checklists, best practice guides—that allow reconstruction and audit of the entire engineering and certification cycle as if the aircraft were physically manufactured.[²](https://www.docs.rcaide.leadsresearchgroup.com/)

### Open Source Approach

The entire system is governed by **open licenses**, replicating the logic of collaborative PLM and CAx systems but in a public and federated environment. Deliverables are auditable by third parties, with complete traceability and version control, allowing any entity to replicate, review, or finance the design based on complete documentary evidence.[²](https://www.docs.rcaide.leadsresearchgroup.com/)[³](https://github.com/lucianosrp/open-source-aviation)

### Practical Application (BWB-H2-Hy-E Case)

As an example, the Optin Framework is employed in the documentary development of the **BWB-H2-Hy-E**:  
- Conceptual aircraft with blended wing body, hybrid-electric and hydrogen propulsion.
- Enables demonstration of technical maturity through certifiable documentation and regulatory compliance.
- Deliverables include feasibility analysis, aerodynamic simulations, hydrogen management system schematization, and digitized certification pathways.

### Conclusion

The Optin Framework represents the transition from **comprehensive technical documentation to verifiable product**, constituting the technical equivalent of an open "documentary prototype." This infrastructure facilitates the **evaluation, replication, and financing of advanced aeronautical projects** from documentary evidence and establishes a replicable standard for the entire open and collaborative aeronautical design industry.[¹](https://arxiv.org/html/2407.06320v2)[²](https://www.docs.rcaide.leadsresearchgroup.com/)[³](https://github.com/lucianosrp/open-source-aviation)

**Keywords:** Open source, aircraft, technical documentation, PLM, CAx, certification, conceptual design, hydrogen aircraft, BWB.

### Additional References

- [⁴](https://europass.europa.eu/es/common-european-framework-reference-language-skills) European Framework for Language Skills
- [⁵](https://www.antifraucv.es/wp-content/uploads/2025/04/2025_Tratado_sobre_el_Reglamento_de_IA_con_capitulo_Boix_y_Barrachina.pdf) Treaty on AI Regulation
- [⁶](https://e-revistas.uc3m.es/index.php/CDT/article/download/9887/7434/) Transnational Law Journals
- [⁷](https://oa.upm.es/64414/1/TFM_JORGE_FORCADA_SANZ.pdf) Master's Thesis Jorge Forcada Sanz
- [⁸](https://www.aepd.es/documento/premio-emilio-aced-2023-yod-samuel-martin.pdf) Emilio Aced Award 2023
- [⁹](https://ardupilot.org/plane/) ArduPilot Open Source Autopilot
- [¹⁰](https://ntrs.nasa.gov/api/citations/20040033924/downloads/20040033924.pdf) NASA Technical Reports Server
- [¹¹](https://en.wikipedia.org/wiki/European_Interoperability_Framework) European Interoperability Framework
- [¹²](https://www.frontiersin.org/journals/energy-research/articles/10.3389/fenrg.2022.993376/full) Frontiers in Energy Research
- [¹³](https://www.crue.org/wp-content/uploads/2020/02/Formaci%C3%B3n-curricular-en-dise%C3%B1o-para-todas-las-personas-accesible-Enfermer%C3%ADa.pdf) Curricular Training in Universal Design
- [¹⁴](https://riunet.upv.es/server/api/core/bitstreams/2cc750b4-8413-40f5-ba25-7891ab63bbc9/content) RiuNet UPV - Digital Repository
- [¹⁵](https://riunet.upv.es/bitstream/handle/10251/198544/Gabaldon%20-%20Analisis%20de%20frameworks%20y%20soluciones%20para%20la%20IoT.pdf?sequence=1) Analysis of IoT Frameworks and Solutions
- [¹⁶](https://github.com/paparazzi/paparazzi) Paparazzi UAV Open Source Project
- [¹⁷](https://www.sciencedirect.com/science/article/pii/S0376042121000191) ScienceDirect Article
- [¹⁸](https://www.idealista.com/data/) Idealista Data Portal
- [¹⁹](https://arc.aiaa.org/doi/10.2514/1.C036952) AIAA Journal Article
- [²⁰](https://support.google.com/admanager/answer/9461778) Google Ad Manager Documentation

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
- [`MPM_Master-Document_rev1.0.0_20250701.md`](OPT-IN_FRAMEWORK/O-ORGANIZATION/ATA_05-TIME_LIMITS_MAINTENANCE_CHECKS/01-MAINTENANCE_PROGRAM_MANUAL/MPM_MASTER-DOCUMENT_REV100_20250701.md)
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
  effective_date: "2025-04-15"
effectivity:
  scope: "Program-Wide"
approvals:
  - authority: "Airworthiness Engineering"
    status: "Released"
    date: "2025-04-10"
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

## **T-TECHNOLOGY / A-AIRFRAME / ATA 52 – DOORS**

This chapter provides comprehensive maintenance, repair, and qualification documentation for all door systems on AMPEL360 aircraft, including passenger, cargo, emergency evacuation, and blowout panels.

### **Scope and Purpose**

* **Passenger Doors:** Entry, service, and emergency exit doors with evacuation equipment
* **Cargo Doors:** Main deck and bulk cargo doors with loading systems
* **Emergency Systems:** Evacuation slides, rafts, and arming mechanisms
* **Structural Elements:** Hinges, latches, seals, actuators, and lightning protection
* **Safety Compliance:** FAA Part 25.783, 25.807, 25.809 and EASA CS-25 equivalents

### **Audit-Ready Directory Structure**

```
/T-TECHNOLOGY/A-AIRFRAME
└── /ATA_52-DOORS
    ├── 00_README.md
    ├── ci
    │   └── validate_ata52.sh
    ├── INDEX.meta.yaml
    ├── schemas
    │   ├── repair-record.schema.json
    │   ├── damage-classification.schema.json
    │   └── door-spec.schema.json
    ├── /01-GENERAL
    │   ├── DESC_52-01-01_Door-Taxonomy-and-Definitions.md
    │   ├── DESC_52-01-02_Governance-Effectivity-And-Configuration.md
    │   └── DATA_52-01-03_Damage-Limits.csv
    ├── /02-INSPECTION_AND_TEST
    │   ├── PROC_52-02-01_General-Visual-Inspection-GVI.md
    │   ├── PROC_52-02-02_Pressure-Leak-Test-And-Seal-Verification.md
    │   ├── PROC_52-02-03_NDT-Methods-For-Doors.md
    │   └── DATA_52-02-04_Inspection-Intervals.csv
    ├── /03-DOOR_REMOVAL_AND_INSTALLATION
    │   ├── PROC_52-03-01_Door-Removal-And-Installation.md
    │   └── PROC_52-03-02_Handle-And-Interior-Trim-Removal.md
    ├── /04-HINGES_LATCHES_AND_MECHANISMS
    │   ├── PROC_52-04-01_Hinge-And-Latch-Inspection.md
    │   ├── PROC_52-04-02_Hinge-Pin-Replacement-And-Tolerances.md
    │   └── DATA_52-04-03_Latch-Torque-Charts.csv
    ├── /05-SEALED_SYSTEMS_AND_PRESSURE_INTEGRITY
    │   ├── PROC_52-05-01_Seal-Replacement-And-Pressure-Test.md
    │   ├── PROC_52-05-02_Heated-Seal-Service-And-Thermocouple-Placement.md
    │   └── DATA_52-05-03_Seal-Specs-And-Cure-Schedules.csv
    ├── /06-POWERED_SYSTEMS_AND_ELECTRICAL
    │   ├── PROC_52-06-01_Actuator-Removal-Installation.md
    │   ├── PROC_52-06-02_Electrical-Fault-Finding-And-EMC-Checks.md
    │   └── DATA_52-06-03_Actuator-And-Controller-Specs.csv
    ├── /07-EMERGENCY_EVACUATION
    │   ├── PROC_52-07-01_Slide-Raft-Service-And-Functional-Test.md
    │   ├── PROC_52-07-02_Arming-And-Disarming-Procedures.md
    │   └── DATA_52-07-03_Slide-Service-Log.csv
    ├── /08-CARGO_DOORS_AND_BLOWOUT_PANELS
    │   ├── PROC_52-08-01_Cargo-Door-Operation-And-Load-Test.md
    │   ├── PROC_52-08-02_Blowout-Panel-Inspection-And-Repair.md
    │   └── DATA_52-08-03_Cargo-Sill-Load-Limits.csv
    ├── /09-LIGHTNING_STRIKE_PROTECTION
    │   ├── PROC_52-09-01_LSP-Restoration-And-Continuity-Test.md
    │   └── DATA_52-09-02_LSP-Materials-And-Resistance-Limits.csv
    ├── /10-REPAIR_GUIDELINES
    │   ├── PROC_52-10-01_Metallic-Bolted-Repair-For-Doors.md
    │   ├── PROC_52-10-02_Composite-Door-Scarf-Repair-Reference-ATA51.md
    │   └── DATA_52-10-03_Approved-Repair-Materials.csv
    ├── /11-QUALIFICATION_AND_TEST_PLANS
    │   ├── TESTPLAN_52-11-01_Door-Qualification-And-Certification-Plan.md
    │   └── DATA_52-11-02_Test-Matrix.csv
    ├── /12-MATERIALS_M_AND_P_TRACEABILITY
    │   ├── DATA_52-12-01_Door-Material-And-Fastener-Specs.csv
    │   └── PROC_52-12-02_M&P-Traceability-And-CofC.md
    ├── /13-NONCONFORMANCE_AND-DEVIATION
    │   ├── PROC_52-13-01_Nonconformance-Handling-And-Engineering-Disposition.md
    │   └── DATA_52-13-02_NCR-Template.csv
    ├── /14-DIAGRAMS_AND_REFERENCE_DATA
    │   ├── DIAG_52-14-01_Door-Exploded-Views.pdf
    │   ├── DIAG_52-14-02_Hinge-And-Latch-Detail-DWG.dwg
    │   └── DATA_52-14-03_Reference-Tables.csv
    ├── /15-SIDE-CAR_META
    │   └── templates
    │       ├── document.meta.yaml
    │       └── proc_sidecar_template.meta.yaml
    └── /16-EXAMPLES_AND_RECORDS
        ├── EXAMPLE_52-16-01_Repair-Record-Example.json
        ├── EXAMPLE_52-16-02_Pressure-Test-Log.csv
        └── EXAMPLE_52-16-03_NDT-Report-Sample.pdf
```

### **Key Requirements**

* **Metadata Sidecars:** Every PROC and DATA file must have a matching `.meta.yaml` sidecar in `/15-SIDE-CAR_META/templates` or alongside the document.
* **Door-Specific Schema Fields:** `schemas/repair-record.schema.json` includes:
  - `sealType`: Type of door seal (silicone, inflatable, heated)
  - `leakageCFM`: Measured leakage in cubic feet per minute
  - `latchTorque`: Torque specifications and measurements
  - `actuatorHours`: Operating hours on powered door actuators
  - `slideSerial`: Serial number of evacuation slide/raft
  - `ndtFileHashes`: SHA-256 hashes of NDT inspection files
* **Cross-References:** ATA-20 (standard practices), ATA-51 (structural repairs), and effectivity by MSN/config/serial ranges documented in `INDEX.meta.yaml`

### **Document Naming Convention**

All files follow the pattern:
```
{TYPE}_{ATA}-{SECTION}-{SEQ}_{Title}_rev{X.Y.Z}_{YYYYMMDD}.{ext}
```

Examples:
- `PROC_52-02-01_General-Visual-Inspection-GVI_rev1.0.0_20251027.md`
- `DATA_52-04-03_Latch-Torque-Charts_rev1.0.0_20251027.csv`

### **Validation**

Run the CI validation script to ensure compliance:
```bash
./ci/validate_ata52.sh
```

This validates:
- Filename compliance with naming conventions
- Presence of required `.meta.yaml` sidecars
- JSON schema validity
- Cross-reference integrity (ATA 20, ATA 51)
- Door-specific fields in repair-record schema

### **Regulatory Basis**

- **FAA Part 25.783:** Door design and operation
- **FAA Part 25.807:** Emergency exit requirements
- **FAA Part 25.809:** Emergency exit arrangement
- **CS-25 (EASA):** European equivalents
- **AC 25.783-1:** Advisory circular on door design and test criteria

### **Cross-References**

* **ATA 20:** Standard Practices — Airframe (torque, fasteners, sealant)
* **ATA 51:** Standard Practices and Structures — General (repairs)
* **ATA 21:** Air Conditioning and Pressurization (seal testing)
* **ATA 24:** Electrical Power (powered door systems)
* **ATA 26:** Fire Protection (cargo door suppression)
* **ATA 50:** Cargo and Accessory Compartments (integration)
* **ATA 53:** Fuselage (structural attachment)

---
