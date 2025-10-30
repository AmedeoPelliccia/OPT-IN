# ATA 42 - INTEGRATED MODULAR AVIONICS CORE SOFTWARE - Navigation

[🏠 Back to Main README](./README.md)

---

## Table of Contents

This document provides a complete hierarchical navigation tree for the ATA 42 Core OS documentation structure with clickable links and descriptions.

### Quick Links

- [Core Governance Files](#core-governance-files)
- [01 - GENERAL](#01---general)
- [02 - ARCHITECTURE & SERVICES](#02---architecture--services)
- [03 - VERIFICATION & SOFTWARE ASSURANCE](#03---verification--software-assurance)
- [04 - SECURITY & UPDATE MECHANISMS](#04---security--update-mechanisms)
- [05 - INTEGRATION & HIL](#05---integration--hil)
- [06 - METRICS, DIAGNOSTICS & HEALTH](#06---metrics-diagnostics--health)
- [07 - MATERIALS, M&P & TOOLCHAIN](#07---materials-mp--toolchain)
- [08 - NONCONFORMANCE & DEVIATION](#08---nonconformance--deviation)
- [09 - SIDE-CAR META](#09---side-car-meta)
- [10 - EXAMPLES & RECORDS](#10---examples--records)
- [BASELINES](#baselines)
- [Supporting Artifacts](#supporting-artifacts)

---

## Core Governance Files

### Root Documentation
- 📄 [**README.md**](./README.md) - Main overview, purpose, scope, and quicklinks
- 📄 [**INDEX.meta.yaml**](./INDEX.meta.yaml) - Governance, traceability matrix, regulatory basis, and approval records
- 📄 [**META.json**](./META.json) - Chapter metadata in JSON format
- 📄 [**NAVIGATION.md**](./NAVIGATION.md) - This file - complete navigation tree

[↑ Back to top](#table-of-contents)

---

## 01 - GENERAL

**Scope, Governance, and Regulatory Compliance**

📁 [01-GENERAL Directory](./01-GENERAL/)

Establishes the foundation for ATA 42 Core OS documentation, including scope definition, regulatory basis, and stakeholder responsibilities per DO-178C and ARINC 653.

### Key Documents
- 📄 [README.md](./01-GENERAL/README.md) - General section overview
- 📄 [DESC_42-01-01: Scope, Governance, and Effectivity](./01-GENERAL/DESC_42-01-01_Scope-Governance-And-Effectivity.md)
- 📊 [DATA_42-01-02: Regulatory Compliance Matrix](./01-GENERAL/DATA_42-01-02_Regulatory-Compliance-Matrix.csv) - Mapping to DO-178C, ARINC 653, DO-330, ED-202A/203
- 📄 [DESC_42-01-03: ATA-42 Chapter Overview](./01-GENERAL/DESC_42-01-03_ATA-42-Chapter-Overview.md)
- 📊 [DATA_42-01-04: Stakeholder Roles RACI](./01-GENERAL/DATA_42-01-04_Stakeholder-Roles-RACI.csv) - Responsibility matrix
- 📄 [DESC_42-01-05: Document Conventions and Terminology](./01-GENERAL/DESC_42-01-05_Document-Conventions-And-Terminology.md)
- 📊 [DATA_42-01-06: Reference Standards](./01-GENERAL/DATA_42-01-06_Reference-Standards.csv) - ARINC 653, DO-178C, DO-330, etc.

[↑ Back to top](#table-of-contents)

---

## 02 - ARCHITECTURE & SERVICES

**Core OS Architecture, Partition Management, Scheduling, and ARINC 653 Services**

📁 [02-ARCHITECTURE_AND_SERVICES Directory](./02-ARCHITECTURE_AND_SERVICES/)

Core OS architecture, partition management, scheduling design, ARINC 653 API compliance, resource management, and health monitoring subsystems.

### Section Overview
- 📄 [README.md](./02-ARCHITECTURE_AND_SERVICES/README.md) - Architecture section overview

### Subsections

#### OVERVIEW
- Architecture philosophy and system context
- Technology stack and design patterns

#### SAFETY
- Safety architecture principles
- Hazard analysis for Core OS
- Fault containment strategy

#### REQUIREMENTS
- Airworthiness Limitation Requirements (ALR)
- System Requirements (SR)
- Software Requirements (SSR)
- Requirements Traceability Matrix (RTM)

#### DESIGN
- 📄 [DESC_42-02-01: Core OS Architecture](./02-ARCHITECTURE_AND_SERVICES/DESIGN/DESC_42-02-01_Core-OS-Architecture.md)
- Partition memory layout diagrams
- Scheduling state machine diagrams
- IPC mechanisms design
- Resource management design

#### INTERFACES
- ARINC 653 API compliance specifications
- API function list
- Hardware Abstraction Layer (HAL)
- Memory map documentation
- Inter-Partition Communication interfaces

#### ENGINEERING
- 📄 [PROC_42-02-02: Partition Management and Scheduling](./02-ARCHITECTURE_AND_SERVICES/ENGINEERING/PROC_42-02-02_Partition-Management-And-Scheduling.md)
- 📊 [DATA_42-02-03: RTI and Resource Limits](./02-ARCHITECTURE_AND_SERVICES/ENGINEERING/DATA_42-02-03_RTI_And_Resource-Limits.csv) - Example partition configurations
- Scheduling analysis (WCET, timing budgets)
- Memory budget analysis
- Performance benchmarks

#### V_AND_V
- Verification plan for Core OS
- Architecture test cases
- Coverage analysis
- Validation strategy

#### SUBSYSTEMS_AND_COMPONENTS
- 📁 [02-10_KERNEL_SERVICES](./02-ARCHITECTURE_AND_SERVICES/SUBSYSTEMS_AND_COMPONENTS/02-10_KERNEL_SERVICES/) - Scheduling, memory management
- 📁 [02-20_PARTITION_SERVICES](./02-ARCHITECTURE_AND_SERVICES/SUBSYSTEMS_AND_COMPONENTS/02-20_PARTITION_SERVICES/) - Isolation, context switching
- 📁 [02-30_TIME_SERVICES](./02-ARCHITECTURE_AND_SERVICES/SUBSYSTEMS_AND_COMPONENTS/02-30_TIME_SERVICES/) - Synchronization, clocks
- 📁 [02-40_COMMUNICATION_SERVICES](./02-ARCHITECTURE_AND_SERVICES/SUBSYSTEMS_AND_COMPONENTS/02-40_COMMUNICATION_SERVICES/) - Sampling/queuing ports
- 📁 [02-50_HEALTH_MONITORING_SERVICES](./02-ARCHITECTURE_AND_SERVICES/SUBSYSTEMS_AND_COMPONENTS/02-50_HEALTH_MONITORING_SERVICES/) - Fault detection, health monitoring

[↑ Back to top](#table-of-contents)

---

## 03 - VERIFICATION & SOFTWARE ASSURANCE

**Software Verification Strategy, DO-178C Compliance, and Tool Qualification**

📁 [03-VERIFICATION_AND_SOFTWARE_ASSURANCE Directory](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/)

Verification strategy, DO-178C DAL A objectives compliance, tool qualification per DO-330, and comprehensive test execution framework.

### Section Overview
- 📄 [README.md](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/README.md) - Verification section overview

### Key Documents
- 📄 [PROC_42-03-01: SW Verification and Traceability](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/DESIGN/PROC_42-03-01_SW-Verification-And-Trace.md)
- 📄 [PROC_42-03-02: Tool Qualification and CI](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/CERTIFICATION/PROC_42-03-02_TOOL_QUALIFICATION-AND-CI.md)
- 📊 [DATA_42-03-03: DO-178C Mapping](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/CERTIFICATION/DATA_42-03-03_DO178C_MAPPING.csv) - DAL A objectives

### SUBSYSTEMS_AND_COMPONENTS
- 📁 [03-10_UNIT_TESTING](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/SUBSYSTEMS_AND_COMPONENTS/03-10_UNIT_TESTING/) - Component-level verification
- 📁 [03-20_INTEGRATION_TESTING](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/SUBSYSTEMS_AND_COMPONENTS/03-20_INTEGRATION_TESTING/) - Interface testing
- 📁 [03-30_SYSTEM_TESTING](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/SUBSYSTEMS_AND_COMPONENTS/03-30_SYSTEM_TESTING/) - End-to-end validation
- 📁 [03-40_REQUIREMENTS_BASED_TESTING](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/SUBSYSTEMS_AND_COMPONENTS/03-40_REQUIREMENTS_BASED_TESTING/) - Direct requirement validation
- 📁 [03-50_STRUCTURAL_COVERAGE_ANALYSIS](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/SUBSYSTEMS_AND_COMPONENTS/03-50_STRUCTURAL_COVERAGE_ANALYSIS/) - MC/DC coverage for DAL A
- 📁 [03-60_TOOL_QUALIFICATION](./03-VERIFICATION_AND_SOFTWARE_ASSURANCE/SUBSYSTEMS_AND_COMPONENTS/03-60_TOOL_QUALIFICATION/) - DO-330 tool qualification

[↑ Back to top](#table-of-contents)

---

## 04 - SECURITY & UPDATE MECHANISMS

**Secure Boot, Cryptographic Services, Key Management, and Software Updates**

📁 [04-SECURITY_AND_UPDATE_MECHANISMS Directory](./04-SECURITY_AND_UPDATE_MECHANISMS/)

Secure boot chain-of-trust, cryptographic services, key management, signed software updates with rollback protection, and access control.

### Section Overview
- 📄 [README.md](./04-SECURITY_AND_UPDATE_MECHANISMS/README.md) - Security section overview

### Key Documents
- 📄 [DESC_42-04-01: Secure Boot and SW Update Design](./04-SECURITY_AND_UPDATE_MECHANISMS/DESIGN/DESC_42-04-01_Secure-Boot-And-SW-Update.md) - 4-stage secure boot chain
- 📄 [PROC_42-04-02: Signed Image Validation](./04-SECURITY_AND_UPDATE_MECHANISMS/ENGINEERING/PROC_42-04-02_Signed-Image-Validation.md) - Verification procedures

### Compliance
- EUROCAE ED-202A (MILS - Multiple Independent Levels of Security)
- EUROCAE ED-203 (Airborne Security Methods)
- FIPS 140-2 Level 2 (Cryptographic module)

### SUBSYSTEMS_AND_COMPONENTS
- 📁 [04-10_SECURE_BOOT](./04-SECURITY_AND_UPDATE_MECHANISMS/SUBSYSTEMS_AND_COMPONENTS/04-10_SECURE_BOOT/) - Boot chain-of-trust
- 📁 [04-20_CRYPTOGRAPHIC_SERVICES](./04-SECURITY_AND_UPDATE_MECHANISMS/SUBSYSTEMS_AND_COMPONENTS/04-20_CRYPTOGRAPHIC_SERVICES/) - RSA, ECDSA, AES algorithms
- 📁 [04-30_KEY_MANAGEMENT](./04-SECURITY_AND_UPDATE_MECHANISMS/SUBSYSTEMS_AND_COMPONENTS/04-30_KEY_MANAGEMENT/) - Key lifecycle, rotation
- 📁 [04-40_SOFTWARE_UPDATE](./04-SECURITY_AND_UPDATE_MECHANISMS/SUBSYSTEMS_AND_COMPONENTS/04-40_SOFTWARE_UPDATE/) - Update mechanism with rollback
- 📁 [04-50_ACCESS_CONTROL](./04-SECURITY_AND_UPDATE_MECHANISMS/SUBSYSTEMS_AND_COMPONENTS/04-50_ACCESS_CONTROL/) - Privilege separation

[↑ Back to top](#table-of-contents)

---

## 05 - INTEGRATION & HIL

**Hardware-in-Loop Testing, System Integration, and Test Automation**

📁 [05-INTEGRATION_AND_HIL Directory](./05-INTEGRATION_AND_HIL/)

HIL testing strategy, system integration approach, test automation framework, and data acquisition for Core OS validation on target hardware.

### Section Overview
- 📄 [README.md](./05-INTEGRATION_AND_HIL/README.md) - Integration and HIL section overview

### Key Documents
- 📄 [PROC_42-05-01: HIL Test Plan for Core OS](./05-INTEGRATION_AND_HIL/ENGINEERING/PROC_42-05-01_HIL-Test-Plan-Core-OS.md)
- 📊 [DATA_42-05-02: HIL Test Matrix](./05-INTEGRATION_AND_HIL/ENGINEERING/DATA_42-05-02_HIL-Test-Matrix.csv) - 8 example test cases

### Test Objectives
- Verify Core OS functionality on target hardware
- Validate timing constraints and determinism
- Test partition isolation under stress
- Validate security features (secure boot, signed updates)
- Performance benchmarking and stress testing

### SUBSYSTEMS_AND_COMPONENTS
- 📁 [05-10_TEST_ENVIRONMENT](./05-INTEGRATION_AND_HIL/SUBSYSTEMS_AND_COMPONENTS/05-10_TEST_ENVIRONMENT/) - Lab setup and equipment
- 📁 [05-20_SIMULATION_MODELS](./05-INTEGRATION_AND_HIL/SUBSYSTEMS_AND_COMPONENTS/05-20_SIMULATION_MODELS/) - Aircraft and sensor models
- 📁 [05-30_TEST_AUTOMATION](./05-INTEGRATION_AND_HIL/SUBSYSTEMS_AND_COMPONENTS/05-30_TEST_AUTOMATION/) - Automation framework
- 📁 [05-40_DATA_ACQUISITION](./05-INTEGRATION_AND_HIL/SUBSYSTEMS_AND_COMPONENTS/05-40_DATA_ACQUISITION/) - DAQ system

[↑ Back to top](#table-of-contents)

---

## 06 - METRICS, DIAGNOSTICS & HEALTH

**Health Monitoring, Fault Detection, Diagnostics, and Built-In Test**

📁 [06-METRICS_DIAGNOSTICS_AND_HEALTH Directory](./06-METRICS_DIAGNOSTICS_AND_HEALTH/)

Health monitoring strategy, fault detection and isolation, diagnostics, built-in test capabilities, and prognostic health management.

### Section Overview
- 📄 [README.md](./06-METRICS_DIAGNOSTICS_AND_HEALTH/README.md) - Health monitoring section overview

### Key Documents
- 📄 [PROC_42-06-01: Health Monitoring and Fault Reporting](./06-METRICS_DIAGNOSTICS_AND_HEALTH/ENGINEERING/PROC_42-06-01_Health-Monitoring-And-Fault-Reporting.md)
- 📊 [DATA_42-06-02: Health Metric Definitions](./06-METRICS_DIAGNOSTICS_AND_HEALTH/ENGINEERING/DATA_42-06-02_Health-Metric-Definitions.csv) - 6 example metrics

### Health Monitoring Features
- Partition health monitoring (deadline violations, resource usage)
- System health metrics (CPU, memory, temperature)
- Fault detection and isolation
- Prognostic health management
- Event logging and reporting

### SUBSYSTEMS_AND_COMPONENTS
- 📁 [06-10_BUILT_IN_TEST](./06-METRICS_DIAGNOSTICS_AND_HEALTH/SUBSYSTEMS_AND_COMPONENTS/06-10_BUILT_IN_TEST/) - POST, CBIT, IBIT
- 📁 [06-20_FAULT_DETECTION](./06-METRICS_DIAGNOSTICS_AND_HEALTH/SUBSYSTEMS_AND_COMPONENTS/06-20_FAULT_DETECTION/) - Detection methods
- 📁 [06-30_PERFORMANCE_METRICS](./06-METRICS_DIAGNOSTICS_AND_HEALTH/SUBSYSTEMS_AND_COMPONENTS/06-30_PERFORMANCE_METRICS/) - Performance monitoring
- 📁 [06-40_PROGNOSTICS](./06-METRICS_DIAGNOSTICS_AND_HEALTH/SUBSYSTEMS_AND_COMPONENTS/06-40_PROGNOSTICS/) - Predictive maintenance
- 📁 [06-50_REPORTING_LOGGING](./06-METRICS_DIAGNOSTICS_AND_HEALTH/SUBSYSTEMS_AND_COMPONENTS/06-50_REPORTING_LOGGING/) - Event logging, health reports

[↑ Back to top](#table-of-contents)

---

## 07 - MATERIALS, M&P & TOOLCHAIN

**Approved Toolchain, Compiler Qualification, M&P Traceability**

📁 [07-MATERIALS_M_AND_P_AND_TOOLCHAIN Directory](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/)

Approved compiler and toolchain, M&P traceability, tool qualification per DO-330, and build environment configuration.

### Section Overview
- 📄 [README.md](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/README.md) - Toolchain section overview

### Key Documents
- 📊 [DATA_42-07-01: Approved Compilers and Toolchain](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/ENGINEERING/DATA_42-07-01_Approved-Compilers-Toolchain.csv) - Qualified tools list
- 📄 [PROC_42-07-02: M&P Traceability and Tool Rationale](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/ENGINEERING/PROC_42-07-02_M&P-Traceability-And-Tool-Rationale.md)

### Qualified Tools
- **GCC 10.3.0**: DO-330 TQL-5 qualified compiler
- **GNU Binutils 2.36**: Linker and loader (TQL-5)
- **Coverity 2021.12**: Static analyzer (TQL-1)
- **gcov 10.3.0**: Coverage analyzer (TQL-1)

### SUBSYSTEMS_AND_COMPONENTS
- 📁 [07-10_COMPILERS](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/SUBSYSTEMS_AND_COMPONENTS/07-10_COMPILERS/) - Compiler qualification
- 📁 [07-20_LINKERS_LOADERS](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/SUBSYSTEMS_AND_COMPONENTS/07-20_LINKERS_LOADERS/) - Linking strategy
- 📁 [07-30_STATIC_ANALYZERS](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/SUBSYSTEMS_AND_COMPONENTS/07-30_STATIC_ANALYZERS/) - Analysis tools
- 📁 [07-40_DEBUGGERS_EMULATORS](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/SUBSYSTEMS_AND_COMPONENTS/07-40_DEBUGGERS_EMULATORS/) - Debug environment
- 📁 [07-50_VERSION_CONTROL](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/SUBSYSTEMS_AND_COMPONENTS/07-50_VERSION_CONTROL/) - Git strategy
- 📁 [07-60_BUILD_AUTOMATION](./07-MATERIALS_M_AND_P_AND_TOOLCHAIN/SUBSYSTEMS_AND_COMPONENTS/07-60_BUILD_AUTOMATION/) - CI/CD pipeline

[↑ Back to top](#table-of-contents)

---

## 08 - NONCONFORMANCE & DEVIATION

**NCR Handling, Deviation Management, Problem Resolution**

📁 [08-NONCONFORMANCE_AND_DEVIATION Directory](./08-NONCONFORMANCE_AND_DEVIATION/)

Non-conformance reporting, deviation management, and problem resolution procedures for software issues.

### Section Overview
- 📄 [README.md](./08-NONCONFORMANCE_AND_DEVIATION/README.md) - NCR section overview

### NCR Process
1. Identify non-conformance
2. Document using ncr.schema.json format
3. Root cause analysis
4. Propose corrective action
5. Implement and verify
6. Close NCR with approval

### Deviation Management
Design deviations from requirements require formal approval and safety assessment per DO-178C.

[↑ Back to top](#table-of-contents)

---

## 09 - SIDE-CAR META

**Metadata Sidecar Templates and Validators**

📁 [09-SIDE-CAR_META Directory](./09-SIDE-CAR_META/)

Sidecar metadata templates, schema definitions, and validation tools for document management and traceability.

### Structure
- 📁 **templates/** - Document metadata templates
  - document.meta.yaml - Standard document sidecar template
- 📁 **validators/** - Metadata validation scripts
  - validate-meta-consistency.py - Sidecar consistency checker

### Purpose
Ensures all documents have proper metadata sidecars for:
- Traceability to requirements
- Version control
- Approval tracking
- Checksum verification (SHA-256)
- Effectivity tracking

[↑ Back to top](#table-of-contents)

---

## 10 - EXAMPLES & RECORDS

**Example Artifacts, Configuration Records, and Templates**

📁 [10-EXAMPLES_AND_RECORDS Directory](./10-EXAMPLES_AND_RECORDS/)

Example configurations, test records, partition configurations, and artifact templates for Core OS development.

### Contents
- Example partition configurations
- Sample test case records
- Configuration templates
- Example health metric definitions
- Sample NCR records
- Template procedures

[↑ Back to top](#table-of-contents)

---

## BASELINES

**Configuration Baselines and Release Records**

📁 [BASELINES Directory](./BASELINES/)

Configuration baselines, release records, and version control information for Core OS releases.

### Purpose
- Track major configuration baselines
- Release history and change logs
- Baseline verification records
- Configuration management records

[↑ Back to top](#table-of-contents)

---

## Supporting Artifacts

### Schemas Directory
📁 [schemas/](./schemas/) - JSON schema definitions

- 📄 [core-os.schema.json](./schemas/core-os.schema.json) - Core OS configuration schema
- 📄 [partition.schema.json](./schemas/partition.schema.json) - ARINC 653 partition attributes
- 📄 [sw-component.schema.json](./schemas/sw-component.schema.json) - DO-178C component metadata
- 📄 [repair-record.schema.json](./schemas/repair-record.schema.json) - Defect tracking
- 📄 [health-metric.schema.json](./schemas/health-metric.schema.json) - Health monitoring definitions
- 📄 [ncr.schema.json](./schemas/ncr.schema.json) - Non-conformance reports
- 📄 [test-case.schema.json](./schemas/test-case.schema.json) - Test specifications with traceability

### CI Directory
📁 [ci/](./ci/) - Continuous integration and validation scripts

- 📄 [validate_ata42-core.sh](./ci/validate_ata42-core.sh) - Structure and schema validation
- 📄 [run_all_tests.sh](./ci/run_all_tests.sh) - Test orchestration
- 📄 [generate_traceability.py](./ci/generate_traceability.py) - Requirements traceability matrix generation
- 📄 [check_do178c_compliance.py](./ci/check_do178c_compliance.py) - DO-178C objectives compliance check
- 📄 [package_certification_evidence.sh](./ci/package_certification_evidence.sh) - Certification evidence packaging

[↑ Back to top](#table-of-contents)

---

## Navigation Tips

### Breadcrumb Pattern
Each section README contains breadcrumbs at the top:
```
← [O-OPERATING_SYSTEMS](../../README.md) ← [ATA_42 Core OS](../README.md)
```

### Section Navigation
Each major section has "Next/Previous" links at the bottom to move through sections in logical order.

### Internal Links
Use Ctrl+Click (or Cmd+Click on Mac) to open links in GitHub's web interface.

### Search
Use GitHub's search feature (press `/` key) to find specific content within the repository.

---

[🏠 Back to Main README](./README.md) | [📚 Framework Documentation](../../README.md) | [🔝 Top](#ata-42---integrated-modular-avionics-core-software---navigation)

---

*Last Updated: 2025-10-30*  
*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
