# ATA 50: Cargo and Accessory Compartments

**CRITICAL SAFETY WARNING:** This chapter contains procedures and limits essential for flight safety. Overloading, improper cargo restraint, or compromising fire containment systems can have catastrophic consequences. Adherence to all limits and procedures is mandatory.

## Scope
This chapter covers the physical compartments of the aircraft, including structures, loading systems, and interfaces to environmental and safety systems.

## BWB Specific Considerations
- **CG SENSITIVITY:** Due to the BWB's wide fuselage, the lateral and longitudinal placement of cargo is **flight-critical**. The compartment arms and envelopes defined in `DATA_50-02-03` are the source of truth for all load planning.
- **Fire Integrity:** All liners and seals must be maintained to their certified fire-resistance level to ensure compartment fire safety.

## Governance
- **Limits:** Floor strength (point, line, area) and restraint ratings are mandatory limits.
- **Placarding:** Each compartment entrance must be placarded with its max payload and floor load limits.
- **Data Integrity:** All changes are validated by the CI script `ci/validate_ata50.sh`, which enforces schemas and data integrity.
