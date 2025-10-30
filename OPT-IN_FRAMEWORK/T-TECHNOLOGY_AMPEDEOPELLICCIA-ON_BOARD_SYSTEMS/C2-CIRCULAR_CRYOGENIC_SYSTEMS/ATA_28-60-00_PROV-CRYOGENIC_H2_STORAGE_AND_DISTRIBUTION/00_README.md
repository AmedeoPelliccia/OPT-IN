# ATA 28-60-00 — CRYOGENIC H₂ STORAGE AND DISTRIBUTION
## Liquid Hydrogen Storage, Distribution, Thermal Management & Safety Systems

---

### Document Control
- **Chapter:** ATA 28-60-00 — Cryogenic H₂ Storage and Distribution
- **Effective Date:** 2025-10-30
- **Owner:** Cryogenic Systems Engineering
- **Review Board:** Airworthiness, Materials & Process, Safety Engineering, Propulsion Systems
- **Classification:** Controlled Technical Data
- **Status:** Active

---

## 1. Scope & Purpose

This chapter establishes **audit-ready, certifiable** procedures, specifications, and data for cryogenic liquid hydrogen (LH₂) storage and distribution systems, including:

- **Cryogenic Tank Systems**: Vacuum-insulated pressure vessels, inner/outer tank design, structural supports, fill/drain systems
- **Distribution Lines & Valves**: Cryogenic-rated piping, vacuum-jacketed lines, cryogenic valves, actuators, seals
- **Sensors & Controls**: Temperature sensors (RTDs, thermocouples), pressure transducers, liquid level sensors, flow meters
- **Safety & Relief Systems**: Pressure relief valves, burst discs, emergency vent systems, hydrogen detection, fire suppression
- **Thermal Management**: Multi-layer insulation (MLI), vacuum systems, boiloff control, heat leak analysis, thermal stratification
- **Materials & Processes**: 316L stainless steel, Inconel 718, CFRP composite tanks, material compatibility, traceability
- **Inspection & Maintenance**: Vacuum integrity testing, NDT for cryogenic welds, leak detection, boiloff monitoring
- **Pressure Testing**: Helium leak testing (≤ 1×10⁻⁶ mbar·L/s), hydrostatic testing, proof pressure verification

---

## 2. Key Focus Areas

### 2.1 Cryogenic Temperature Management
- Operating temperature: -253°C (-423°F) for LH₂
- Thermal contraction and material embrittlement considerations
- Boiloff rate management and heat leak minimization
- MLI effectiveness and vacuum maintenance

### 2.2 Hydrogen Safety
- Flammability range: 4-75% in air
- Very low ignition energy (~0.02 mJ)
- Invisible flame and high flame temperature
- Rapid evaporation and dispersion characteristics
- Embrittlement of metals (hydrogen-induced cracking)

### 2.3 Pressure Vessel Integrity
- Service pressure: 5-10 bar typical for LH₂ tanks
- Design pressure: 1.5× service pressure minimum
- Vacuum-insulated double-wall construction
- Structural analysis for thermal loads and cycling
- NDT requirements for all pressure-bearing welds

### 2.4 Material Compatibility
- 316L stainless steel for wetted components
- Inconel 718 for high-stress cryogenic applications
- CFRP composite overwrap for lightweight tank designs
- PTFE/Vespel seals for cryogenic service
- Oxygen-free copper for thermal conduction

---

## 3. Regulatory Compliance

All cryogenic H₂ systems, procedures, and test records comply with:

| Regulation / Standard | Applicability |
|----------------------|---------------|
| **[FAA 14 CFR Part 25.951](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.951)** | Fuel system general requirements |
| **[FAA 14 CFR Part 25.967](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.967)** | Fuel tank installations |
| **[EASA CS-25](https://www.easa.europa.eu/en/document-library/certification-specifications/cs-25-amendment-27)** | European certification specifications |
| **[SAE AIR6464](https://www.sae.org/standards/content/air6464/)** | Hydrogen fuel cell systems for aircraft |
| **[ISO 21010](https://www.iso.org/standard/69876.html)** | Cryogenic vessels — Gas/materials compatibility |
| **[ISO 13985](https://www.iso.org/standard/74650.html)** | Liquid hydrogen — Land vehicle fuel tanks |
| **[ASTM G93](https://www.astm.org/g0093-03r18.html)** | Cleaning methods for material/equipment used in oxygen service (also applicable to hydrogen) |
| **[SAE ARP1176](https://www.sae.org/standards/content/arp1176/)** | Qualification testing of fuel tank sealants |
| **[RTCA DO-160G](https://www.rtca.org/content/standards-guidance-materials)** | Environmental conditions and test procedures |
| **[ISO 16111](https://www.iso.org/standard/55706.html)** | Transportable gas storage devices — Hydrogen absorbed in reversible metal hydride |
| **[SAE AS8013](https://www.sae.org/standards/content/as8013/)** | Minimum performance standard for electric fuel quantity indicating systems |
| **[ASME BPVC Section VIII](https://www.asme.org/codes-standards/find-codes-standards/bpvc-section-viii-rules-construction-pressure-vessels-division-1)** | Rules for construction of pressure vessels |
| **[CGA G-5.4](https://www.cganet.com/)** | Standard for hydrogen piping systems at user locations |
| **[NFPA 2](https://www.nfpa.org/codes-and-standards/all-codes-and-standards/list-of-codes-and-standards/detail?code=2)** | Hydrogen technologies code |

---

## 4. Chapter Organization

```
ATA_28-60-00_PROV-CRYOGENIC_H2_STORAGE_AND_DISTRIBUTION/
├── 00_README.md (this file)
├── INDEX.meta.yaml (governance, effectivity, cross-references)
├── ci/validate_ata28.sh (automated validation)
├── schemas/*.schema.json (JSON schemas for data validation)
├── 01-GENERAL/ (scope, terminology, compliance matrix)
├── 02-TANK_SYSTEMS/ (tank design, specs, procedures, testing)
├── 03-DISTRIBUTION_LINES_AND_VALVES/ (piping, valves, actuators)
├── 04-SENSORS_AND_CONTROLS/ (instrumentation, control systems)
├── 05-SAFETY_AND_RELIEF_SYSTEMS/ (relief valves, H₂ detection, fire suppression)
├── 06-THERMAL_MANAGEMENT/ (insulation, vacuum systems, boiloff)
├── 07-INSPECTION_AND_MAINTENANCE/ (NDT, leak testing, maintenance procedures)
├── 08-NONCONFORMANCE_AND-DEVIATION/ (NCR handling, disposition)
├── 09-DIAGRAMS_AND_REFERENCE_DATA/ (system diagrams, reference data)
├── 10-SIDE-CAR_META/templates/ (metadata templates)
└── 11-EXAMPLES_AND_RECORDS/ (sample test reports, inspection logs)
```

---

## 5. Cross-References to Other ATA Chapters

### 5.1 Direct Dependencies
- **[ATA 21 - AIR CONDITIONING](../../C1-COCKPIT_CABIN_CARGO/ATA_21-AIR_CONDITIONING/)**: Environmental control integration, cabin pressure monitoring
- **[ATA 28 - FUEL (SAF)](../ATA%2028%20-%20FUEL%20(SAF%20-%20INCL.%2028-40-xx%20SAF%20CONDITIONING%20%26%20QUALITY%20MGMT)/)**: General fuel system principles and servicing
- **[ATA 29 - HYDRAULIC POWER]**: Actuator integration for cryogenic valves
- **[ATA 47 - NITROGEN GENERATION]**: Inert gas purging systems
- **[ATA 49 - AIRBORNE AUXILIARY POWER]**: Power supply for cryogenic system controls
- **[ATA 51 - STANDARD PRACTICES - STRUCTURES]**: Structural attachment, load paths, thermal stress

### 5.2 Safety & Quality Integration
- **[ATA 04 - AIRWORTHINESS LIMITATIONS]**: Life-limited parts, inspection intervals
- **[ATA 05 - PERIODIC INSPECTIONS]**: Scheduled maintenance tasks
- **[ATA 06 - DIMENSIONS AND AREAS]**: Tank installation clearances
- **[ATA 12 - SERVICING]**: LH₂ filling, defueling, ground support equipment

### 5.3 Related Technical Areas
- **[ATA 24 - ELECTRICAL POWER]**: Power supply for sensors, heaters, control systems
- **[ATA 26 - FIRE PROTECTION]**: Fire detection and suppression integration
- **[ATA 30 - ICE AND RAIN PROTECTION]**: Anti-icing considerations for external tank surfaces
- **[ATA 36 - PNEUMATIC]**: Pneumatic valve actuation systems

---

## 6. Safety Notes

### 6.1 Cryogenic Hazards
⚠️ **DANGER**: Contact with liquid hydrogen (-253°C) causes instant severe frostbite and tissue damage.

- Always wear cryogenic-rated PPE: face shield, insulated gloves, apron
- Ensure adequate ventilation during all LH₂ operations
- Never trap liquid hydrogen between valves (thermal expansion hazard)
- Maintain vacuum integrity to prevent ice formation in insulation space

### 6.2 Hydrogen Safety
⚠️ **DANGER**: Hydrogen has extremely wide flammability range (4-75% in air) and very low ignition energy.

- Hydrogen flames are nearly invisible in daylight
- Use hydrogen detectors (≤1% LEL alarm threshold)
- Ground all equipment to prevent static discharge
- No ignition sources within 25 feet of LH₂ operations
- Emergency shutdown and vent systems must be accessible

### 6.3 Pressure Hazards
⚠️ **DANGER**: Rapid vaporization of LH₂ can cause catastrophic pressure rise.

- Never exceed design pressure ratings
- Relief systems must vent to safe location
- Pressure testing requires approved test plan and barricades
- Monitor boiloff rates during ground hold

### 6.4 Oxygen Compatibility
⚠️ **CAUTION**: Materials and equipment must be oxygen-clean per ASTM G93.

- Liquid oxygen condensation in cold areas is a fire hazard
- Hydrogen/oxygen mixtures are highly explosive
- Use oxygen-compatible materials for all systems

---

## 7. Material Traceability Requirements

All materials used in cryogenic hydrogen systems require full traceability:

### 7.1 Primary Structural Materials
- **316L Stainless Steel**: Heat number, mill test report, Charpy V-notch at -196°C
- **Inconel 718**: Heat number, solution treatment certification, grain size verification
- **CFRP Composites**: Resin lot number, fiber lot number, cure cycle records, NDT reports
- **Aluminum Alloys (5xxx series)**: Heat number, temper verification, conductivity test

### 7.2 Critical Seals & Components
- **PTFE Seals**: Virgin PTFE certification, no fillers
- **Vespel Seats**: Material certification, hardness verification
- **O-Rings**: Material type, Shore hardness, batch traceability
- **Sealants**: Cryogenic-rated certification, shelf life tracking

### 7.3 Welds & Joints
- **Welding Wire**: Heat number, chemistry report, storage humidity log
- **Filler Material**: Lot number, purity certification
- **Shielding Gas**: Purity ≥99.999%, moisture content <5 ppm
- **Welder Qualification**: Current certification for cryogenic welding per AWS D10.11

---

## 8. Key Performance Requirements

### 8.1 Vacuum Performance
- Insulation vacuum: ≤ 1×10⁻⁴ mbar
- Leak rate: ≤ 1×10⁻⁶ mbar·L/s (helium tracer)
- Getter activation: per manufacturer specification
- Vacuum hold time: ≥5 years without repumping

### 8.2 Boiloff Limits
- Daily boiloff rate: ≤0.3% of tank capacity
- Ground hold (24 hr): ≤0.5% of tank capacity
- Post-fill stabilization: ≤2 hours to steady-state

### 8.3 Pressure Control
- Operating pressure: 5-8 bar typical
- Relief valve setting: 10 bar (example)
- Burst disc rating: 15 bar (example)
- Pressure rise rate during fill: ≤0.5 bar/min

### 8.4 Temperature Monitoring
- RTD accuracy: ±0.1°C at cryogenic temperatures
- Thermocouple type: Type E (chromel-constantan) for -253°C
- Temperature stratification: ≤5°C across liquid volume

---

## 9. Testing & Validation

### 9.1 Pressure Testing
- **Hydrostatic Test**: 1.5× design pressure, hold 10 minutes
- **Pneumatic Test**: 1.1× design pressure with inert gas (if hydrostatic not feasible)
- **Leak Test**: Helium mass spectrometry, acceptance ≤1×10⁻⁶ mbar·L/s
- **Proof Test**: 1.25× design pressure for composite tanks

### 9.2 Thermal Performance Testing
- **Boiloff Test**: Measure boiloff rate over 72-hour period
- **Cool-Down Test**: Monitor cool-down time and thermal stresses
- **Vacuum Degradation Test**: Monitor vacuum level over time
- **Thermal Cycling**: 50 cycles from ambient to -253°C

### 9.3 Functional Testing
- **Valve Actuation**: Full stroke time, leak-tight sealing at cryogenic temperature
- **Relief Valve**: Set pressure verification, reseat verification
- **Sensor Calibration**: RTDs, pressure transducers, level sensors
- **Control System**: Emergency shutdown sequence, auto-vent function

---

## 10. Document Types & Naming Conventions

### 10.1 Procedure Documents (PROC)
Format: `PROC_28-60-XX_Brief-Description.md`

Example: `PROC_28-60-02_LH2-Tank-Hydrostatic-Test.md`

### 10.2 Description Documents (DESC)
Format: `DESC_28-60-XX_Brief-Description.md`

Example: `DESC_28-60-01_Tank-Design-Specification.md`

### 10.3 Data Tables (DATA)
Format: `DATA_28-60-XX_Brief-Description.csv`

Example: `DATA_28-60-03_Material-Properties-Cryogenic.csv`

### 10.4 Diagrams (DIAG)
Format: `DIAG_28-60-XX_Brief-Description.{svg|pdf}`

Example: `DIAG_28-60-01_LH2-System-Schematic.svg`

### 10.5 Test Reports (TEST)
Format: `TEST_28-60-XX_Brief-Description.{json|pdf}`

Example: `TEST_28-60-01_Vacuum-Leak-Test-Report.json`

---

## 11. Revision History

| Revision | Date | Author | Description |
|----------|------|--------|-------------|
| A | 2025-10-30 | Cryogenic Systems Engineering | Initial release |

---

## 12. Approval Signatures

**Prepared by:** Cryogenic Systems Engineering  
**Date:** 2025-10-30

**Reviewed by:** Airworthiness Authority  
**Date:** 2025-10-30

**Approved by:** Chief Engineer - Propulsion Systems  
**Date:** 2025-10-30

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../../README.md) | [🏠 Repository Root](../../../../../README.md)
