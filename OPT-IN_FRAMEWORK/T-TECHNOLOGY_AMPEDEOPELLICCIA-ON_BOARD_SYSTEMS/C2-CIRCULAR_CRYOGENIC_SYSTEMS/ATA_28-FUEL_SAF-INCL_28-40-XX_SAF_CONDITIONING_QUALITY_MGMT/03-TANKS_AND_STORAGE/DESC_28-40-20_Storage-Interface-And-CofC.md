# DESC_28-40-20 — Storage Interface and Certificate of Conformance

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Defines interface requirements, material specifications, and Certificate of Conformance (CoC) requirements for cryogenic hydrogen storage systems.

## Tank System Components

### Primary Components
- Inner pressure vessel (primary containment)
- Vacuum jacket (thermal insulation)
- Multi-layer insulation (MLI)
- Vacuum ports and instrumentation penetrations
- Mounting and support structure
- Relief valves and safety devices

### Interface Requirements

**Mechanical Interface:**
- Mounting points: 4-point kinematic mount (allows thermal contraction)
- Load paths must not compromise vacuum jacket integrity
- Supports must accommodate -253°C contraction (~0.3% linear)

**Fluid Interface:**
- Fill/drain connections: VCR or ConFlat fittings
- Vent connections: Separate gaseous and emergency vent
- Transfer lines: vacuum-jacketed or foam-insulated

**Electrical Interface:**
- Level sensors (capacitance or differential pressure)
- Temperature sensors (RTD or thermocouple)
- Pressure transducers (cryogenic-rated)
- Heaters (if applicable for pressure control)

**Instrumentation Penetrations:**
- Feed-through design must maintain vacuum integrity
- Thermal conduction minimized (thin-wall stainless, GFRP washers)
- Leak-tight to <1×10⁻⁸ mbar·L/s

## Material Requirements

### Cryogenic Service Materials

**Pressure Vessel (Inner Tank):**
- 316L stainless steel (ASTM A240/A312)
- Aluminum alloy 5083-H116 or 6061-T6
- Inconel 625 or 718 (for high-strength applications)
- CFRP with compatible liner (e.g., aluminum or polymer)

**Vacuum Jacket:**
- 304L or 316L stainless steel
- Aluminum alloy (non-structural)

**Seals and Gaskets:**
- PTFE (Teflon)
- Indium wire (metal seal)
- Copper or aluminum (ConFlat flanges)

**Insulation:**
- Multi-layer insulation (MLI): aluminum-coated polyester/polyimide
- Spacer material: fiberglass or polyester mesh
- Aerogel (optional enhanced insulation)

### Material Prohibitions
- Carbon steel (brittle at cryogenic temperatures)
- Most elastomers (lose flexibility; use PTFE or metal seals)
- Materials with high thermal conductivity in heat leak paths

## Certificate of Conformance (CoC) Requirements

### Required for ALL Materials

Each material lot must have CoC documenting:

1. **Material Identification:**
   - Part number and revision
   - Material specification (ASTM, ASME, etc.)
   - Heat or lot number
   - Manufacturer and date of manufacture

2. **Test Results:**
   - Chemical composition (actual values)
   - Mechanical properties (yield, tensile, elongation)
   - Impact toughness at cryogenic temperature (Charpy V-notch)
   - Hardness

3. **Certifications:**
   - Manufacturer's statement of conformance
   - Third-party inspection (if required)
   - Traceability to mill test reports

4. **Cryogenic Qualification:**
   - Minimum service temperature
   - Ductility retention at temperature
   - Fracture toughness (if applicable)

### Traceability Requirements

- CoC must be traceable to specific tank serial number
- Digital Product Passport (DPP) entry linking CoC to component
- SHA-256 hash of CoC document
- Retention: Life of aircraft + 10 years

## Vacuum Integrity Requirements

**Acceptance Criteria:**
- Initial evacuation: <1×10⁻⁵ mbar (7.5×10⁻⁶ Torr)
- Leak-up rate: <1×10⁻⁸ mbar·L/s after 24-hour hold
- Vacuum level maintenance: <1×10⁻⁴ mbar during service

**Helium Leak Testing:**
All vacuum jacket penetrations and welds must be helium leak tested per PROC_28-40-50.

## Design Life and Inspection Intervals

**Design Life:** Minimum 20 years or 20,000 fill/empty cycles

**Periodic Inspections:**
- Annual: Visual inspection, vacuum level check
- 5-year: Detailed NDT inspection of welds and supports
- 10-year: Vacuum pump-down and leak re-test

## Structural Qualification

Tank system must demonstrate:
- 1.5× proof pressure (hydrostatic test)
- Cyclic fatigue (10× design cycles)
- Thermal shock (rapid cool-down test)
- Vibration (per aircraft installation environment)

Test reports and FEA documentation must be included in DPP.

## References

- DESC_28-40-01: Scope and Governance
- PROC_28-40-21: Tank Pressure Test and Hydro
- DATA_28-40-22: Tank Capacity and Limits
- DATA_28-40-70: Approved Materials and CoC
- SAE AIR6464: Cryogenic System Design
- ISO 21010: Cryogenic Vessels

---

*All tank systems must comply with these interface and CoC requirements for airworthiness approval.*
