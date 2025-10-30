# DESC_28-40-01 — Scope, Governance and Effectivity

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Defines the scope, governance structure, and effectivity rules for ATA 28-40-XX SAF Conditioning and Cryogenic H₂ Quality Management documentation.

## Scope

This chapter covers:
- Cryogenic H₂ storage tanks, vacuum jackets and insulation systems
- SAF (Sustainable Aviation Fuel) conditioning and quality control
- Distribution lines, valves, actuators and pressure control
- Sensors, instrumentation and calibration requirements
- Testing protocols (NDT, leak detection, pressure testing)
- Safety systems (relief valves, emergency venting)
- Materials & processes (M&P) traceability and certificates of conformance (CoC)
- Digital Product Passport (DPP) integration and traceability
- Nonconformance and deviation handling
- Engineering disposition and change control

## Governance

**Owner Role:** Cryogenic Systems Engineering

**Review Board:**
- Airworthiness Authority
- Thermal Engineering
- Energy Systems
- Safety and Risk Management

**Change Control:**
Any changes affecting flight-critical systems, primary containment, or structural load paths require:
1. Safety assessment (FMEA)
2. Airworthiness approval
3. Documented effectivity
4. Test evidence or FEA validation

## Effectivity

**MSN (Manufacturing Serial Number):** ALL (unless explicitly restricted)

**Configuration:** LH2 (Liquid Hydrogen) and SAF (Sustainable Aviation Fuel) configurations

**Regulatory Compliance:**
- FAA Part 25 (fuel system requirements)
- EASA CS-25 (cryogenic and fuel system clauses)
- SAE AIR6464 (cryogenic system design)
- ISO 21010 (cryogenic vessels)
- ISO 13985 (liquid hydrogen land vehicle fuel containers)
- ASTM/ASME cryogenic standards
- Pressure vessel regulations (local jurisdiction)

## Document Types

- **DESC:** Descriptive documents (philosophy, interfaces, definitions)
- **PROC:** Procedures (test methods, calibration, repair)
- **DATA:** Data records (specifications, limits, test results)

## Metadata Requirements

All documents must have:
1. Sidecar metadata file (`.meta.yaml`)
2. SHA-256 checksum for integrity verification
3. Effective date ≤ current date
4. Approval records for flight-critical items
5. Traceability to regulatory requirements

## Safety Classification

**Criticality Level:** Flight-Critical

**Hazards:**
- Cryogenic temperatures (≈ -253°C for LH2)
- Hydrogen flammability and pyrophoricity
- Pressure hazards (high-pressure systems)
- Oxygen enrichment risk
- Asphyxiation hazard (inert gas displacement)
- Static electricity ignition risk
- Brittle fracture at cryogenic temperatures

**Required Training:** CRYO-SYS-L2 or equivalent cryogenic systems certification

## References

- ATA 21 (Air Conditioning)
- ATA 47 (Nitrogen Generation System)
- ATA 51 (Standard Practices and Structures)
- SAE AIR6464 (Cryogenic System Design Guide)

---

*This document establishes the foundation for all ATA 28-40-XX documentation.*
