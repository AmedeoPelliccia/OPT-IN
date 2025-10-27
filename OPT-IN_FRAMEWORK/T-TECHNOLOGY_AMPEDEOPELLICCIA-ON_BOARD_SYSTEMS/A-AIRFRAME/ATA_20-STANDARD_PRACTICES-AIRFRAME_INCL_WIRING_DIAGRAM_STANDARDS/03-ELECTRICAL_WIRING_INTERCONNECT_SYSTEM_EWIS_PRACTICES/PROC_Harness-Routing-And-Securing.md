# EWIS Procedure - Harness Routing and Securing

**Document Type:** PROC  
**Revision:** 1.0.0  
**Effective Date:** 2028-09-01

## 1. Purpose
This procedure establishes requirements for routing and securing electrical harnesses.

## 2. Scope
Applies to all EWIS harness installations including power, signal, and data wiring.

## 3. General Routing Requirements
- Route harnesses away from sharp edges, hot surfaces, and moving parts.
- Maintain minimum separation distances per DATA_Route-Separation-Matrix.csv.
- Avoid routing in areas where fluids may drip or spray onto harnesses.
- Support harnesses at intervals specified in DATA_Clamp-Spacings-And-Bend-Radii.csv.

## 4. Bend Radius Requirements
Minimum bend radius for wire bundles:
- Power cables and large gauge wire: 10 times bundle diameter
- Signal and data cables: 8 times bundle diameter  
- Shielded cables: 12 times bundle diameter
- Coaxial cables: Per manufacturer specification (typically 6-10 times diameter)

## 5. Clamp Installation
- Use appropriate clamp type for bundle size and location.
- Install cushion clamps on vibrating structures or where chafing may occur.
- Clamps must not compress bundle more than 10% of diameter.
- Orient clamp fasteners away from bundle to prevent chafing.
- Torque clamp fasteners per standard torque table.

## 6. Clamp Spacing
Reference DATA_Clamp-Spacings-And-Bend-Radii.csv for maximum clamp spacing:
- Vertical runs: Closer spacing to prevent sagging
- Horizontal runs: Standard spacing
- Near connectors: Support within 3 inches of connector to prevent strain

## 7. Bundle Dressing
- Arrange wires in bundle to prevent twisting.
- Route larger gauge wires on outside of bundle where possible.
- Avoid crossing harnesses at right angles; prefer parallel or shallow angle crossings.
- Tie bundles with appropriate tie wraps:
  - Standard: Every 6-12 inches along run
  - Near clamps: Within 1 inch of clamp
  - Tie wrap tension: Snug but not compressing bundle

## 8. Special Zones

### 8.1 High-Voltage Zones
- Route HV cables in dedicated conduit or with additional spacing.
- Mark HV cables with orange identification sleeves.
- Do not route HV and low-level signal wires in same bundle.

### 8.2 Fire Zones
- Use fire-resistant sleeving or conduit in designated fire zones.
- Support at closer intervals (50% of standard spacing).
- Ensure fire barriers are sealed after routing.

### 8.3 Wet Zones
- Route harnesses with continuous downward slope to drain points.
- Drill drain holes in low points of conduit.
- Use moisture-resistant tie wraps and clamps.

### 8.4 Wheel Wells and Environmental Extremes
- Use abrasion-resistant sleeving.
- Protect from impacts with rigid conduit or shields.
- Inspect more frequently for damage.

## 9. Connector Support
- Support connector within 3 inches of backshell.
- Ensure no tension on connector pins when bundle is moved.
- Orient connectors for ease of access and to prevent moisture entry.

## 10. Identification
- Install wire identification markers every 15 inches and at both ends.
- Mark harness identification on tie wrap tag at each clamp location.
- Place identification sleeves to be visible without moving bundle.

## 11. Inspection
- Verify all clamps are secure and properly oriented.
- Check for proper bend radius throughout route.
- Ensure no chafing against structures or other harnesses.
- Verify separation requirements are met.
