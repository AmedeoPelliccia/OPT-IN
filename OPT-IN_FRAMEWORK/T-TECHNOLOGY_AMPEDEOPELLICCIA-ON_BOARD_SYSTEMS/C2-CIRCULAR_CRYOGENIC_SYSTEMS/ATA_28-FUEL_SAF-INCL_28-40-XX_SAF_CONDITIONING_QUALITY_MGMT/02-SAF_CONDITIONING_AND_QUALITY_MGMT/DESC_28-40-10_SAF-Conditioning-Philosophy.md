# DESC_28-40-10 — SAF Conditioning Philosophy

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Establishes the philosophy and approach for Sustainable Aviation Fuel (SAF) conditioning, quality management, and integration with cryogenic hydrogen systems.

## SAF Background

Sustainable Aviation Fuels (SAF) are drop-in replacement fuels meeting [ASTM D7566](https://www.astm.org/d7566-24.html) specifications, derived from sustainable feedstocks including:
- Hydroprocessed Esters and Fatty Acids (HEFA)
- Fischer-Tropsch (FT) synthesis
- Alcohol-to-Jet (ATJ)
- Power-to-Liquid (PtL)

SAF can be blended with conventional [Jet-A/Jet-A1 fuel (ASTM D1655)](https://www.astm.org/d1655-24.html) or used in approved blend ratios per certification.

## Conditioning Philosophy

**Temperature Control:**
SAF and conventional fuels must be maintained within specified temperature ranges to ensure proper viscosity, vapor pressure, and combustion characteristics. For hybrid systems supporting both SAF and LH2, separate conditioning systems prevent cross-contamination.

**Quality Assurance:**
- Pre-delivery testing to [ASTM D7566](https://www.astm.org/d7566-24.html) specifications
- In-service monitoring for contamination, water content, and additive levels
- Periodic sampling and laboratory analysis (see [PROC_28-40-12](PROC_28-40-12_SAF-Quality-Acceptance-Test.md))
- Traceability to fuel batch and supplier (see [PROC_28-40-80](../09-TRACEABILITY_AND_DPP/PROC_28-40-80_DPP-Entry-And-Record.md))

**Contamination Prevention:**
- Dedicated storage and transfer systems for SAF
- Filtration (10 micron or finer)
- Water separation and monitoring
- Microbial growth prevention
- Material compatibility verification

**Additive Management:**
SAF may require fuel system icing inhibitor (FSII), antioxidants, or other additives. Additive levels must be maintained within specifications and verified during conditioning.

## Integration with Cryogenic H2 Systems

**Dual-Fuel Architecture:**
Aircraft configured for both SAF and LH2 require:
- Isolated fuel systems preventing cross-contamination
- Separate distribution, valving, and instrumentation
- Clear labeling and color-coding
- Interlock systems preventing simultaneous operation where applicable

**Thermal Management:**
- SAF systems may use fuel as a heat sink for thermal management
- LH2 systems require cryogenic insulation and boil-off management
- Thermal interface points must be carefully managed to prevent:
  - SAF freezing or wax precipitation
  - Excessive heat leak into LH2 system

**Switching Protocols:**
If aircraft supports in-flight fuel switching, procedures must include:
- Engine purge sequences
- Line flushing and inerting
- Confirmation of fuel type before engine start
- Instrumentation verification

## Quality Control Strategy

**Incoming Inspection:**
All SAF deliveries require:
- Certificate of Analysis (CoA) from supplier
- Independent verification testing
- Traceability to production batch
- Storage conditions verification

**In-Service Monitoring:**
- Daily visual inspection
- Weekly sampling for water and particulates
- Monthly laboratory analysis
- Continuous instrumentation (temperature, pressure, level)

**Documentation:**
- Digital Product Passport (DPP) entries for all fuel batches
- Conditioning records with timestamps and operator identification
- Test results with laboratory accreditation
- Nonconformance tracking and disposition

## Safety Considerations

**Flammability:**
SAF has similar flammability characteristics to conventional jet fuel. Standard fuel handling precautions apply:
- Grounding and bonding
- Elimination of ignition sources
- Proper ventilation
- Fire suppression systems
- Personnel training

**Health Hazards:**
- Skin and eye contact: use appropriate PPE
- Inhalation: ensure adequate ventilation
- Environmental: spill prevention and containment

**Compatibility:**
Verify material compatibility with specific SAF blend:
- Elastomers and seals
- Coatings and paints
- Tank liners
- Composite materials

## Regulatory Compliance

## Regulatory Compliance

- [ASTM D7566](https://www.astm.org/d7566-24.html): SAF specifications
- [ASTM D1655](https://www.astm.org/d1655-24.html): Aviation turbine fuels
- [FAA AC 20-67A](https://www.faa.gov/regulations_policies/advisory_circulars/index.cfm/go/document.information/documentID/22647): Aircraft fuel system certification
- [EASA CS-25](https://www.easa.europa.eu/document-library/certification-specifications/cs-25-amendment-27): Fuel system requirements
- Local environmental regulations

## References

**Internal Documents:**
- [DESC_28-40-01: Scope and Governance](../01-GENERAL/DESC_28-40-01_Scope-Governance-And-Effectivity.md)
- [DESC_28-40-02: Terms and Definitions](../01-GENERAL/DESC_28-40-02_Terms-And-Definitions.md)
- [PROC_28-40-11: SAF Conditioning Procedure](PROC_28-40-11_SAF-Conditioning-Procedure.md)
- [PROC_28-40-12: SAF Quality Acceptance Test](PROC_28-40-12_SAF-Quality-Acceptance-Test.md)
- [DATA_28-40-13: SAF Quality Limits](DATA_28-40-13_SAF-Quality-Limits.csv)

---

*This philosophy guides all SAF conditioning and quality management activities within ATA 28-40-XX scope.*
