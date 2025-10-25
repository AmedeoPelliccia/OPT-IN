# Fluid Preservation Table for Long-Term Storage

**Document ID**: DATA_Fluid-Preservation-Table  
**ATA Chapter**: 10  
**Subsection**: 05 - DIAGRAMS AND DATA  
**Revision**: 1.0.0  
**Date**: 2028-12-01

---

## 1. Purpose

Reference table for fluid system preservation during long-term aircraft storage.

## 2. Scope

Provides preservation requirements, fluids, and intervals for all fluid systems on AMPEL360 aircraft.

---

## 3. FLUID PRESERVATION TABLE

### 3.1 Fuel Systems (ATA 28)

| System | Storage Duration | Action | Fluid/Additive | Inspection Frequency |
|--------|-----------------|--------|----------------|---------------------|
| **SAF Main Tanks** | 31-90 days | Fill to 95%, add biocide | MIL-PRF-53021 biocide (1:4000 ratio) | Monthly |
| **SAF Main Tanks** | 91-180 days | Fill to 100%, add biocide + stabilizer | Biocide + fuel stabilizer | Bi-weekly |
| **SAF Main Tanks** | > 180 days | **Drain**, nitrogen purge, fog lines | Corrosion inhibitor MIL-C-8188 | Monthly |
| **LH₂ Cryogenic** | 31-90 days | Maintain OR defuel to < 5% | N/A (if maintaining: monitor daily) | Daily (if maintained) |
| **LH₂ Cryogenic** | > 90 days | **Defuel completely**, inert with N₂ | High-purity nitrogen 99.999% | Weekly |
| **Fuel Lines** | > 180 days | Fog with oil after drain | MIL-C-6529 Type I | Monthly |

### 3.2 Engine Oil Systems (ATA 79)

| Engine Type | Storage Duration | Action | Oil Type | Change Required |
|-------------|-----------------|--------|----------|----------------|
| **Turbine** | 31-90 days | Top off to max, no additive | Standard operational oil (Spec per AMM) | No |
| **Turbine** | 91-180 days | Fresh oil + preservation additive | Operational oil + MIL-C-6529 Type II (5%) | Yes (before storage) |
| **Turbine** | > 180 days | Fresh oil + preservation additive + spray internals | Preservation oil + internal spray | Yes (before storage) |
| **Electric Motor** | All durations | No oil change (sealed bearings) | N/A | No |

**Note**: If preservation oil used, MUST drain and refill with fresh operational oil before RTS.

### 3.3 Hydraulic Systems (ATA 29)

| System | Storage Duration | Action | Fluid | Inspection |
|--------|-----------------|--------|-------|------------|
| **Hydraulic** | 31-90 days | Service to maximum level | Standard MIL-PRF-83282 | Monthly |
| **Hydraulic** | 91-180 days | Max level + preservation additive | Fluid + 2% corrosion inhibitor | Bi-weekly |
| **Hydraulic** | > 180 days | Drain, flush, refill with preserved fluid | Fresh MIL-PRF-83282 + 5% inhibitor | Weekly |

**Preservation Additive**: LPS-2 or approved equivalent  
**RTS**: If preservation additive > 2%, drain and refill with fresh fluid

### 3.4 Landing Gear Shock Struts (ATA 32)

| Component | Storage Duration | Action | Fluid | Pressure |
|-----------|-----------------|--------|-------|----------|
| **Shock Strut Oil** | All durations | Service to correct extension | MIL-PRF-5606 hydraulic fluid | Per AMM |
| **Shock Strut Nitrogen** | 31-180 days | Maintain nominal pressure | Dry nitrogen | Check monthly, recharge if < 90% |
| **Shock Strut Nitrogen** | > 180 days | Deflate, service on RTS | Dry nitrogen | Discharge before storage |

### 3.5 Water Systems (ATA 38)

| System | Storage Duration | Action | Treatment | Inspection |
|--------|-----------------|--------|-----------|------------|
| **Potable Water** | All durations | **Drain completely** | None (empty system) | Verify drained |
| **Potable Lines** | 31-90 days | Flush, drain, blow out | Sanitizing solution, then drain | Monthly |
| **Potable Lines** | > 90 days | Flush, drain, antifreeze (if freezing possible) | Propylene glycol antifreeze | Monthly |
| **Waste Water** | All durations | Drain, flush, add biocide | Quaternary ammonium biocide | Bi-weekly |

**RTS**: Flush and sanitize potable system before refilling

### 3.6 Coolant Systems (ATA 21/24)

| System | Storage Duration | Action | Coolant Type | Treatment |
|--------|-----------------|--------|--------------|-----------|
| **Electronics Cooling** | 31-180 days | Maintain level, no drain | 50/50 Ethylene Glycol/Water | Check level monthly |
| **Electronics Cooling** | > 180 days | Drain if outdoor; maintain if indoor | 50/50 Ethylene Glycol/Water | Check for contamination |
| **Battery Thermal Mgmt** | All durations | Deactivate system, drain if exposed | Propylene Glycol/Water | Drain completely |

### 3.7 Pneumatic Systems (ATA 36)

| System | Storage Duration | Action | Gas | Pressure |
|--------|-----------------|--------|-----|----------|
| **Pneumatic** | 31-90 days | Maintain system pressure | Dry air / nitrogen | Check weekly |
| **Pneumatic** | > 90 days | **Depressurize** if outdoor | N/A | Verify depressurized |

### 3.8 Special Systems - AMPEL360

#### CO₂ Capture System (ATA 21-80)

| Component | Storage Duration | Action | Treatment |
|-----------|-----------------|--------|-----------|
| **CO₂ Condensate** | All durations | **Drain completely** | None |
| **CO₂ System Lines** | All durations | Purge with dry nitrogen, seal ports | Nitrogen purge |
| **Desiccant** | All durations | Replace before storage | New desiccant |

#### Fuel Cell Stacks (ATA 24-60)

| Component | Storage Duration | Action | Humidity Management |
|-----------|-----------------|--------|---------------------|
| **Fuel Cell Membrane** | 31-90 days | Maintain standby humidity (40-60% RH) | Humidification system active |
| **Fuel Cell Membrane** | > 90 days | Preserve per OEM procedure | Sealed with humidity control |

**⚠️ CRITICAL**: Do NOT allow fuel cell membranes to dry out completely

---

## 4. PRESERVATION FLUID SPECIFICATIONS

### 4.1 Approved Preservation Fluids

| Product | Specification | Application | Storage Life |
|---------|--------------|-------------|--------------|
| **MIL-C-6529 Type I** | Engine/component internal spray | Combustors, internals | 365 days |
| **MIL-C-6529 Type II** | Oil additive | Engine oil systems | 180 days |
| **MIL-C-8188** | Fuel line fogging | Fuel lines after drain | 365 days |
| **LPS-2** | Hydraulic preservation | Hydraulic fluid additive | 180 days |
| **LPS-3** | Corrosion inhibitor | External metal surfaces | 365 days |
| **ACF-50** | Anti-corrosion formula | Airframe, connectors | 365 days |

### 4.2 Fluid Compatibility

| Preservation Fluid | Compatible With | NOT Compatible With |
|-------------------|----------------|---------------------|
| MIL-C-6529 Type I | Aluminum, steel, titanium | Rubber seals (minimize contact) |
| MIL-C-6529 Type II | Engine oils | Synthetic hydraulic fluids |
| LPS-2 | Hydraulic fluids | Fuel systems |
| ACF-50 | Most metals, painted surfaces | Acrylic windows (use carefully) |

---

## 5. FLUID SAMPLING AND TESTING

### 5.1 Pre-Storage Sampling

Test these fluids before storage:

| Fluid | Test | Acceptable Criteria | Action if Failed |
|-------|------|-------------------|------------------|
| **Engine Oil** | Spectrographic analysis | Metals within limits | Change oil before storage |
| **Hydraulic Fluid** | Particle count, moisture | < 5 mg/L moisture | Service or change fluid |
| **Fuel (SAF)** | Water content, microbial | < 30 ppm water, no growth | Drain water, add biocide |
| **Coolant** | Freeze point, pH | Freeze point < -35°C, pH 7-9 | Replace coolant |

### 5.2 During-Storage Sampling

| Fluid | Frequency | Test | Action if Abnormal |
|-------|-----------|------|-------------------|
| **Fuel (if stored)** | Monthly | Visual check (water, clarity) | Drain water, add biocide |
| **Hydraulic** | Quarterly | Visual check (color, clarity) | Service if contaminated |
| **Coolant** | Quarterly | Freeze point, visual | Replace if degraded |

---

## 6. PRESERVATION FLUID REMOVAL (RTS)

### 6.1 Fluids Requiring Removal Before RTS

| System | Preservation Fluid | Removal Method | Refill Fluid |
|--------|-------------------|----------------|--------------|
| **Engine Oil** | MIL-C-6529 Type II (if > 2%) | Drain, flush, refill | Fresh operational oil |
| **Hydraulic** | LPS-2 (if > 2%) | Drain, flush, refill | Fresh MIL-PRF-83282 |
| **Fuel Lines** | MIL-C-8188 fogging | Flush with fresh fuel | Fresh fuel |
| **Engine Internals** | MIL-C-6529 Type I spray | First engine run burns off | None (runs off naturally) |

### 6.2 Fluids Acceptable to Leave for RTS

| Fluid | Condition | Notes |
|-------|-----------|-------|
| **Engine Oil** | If < 2% preservation additive | Monitor closely first flights |
| **Hydraulic** | If < 2% preservation additive | Acceptable for RTS |
| **Fuel** | If biocide only (no stabilizer) | Sample and verify quality |

---

## 7. ENVIRONMENTAL CONSIDERATIONS

### 7.1 Storage Temperature Effects on Fluids

| Fluid | Temperature Range | Effect | Action |
|-------|------------------|--------|--------|
| **Hydraulic Fluid** | < -40°C | May thicken | Warm before operation |
| **Coolant** | < Freeze point | Freezes, expands | Verify antifreeze concentration |
| **Engine Oil** | < -20°C | High viscosity | Consider pre-heat before start |
| **LH₂** | Any ambient | Boil-off increases | Monitor pressure/temp |

### 7.2 Humidity Effects

| Condition | Effect on Fluids | Mitigation |
|-----------|-----------------|------------|
| **High humidity** | Water absorption in hydraulic fluid | Use sealed systems, desiccant |
| **High humidity** | Fuel tank condensation | Keep tanks full or nitrogen purged |
| **High humidity** | Oil contamination | Use breather filters with desiccant |

---

## 8. DISPOSAL REQUIREMENTS

### 8.1 Preservation Fluids Disposal

| Fluid | Disposal Method | Regulatory |
|-------|----------------|------------|
| **Used preservation oil** | Hazardous waste per local regulations | EPA/local requirements |
| **Hydraulic fluid (used)** | Recycle or hazardous waste | EPA RCRA waste |
| **Fuel (contaminated)** | Approved fuel waste disposal | EPA/DOT regulations |
| **Coolant (used)** | Recycle or dispose per local rules | EPA/local requirements |

**⚠️ Do NOT mix different fluid types for disposal**

---

## 9. QUICK REFERENCE - STORAGE DURATION MATRIX

| System | 31-90 Days | 91-180 Days | > 180 Days |
|--------|-----------|-------------|------------|
| **SAF Fuel** | Fill 95% + biocide | Fill 100% + biocide + stabilizer | Drain + fog |
| **LH₂ Fuel** | Maintain OR defuel < 5% | Defuel + inert | Defuel + inert + seal |
| **Engine Oil** | Top off | Fresh oil + preservative | Fresh oil + preservative + spray |
| **Hydraulic** | Service to max | Max + additive | Drain/flush/refill preserved |
| **Water** | Drain | Drain + antifreeze (if needed) | Drain + antifreeze |
| **Coolant** | Maintain | Maintain/drain (outdoor) | Drain (outdoor) |

---

## 10. Related Documents

- LTSP_Master-Procedure-Long-Term-Prep_rev2.0.0_20281201.md
- Component-specific preservation procedures
- Aircraft Maintenance Manual - Fluids chapter
- Material Safety Data Sheets (MSDS) for all fluids

---

**Approval**: Chief Engineer - Systems  
**Next Review**: 2029-06-01  
**Distribution**: All Maintenance Bases, Storage Facilities
