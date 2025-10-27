# ATA 56 — WINDOWS

## Overview

This chapter governs all aspects of aircraft window systems including cockpit windshields, cabin windows, and door windows. It encompasses structural integrity, optical quality, environmental protection, heating systems, and maintenance procedures for all transparent panes and their associated frames, seals, and mounting hardware.

## Scope & Governance

**Regulatory Basis:**
- FAA Part 25.773 — Pilot Compartment View
- FAA Part 25.775 — Windshields and Windows
- FAA Part 25.783 — Fuselage Doors (window integration)
- SAE AS25936 — Transparent Enclosures for Aircraft
- RTCA DO-160 — Environmental Conditions and Test Procedures (for heated windows)

**Effectivity:** All AMPEL360 aircraft configurations (BWB and conventional variants)

**Ownership:**
- **Primary:** Structures Engineering
- **Supporting:** Materials & Processes, Systems Integration, Flight Test, Certification

## Key Features

### Window Types Covered
1. **Cockpit Windshields** — Multi-layer laminated glass with heating elements
2. **Cabin Windows** — Acrylic or stretched acrylic panes with dual-pane construction
3. **Door Windows** — Passenger and service door vision panels
4. **Inspection Windows** — Small access panels for visual inspection of systems
5. **Emergency Exit Windows** — Escape route transparent panels

### Critical Safety Elements
- **Structural Load Path:** Windows must withstand cabin pressurization (8.6 psi differential), bird strike (4 lb @ 250 KEAS), and thermal stress
- **Optical Quality:** Distortion limits per SAE AS25936 to ensure pilot visibility and passenger comfort
- **Heating Systems:** Anti-ice and defogging via embedded heating elements or blankets
- **Lightning Strike Protection:** Conductive coatings or embedded mesh with verified bonding
- **Seal Integrity:** Environmental sealing to prevent cabin pressure loss and moisture ingress

## Directory Structure

### 01-GENERAL
Scope, definitions, taxonomy, and applicability matrix for all window types across aircraft configurations.

### 02-PANES_AND-LAMINATES
Construction details, layering specifications, removal/replacement procedures, and delamination detection/repair methods.

### 03-SEALS_AND-FRAMES
Inspection and replacement procedures for seals, frame removal/refit instructions, and material specifications with cure schedules.

### 04-HEATING_AND-ANTI-ICE
Window heater systems, blanket specifications, continuity checks, repair procedures, and resistance limits.

### 05-OPTICS_AND-VISIBILITY
Optical inspection criteria, scratch acceptance limits, polishing/refurbishment procedures, and optical quality standards.

### 06-LOADS_AND-STRUCTURAL_INTERFACE
Load path analysis, attachment methods, frame reinforcement, bolt torque specifications, and fitting details.

### 07-NDT_AND-INSPECTION
General Visual Inspection (GVI), ultrasonic C-scan for laminate delamination, dye penetrant testing, eddy current inspection, and inspection intervals.

### 08-REPAIR_METHODS
Acrylic patch repairs, laminated glass edge repairs, approved repair materials, and Material & Process (M&P) specifications.

### 09-LIGHTNING_STRIKE_PROTECTION_AND-BONDING
LSP restoration procedures, continuity testing (4-wire method), and resistance limits for conductive coatings and embedded meshes.

### 10-QUALIFICATION_AND-TEST_PLANS
Window qualification and certification plans, test matrices, failure criteria, and acceptance standards.

### 11-MATERIALS_M_AND_P_TRACEABILITY
Material specifications, Certificate of Conformance (CofC) requirements, traceability procedures, and storage requirements.

### 12-NONCONFORMANCE_AND-DEVIATION
Nonconformance handling procedures, engineering disposition process, and NCR templates.

### 13-HUMAN_FACTORS_AND-ERGONOMICS
Optical requirements for crew visibility, operation forces, access limits, and ergonomic considerations.

### 14-DIAGRAMS_AND_REFERENCE_DATA
Exploded views, frame and laminate drawings, and reference tables for all window assemblies.

### 15-SIDE-CAR_META
Metadata templates for document and procedure sidecars ensuring traceability and version control.

### 16-EXAMPLES_AND_RECORDS
Example repair records, optical test logs, and NDT report samples demonstrating compliance documentation.

## Cross-References

### ATA Chapter Integration
- **ATA 20** — Standard Practices: Torque values, fastener specifications, general repair practices
- **ATA 51** — Structures General: Composite repair methods, structural analysis, FEA requirements
- **ATA 52** — Doors: Door window integration, emergency exit window coordination
- **ATA 53** — Fuselage: Window cutout reinforcement, pressure vessel interface, skin attachment
- **ATA 30** — Ice & Rain Protection: Anti-ice system integration
- **ATA 24** — Electrical Power: Heating element power supply and distribution

## Numeric Acceptance Criteria

### Optical Quality
- **Distortion:** < 2 arc-minutes deviation per SAE AS25936
- **Haze:** < 3% per ASTM D1003
- **Transmittance:** > 70% visible spectrum (400-700 nm)

### Structural Limits
- **Scratch Depth (Acrylic):** < 0.005 inch single face, < 0.008 inch through-thickness
- **Scratch Depth (Glass):** < 0.002 inch
- **Delamination:** < 0.25 inch diameter, no edge delamination > 0.125 inch

### Heating Systems
- **Heater Resistance:** 0.8-1.2 Ω per element (specific to PN)
- **Power Density:** 10-15 W/in² typical
- **Temperature Uniformity:** ± 10°C across heated area

### Seal Performance
- **Leakage Rate:** < 0.1 CFM at 8.6 psi differential
- **Torque Retention:** > 85% of initial torque after thermal cycling

### Lightning Strike Protection
- **Continuity Resistance:** < 0.003 Ω between bonding points (4-wire measurement)
- **Coating Resistance:** 1-10 Ω/square typical for ITO coatings

## Repair Philosophy

1. **Minor Damage (Field Repairable):**
   - Surface scratches within limits: polish and re-coat
   - Small delamination: edge seal with approved adhesive
   - Seal degradation: replace per procedure

2. **Major Damage (Shop Repair):**
   - Through-cracks: remove and replace pane
   - Extensive delamination: remove and replace or send to OEM
   - Frame damage: reinforcement or replacement per SRM

3. **FEA Required:**
   - Any cutout modification
   - Frame reinforcement changes
   - Attachment point additions/relocations

4. **Laminated-Composite Integration:**
   - Tie to ATA-51 for composite repair methods
   - Use approved core materials and surface preparation
   - Cure cycles per M&P specifications

## Quality Assurance

- **Traceability:** All window panes must have serial numbers traceable to manufacturing lot and certification test data
- **Testing:** Qualification per test plan (section 10) including bird strike, thermal cycling, pressure cycling
- **Inspection:** Regular GVI per section 07, detailed inspection per maintenance schedule
- **Documentation:** All repairs must be documented per section 16 examples with NDT file hashes

## Metadata & CI Requirements

- Every PROC and DATA file must have a `.meta.yaml` sidecar per templates in section 15
- `INDEX.meta.yaml` includes checksums for all schemas and critical documents
- CI validation via `ci/validate_ata56.sh` verifies:
  - Filename conventions (PREFIX_56-XX-XX_Title_revX.X.X_YYYYMMDD.ext)
  - Sidecar presence
  - Schema validation for JSON files
  - Cross-reference completeness

## Revision History

| Revision | Date       | Author              | Description                     |
|----------|------------|---------------------|---------------------------------|
| 1.0.0    | 2028-10-27 | Structures Engineering | Initial release - Complete ATA 56 structure |

---

**Navigation:**
- [↑ A-AIRFRAME](../README.md)
- [← ATA 55 - STABILIZERS](../ATA_55-STABILIZERS/README.md)
- [→ ATA 57 - WINGS](../ATA_57-WINGS/README.md)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
