# ATA 57: Wings

**CRITICAL SAFETY WARNING:** This chapter contains the Structural Repair Manual (SRM) data for the wing, which is the primary lifting surface and an integral part of the fuselage pressure vessel. Incorrect repair or maintenance can lead to catastrophic structural failure and loss of the aircraft. All procedures are mandatory.

## Scope and Structure
This chapter provides all technical data for the inspection, maintenance, and repair of the AMPEL360 BWB's wing structure. This includes:
-   **Wing Box:** Primary load-bearing structure, including spars, ribs, and skins.
-   **Leading & Trailing Edges:** Fixed and movable surfaces (slats, flaps).
-   **Control Surfaces:** Ailerons, elevons, flaperons, spoilers, and their mechanisms.
-   **Integrated Fuel Tanks:** The wing box structure forms the main fuel tanks.

## Governance
-   **Zero Deviation:** All repairs must follow the methodologies defined herein or in the referenced ATA 51. Damage to primary load-path elements requires a formal Engineering Disposition.
-   **Qualification Basis:** All standard repairs are substantiated by the damage tolerance philosophy and test plans defined in `/14-QUALIFICATION_AND_TEST_PLANS`.
-   **Traceability:** Every structural repair requires a complete, auditable Repair Record per the schema in `/schemas`.

## BWB Specific Considerations
-   **Integrated Wing/Fuselage:** The wing is not a separate component but is blended into the central body, forming part of the pressure vessel. Repairs must consider pressurization loads.
-   **Aeroelasticity:** The long, flexible wing structure is subject to aeroelastic effects. Maintaining stiffness and mass balance through correct repairs is flight-critical.
-   **Complex Control Surfaces:** The BWB uses multiple, coordinated control surfaces (elevons, flaperons). Rigging and balancing are critical for flight stability.
-   **Integrated Systems:** The wing houses fuel (SAF & H₂), landing gear, and extensive electrical and hydraulic systems. Repairs must not compromise these systems.

## Key Cross-References
-   **ATA 27:** Flight Control system, actuators, and rigging.
-   **ATA 28:** Fuel system components within the wing tanks.
-   **ATA 30:** Ice & Rain protection systems on the leading edge.
-   **ATA 51:** Defines the master methodologies for structural repair.
-   **ATA 55:** Defines the vertical stabilizers (winglets) that attach to the wingtips.

## Directory Structure

```
/ATA_57-WINGS
├── 00_README.md                    ← This file
├── INDEX.meta.yaml                 ← Cross-references and governance metadata
├── ci/
│   └── validate_ata57.sh           ← CI validation script
├── schemas/
│   ├── repair-record.schema.json   ← Repair record schema with wing-specific fields
│   ├── damage-classification.schema.json
│   ├── wing-spec.schema.json
│   └── inspection.schema.json
├── 01-GENERAL/                     ← Scope, governance, damage tolerance philosophy
├── 02-WING-BOX_AND-PRIMARY_STRUCTURE/ ← Wing box architecture, spar/rib inspections
├── 03-SKIN-PANELS_AND-SPLICES/     ← Metallic and composite skin repair procedures
├── 04-LEADING_EDGE_AND-ICE_PROTECTION/ ← Leading edge structure, slat tracks, ice protection
├── 05-TRAILING_EDGE/               ← Trailing edge structure and fairings
├── 06-FLAPS-SLATS_AND-ACTUATION/   ← Flap/slat rigging, track and carriage inspection
├── 07-CONTROL_SURFACES_AILERONS_AND-TRIM/ ← Elevon/flaperon description, balancing
├── 08-SPOILERS_SPEEDBRAKES_AND-LOAD_INTERACTIONS/ ← Spoiler panel inspection
├── 09-FUEL-TANKS_AND-INTEGRATION/  ← Fuel tank entry, sealant repair, leak checks
├── 10-FASTENERS_FITS_AND-JOINTS/   ← Wing skin fastener replacement
├── 11-NDT_AND-INSPECTION/          ← Ultrasonic inspection for wing box spars
├── 12-LIGHTNING-STRIKE-PROTECTION_AND-BONDING/ ← LSP restoration, continuity testing
├── 13-REPAIR-GUIDELINES_AND-REPAIRABILITY/ ← Composite skin bonded repair procedures
├── 14-QUALIFICATION_AND-TEST_PLANS/ ← Wing qualification plan, test matrix
├── 15-MATERIALS_M_AND_P_TRACEABILITY/ ← Material specs, CofC requirements
├── 16-NONCONFORMANCE_AND-DEVIATION/ ← NCR handling, engineering disposition
├── 17-ENVIRONMENTAL_AND-OPERATING_LIMITS/ ← Temperature/moisture limits for composites
├── 18-DIAGRAMS_AND-REFERENCE_DATA/  ← Wing master layout and stations
├── 19-SIDE-CAR_META/               ← Metadata templates for sidecars
│   └── templates/
│       └── document.meta.yaml
└── 20-EXAMPLES_AND_RECORDS/        ← Example repair records, test logs
```

## Key Requirements

### Repair Records (Schema: `repair-record.schema.json`)

All wing repairs must include the following wing-specific fields:
- **Wing Station:** Precise location on the wing (WS coordinate)
- **Spar ID:** Identification of affected spar (FRONT_SPAR, REAR_SPAR, etc.)
- **Rib ID:** Identification of affected rib
- **Surface:** Wing surface (UPPER, LOWER, LEADING_EDGE, TRAILING_EDGE)
- **Control Surface ID:** If applicable, elevon/flaperon/spoiler P/N and S/N
- **Post-Repair Leak Check:** Fuel tank leak check result (PASS/FAIL/N/A)
- **NDT File Hashes:** SHA-256 hashes of all NDT reports
- **Effectivity:** Manufacturer Serial Number (MSN) and configuration applicability

### Numeric Acceptance Criteria

The following numeric limits are defined in the DATA files and must be strictly enforced:
- **Spar Cap Residual Thickness:** Minimum allowable thickness after repair
- **Delamination Area:** Maximum allowable delaminated area for composites
- **Void Fraction:** Maximum void content percentage in bonded repairs
- **Fastener Torque Retention:** Min/max torque values for critical fasteners
- **Fuel Tank Leak Rate:** Maximum allowable leak rate
- **Hinge Wear:** Maximum allowable wear for control surface hinges

## Data Integrity

All changes are validated by the CI script `ci/validate_ata57.sh`, which enforces:
- Schema compliance
- Naming conventions (PROC_, DATA_, DESC_, DIAG_, TESTPLAN_)
- Metadata sidecar requirements
- Cross-reference validation

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
