# ATA 09: Towing and Taxiing

**CRITICAL SAFETY WARNING:** All towing and taxiing operations present significant risk to personnel and the airframe. The procedures, limits, and communication protocols defined in this chapter are mandatory. **Zero deviation is permitted.**

## Scope and Applicability
This chapter provides all approved procedures for ground movement of the AMPEL360, including towing with and without a towbar, pushback, and taxiing under its own power. All content is configuration-controlled with explicit effectivity for MSN blocks and configurations.

## Key References
- **ATA 06:** Source of truth for all clearance dimensions, turn geometries, and datums (FS/BL/WL).
- **ATA 07:** Procedures for jacking/shoring in case of an incident.
- **ATA 08:** Source for current Weight & Balance data, which is a critical input.
- **ATA 28/49/71:** System status requirements (LH₂ inerting, APU/Engine operation).

## Environmental Gates & Limits
- **Wind:** Towing is prohibited in winds exceeding 20 knots gusting to 25. Pushback is limited to 25 knots crosswind. See `DATA_Towing-Limits...` for detailed tables.
- **Slope:** Operations are limited to slopes of 1.5% or less unless a specific engineering analysis is performed.
- **Contamination:** Procedures assume a clean, dry surface. FOD controls must be in place.

## Communications Protocol
- **Standard:** IATA hand signals and standard radio phraseology shall be used.
- **Stop Word:** The word "STOP" from any crew member (ground or flight deck) mandates an immediate and complete cessation of movement.
- **Chain of Command:** The ground crew lead is in command of the towing/pushback operation until the aircraft is released to the flight crew.

## Change Control and QA
- **Revisioning:** All files follow Semantic Versioning (MAJOR.MINOR.PATCH).
- **Checksums:** All controlled artifacts have a SHA256 checksum recorded in the root `INDEX.meta.yaml`.
- **Validation:** All repository changes are validated by the CI script at `ci/validate_ata09.sh`.
