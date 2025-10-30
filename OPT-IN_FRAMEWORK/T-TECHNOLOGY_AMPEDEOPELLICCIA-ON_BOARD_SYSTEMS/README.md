# T-TECHNOLOGY (AMEDEOPELLICCIA — ON_BOARD_SYSTEMS)

This tree contains all on-board systems organized by functional domains. Each domain aligns to ATA chapters and maintains cross-references, effectivity, and certification evidence.

## Functional Domains

- **[A-AIRFRAME](./A-AIRFRAME/README.md)** — Airframe structures and components *(ATA 20, 50–57)*
- **[M-MECHANICS](./M-MECHANICS/README.md)** — Mechanical systems and actuation *(ATA 27, 29, 32, 37, 41)*
- **[E1-ENVIRONMENT](./E1-ENVIRONMENT/README.md)** — Environmental control systems *(ATA 21, 26, 30, 36, 38)*
- **[D-DATA](./D-DATA/README.md)** — Data recording systems *(ATA 31 — FDR/CVR)*
- **[E2-ENERGY](./E2-ENERGY/README.md)** — Electrical power and energy systems *(ATA 24, 47, 49, 80)*
- **[O-OPERATING_SYSTEMS](./O-OPERATING_SYSTEMS/README.md)** — Core avionics software and governance *(ATA 42 — Governance & Standards)*
- **[P-PROPULSION](./P-PROPULSION/README.md)** — Propulsion systems and engines *(ATA 60–61, 70–79)*
- **[E3-ELECTRONICS](./E3-ELECTRONICS/README.md)** — Electronic systems and hardware platforms *(ATA 34, 39, 42 — CPM/IOM)*
- **[L1-LOGICS](./L1-LOGICS/README.md)** — Flight control logic and hosted apps *(ATA 22, 27, 42 — Application Partitions)*
- **[L2-LINKS](./L2-LINKS/README.md)** — Communications and networks *(ATA 23, 42 — AFDX, 91)*
- **[I-INFORMATION_INTELLIGENCE_INTERFACES](./I-INFORMATION_INTELLIGENCE_INTERFACES/README.md)** — Integrated info systems, HMIs, health monitoring *(ATA 31, 42, 45, 46, 77, 93)*
- **[C1-COCKPIT_CABIN_CARGO](./C1-COCKPIT_CABIN_CARGO/README.md)** — Interior systems and interfaces *(ATA 11, 15, 16, 25, 33, 35, 44)*
- **[C2-CIRCULAR_CRYOGENIC_SYSTEMS](./C2-CIRCULAR_CRYOGENIC_SYSTEMS/README.md)** — Fuel lifecycle, SAF, LH₂, CO₂ capture *(ATA 28, 21-80-00)*
- **[I2-I+D](./I2-I+D/README.md)** — Innovation and Development *(ATA 40, 42-55-00, 42-60-00, 48, 92)*
- **[A2-AERODYNAMICS](./A2-AERODYNAMICS/README.md)** — Aerodynamic control and manipulation *(ATA 27)*

## Architectural Principles

1. **ATA alignment** — Each domain follows ATA chapter structure with explicit cross-refs.  
2. **Modularity** — Clear interfaces and dependencies per domain.  
3. **Traceability** — Bidirectional links to requirements and certification evidence.  
4. **Integration focus** — All integration points and health monitoring live in `I-INFORMATION_INTELLIGENCE_INTERFACES`.  
5. **Innovation path** — `I2-I+D` governs emerging tech and AI enablement.

## Navigation

- [↑ Repository Root](../README.md)
- [Framework Documentation](../README.md#opt-in-framework)
