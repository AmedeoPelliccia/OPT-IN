# PROC 54-11-02: M&P Traceability and Storage

**Revision:** 1.0.0  
**Effectivity:** All AMPEL360 aircraft

## Purpose
This procedure defines Materials and Processes (M&P) traceability and storage requirements for nacelle and pylon repairs.

## General Requirements

### Material Certification
All materials used in nacelle/pylon work must have:
- Certificate of Conformance (COC) from approved supplier
- Material test reports showing compliance with specification
- Traceability to heat/lot/batch number
- Shelf life tracking (for time-limited materials)

### Supplier Approval
Only materials from approved suppliers may be used:
- Suppliers must be on company Approved Supplier List (ASL)
- Supplier quality system must be audited and approved
- Counterfeit prevention measures in place

## Material Storage

### Room Temperature Storage
For unlimited shelf-life materials:
- Store in climate-controlled area (15-30°C)
- Maintain relative humidity < 60%
- Protect from direct sunlight
- Keep in original packaging until use
- Segregate by material type

### Freezer Storage
For time-limited materials (prepregs, adhesives):
- Store at -18°C ± 3°C
- Use dedicated freezer with temperature recording
- Out-time tracking required:
  - Log each time material removed from freezer
  - Cumulative out-time must not exceed specification
  - Typical limit: 30 days out-time over 12-month shelf life
- Warm to room temperature before opening (prevent moisture)

### Hazardous Materials
For flammable or toxic materials:
- Store in approved flammable storage cabinet
- Maintain Safety Data Sheets (SDS) accessible
- Proper ventilation required
- Spill containment measures in place

## Traceability Requirements

### Material Identification
Each material batch must be tracked with:
- Material specification number
- Supplier name and batch/lot/heat number
- Receipt date and COC number
- Expiration date (if applicable)
- Storage location

### Issue and Usage Tracking
When material issued for use:
- Record work order or repair number
- Record quantity issued
- Record technician name
- Record date issued
- Maintain traceability to aircraft MSN

### Shelf Life Management
For time-limited materials:
- First In, First Out (FIFO) system
- Monthly inventory check
- Dispose of expired materials per regulations
- Do NOT use expired materials under any circumstances

## Traceability Documentation

### Material Traceability Record
For each repair, document must include:
1. Material specification numbers
2. Batch/lot numbers used
3. COC reference numbers
4. Expiration dates (at time of use)
5. Supplier names

### Retention
Material traceability records must be retained:
- Electronic: Permanently in digital archive
- Paper: Minimum 30 years
- Linked to repair record in `/schemas/repair-record.schema.json`

## Non-Conforming Materials

### Quarantine
Materials failing inspection must be:
- Immediately quarantined (red-tagged)
- Segregated from conforming materials
- Cannot be used until dispositioned

### Disposition
Engineering must evaluate and provide:
- Use-as-is (with restrictions)
- Rework (if possible)
- Scrap (most common for aircraft materials)

## Acceptance Testing

### Incoming Inspection
Random samples must be tested to verify:
- Chemical composition (if specified)
- Mechanical properties (tensile, hardness)
- Dimensions and tolerances
- Surface condition

### Process Materials
Adhesives, sealants, paints must be tested for:
- Viscosity
- Pot life
- Cure time
- Adhesion strength (periodic testing)

## Special Processes

### Heat Treatment
If heat treatment required:
- Use certified heat treat facility
- Maintain heat treat charts (time-temperature records)
- Verify hardness after heat treatment
- Include heat treat lot in traceability

### Welding (if applicable)
- Only approved welding processes
- Certified welders
- Welding procedure specifications (WPS) on file
- Weld traceability to welder and WPS

## References
- DATA 54-11-01: Material specifications and COC requirements
- ATA 20: Standard material handling practices
- Company Quality Manual: Material control procedures

**Rev 1.0.0 (2028-12-05):** Initial release
