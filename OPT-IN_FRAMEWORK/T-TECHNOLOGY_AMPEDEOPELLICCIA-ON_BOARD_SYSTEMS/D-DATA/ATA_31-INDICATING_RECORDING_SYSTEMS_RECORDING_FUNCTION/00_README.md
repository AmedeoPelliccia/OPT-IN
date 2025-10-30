# ATA 31 — Indicating & Recording Systems (Recording Function)

Purpose: FDR/CVR recording function: system description, download procedures, qualification and DPP traceability for AMPEL360.

Owner: Data Systems / Flight Data Engineering  
Effective date: 2025-10-30

Conventions:
- All downloads and raw recordings must include SHA-256 hash.
- All PROC/DATA files require a `.meta.yaml` sidecar with approvals, effectivity and integrity fields.

## Directory Structure

- **01-GENERAL**: Scope, governance, effectivity, regulatory compliance matrix
- **02-FDR_FUNCTION**: FDR system description, download procedures, mandatory parameters
- **03-CVR_FUNCTION**: CVR system description, chain-of-custody, acoustic tests
- **04-DATA_MANAGEMENT_AND_DPP**: DPP entry procedures, data retention and access policies
- **05-QUALIFICATION_AND_TEST**: FDR/CVR qualification plans, test matrices
- **06-NONCONFORMANCE_AND_DEVIATION**: Nonconformance handling, NCR templates
- **07-SIDE-CAR_META**: Metadata sidecar templates
- **08-EXAMPLES_AND_RECORDS**: Example download records with SHA-256 hashes

## Applicable Standards & Regulations

- ICAO Annex 6 (operation of aircraft) — FDR/CVR carriage and performance
- FAA 14 CFR Part 91/121/125 and associated TSOs for FDR/CVR
- EUROCAE / ED-112 (CVR performance) and ARINC 717 (FDR digital formats) / ARINC 573 (legacy)
- RTCA DO-160 (environmental qualification), DO-178C (safety-critical SW), DO-254 (HW where applicable)
- SAE / ARP standards for data formats and recording function

## Key Requirements

- **Mandated parameters** for FDR mapping to ARINC/ICAO lists
- **Retention & chain-of-custody** rules for downloads and accident investigation records
- **Environmental qualification** for recording units (DO-160) and shock/crash survivability evidence
- **Tool and software assurance** for extraction/processing tools (tool qualification / DO-178C mapping)
- **NDT & functional checks** for CVR microphones and FDR acquisition units
- **Privacy & access controls** for occurrence and routine data
- **Data format & interoperability** (ARINC 717/573, MEL formats)

## Related ATA Chapters

- ATA 05: Time Limits & Maintenance Checks
- ATA 20: Standard Practices - Airframe
- ATA 22: Auto Flight
- ATA 24: Electrical Power
- ATA 42: Integrated Modular Avionics
- ATA 45: Onboard Maintenance Systems
- ATA 46: Information Systems
- ATA 95: Digital Product Passport

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
