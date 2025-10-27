# EWIS Procedure - Shield Termination and 360-Degree Bonds

**Document Type:** PROC  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-27

## 1. Purpose
This procedure establishes requirements for terminating cable shields to ensure electromagnetic compatibility (EMC) and noise immunity.

## 2. Scope
Applies to all shielded cables including twisted-shielded pairs, coaxial cables, and overall-shielded harnesses.

## 3. Shield Grounding Philosophy
- Signal shields: Ground at one end only (typically source end) to prevent ground loops.
- Power shields: Ground at both ends for safety and fault protection.
- High-frequency shields (>10 MHz): Use 360-degree bonds at both ends for RF effectiveness.

## 4. 360-Degree Bond Termination
A 360-degree bond provides circumferential shield contact for maximum EMI/EMC performance.

### 4.1 Backshell Method
- Strip cable jacket to expose shield braid.
- Fan out shield braid evenly around cable circumference.
- Slide backshell over shield braid.
- Fold shield braid back over backshell ferrule.
- Install clamping ring and torque per manufacturer specification.
- Verify electrical continuity between shield and backshell.

### 4.2 Adapter Method
- Install EMI/EMC adapter with 360-degree shield contact.
- Ensure shield makes contact around full circumference (no gaps).
- Verify adapter is bonded to equipment chassis or structure.
- Measure bond resistance: Maximum 2.5 milliohms.

## 5. Pigtail Termination (Single-Point Grounds)
- Unwrap shield braid and twist into pigtail.
- Keep pigtail length minimum (maximum 0.5 inch / 13 mm).
- Terminate pigtail to ground terminal or shield drain wire.
- Secure with solder or crimp terminal.
- Apply heat shrink over exposed shield.

## 6. Shield Integrity
- Do not cut or break shield along cable run.
- If splice is required: Overlap shields by minimum 1 inch and bond together.
- Protect exposed shields with braided sleeving or heat shrink.

## 7. Coaxial Cable Shields
- Coax shields must be grounded at both ends for RF return path.
- Use proper coax connectors with 360-degree shield contact (BNC, N-type, SMA).
- Verify impedance match: 50 ohms (RF systems) or 75 ohms (video systems).

## 8. Multi-Layer Shields
Some cables have both foil and braid shields:
- Terminate foil shield to connector shell or ground lug.
- Terminate braid shield with 360-degree bond to backshell.
- Ensure both shield layers are grounded.

## 9. Shield Discontinuities
- Minimize shield discontinuities at connectors and splices.
- Use conductive gaskets or fingerstock if gap exists.
- Measure shield transfer impedance: Maximum 10 milliohms at 100 kHz.

## 10. Special Applications

### 10.1 Avionics Data Buses (ARINC 429, MIL-STD-1553)
- Ground shields at both ends with 360-degree bonds.
- Maintain twisted-pair geometry through connectors.
- Verify differential impedance: 78 ohms ±10% (MIL-STD-1553).

### 10.2 High-Speed Data (Ethernet, AFDX)
- Use Cat5e or Cat6 shielded twisted pair.
- Ground shields at both ends.
- Maintain pair twist rate through connectors.
- Test with time-domain reflectometry (TDR) for impedance consistency.

## 11. Verification
- Measure shield continuity end-to-end: Maximum 1 ohm.
- For 360-degree bonds: Verify circumferential contact with visual inspection.
- Measure bond resistance at each termination.
- Record measurements on workmanship record.
