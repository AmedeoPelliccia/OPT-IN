# ATA 13 - HARDWARE AND GENERAL TOOLS

## Master Catalog and Management System for AMPEL360 Hardware and General Tools

This chapter provides a comprehensive catalog and management system for all non-specialized hardware and common tools required for the maintenance and servicing of the AMPEL360. Unlike ATA 03, which covers specialized GSE, ATA 13 focuses on standard, commercially available items (fasteners, consumables) and general-purpose tooling.

**Governance Principles:**
*   **Catalog-Driven:** The core of this chapter is a series of catalogs that provide definitive part numbers, specifications, and supplier information.
*   **Traceability:** While items are "general," their application is not. Procedures link directly to specific hardware and tools to ensure the correct item is used for a given task.
*   **Inventory Management:** The structure supports inventory control by defining reorder points, shelf life, and interchangeability.
*   **Tool Control:** General tools are managed through a master catalog and linked to calibration and control programs.

---

## Directory Structure

```
/I-INFRASTRUCTURES
└── /ATA_13-HARDWARE_AND_GENERAL_TOOLS
    ├── 00_README.md
    ├── INDEX.meta.yaml
    ├── /01-HARDWARE_CATALOGS
    │   ├── /01-FASTENERS
    │   │   ├── CAT_Standard-Bolts-MS-NAS.md
    │   │   ├── CAT_Standard-Screws-AN-NAS.md
    │   │   └── CAT_Hi-Lok-Fasteners.md
    │   ├── /02-STRUCTURAL_COMPONENTS
    │   │   ├── CAT_Standard-Rivets.md
    │   │   └── CAT_Standard-Bearings.md
    │   ├── /03-ELECTRICAL_COMPONENTS
    │   │   ├── CAT_Standard-Connectors-MIL-DTL-38999.md
    │   │   ├── CAT_Standard-Wire-And-Cable.md
    │   │   └── CAT_Standard-Circuit-Breakers.md
    │   └── /04-FLUID_FITTINGS
    │       └── CAT_Standard-AN-MS-Fittings.md
    ├── /02-CONSUMABLES_CATALOG
    │   ├── CAT_Adhesives-And-Sealants.md
    │   ├── CAT_Lubricants-Greases-And-Oils.md
    │   └── CAT_Cleaning-Agents-And-Solvents.md
    ├── /03-GENERAL_TOOLS_CATALOG
    │   ├── CAT_Hand-Tools-Standard.md
    │   ├── CAT_Pneumatic-Tools.md
    │   └── CAT_Torque-Wrenches-General-Use.md
    ├── /04-INVENTORY_AND_CONTROL
    │   ├── /01-INTERCHANGEABILITY_DATA
    │   │   └── DATA_Part-Number-Cross-Reference-Table.csv
    │   ├── /02-SHELF_LIFE_PROGRAM
    │   │   └── PROC_Shelf-Life-Control-Procedure.md
    │   └── /03-TOOL_CONTROL_PROGRAM
    │       ├── PROC_Tool-Control-And-FOD-Prevention.md
    │       └── /calibration
    │           └── schedule.csv
    └── /05-SAFETY_DATA
        └── /safety_data_sheets
            ├── SDS_MIL-PRF-23377_Primer.md
            └── SDS_BMS-3-26_Grease.md
```

---

## Applicable Standards & Regulations

- NAS (National Aerospace Standards)
- MS (Military Standards)
- AN (Air Force-Navy Aeronautical Standards)
- SAE AS (Society of Automotive Engineers Aerospace Standards)
- MIL-SPEC (Military Specifications)
- SAE AMS (Aerospace Material Specifications)

## Related ATA Chapters

- ATA 03: SUPPORT INFORMATION (Ground Support Equipment - GSE)
- ATA 20: STANDARD PRACTICES - AIRFRAME
- ATA 05: TIME LIMITS / MAINTENANCE CHECKS
- ATA 70: STANDARD PRACTICES - ENGINE

---

## Navigation

[↑ I-INFRASTRUCTURES](../README.md)

### Related Sections

- [ATA 02 - OPERATIONS INFORMATION](../ATA_02-OPERATIONS_INFORMATION/README.md)
- [ATA 03 - SUPPORT INFORMATION](../ATA_03-SUPPORT_INFORMATION/00_README.md)
- [ATA 10 - PARKING, MOORING, STORAGE & RETURN TO SERVICE](../ATA%2010%20-%20PARKING,%20MOORING,%20STORAGE%20&%20RETURN%20TO%20SERVICE/README.md)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
