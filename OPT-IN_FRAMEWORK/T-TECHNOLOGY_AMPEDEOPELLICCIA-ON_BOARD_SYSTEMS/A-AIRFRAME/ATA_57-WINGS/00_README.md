# ATA 57: WINGS

**CRITICAL STRUCTURAL MANDATE:** This chapter contains all procedures, specifications, and guidelines for **wing structure, control surfaces, fuel integration, and load-bearing repairs**. Any modification to primary load paths requires FEA substantiation and engineering approval.

## Scope

This chapter governs the complete wing system from root rib to wing tip, including:
- **Primary structure:** wing box, spars, ribs, skin panels
- **Secondary structure:** leading edge, trailing edge, fairings
- **Control surfaces:** flaps, slats, ailerons, spoilers, trim tabs
- **Integration systems:** fuel tanks, ice protection, lightning strike protection
- **Actuation:** actuators, hinges, bearings, linkages
- **Repairs:** damage tolerance, composite/metallic repair procedures

## Critical Zones & Safety

- **Load Paths:** Primary load paths (spar caps, wing box) require FEA validation for any repair or modification
- **Fuel Zones:** All repairs within fuel tank boundaries must use fuel-compatible materials with Certificate of Conformity (CoC)
- **LSP Zones:** Lightning Strike Protection restoration mandatory with 4-wire continuity testing
- **NDT Requirements:** Ultrasonic C-scan, shearography, thermography, and eddy current per inspection intervals
- **Access Restrictions:** Manual handling limits and safe work practices for large-scale repairs documented in each procedure

## Governance

- **Damage Tolerance Philosophy:** All wing structures follow safe-life or damage-tolerant design principles per 57-01-02
- **Repair Authority:** Only approved repair procedures (PROC_57-13-*) may be used; unapproved repairs require Engineering Order
- **Materials Traceability:** All materials require M&P certification and batch traceability per ATA 15-01
- **Test Requirements:** Full-scale or representative structural test required for load path restoration
- **Quality Control:** SPC logs, tamper-proof timestamps, process control mandatory for all critical repairs
- **Cross-References:** 
  - ATA-20 (Standard Practices - Airframe)
  - ATA-51 (Composite Bonded Repairs)
  - ATA-53 (Fuselage structural interfaces)
  - ATA-55 (Stabilizers - similar structural principles)
  - ATA-72/76 (Engine interfaces and pylons)
  - ATA-28 (Fuel system integration)

## Numeric Acceptance Criteria

All repairs and inspections must meet documented acceptance criteria:
- **Crack limits:** Maximum allowable crack length before repair required
- **Delamination:** Allowable delamination area by location
- **C-scan criteria:** Void fraction limits for composite structures
- **Bond strength:** Minimum peel and tensile values for bonded repairs
- **Wear limits:** Hinge/pin wear tolerance, fastener hole elongation
- **Torque retention:** Minimum % retention for critical fasteners
- **Leak rates:** Maximum allowable fuel leak rates
- **Thickness limits:** Spar cap residual thickness minima
- **Corrosion depth:** Allowable pit depth before repair/replacement

## Human Factors

- **Access:** All procedures include access requirements and required openings
- **Manual handling:** Weight limits and lifting requirements specified
- **Tool requirements:** GSE, tooling, and calibration intervals documented
- **Cure control:** Thermocouple placement, vacuum/oven qualifications for composite repairs
- **Safety practices:** FOD prevention, LOTO procedures, confined space entry protocols

## Document Naming Convention

- **DESC_** Description/Philosophy documents
- **PROC_** Procedures (inspection, repair, removal/installation)
- **DATA_** Data tables (specs, limits, test results)
- **TESTPLAN_** Test and qualification plans
- **DIAG_** Diagrams and drawings
- **EXAMPLE_** Example records and templates

## Audit & Compliance

All documentation includes:
- **Metadata sidecars:** `.meta.yaml` files with traceability, approvals, checksums
- **Process control:** Batch traceability, SPC monitoring, tamper-proof timestamps
- **Minimum record fields:** As defined in schemas/repair-record.schema.json
- **Validation:** CI checks via `ci/validate_ata57.sh`
- **Digital passport:** Integration with ATA-95 for complete traceability

## Directory Structure

```
/ATA_57-WINGS
├── 00_README.md (this file)
├── INDEX.meta.yaml
├── ci/
│   └── validate_ata57.sh
├── schemas/
│   ├── repair-record.schema.json
│   ├── damage-classification.schema.json
│   ├── wing-spec.schema.json
│   └── inspection.schema.json
├── 01-GENERAL/
├── 02-WING-BOX_AND-PRIMARY_STRUCTURE/
├── 03-SKIN-PANELS_AND-SPLICES/
├── 04-LEADING_EDGE_AND-ICE_PROTECTION/
├── 05-TRAILING_EDGE/
├── 06-FLAPS-SLATS_AND-ACTUATION/
├── 07-CONTROL_SURFACES_AILERONS_AND-TRIM/
├── 08-SPOILERS_SPEEDBRAKES_AND-LOAD_INTERACTIONS/
├── 09-FUEL-TANKS_AND-INTEGRATION/
├── 10-FASTENERS_FITS_AND-JOINTS/
├── 11-NDT_AND-INSPECTION/
├── 12-LIGHTNING-STRIKE-PROTECTION_AND-BONDING/
├── 13-REPAIR-GUIDELINES_AND-REPAIRABILITY/
├── 14-QUALIFICATION_AND-TEST-PLANS/
├── 15-MATERIALS_M_AND_P_TRACEABILITY/
├── 16-NONCONFORMANCE_AND-DEVIATION/
├── 17-ENVIRONMENTAL_AND-OPERATING_LIMITS/
├── 18-DIAGRAMS_AND-REFERENCE_DATA/
├── 19-SIDE-CAR_META/
│   └── templates/
└── 20-EXAMPLES_AND_RECORDS/
```

## Mandatory Requirements Summary

1. **FEA Substantiation:** Required for any repair altering primary load paths
2. **Test Coupons:** Representative specimens for load path repairs
3. **Full-Scale Testing:** Required for structural repairs restoring primary load paths
4. **LSP Continuity:** 4-wire resistance testing, documented resistance targets, calibrated test equipment
5. **Fuel Compatibility:** Fuel-compatible M&P, bonding continuity, pressure/leak tests, traceable CoC for seals
6. **GSE & Tooling:** Specifications, thermocouple placement for cures, vacuum/oven qualifications, calibration intervals
7. **Process Control:** SPC logs, tamper-proof timestamps, batch traceability
8. **Minimum Record Fields:** Per repair-record.schema.json - station/span, spar/rib IDs, laminate schedule, skin ply book, fuel tank ID, actuator serials/hours, fastener torque, NDT file hashes, photo hashes, effectivity (MSN/config), ISO dates, checksums

---

**Authority:** Structures Engineering, Airworthiness Engineering  
**Review Board:** Structures, Materials & Processes, Flight Test, Quality Assurance  
**Effective Date:** 2025-10-27  
**Revision:** 1.0.0
