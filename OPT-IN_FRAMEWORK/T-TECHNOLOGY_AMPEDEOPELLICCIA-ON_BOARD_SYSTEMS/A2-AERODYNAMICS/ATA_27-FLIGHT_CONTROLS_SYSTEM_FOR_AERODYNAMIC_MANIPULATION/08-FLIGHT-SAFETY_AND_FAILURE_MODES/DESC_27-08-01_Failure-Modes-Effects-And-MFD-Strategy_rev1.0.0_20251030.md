# DESC_27-08-01: Failure Modes, Effects, and MFD Strategy

**Document ID:** DESC_27-08-01_Failure-Modes-Effects-And-MFD-Strategy_rev1.0.0_20251030  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30

## Purpose

Describes failure modes, effects analysis (FMEA), and multi-function display (MFD) annunciation strategy per ARP4761.

## FMEA Summary

### Catastrophic Failures (Probability < 10⁻⁹ per FH)

| Failure | Effect | Mitigation |
|---------|--------|------------|
| Loss of all FCCs | Complete loss of fly-by-wire control | Triple redundant FCCs with dissimilar hardware/software |
| Dual actuator jam on same surface | Control surface jammed | Load limiting, jam detection, mechanical override |
| Erroneous AoA data to all channels | Incorrect envelope protection | Triple redundant AoA with voting and cross-check |

### Hazardous Failures (Probability < 10⁻⁷ per FH)

| Failure | Effect | Mitigation |
|---------|--------|------------|
| Single FCC failure | Transition to standby FCC | Automatic switchover < 20 ms |
| Single actuator failure | Reduced control authority | Redundant actuators per surface |
| Single AoA sensor failure | Degraded envelope protection | Triple redundant with voting |

### Major Failures (Probability < 10⁻⁵ per FH)

| Failure | Effect | Mitigation |
|---------|--------|------------|
| Control cable break | Loss of mechanical backup | Regular inspection and replacement |
| Position sensor failure | Reduced position accuracy | Dual redundant position sensors |

## Graceful Degradation Strategy

**Philosophy:** System degrades through defined modes maintaining safe flight at each level.

**Degradation Path:**
1. Normal Law (all systems operational)
2. Alternate Law 1 (single sensor or FCC failure)
3. Alternate Law 2 (dual sensor failure)
4. Direct Law (multiple failures)
5. Mechanical backup (complete electrical failure) — if applicable

## MFD Annunciation

**Fault Levels:**
- **CAUTION (Amber):** Single failure, redundancy lost
- **WARNING (Red):** Multiple failures, degraded control
- **ADVISORY (Cyan):** Maintenance action required (no operational impact)

**Examples:**
- "FCC 1 FAULT" (Amber): Primary FCC failed, standby active
- "ELEV ACTR FAULT" (Amber): One elevator actuator failed
- "FLT CTL DEGRADED" (Red): Multiple failures, direct law active

---

**Document Owner:** Safety Engineering  
**Next Review:** 2026-10-30
