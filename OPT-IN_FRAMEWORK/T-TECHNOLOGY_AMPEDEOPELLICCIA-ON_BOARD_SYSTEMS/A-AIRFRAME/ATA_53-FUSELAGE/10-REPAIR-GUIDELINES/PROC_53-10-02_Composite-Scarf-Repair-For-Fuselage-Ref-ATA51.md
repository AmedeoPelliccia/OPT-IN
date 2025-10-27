# ATA 53-10-02: Composite Scarf Repair for Fuselage (Reference ATA 51)

## Purpose
This procedure provides fuselage-specific application guidance for the master composite scarf repair methodology defined in ATA 51-10-02.

## Mandatory Reference
**Primary Document:** ATA 51-10-02 - Master Composite Bonded Scarf Repair Procedure

This document (ATA 53-10-02) supplements ATA 51-10-02 with fuselage-specific requirements and does not replace it.

## Fuselage-Specific Requirements

### Repair Classification
All composite skin repairs follow ATA 51-10-02 classification with these additional fuselage considerations:

#### Class A (Cosmetic)
- Follow ATA 51-10-02 Section 3.2 exactly
- **Additional Fuselage Requirement:** Restore lightning strike protection (LSP) mesh per PROC_53-09-01

#### Class B (Minor Structural)  
- Follow ATA 51-10-02 Section 4.1 exactly
- **Additional Fuselage Requirements:**
  1. Restore LSP mesh
  2. Pressure test per PROC_53-06-02 if repair penetrates to pressure vessel
  3. Verify moisture barrier restoration

#### Class C (Major Structural)
- Follow ATA 51-10-02 Section 4.2 exactly
- **Additional Fuselage Requirements:**
  1. Engineering Disposition mandatory
  2. LSP restoration mandatory
  3. Pressure test mandatory
  4. 48-hour cure monitoring with temperature recording
  5. Ultrasonic verification of repair quality
  6. Structural test (if required by Engineering)

### Scarf Ratio Requirements
Minimum scarf ratios for fuselage (may be more stringent than ATA 51):

| Skin Thickness | Class A | Class B | Class C |
|---------------|---------|---------|---------|
| <6mm | 30:1 | 50:1 | 100:1 |
| 6-10mm | 50:1 | 50:1 | 100:1 |
| >10mm | 50:1 | 100:1 | 100:1 |

### Material Selection
Refer to DATA_53-10-03 for approved materials. All repair materials must be compatible with:
- Base skin material (Toray T800S / Cytec 5320-1)
- Operating environment (-55°C to +85°C)
- Pressure vessel requirements
- LSP restoration requirements

### Moisture Barrier Restoration
For all repairs penetrating the moisture barrier:
1. Remove moisture barrier in taper zone
2. Dry substrate per ATA 51 requirements
3. Apply new moisture barrier coating
4. Verify complete coverage
5. Allow to cure before pressure test

### Lightning Strike Protection Restoration
For all external surface repairs:
1. Remove LSP mesh in repair area
2. Complete structural repair per ATA 51-10-02
3. Install LSP mesh on outer surface:
   - Overlap existing mesh by 50mm minimum
   - Bond with conductive adhesive
   - Verify electrical continuity per PROC_53-09-01
4. Apply protective topcoat

### Cure Requirements
- **Room Temperature (RT) Cure:** Acceptable for Class A and Class B repairs <100 cm²
- **Elevated Temperature Cure:** Required for:
  - All Class C repairs
  - Class B repairs >100 cm²
  - Repairs in high-stress areas
- **Cure Monitoring:** Record temperature profile for all elevated temperature cures

### Pressure Test Requirements
Pressure test per PROC_53-06-02 is required for:
- All Class B and C repairs penetrating pressure vessel
- Any repair >100 cm² on pressure boundary
- Any repair on pressure bulkhead

Test must be performed:
- After cure completion
- Before return to service
- With leak rate <100 CFM at 8.5 psi

## Quality Assurance

### Pre-Repair
- Damage assessment documented with photos and measurements
- Repair class determined
- Engineering approval obtained (if required)
- Materials verified and traceable

### During Repair
- Scarf ratio verified
- Moisture content <1% before layup
- Cure temperature monitored
- Process photos taken

### Post-Repair
- Visual inspection of completed repair
- Ultrasonic inspection (Class B and C)
- Pressure test (if pressure boundary)
- LSP continuity test
- Complete repair record per repair-record.schema.json

## Return to Service
- **Class A:** Immediate after cure and LSP verification
- **Class B:** After pressure test (if required) and NDT verification
- **Class C:** After Engineering review, all testing complete, and formal approval

## Documentation
Complete repair record must include:
1. Reference to ATA 51-10-02 procedure followed
2. All fuselage-specific requirements completed
3. Pressure test results (if applicable)
4. LSP restoration verification
5. NDT results
6. Engineering approval (if required)
7. Photos of damage, repair process, and final configuration
