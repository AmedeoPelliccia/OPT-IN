# ATA 07: Lifting and Shoring

**CRITICAL SAFETY WARNING:** This chapter contains procedures that, if performed incorrectly, can lead to catastrophic structural failure of the aircraft and serious injury or death to personnel.

## Scope and Applicability
This chapter provides all mandatory procedures for jacking, shoring, and hoisting the AMPEL360 aircraft. All content is configuration-controlled with explicit effectivity for MSN blocks and configurations.

## Roles and Communications
- **Lead Technician:** Overall responsibility for the operation.
- **Jack/Hoist Operators (3 min):** Operate equipment in unison under the Lead's direction.
- **Spotters:** Monitor aircraft attitude, clearances, and environmental conditions.
- **Weight & Balance Officer:** Provides independent sign-off on the pre-lift CG calculation.

## Permits and Go/No-Go Gates
- A **Pre-Lift Permit** must be completed and signed by all parties before any operation begins. See `CHK_Jacking-PrePost-Checklist.md`.
- All personnel have **stop-work authority**. The E-stop protocol is immediate cessation of operations upon any crew member's call.

## Methods
- **Load Interpolation:** Loads between grid points in `DATA_Max-Jacking-Loads-vs-CG.csv` shall be linearly interpolated.
- **Floor Bearing Pressure:** Calculated as (Jack Load / Jack Base Area). Mats specified in `DATA_Shoring-Floor-Load-Mats.md` must be used if floor rating is insufficient.
- **Sling Angle Reduction:** WLL is reduced by cos(θ) where θ is the angle from vertical.

## Change Control and QA
- **Revisioning:** All files follow Semantic Versioning (MAJOR.MINOR.PATCH).
- **Checksums:** All controlled artifacts have a SHA256 checksum recorded in the root `INDEX.meta.yaml`.
- **Validation:** All repository changes are validated by the CI script at `ci/validate_ata07.sh`, enforcing schemas, checksums, and naming conventions.
- **Calibration:** All GSE calibration records must be current, with traceability maintained in the ATA 03 repository.

## Navigation

[↑ P-PROGRAM](../README.md)

### Related Sections

- [ATA 06 - DIMENSIONS AND AREAS](../ATA_06-DIMENSIONS_AND_AREAS/README.md)
- [ATA 08 - LEVELING AND WEIGHING](../ATA_08-LEVELING_AND_WEIGHING/README.md)
- [ATA 09 - TOWING AND TAXIING](../ATA_09-TOWING_AND_TAXIING/README.md)
- [ATA 12 - SERVICING](../ATA_12-SERVICING/README.md)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
