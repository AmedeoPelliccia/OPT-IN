# DIAG_28-60-09 — LH₂ System Schematic Overview

## Cryogenic Hydrogen Storage and Distribution System Schematic

```
                        CRYOGENIC LH₂ STORAGE AND DISTRIBUTION SYSTEM
                                  AMPEL360 AIRCRAFT

┌─────────────────────────────────────────────────────────────────────────────┐
│                          GROUND SERVICING AREA                              │
│                                                                             │
│    [Ground LH₂ Supply]                                                      │
│            │                                                                │
│            │ (Insulated Hose)                                               │
│            ↓                                                                │
│      ┌──────────┐                                                           │
│      │  Fill    │                                                           │
│      │ Coupling │ ← [Manual Disconnect]                                     │
│      └────┬─────┘                                                           │
│           │                                                                 │
└───────────┼─────────────────────────────────────────────────────────────────┘
            │
            │ [Vacuum-Jacketed Fill Line]
            ↓
      ┌─────────┐
      │  CV-01  │  Check Valve (prevents backflow)
      │ (Check) │
      └────┬────┘
           │
           ↓
      ┌─────────┐
      │  IV-01  │  Isolation Valve (fill control)
      │ (Ball)  │
      └────┬────┘
           │
           ↓
    ┌──────────────────────────────────────────────────────────────┐
    │                    CRYOGENIC TANK                            │
    │  ╔════════════════════════════════════════════════════════╗  │
    │  ║  VACUUM INSULATION SPACE (MLI, <10⁻⁴ mbar)           ║  │
    │  ║  ┌─────────────────────────────────────────────────┐  ║  │
    │  ║  │           INNER VESSEL (316L)                   │  ║  │
    │  ║  │                                                 │  ║  │
    │  ║  │  [LH₂ LIQUID]  20 K, 8 bar                     │  ║  │
    │  ║  │  Level: [═════════░░░░░░░░░░░] 75%             │  ║  │
    │  ║  │  ┌─────────────────────────────────────┐       │  ║  │
    │  ║  │  │  Sensors:                           │       │  ║  │
    │  ║  │  │  • RTD-1,2,3 (Temperature)          │       │  ║  │
    │  ║  │  │  • PT-1,2 (Pressure)                │       │  ║  │
    │  ║  │  │  • LT-1 (Level - Capacitance)       │       │  ║  │
    │  ║  │  └─────────────────────────────────────┘       │  ║  │
    │  ║  └─────────────────────────────────────────────────┘  ║  │
    │  ╚════════════════════════════════════════════════════════╝  │
    │                                                              │
    │  [VG-1] Vacuum Gauge → Insulation Space                      │
    └───────┬────────────────────────────────────────┬─────────────┘
            │                                        │
            │ [Distribution Line]                    │ [Vent Line]
            ↓                                        ↓
      ┌─────────┐                              ┌─────────┐
      │  IV-02  │                              │  PRV-01 │  Relief Valve
      │ (Ball)  │  Isolation Valve             │ (Relief)│  Set: 10 bar
      └────┬────┘                              └────┬────┘
           │                                        │
           ↓                                        ↓
      ┌─────────┐                              ┌─────────┐
      │  CV-02  │  Check Valve                 │  BD-01  │  Burst Disc
      │ (Check) │  (prevents reverse flow)     │ (Burst) │  Rating: 15 bar
      └────┬────┘                              └────┬────┘
           │                                        │
           │ [Vacuum-Jacketed Line]                 │ [Vent Stack]
           │                                        │
           ↓                                        ↓
      ┌─────────┐                           [Overboard Vent]
      │  PT-3   │  Pressure Transducer       (Safe Location)
      │         │  (Line Pressure)
      └────┬────┘
           │
           ↓
      ┌─────────┐
      │  FT-1   │  Flow Meter (Coriolis)
      │         │  (Mass Flow Measurement)
      └────┬────┘
           │
           ↓
      ┌─────────┐
      │  RV-01  │  Regulator Valve
      │ (Globe) │  (Pressure Control)
      └────┬────┘
           │
           ↓
    ┌──────────────────┐
    │  TO PROPULSION   │
    │  SYSTEM INTERFACE│ ← [Fuel Cell or Combustor]
    │  (ATA 49 or 73)  │
    └──────────────────┘

┌─────────────────────────────────────────────────────────────────────────────┐
│                        SAFETY & MONITORING SYSTEMS                          │
│                                                                             │
│  • Hydrogen Detectors (HD-1,2,3) - Multiple locations                       │
│  • Fire Detection System (ATA 26 interface)                                 │
│  • Emergency Shutdown System (cockpit-actuated)                             │
│  • Boiloff Monitoring System (continuous)                                   │
│  • Vacuum Level Monitoring (VG-1)                                           │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘

Legend:
  IV  = Isolation Valve
  CV  = Check Valve
  RV  = Regulator Valve
  PRV = Pressure Relief Valve
  BD  = Burst Disc
  PT  = Pressure Transducer
  RTD = Resistance Temperature Detector
  LT  = Level Transmitter
  FT  = Flow Transmitter
  VG  = Vacuum Gauge
  HD  = Hydrogen Detector
```

---

## Notes

1. All valves in cryogenic service are cryogenic-rated (materials: 316L, Inconel, Vespel seats)
2. Vacuum-jacketed lines maintain LH₂ at cryogenic temperature during distribution
3. Relief systems sized per API 520 for maximum credible fire exposure
4. Redundant pressure sensors for flight-critical monitoring
5. Hydrogen detectors alarm at 1% H₂ (25% LEL) with automatic isolation capability

---

**Revision:** 1.0.0  
**Date:** 2025-10-30  
**Prepared by:** Cryogenic Systems Engineering

---

*This diagram is part of ATA 28-60-00 — Cryogenic H₂ Storage and Distribution*
