# Master Qualification Test Guide (QTG)
## AMPEL360 Full Flight Simulator

**Document Number:** QTG-AMPEL360-FFS-001  
**Revision:** 2.1.0  
**Date:** 2025-10-27  
**Classification:** Controlled - Regulatory Submission

---

## 1. Purpose and Scope

This Master Qualification Test Guide (QTG) defines the complete set of tests required to achieve and maintain EASA CS-FSTD(A) Level D qualification for the AMPEL360 Full Flight Simulator. The QTG establishes objective and subjective validation criteria that demonstrate the simulator's fidelity to the actual aircraft across all operational envelopes.

## 2. Applicable Regulations and Standards

- **EASA CS-FSTD(A)** - Certification Specifications for Aeroplane Flight Simulation Training Devices
- **FAA AC 120-40C** - Airplane Simulation Device Qualification
- **ICAO Doc 9625** - Manual of Criteria for the Qualification of Flight Simulation Training Devices

## 3. Aircraft Data Package Reference

All test criteria are derived from the official Aircraft Data Package (ADP) maintained under version control:
- **Current ADP Version:** v3.2.0
- **ADP Location:** `../02-AIRCRAFT_DATA_PACKAGE_OEM/`
- **ADP Manifest:** `MANIFEST_Data-Package-v3.2.0.md`
- **Digital Signature:** `MANIFEST_Data-Package-v3.2.0.sig`

## 4. Test Categories

### 4.1 Performance Tests (Category 1)
Validation of aircraft performance characteristics including:
- Takeoff performance
- Climb performance
- Cruise performance
- Descent performance
- Landing performance

### 4.2 Handling Qualities Tests (Category 2)
Validation of aircraft handling and control characteristics:
- **Test 2.A.4b:** BWB Ground Effect (see `01-OBJECTIVE_TESTS/QTG-TEST_2.A.4b_Handling-Qualities-BWB-Ground-Effect.md`)
- Control harmony and forces
- Stall characteristics
- Dynamic response

### 4.3 Systems Tests (Category 3)
Validation of aircraft systems modeling and integration:
- **Test 3.B.2:** H₂ Fuel Cell Failure (see `01-OBJECTIVE_TESTS/QTG-TEST_3.B.2_Systems-H2-Fuel-Cell-Failure.md`)
- Electrical system
- Hydraulic system
- Flight control system
- Environmental control system

### 4.4 Motion System Tests (Category 4)
Validation of motion cueing system fidelity

### 4.5 Visual System Tests (Category 5)
Validation of visual system accuracy and performance

## 5. Critical Cross-System Dependencies

The AMPEL360 aircraft incorporates several novel systems that require explicit validation:

### 5.1 Blended Wing Body (BWB) Aerodynamics
- Ground effect characteristics significantly different from conventional aircraft
- Flight control law integration (ATA 27) affects handling throughout envelope
- Reference: ATA 27 Flight Control Laws documentation

### 5.2 Cryogenic Hydrogen Propulsion
- Fuel cell power generation (ATA 24-60)
- Cryogenic H₂ storage and distribution (ATA 28-60)
- H₂ leak detection and fire protection (ATA 26-40)
- System integration critical for emergency procedure training

### 5.3 Integrated Modular Avionics (IMA)
- Quantum-Inspired Scheduler (QIS) resource management (ATA 42-60)
- System degradation and reconfiguration modeling
- Real-time task allocation affects multiple system behaviors

## 6. Test Execution Requirements

### 6.1 Test Conditions
All tests must be conducted with:
- Simulator in current qualified configuration
- All motion, visual, and sound systems operational (unless specifically excluded)
- Calibrated and certified test equipment
- Qualified test pilots and engineers

### 6.2 Documentation Requirements
Each test execution must include:
- Pre-test briefing documentation
- Test data recording (minimum 100 Hz for critical parameters)
- Post-test analysis and comparison to aircraft data
- Sign-off by authorized personnel

### 6.3 Tolerances and Acceptance Criteria
Test results must meet or exceed tolerances specified in individual test procedures. Any exceedances require:
- Engineering analysis
- Authority notification
- Corrective action plan

## 7. Test Schedule and Maintenance

### 7.1 Initial Qualification
Complete QTG test suite executed prior to initial EASA certification

### 7.2 Recurrent Testing
Selected tests repeated annually or after significant modifications

### 7.3 Configuration Control
All simulator changes documented and assessed for QTG impact

## 8. References

- PLAN_Master-Certification-Strategy_rev1.0.0_20280115.md
- Aircraft Data Package v3.2.0
- EASA Qualification Certificate CERT_EASA-Level-D_ID-EU-1234_rev2.0.0_20290420.md

## 9. Approval and Revision History

| Revision | Date | Author | Changes | Approved By |
|----------|------|--------|---------|-------------|
| 1.0.0 | 2025-10-27 | Engineering Team | Initial QTG | Chief Engineer |
| 2.0.0 | 2025-10-27 | Engineering Team | Updated for ADP v3.0.0 | Chief Engineer |
| 2.1.0 | 2025-10-27 | Engineering Team | Updated for ADP v3.2.0, added H₂ system tests | Chief Engineer |

---

**Document Owner:** AMPEL360 Flight Training Division  
**Custodian:** FFS Engineering Manager  
**Review Frequency:** Annual or upon ADP update
