# ATA-72 ENGINE - Quick Reference Index

## Navigation Links

### Top-Level Documentation
- [Main README](./README.md) - Original chapter overview
- [Chapter README](./72-00-00-00_README.md) - Detailed chapter documentation
- [Structure Summary](./STRUCTURE_SUMMARY.md) - Complete structure documentation
- [Directory Tree](./72-00-00-02_DIRECTORY_TREE.txt) - File listing
- [Metadata](./72-00-00-01_META.json) - Chapter metadata

## Chapter-Level Folders

### Documentation & Planning
- [OVERVIEW](./OVERVIEW/) - System descriptions, architecture, operational envelope
- [REQUIREMENTS](./REQUIREMENTS/) - ALR, SR, SSR, CR, RTM, regulations
- [DESIGN](./DESIGN/) - Engine architecture, ICDs, specifications

### Engineering & Analysis
- [ENGINEERING](./ENGINEERING/) - Analyses, CFD, FEA, MBSE models
- [INTERFACES](./INTERFACES/) - Mechanical, electrical, fuel, data bus interfaces

### Safety & Certification
- [SAFETY](./SAFETY/) - FHA, PSSA, SSA, HAZOP, FMEA
- [CERTIFICATION](./CERTIFICATION/) - Compliance matrices, evidence

### Testing & Production
- [V_AND_V](./V_AND_V/) - Verification & validation plans, tests
- [PROTOTYPING](./PROTOTYPING/) - Test rigs, benches, prototypes
- [PRODUCTION_PLANNING](./PRODUCTION_PLANNING/) - FAI, PPAP, suppliers, QA

### Operations & Management
- [OPERATIONS_AND_MAINTENANCE](./OPERATIONS_AND_MAINTENANCE/) - AMM, EMM, IPC, TSM
- [ASSETS_MANAGEMENT](./ASSETS_MANAGEMENT/) - Configuration control, lifecycle
- [META_GOVERNANCE](./META_GOVERNANCE/) - Templates, schemas, validators, CI/CD

## Baseline BL_001

### Subsystems Quick Links

#### 1. 72-00-GENERAL
[72-00-GENERAL](./BASELINES/BL_001/72-00-GENERAL/)
- Components: 8 (6 HW + 2 SW)
- Key: Engine assembly, cowling, mounting, fire detection

#### 2. 72-10-ENGINE_CORE_TURBOMACHINERY
[72-10-ENGINE_CORE_TURBOMACHINERY](./BASELINES/BL_001/72-10-ENGINE_CORE_TURBOMACHINERY/)
- Components: 8 (6 HW + 2 SW)
- Key: Rotor, compressor, combustor, turbine

#### 3. 72-20-LUBRICATION_BEARING
[72-20-LUBRICATION_BEARING](./BASELINES/BL_001/72-20-LUBRICATION_BEARING/)
- Components: 8 (6 HW + 2 SW)
- Key: Oil system, pumps, coolers, filters

#### 4. 72-30-FUEL_SYSTEM
[72-30-FUEL_SYSTEM](./BASELINES/BL_001/72-30-FUEL_SYSTEM/)
- Components: 8 (6 HW + 2 SW)
- Key: FCU, pumps, manifolds, leak detection

#### 5. 72-40-IGNITION_START
[72-40-IGNITION_START](./BASELINES/BL_001/72-40-IGNITION_START/)
- Components: 8 (6 HW + 2 SW)
- Key: Igniters, starter, variable geometry

#### 6. 72-50-ENGINE_CONTROL_FADEC ⭐
[72-50-ENGINE_CONTROL_FADEC](./BASELINES/BL_001/72-50-ENGINE_CONTROL_FADEC/)
- Components: 7 (6 HW + 1 SW)
- Key: **CRITICAL** - FADEC LRU, control software (DO-178C Level A)

## Component Numbering Reference

### Hardware Components (42 total)

#### 72-00-GENERAL (720001-720006)
- 720001: ENGINE_ASSEMBLY
- 720002: COWLING
- 720003: ENGINE_MOUNTING
- 720004: FLUID_HARNESSES
- 720005: FIRE_DETECTION
- 720006: THERMAL_PROTECTION

#### 72-10-ENGINE_CORE (721001-721006)
- 721001: ROTOR_ASSEMBLY
- 721002: COMPRESSOR
- 721003: COMBUSTOR
- 721004: TURBINE
- 721005: SEALS_BEARINGS
- 721006: BALANCING_HW

#### 72-20-LUBRICATION (722001-722006)
- 722001: OIL_TANK
- 722002: OIL_PUMPS
- 722003: OIL_COOLERS
- 722004: FILTERS_VALVES
- 722005: OIL_SENSORS
- 722006: OIL_SEALS

#### 72-30-FUEL_SYSTEM (723001-723006)
- 723001: FCU
- 723002: FUEL_PUMPS
- 723003: FUEL_MANIFOLDS
- 723004: FUEL_HEATERS
- 723005: REFUEL_INTERFACES
- 723006: LEAK_DETECTION_HW

#### 72-40-IGNITION_START (724001-724006)
- 724001: IGNITERS
- 724002: STARTER_SYSTEM
- 724003: VARIABLE_GEOMETRY
- 724004: IGNITION_PSU
- 724005: IGNITION_HARNESS
- 724006: ANTI_ICE_HW

#### 72-50-ENGINE_CONTROL_FADEC (725001-725006)
- 725001: FADEC_LRU
- 725002: FADEC_POWER
- 725003: AVIONICS_GATEWAY
- 725004: COOLING_SHIELDING
- 725005: MAINTENANCE_PORTS
- 725006: REDUNDANCY_HW

### Software Components (12 total)

#### 72-00-GENERAL Software
- **720010**: ENGINE_SUPERVISOR_SW (DO-178C A/B)
- **720011**: HEALTH_LOGGER_SW (DO-178C B)

#### 72-10-ENGINE_CORE Software
- **721011**: PERFORMANCE_MODEL_SW (DO-178C B)
- **721012**: ROTOR_HEALTH_SW (DO-178C B)

#### 72-20-LUBRICATION Software
- **722011**: LUBE_CONTROLLER_SW (DO-178C B)
- **722012**: OIL_HEALTH_SW (DO-178C B)

#### 72-30-FUEL_SYSTEM Software
- **723011**: FUEL_CONTROL_SW (DO-178C A) ⚠️ CRITICAL
- **723012**: LEAK_DETECTION_SW (DO-178C A/B)

#### 72-40-IGNITION_START Software
- **724011**: START_SEQUENCE_SW (DO-178C A)
- **724012**: VGV_CONTROL_SW (DO-178C A/B)

#### 72-50-FADEC Software
- **725011**: FADEC_SW (DO-178C A) ⭐ CRITICAL

## Key Interface Control Documents (ICDs)

Located in: [DESIGN/ICDs/](./DESIGN/ICDs/)

- 72-00-04-10: ICD to ATA-24 (Electrical Power)
- 72-00-04-11: ICD to ATA-28 (Fuel System)
- 72-00-04-12: ICD to ATA-36 (Bleed Air)
- 72-00-04-13: ICD to ATA-54 (Pylons/Nacelles)
- 72-00-04-14: ICD to ATA-71 (Power Plant)
- 72-00-04-15: ICD to FMS (Flight Management)

## Compliance Matrices

Located in: [CERTIFICATION/compliance_matrices/](./CERTIFICATION/compliance_matrices/)

- 72-00-10-10: FAR33 Compliance (Engine certification)
- 72-00-10-11: CS-E Compliance (EASA engine)
- 72-00-10-12: FAR25 Interface (Aircraft interface)
- 72-00-10-13: DO-160 Compliance (Environmental)
- 72-00-10-14: DO-178C Compliance (Software)
- 72-00-10-15: DO-254 Compliance (Hardware)

## Critical Components (Highest Priority)

### Level A Software (Safety-Critical)
1. **725011 - FADEC_SW** ⭐
   - Full-Authority Digital Engine Control
   - Location: BASELINES/BL_001/72-50-ENGINE_CONTROL_FADEC/SUBSYSTEMS_AND_COMPONENTS/72-50-11_FADEC_SW/
   
2. **723011 - FUEL_CONTROL_SW**
   - Fuel Control Unit Software
   - Location: BASELINES/BL_001/72-30-FUEL_SYSTEM/SUBSYSTEMS_AND_COMPONENTS/72-30-11_FUEL_CONTROL_SW/

3. **724011 - START_SEQUENCE_SW**
   - Engine Start Sequence Control
   - Location: BASELINES/BL_001/72-40-IGNITION_START/SUBSYSTEMS_AND_COMPONENTS/72-40-11_START_SEQUENCE_SW/

## Search Tips

### Finding Components
- All hardware components: `**/XX-YY-ZZ_*_*/` where ZZ is 01-06
- All software components: `**/XX-YY-1Z_*_SW/` where Z is 0-2
- Source code: `**/ENGINEERING/*_source_code/`

### Finding Documentation Types
- Requirements: `**/*_requirements.md` or `**/RTM.csv`
- Safety analyses: `**/SAFETY/*` or `**/FHA.md`, `**/FMEA.csv`
- Test plans: `**/V_AND_V/test_plans/*`
- Metadata: `**/*_META.json` or `**/*_META.yaml`

### Finding by ATA Code
- Chapter level: Files starting with `72-00-`
- Subsystem level: Files starting with `72-{10,20,30,40,50}-`
- Component level: Files starting with `72-YY-ZZ-` (3-digit subsystem + component)

## Validation & CI/CD

### Validators
- Structure: `META_GOVERNANCE/validators/72-00-13-30_structure_validator.py`
- Metadata: `META_GOVERNANCE/validators/72-00-13-31_metadata_validator.py`
- Compliance: `META_GOVERNANCE/validators/72-00-13-32_compliance_checker.py`

### CI/CD
- GitLab CI: `META_GOVERNANCE/CI_CD/72-00-13-40_gitlab_ci.yml`
- Build scripts: `META_GOVERNANCE/CI_CD/72-00-13-41_build_scripts/`
- Deployment: `META_GOVERNANCE/CI_CD/72-00-13-42_deployment_scripts/`

## Statistics

- **Total Files**: 803
- **Total Directories**: 847
- **Subsystems**: 6
- **Hardware Components**: 42
- **Software Components**: 12
- **Total Components**: 54
- **DO-178C Level A Software**: 3
- **DO-178C Level B Software**: 6
- **DO-178C Level A/B Software**: 3

---

*Quick Reference Index for ATA-72 ENGINE*  
*Generated: 2025-10-31*  
*Version: 1.0.0*  
*Status: Initial Baseline (BL_001)*
