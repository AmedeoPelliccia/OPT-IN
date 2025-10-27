# PROC 54-03-02: Pylon Removal, Installation, and Checks

**Revision:** 1.0.0  
**Effectivity:** All AMPEL360 aircraft

## Critical Safety Warning
**DANGER:** This procedure involves removal of primary structure. Any error can result in engine separation during flight. This procedure may only be performed by certified technicians with specific training on AMPEL360 pylon systems.

## Purpose
This procedure describes the removal and installation of the complete engine pylon assembly, including all associated checks and inspections.

## Restrictions
- This procedure requires **Engineering Disposition (ED)** approval before commencing if:
  - Pylon has any known structural damage
  - Any mount fitting has been previously repaired
  - Aircraft has experienced hard landing or bird strike in nacelle area
  
## Required Personnel
- **Minimum crew:** 4 certified technicians
- **Supervisor:** Must be present throughout procedure
- **QA Inspector:** Must verify all critical steps

## Required Equipment
- Engine hoist and support stand (certified for 5,000 kg)
- Pylon support fixture (P/N: AP360-GSE-5410)
- Calibrated torque wrenches: 200 Nm, 500 Nm, 1000 Nm ranges
- Dial indicators (0.01 mm resolution)
- Precision alignment tools
- Complete socket and wrench set

## Prerequisites
1. Engine must be removed per ATA 71 procedures
2. All systems disconnected (fuel, hydraulic, electrical, pneumatic)
3. Aircraft on jacks with proper support
4. Work area clear and well-lit

## Removal Procedure

### 1. Preparation and System Disconnection
**Step 1.1:** Verify engine has been removed and is safely supported away from aircraft.

**Step 1.2:** Disconnect all systems routing through pylon:
- Fuel supply and return lines - cap and plug all openings
- Hydraulic lines - depressurize and cap
- Electrical harnesses - protect connectors
- Pneumatic ducts - cap and tag
- Fire suppression lines - isolate and cap

**Step 1.3:** Document all disconnections with photos for reinstallation reference.

### 2. Remove Aerodynamic Fairings
**Step 2.1:** Remove pylon-to-wing fairings (fasteners per DATA 54-03-04).

**Step 2.2:** Remove pylon-to-fuselage fairings.

**Step 2.3:** Store fairings in protected area to prevent damage.

### 3. Install Pylon Support Fixture
**Step 3.1:** Position pylon support fixture under pylon structure.

**Step 3.2:** Raise fixture to contact pylon lower surface.

**Step 3.3:** Adjust fixture to carry pylon weight - verify with load indicator.

**QA HOLD POINT:** Inspector must verify proper support before proceeding.

### 4. Remove Pylon Attachment Bolts

**Step 4.1 - Forward Attachments (Left Side):**
- Remove locking wire
- Loosen bolts in alternating sequence
- Remove bolts and place in labeled container
- Inspect bolt threads - any damage requires bolt replacement

**Step 4.2 - Forward Attachments (Right Side):**
- Repeat Step 4.1 for right side
- **NOTE:** Pylon is now supported only by aft attachment and fixture

**Step 4.3 - Aft Attachment:**
- Remove locking wire
- Loosen bolt while monitoring pylon position
- Remove bolt
- **VERIFY:** Pylon weight is fully on support fixture

### 5. Remove Pylon Assembly
**Step 5.1:** With all technicians positioned, carefully lower pylon on support fixture.

**Step 5.2:** Move pylon clear of aircraft.

**Step 5.3:** Place on pylon storage stand.

### 6. Inspect Airframe Attach Points
**Step 6.1:** Clean all attach point areas.

**Step 6.2:** Perform detailed visual inspection of:
- Attachment fitting bores for elongation, cracks, or corrosion
- Bushings for wear or movement
- Surrounding structure for cracks

**Step 6.3:** Perform NDT inspection per PROC 54-07-03 (Eddy Current required).

**QA HOLD POINT:** Inspector must review and accept all inspection findings.

## Installation Procedure

### 7. Prepare for Installation
**Step 7.1:** Verify pylon has been inspected and accepted for installation.

**Step 7.2:** Verify all new bolts, nuts, and washers are available (old hardware must NOT be reused).

**Step 7.3:** Apply anti-seize compound to bolt threads per ATA 20.

### 8. Position Pylon
**Step 8.1:** Carefully position pylon on support fixture.

**Step 8.2:** Raise pylon to mate with airframe attach fittings.

**Step 8.3:** Use alignment tools to achieve precise positioning.

### 9. Install Attachment Bolts

**Step 9.1 - Aft Attachment:**
- Install new bolt with washer
- Hand-tighten only at this stage
- Verify alignment is correct

**Step 9.2 - Forward Attachments:**
- Install new bolts at all forward attach points
- Hand-tighten only
- Verify all fittings are properly aligned

### 10. Torque Attachment Bolts

**CRITICAL:** This is a multi-stage torque procedure. All torque wrenches must be calibrated within 90 days.

**Step 10.1:** Torque all bolts to **30% of final torque** in sequence:
- Aft attachment first
- Forward left
- Forward right

**Step 10.2:** Torque all bolts to **60% of final torque** in same sequence.

**Step 10.3:** Torque all bolts to **100% of final torque** per DATA 54-03-04:
- Aft attachment: **950 Nm ± 25 Nm**
- Forward attachments: **850 Nm ± 25 Nm each**

**Step 10.4:** Mark all bolts with torque seal.

**Step 10.5:** Install and torque locking nuts (if applicable).

**Step 10.6:** Install safety wire per ATA 20 standard practices.

**QA HOLD POINT:** Inspector must verify all torques and safety wiring.

### 11. Remove Support Fixture
**Step 11.1:** Carefully lower and remove pylon support fixture.

**Step 11.2:** Verify no interference or contact issues.

### 12. Alignment Checks
**Step 12.1:** Measure pylon alignment using precision tools:
- Longitudinal alignment: ± 0.5 mm
- Lateral alignment: ± 0.3 mm
- Angular alignment: ± 0.1 degrees

**Step 12.2:** Document all measurements in maintenance record.

**Step 12.3:** If out of tolerance, notify Engineering - do NOT proceed with engine installation.

### 13. Reinstall Fairings and Reconnect Systems
**Step 13.1:** Reinstall all aerodynamic fairings.

**Step 13.2:** Reconnect all systems per installation documentation.

**Step 13.3:** Perform system leak checks and functional tests as required.

### 14. Final Documentation
**Step 14.1:** Complete repair record per `/schemas/repair-record.schema.json`.

**Step 14.2:** Record all torque values and alignment measurements.

**Step 14.3:** Obtain QA inspector signature.

**Step 14.4:** Update aircraft maintenance log.

## Acceptance Criteria
- All bolts torqued to specification with safety wire installed
- Alignment within specified tolerances
- All NDT inspections passed
- All systems reconnected and tested
- Complete documentation with QA approval

## Post-Installation Requirements
- Engine installation per ATA 71
- Engine ground run per ATA 71
- Flight test (if required by Engineering)

## References
- ATA 20: Standard torqueing and safety wiring
- ATA 71: Engine installation procedures
- PROC 54-07-03: NDT procedures
- DATA 54-03-04: Pylon specifications and torque values

**Rev 1.0.0 (2028-12-05):** Initial release
