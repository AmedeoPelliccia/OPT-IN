# QTG Test: 2.A.4b - Handling Qualities - BWB Ground Effect
**Revision:** 1.2.0

---
### 1. Objective
To validate that the simulator accurately models the unique aerodynamic ground effect characteristics of the Blended Wing Body during flare and landing.

### 2. Source Data Reference
- **Aircraft Data Package:** v3.2.0
- **Source File:** `../../02-AIRCRAFT_DATA_PACKAGE_OEM/01-AERO_MODEL/AERO_BWB-Flight-Model_v3.2.0.dat`
- **Flight Test Report:** FTR-AE-360-778, Section 4.5 "Landing Flare Characteristics"

### 3. Procedure
1. Configure simulator to landing approach conditions:
   - Altitude: 50 ft AGL
   - Airspeed: VREF + 5 kts
   - Configuration: Landing (full flaps)
   - Weight: MLW (Maximum Landing Weight)
   - CG: 25% MAC

2. Initiate flare maneuver at 20 ft AGL
3. Monitor pitch rate, vertical acceleration, and sink rate
4. Record control inputs and aircraft response
5. Compare against flight test data within specified tolerances

### 4. Expected Result (with Tolerances)
- **Pitch Rate during Flare:** 2.5 ± 0.3 deg/s
- **Peak Vertical Acceleration:** 1.15 ± 0.05 g
- **Touchdown Sink Rate:** 120 ± 30 ft/min
- **Control Force Gradient:** Match flight test data ± 10%
- **Ground Effect Onset Height:** 25 ± 5 ft AGL

### 5. Acceptance Criteria
- All parameters must fall within specified tolerances
- Pilot subjective assessment: "Handling characteristics representative of aircraft"
- No anomalous behavior or discontinuities observed

### 6. Test Configuration
- **Simulator Build:** v2.5.1
- **Visual System:** Active, daylight conditions
- **Motion System:** Active, Level D motion cueing
- **Weather:** Clear, no wind
- **Runway:** EHAM Runway 18R (standard test runway)

### 7. Sign-off
- **Test Pilot:** _______________  Date: _______
- **Regulatory Witness:** _______________  Date: _______
- **FFS Manager:** _______________  Date: _______

---
### 8. Cross-References
*Refs: ATA 27 (Flight Control Laws), ATA 42 (IMA software)*

### 9. Revision History
| Revision | Date | Author | Changes |
|----------|------|--------|---------|
| 1.0.0 | 2025-10-27 | J. Smith | Initial version |
| 1.1.0 | 2025-10-27 | M. Johnson | Updated tolerances based on FTR-AE-360-778 |
| 1.2.0 | 2025-10-27 | K. Williams | Added ground effect onset height criterion |
