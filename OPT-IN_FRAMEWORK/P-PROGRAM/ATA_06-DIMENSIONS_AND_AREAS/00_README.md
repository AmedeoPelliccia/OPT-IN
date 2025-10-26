# ATA 06 Governance: Dimensions and Areas
**Scope:** This chapter provides the single source of truth for all definitive dimensions, areas, volumes, and ground interface geometry for the AMPEL360 BWB aircraft.

## Datums, Axes, and Units
- **Origin:** The aircraft master origin is at Fuselage Station Zero (FS0), Buttock Line Zero (BL0), and Water Line Zero (WL0).
- **Axes:** The coordinate system is defined as:
  - **X:** Fuselage Station (FS), positive (+) forward.
  - **Y:** Buttock Line (BL), positive (+) right, looking forward.
  - **Z:** Water Line (WL), positive (+) up.
- **Units:** The primary unit system is SI (meters, kilograms). Imperial units (feet, pounds) are provided as exact, derived conversions for reference only.

## Methods and Standards
All calculated areas and volumes are derived using certified methods, as referenced in the `INDEX.meta.yaml`:
- **Reference Area (S_ref):** Method BWB-REF-01 (Exposed wing + body-blend adders).
- **Wetted Area (S_wet):** Method BWB-WET-01 (Triangulated surface area from CAD master).
- **Pressurized Volume (V_press):** Method VOL-PRS-01 (Sealed pressure envelope from CAD).

## Quality Assurance and Validation
- **Checksums:** Every controlled file (CAD, data, etc.) has a SHA256 checksum recorded in the root `INDEX.meta.yaml`.
- **Validation:** All repository changes are validated by the CI script at `ci/validate_ata06.sh`, which enforces schema compliance, checksum integrity, and filename conventions.

## Change Control
- **Revisioning:** All files and data follow Semantic Versioning (MAJOR.MINOR.PATCH).
- **Traceability:** Each data change requires an update to its revision number and `effective_date`. All geometry is traceable to the source `cad_master` revision specified in the `INDEX.meta.yaml`.
