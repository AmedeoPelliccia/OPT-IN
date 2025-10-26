# Aircraft Weighing Report Template

## Document Control
- **Report ID:** [e.g., WR-001-01]
- **Revision:** rev1.0.0
- **Date:** 2028-07-01
- **Template Version:** 1.0.0

---

## 1. Aircraft Identification

| Field | Value |
|-------|-------|
| Manufacturer Serial Number (MSN) | |
| Aircraft Type | AMPEL360 |
| Registration | |
| Weighing Date | |
| Weighing Location | |

---

## 2. Procedure and Configuration

| Field | Value |
|-------|-------|
| Procedure Document | PROC_Aircraft-Weighing-On-Load-Cells |
| Procedure Revision | |
| Configuration Type | ☐ STANDARD  ☐ NON-STANDARD |
| Configuration Hash | |
| Engineering Order (if non-standard) | |

---

## 3. Environmental Conditions

| Parameter | Value | Tolerance | Status |
|-----------|-------|-----------|--------|
| Ambient Temperature (°C) | | 18-27 | ☐ PASS  ☐ FAIL |
| Barometric Pressure (hPa) | | 950-1050 | ☐ PASS  ☐ FAIL |
| Relative Humidity (%) | | N/A | |
| Wind Speed (kt) | | ≤ 2 | ☐ PASS  ☐ FAIL |
| Doors Status | | CLOSED | ☐ PASS  ☐ FAIL |

---

## 4. Weighing Equipment

| Equipment | ID/Serial | Calibration Date | Calibration Due | Status |
|-----------|-----------|------------------|-----------------|--------|
| Load Cell - Nose | | | | ☐ PASS |
| Load Cell - Main L | | | | ☐ PASS |
| Load Cell - Main R | | | | ☐ PASS |
| Electronic Level | | | | ☐ PASS |
| Barometer | | | | ☐ PASS |
| Thermometer | | | | ☐ PASS |
| Hygrometer | | | | ☐ PASS |

---

## 5. Leveling Data

| Axis | Target | Measured | Tolerance | Status |
|------|--------|----------|-----------|--------|
| Pitch (°) | 0.00 | | ± 0.05 | ☐ PASS  ☐ FAIL |
| Roll (°) | 0.00 | | ± 0.05 | ☐ PASS  ☐ FAIL |

**Leveling Reference Points:** Per ATA 06 datum definitions

---

## 6. Raw Weight Measurements

| Position | Load Cell Reading (kg) | Arm (FS, m) | Moment (kg·m) |
|----------|------------------------|-------------|---------------|
| Nose Gear | | | |
| Main Gear Left | | | |
| Main Gear Right | | | |
| **SUBTOTAL (Raw)** | | | |

---

## 7. Corrections

Reference: `DATA_Corrections-Tables_rev1.0.0_20280701.csv`

| Category | Item | Δ Mass (kg) | Arm (m) | Δ Moment (kg·m) | Uncertainty (kg) |
|----------|------|-------------|---------|-----------------|------------------|
| | | | | | |
| | | | | | |
| | | | | | |
| **TOTAL CORRECTIONS** | | | | | |

---

## 8. Final Results

| Parameter | Value | Unit |
|-----------|-------|------|
| **Basic Empty Weight (BEW)** | | kg |
| **Center of Gravity (CG), FS** | | m |
| **Center of Gravity (CG), %MAC** | | % |
| **Combined Uncertainty (U95)** | | % BEW |
| **Uncertainty Status** | | ☐ ≤ 0.1%  ☐ > 0.1% |

---

## 9. Stability and Repeatability Checks

### 9.1 Stabilization Check
- **Initial Reading:** ________ kg  (Time: ________)
- **Reading after 10 min:** ________ kg  (Time: ________)
- **Reading after 12 min:** ________ kg  (Time: ________)
- **Drift:** ________ kg (________ % of total weight)
- **Acceptance:** ☐ PASS (drift ≤ 0.02%)  ☐ FAIL (drift > 0.02%)

### 9.2 Repeatability Check
- **First Weighing:** ________ kg
- **Second Weighing (after lift/lower):** ________ kg
- **Difference:** ________ kg (________ %)
- **Acceptance:** ☐ PASS (difference ≤ 0.05%)  ☐ FAIL (difference > 0.05%)

---

## 10. Calculation Verification

**Formulas Used (per ATA 08 README.md):**

1. **Total Weight:** \(W = \sum W_i\)
2. **CG (FS):** \(x_{CG} = \frac{\sum (W_i \cdot x_i)}{W}\)
3. **%MAC:** \(\%\text{MAC} = 100 \cdot \frac{x_{CG} - x_{LE,MAC}}{\text{MAC}}\)

**Independent Verification:** ☐ COMPLETED  ☐ PENDING

---

## 11. Configuration Checklist

- [ ] Hydraulic fluid: FULL
- [ ] Potable water: EMPTY
- [ ] Removable equipment: REMOVED
- [ ] Battery SOC: 50% ± 5% (or corrected)
- [ ] All doors: CLOSED
- [ ] Landing gear: DOWN and LOCKED
- [ ] Tire pressures: VERIFIED
- [ ] Personnel clear of aircraft
- [ ] Configuration hash: CALCULATED

---

## 12. Deviations and Notes

| Item | Description | Impact | Corrective Action |
|------|-------------|--------|-------------------|
| | | | |

---

## 13. Data Export

### 13.1 JSON Payload (for ATA 95 Digital Product Passport)
- **Generated:** ☐ YES  ☐ NO
- **File Name:** `weighing-report-[MSN]-[DATE].json`
- **Schema Validation:** ☐ PASS  ☐ FAIL

### 13.2 PDF Archive
- **Generated:** ☐ YES  ☐ NO
- **File Name:** `REPORT_Aircraft-Weighing-[MSN]-[DATE].pdf`
- **Digital Signatures:** ☐ APPLIED  ☐ PENDING

---

## 14. Approvals

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Weight & Balance Technician | | | |
| Weight & Balance Engineer | | | |
| Quality Assurance | | | |

---

## 15. Distribution

- [ ] Engineering (original)
- [ ] Quality Assurance (copy)
- [ ] Aircraft Records (copy)
- [ ] ATA 95 Digital Product Passport (JSON)
- [ ] Customer (if requested)

---

**END OF REPORT**

*This template complies with FAA AC 120-27F and SAE AIR1750D standards.*
