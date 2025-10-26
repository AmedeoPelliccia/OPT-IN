# MPD Task Card: 28-60-01 - Cryo-Tank Insulation Inspection
**Revision:** 1.0.0

---
### 1.0 Task Definition
- **Description:** Verify vacuum integrity and perform thermal performance test of the cryogenic liquid hydrogen (LH2) storage tank multi-layer insulation (MLI) system.
- **Applicability:** All AMPEL360 aircraft with LH2 fuel systems.

### 2.0 Maintenance Interval
- **Threshold:** N/A
- **Interval:** Every 6000 Flight Hours or 36 Months, whichever occurs first.
- **Maintenance Philosophy:** On-Condition / Condition-Monitoring.

### 3.0 Task Requirements
- **Required Personnel:** 1x B1 Licensed Technician (Hydrogen Systems Certified).
- **Estimated Man-Hours:** 6.0 hours.
- **Required GSE:**
  - `AP360-T020`: Vacuum Pressure Gauge (calibrated within 12 months)
  - `AP360-T021`: Thermal Imaging Camera (minimum resolution: 320x240)
- **Aircraft Condition:** Aircraft depowered, LH2 tank filled to normal operating level, external temperature stabilized.
- **Safety Requirements:** 
  - Hydrogen safety training mandatory
  - H2 leak detection system active
  - Fire watch personnel on standby

### 4.0 Success Criteria
- Vacuum pressure in the insulation annulus is less than 10⁻⁵ mbar.
- Hydrogen boil-off rate is within specification (< 0.5% per day at ambient temperature).
- Thermal imaging shows no hot spots indicating insulation damage (temperature gradient < 5°C across tank surface).
- If any criteria fail, refer to AMM `28-60-00` for corrective action and potential tank depressurization procedure.

### 5.0 Source & Justification
- **Source:** Maintenance Review Board Report (MRBR), Section 3.2.1.
- **Justification:** Multi-layer insulation degradation leads to increased hydrogen boil-off, reducing operational range and creating potential safety hazards from excessive venting. Vacuum integrity is critical for maintaining cryogenic temperatures (-253°C).

### 6.0 Special Precautions
- Ensure H2 concentration monitoring is active throughout inspection.
- Maintain minimum 5-meter exclusion zone during thermal testing.
- Do not perform this task in ambient temperatures above 35°C or below -10°C.

---
*Refs: ATA 28-60 (AMM), ATA 26 (Fire Protection), ATA 45 (OMS monitoring), ATA 95 (DPP for boil-off history)*
