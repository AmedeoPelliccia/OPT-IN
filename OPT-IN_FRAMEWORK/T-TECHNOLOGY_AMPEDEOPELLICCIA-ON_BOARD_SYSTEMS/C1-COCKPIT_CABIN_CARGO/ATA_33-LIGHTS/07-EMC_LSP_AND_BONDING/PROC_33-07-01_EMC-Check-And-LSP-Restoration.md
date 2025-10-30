# PROC_33-07-01: EMC Check and LSP Restoration

---

### Document Control
- **Document ID:** PROC_33-07-01
- **Revision:** A
- **Effective Date:** 2025-10-30

---

## 1. Scope
Procedures for EMC verification and Lightning Strike Protection (LSP) bonding restoration for lighting assemblies.

## 2. Regulatory Basis
- **[RTCA DO-160G Section 22](https://www.rtca.org/content/standards-guidance-materials):** Lightning Induced Transient Susceptibility
- **[ATA-20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/README.md):** Standard Practices - Bonding and Grounding

## 3. LSP Bonding Requirements

### 3.1 Purpose
- Provide low-impedance path for lightning current
- Protect against lightning-induced damage
- Ensure EMC compliance

### 3.2 Bonding Resistance Limits
- **Primary Structure Bonding:** ≤2.5 milliohms (mΩ)
- **Equipment Bonding:** ≤2.5 milliohms (mΩ)
- **Measurement Method:** 4-wire Kelvin measurement (preferred) or 2-wire

## 4. Test Equipment
- **Milliohm Meter:** 4-wire Kelvin capability, 0.1 mΩ resolution
- **Calibration:** Annual, NIST-traceable
- **Test Current:** Typically 10A DC for bonding tests

## 5. LSP Bonding Test Procedure

### 5.1 Pre-Test
1. Verify test equipment calibration status
2. Clean bonding surfaces (remove paint, corrosion)
3. Identify bonding points per AMM

### 5.2 Test Procedure (4-Wire Kelvin)
1. Connect current source leads to bonding points
2. Connect voltage sense leads close to bonding interface
3. Apply test current (typically 10A)
4. Read resistance in milliohms
5. **Acceptance:** ≤2.5 mΩ

### 5.3 Failed Bonding
If resistance >2.5 mΩ:
1. Inspect bonding jumper for corrosion, damage
2. Check torque on fasteners
3. Clean bonding surfaces
4. Re-torque bonding fasteners per [ATA-20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/README.md)
5. Re-test
6. Replace bonding jumper if still failing

## 6. LSP Bonding Restoration After Lighting Removal/Installation

### 6.1 Procedure
1. Clean bonding surfaces (aluminum wool or Scotch-Brite)
2. Apply corrosion inhibitor if specified
3. Install bonding jumper
4. Torque fasteners per specification (typically 25-35 in-lbs)
5. Perform bonding resistance test
6. Document results

### 6.2 Bonding Jumper Specifications
- **Material:** Copper braid or tinned copper braid
- **AWG Size:** Per AMM (typically 10-14 AWG)
- **Length:** Shortest practical path
- **Termination:** Ring terminals, crimped per [ATA-20](../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/README.md)

## 7. EMC Verification

### 7.1 DO-160 Compliance
All lighting equipment must have [DO-160G](https://www.rtca.org/content/standards-guidance-materials) qualification:
- **Section 22:** Lightning protection
- Test evidence with SHA-256 hash
- Supplier test reports retained

### 7.2 Field EMC Checks
After installation or repair:
1. Verify no EMC interference with avionics (radio check)
2. Check for LED flicker sync with avionics (rare but possible)
3. Document any anomalies

## 8. Documentation

### 8.1 Required Records
- Bonding resistance measurements
- Test equipment calibration ID
- Bonding jumper part number
- Torque values applied
- Technician name and stamp
- SHA-256 of test photos (if applicable)

---

**END OF PROCEDURE**
