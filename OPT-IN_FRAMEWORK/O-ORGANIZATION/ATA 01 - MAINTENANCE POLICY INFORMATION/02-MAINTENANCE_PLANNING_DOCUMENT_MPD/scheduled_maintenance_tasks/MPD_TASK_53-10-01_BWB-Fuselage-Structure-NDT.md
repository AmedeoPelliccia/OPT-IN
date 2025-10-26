# MPD Task Card: 53-10-01 - BWB Fuselage Structure NDT
**Revision:** 1.0.0

---
### 1.0 Task Definition
- **Description:** Perform ultrasonic Non-Destructive Testing (NDT) of the Blended-Wing Body (BWB) primary load-bearing composite structure to detect delamination, porosity, and through-thickness cracks.
- **Applicability:** All AMPEL360 aircraft.

### 2.0 Maintenance Interval
- **Threshold:** N/A
- **Initial Interval:** Every 12,000 Flight Hours or 72 Months, whichever occurs first.
- **Maintenance Philosophy:** On-Condition (Structural Health Monitoring augmented).
- **Note:** Interval may be adjusted based on Structural Health Monitoring (SHM) sensor data analysis and operational reliability data.

### 3.0 Task Requirements
- **Required Personnel:** 
  - 1x NDT Level II Certified Technician (Ultrasonic)
  - 1x B1 Licensed Technician (Structural)
- **Estimated Man-Hours:** 40.0 hours per zone (4 primary zones = 160 hours total).
- **Required GSE:**
  - `AP360-T050`: Phased Array Ultrasonic Scanner (with composite analysis capability)
  - `AP360-T051`: Advanced Composite Analysis Software (calibrated for AMPEL360 materials)
  - `AP360-T052`: Reference standards for composite calibration
- **Aircraft Condition:** Aircraft in hangar, environmental controls active (temperature 18-25°C, humidity 30-60%).

### 4.0 Inspection Zones
The BWB fuselage is divided into four primary inspection zones:
- **Zone 53-A:** Center Body Pressure Vessel (centerline keel to upper crown)
- **Zone 53-B:** Wing-Body Integration Zone (primary structural interface)
- **Zone 53-C:** Aft Pressure Bulkhead (composite dome structure)
- **Zone 53-D:** Forward Equipment Bay Floor (load concentration area)

Each zone requires independent inspection and documentation.

### 5.0 Success Criteria
- **Delamination:** No delamination greater than 25mm diameter is detected.
- **Through-Thickness Cracks:** No cracks detected.
- **Porosity:** Porosity levels less than 3% by volume.
- **SHM Correlation:** Ultrasonic findings correlate with SHM sensor strain readings within ±10%.
- **Acceptance:** All findings are within AMM `53-10-00` acceptance criteria.

If any criteria fail:
1. Document finding location using aircraft coordinate system.
2. Refer to Structural Repair Manual (SRM) for disposition.
3. Generate DPP event record (ATA 95).
4. Notify Design Organization if finding is outside documented service experience.

### 6.0 Source & Justification
- **Source:** Maintenance Review Board Report (MRBR), Section 4.1.1.
- **Justification:** The BWB configuration creates unique load distributions not present in conventional tube-and-wing aircraft. While embedded Structural Health Monitoring (SHM) sensors provide continuous strain and acoustic emission monitoring, periodic NDT validates sensor accuracy and inspects areas with limited sensor coverage. Composite structures can develop manufacturing-induced defects or service-induced damage that may not be immediately detectable by SHM alone.

### 7.0 Special Procedures
- **Pre-Inspection:** Review SHM data from ATA 45 OMS for the inspection period. Focus NDT efforts on zones showing elevated strain or acoustic emission events.
- **Post-Inspection:** Upload all NDT scan data to Digital Product Passport (ATA 95) for historical tracking and analytics.
- **Environmental:** Composite inspection accuracy is temperature-dependent. Do not perform inspection if structure temperature is outside 15-30°C range.

### 8.0 Data Recording Requirements
Record in Digital Product Passport (ATA 95):
- Inspection date, time, and location
- Technician names and certifications
- Equipment calibration dates
- Complete ultrasonic scan data (raw files)
- Finding locations and dimensions
- Disposition of findings (acceptable, repair required, engineering evaluation)
- SHM correlation data

---
*Refs: ATA 53-10 (AMM), ATA 51 (Structural Practices), ATA 45 (SHM Data), ATA 92 (Structural Models), ATA 95 (DPP)*
