# ATA 86: Electrical and Data Interfaces

This chapter defines the standards for electrical and data interfaces between the AMPEL360 aircraft and ground infrastructure, including HVDC power and secure data links.

## Governance
* **Standard Lifecycle:** Each standard document (`-STD`) has a lifecycle state (`DRAFT`, `CANDIDATE`, `RATIFIED`, `DEPRECATED`) defined in its metadata.
* **Verifiable Compliance:** Each interface standard (ICD, PROTOCOL, SPEC) is directly linked to a compliance test procedure (`TEST_STD-89-xxx`).
* **Security by Design:** Critical data interfaces include a dedicated security standard (`SEC_STD`) and require digital signatures for their API specifications.

## Contents

### 01-HIGH_VOLTAGE_DC_GROUND_POWER
Standards for high-voltage DC ground power:
- **ICD_STD-86-101:** HVDC Ground Power Connector - Connector specification
- **PROTOCOL_STD-86-102:** HVDC Charging Handshake - Charging handshake protocol

### 02-HIGH_BANDWIDTH_GATE_INTERFACE
Standards for high-bandwidth gate data link:
- **ICD_STD-86-201:** Secure Gate Datalink Physical Connector - Secure physical connector
- **API_STD-86-202:** DPP Ground Sync API - API for ground synchronization
- **SEC_STD-86-203:** Gate Datalink Security - Security standards

## Cross-References
- **ATA 24:** Electrical Power (aircraft electrical system)
- **ATA 46:** Information Systems (information systems)
- **ATA 95:** Digital Product Passport (data synchronization)
- **ATA 89:** Infrastructure Compliance and Certification (test procedures)

---

*Part of AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
