# ATA 08: Leveling and Weighing

**CRITICAL METROLOGY WARNING:** This chapter contains high-precision procedures. Failure to adhere to the specified tolerances, environmental controls, or aircraft configuration will result in incorrect weight and balance data, directly jeopardizing flight safety.

## Scope
This chapter details the mandatory procedures for:
1.  **Leveling:** Establishing a precise, repeatable reference attitude (pitch ±0.05°, roll ±0.05°) referenced to ATA 06 datums.
2.  **Weighing:** Determining the aircraft's Basic Empty Weight (BEW) and Center of Gravity (CG) with a combined uncertainty (U95) of ≤0.1% BEW.

## Standard Weighing Configuration
All official weighing must be performed in the "Standard Weighing Configuration" as defined in `03-WEIGHT_AND_BALANCE_DATA/DATA_Standard-Weighing-Configuration-Definition.md`. Any deviation requires a formal Engineering Order and results in a "NON-STANDARD" report.

## Calculation Methods (Normative)
- **Totals:** \(W=\sum W_i\)
- **CG (FS):** \(x_{CG}=\frac{\sum (W_i \cdot x_i)}{W}\) using arms \(x_i\) from ATA 06.
- **%MAC:** \(\%\text{MAC}=100\cdot\frac{x_{CG}-x_{LE,MAC}}{\text{MAC}}\) with \(x_{LE,MAC}\), MAC from ATA 06.
- **Corrections:** Air buoyancy, Helium inerting mass, and battery SOC deviations are calculated and applied per `DATA_Corrections-Tables`.

## Data Handoff
The final, approved Weighing Report is generated as a signed PDF for archival and a machine-readable JSON payload for direct ingestion into the ATA 95 Digital Product Passport.

## Applicable Standards & Regulations

- FAA AC 120-27
- SAE AIR1750

## Related ATA Chapters

- ATA 06: DIMENSIONS AND AREAS
- ATA 07: LIFTING AND SHORING

## Navigation

[↑ P-PROGRAM](../README.md)

### Related Sections

- [ATA 06 - DIMENSIONS AND AREAS](../ATA_06-DIMENSIONS_AND_AREAS/README.md)
- [ATA 07 - LIFTING AND SHORING](../ATA_07-LIFTING_AND_SHORING/README.md)
- [ATA 09 - TOWING AND TAXIING](../ATA_09-TOWING_AND_TAXIING/README.md)
- [ATA 12 - SERVICING](../ATA_12-SERVICING/README.md)

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
