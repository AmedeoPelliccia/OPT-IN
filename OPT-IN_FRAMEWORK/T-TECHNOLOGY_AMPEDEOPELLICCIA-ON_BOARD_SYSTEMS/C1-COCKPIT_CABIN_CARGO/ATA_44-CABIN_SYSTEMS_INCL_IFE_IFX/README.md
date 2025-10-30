---
traceability:
  ata_refs:
    - id: "ATA_11"
      title: "ATA 11 - PLACARDS AND MARKINGS"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_11-PLACARDS_AND_MARKINGS/00_README.md"
    - id: "ATA_15"
      title: "ATA 15 - AIRCREW INFORMATION"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_15-AIRCREW_INFORMATION/00_README.md"
    - id: "ATA_16"
      title: "ATA 16 - CHANGE OF ROLE"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_16-CHANGE_OF_ROLE/00_README.md"
    - id: "ATA_25"
      title: "ATA 25 - EQUIPMENT / FURNISHINGS"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_25-EQUIPMENT_FURNISHINGS/00_README.md"
    - id: "ATA_33"
      title: "ATA 33 - LIGHTS"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_33-LIGHTS/00_README.md"
    - id: "ATA_35"
      title: "ATA 35 - OXYGEN"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_35-OXYGEN/00_README.md"
    - id: "ATA_46"
      title: "ATA 46 - INFORMATION SYSTEMS"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/C1-COCKPIT_CABIN_CARGO/ATA_46-INFORMATION_SYSTEMS/00_README.md"
    - id: "ATA_51"
      title: "ATA 51 - STANDARD PRACTICES AND STRUCTURES"
      url: "https://github.com/AmedeoPelliccia/OPT-IN/blob/main/OPT-IN_FRAMEWORK/T-TECHNOLOGY_AMPEDEOPELLICCIA-ON_BOARD_SYSTEMS/A-AIRFRAME/ATA_51-STANDARD_PRACTICES_AND_STRUCTURES-GENERAL/00_README.md"

---

# ATA 44 — CABIN SYSTEMS (incl. IFE / IFX)

## Description
Cabin management, In-Flight Entertainment (IFE) / In-Flight Experience (IFX), passenger service systems and associated cabin interfaces. Covers hardware, software, installation, testing, inspection, and regulatory traceability.

## Scope
This chapter contains governance, procedures, data and acceptance criteria for:
- Cabin layout and furnishings
- Cabin environmental and pressurization interfaces
- Emergency oxygen, fire detection and suppression within the cabin
- Galley and service systems
- IFE / IFX hardware and software baselines, SW load procedures, HIL functional tests and cyber notes
- Wiring, harnesses, EMC and LSP for cabin systems
- Inspection, NDT and qualification plans for cabin systems

## Key regulatory references
- ARINC 628 (IFE/IFX interfaces)
- RTCA DO-160 (environmental)
- DO-178C (IFE software)
- DO-254 (IFE hardware where applicable)
- FAA 14 CFR Part 25 / EASA CS-25 (cabin safety)
- ARP4754A / ARP4761 (systems and safety assessment)

## Governance & Owners
- Governance owner: Cabin Systems Engineering  
- Review board: [Cabin Systems, Airworthiness, Materials & Process, NDT, Cybersecurity]

## Effectivity
Default: AMPEL360 baseline (MSN: ALL). Specific effectivity by MSN, production block, option code must be recorded in `INDEX.meta.yaml` and per-document sidecars.

## Mandatory chapter conventions
- All documents MUST include a `.meta.yaml` sidecar in `15-SIDE-CAR_META/templates` following the OPT-IN template.
- Use ISO 8601 dates (`YYYY-MM-DD`) in sidecars and records.
- All attachments and NDT files must include SHA-256 file hashes in sidecars or repair-records.
- All composite or conductive repairs must reference ATA-51 methods and LSP restoration procedures.
- IFE/IFX software artifacts must reference DO-178C evidence or provide a documented COTS acceptance plan.

## High-priority technical topics (must be explicit)
- IFE/IFX SW/HW baselines, HIL test reports, SW load/rollback procedures and cyber isolation rules.
- HVAC, HEPA, potable water and ventilation acceptance and M&P.
- Seat/furnishing attachment loads and dynamic test evidence.
- Fire detection/suppression zones, galley suppression servicing and flammability evidence (25.853).
- Wiring separation, EMC per DO-160, connector/harness specs and LSP continuity for conductive trims and racks.
- NDT regimes for interior structure, fittings and IFE rack mounts; numeric acceptance criteria.
- Materials M&P covering upholstery, adhesives and oxygen compatibility.
- Nonconformance and engineering disposition flow for flight-critical cabin items.

## Cross references
- ATA 11, ATA 15, ATA 16, ATA 25, ATA 33, ATA 35, ATA 46, ATA 51 (composite repair), DO-178C, DO-254, DO-160

## Audit and traceability
- Every repair or change affecting safety must include: repair-record, material CoC, cure/thermocouple logs, NDT reports with file hashes, FEA or test evidence (if required), and approvals recorded in sidecars.
- CI validators (`ci/validate_ata44.sh`) must check sidecars, schema conformance, CSV units and presence of SHA-256 placeholders.

## Suggested immediate deliverables
- `INDEX.meta.yaml`
- `ci/validate_ata44.sh`
- Schema skeletons: `cabin-system.schema.json`, `ife-ifx.schema.json`, `repair-record.schema.json`, `inspection.schema.json`
- Key PROC/DATA skeletons: IFE SW load, IFE HIL functional test, galley suppression service, seat attachment limits, fireproofing/flame tests, wiring/EMC checks
- Example records for IFE SW baseline and cabin repair-records

## Next steps
1. Create `INDEX.meta.yaml` and schema skeletons.  
2. Populate sidecar templates in `15-SIDE-CAR_META/templates`.  
3. Create CI `ci/validate_ata44.sh` to enforce the chapter conventions.  
4. Populate critical procedures and DATA tables listed above.


