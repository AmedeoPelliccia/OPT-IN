# DESC_27-06-01: Control Laws and Mode Descriptions

**Document ID:** DESC_27-06-01_Control-Laws-And-Mode-Descriptions_rev1.0.0_20251030  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30

## Purpose

Describes control law modes, transition logic, and handling qualities for AMPEL360 BWB.

## Control Law Modes

### Normal Law

**Description:** Full envelope protection and optimal handling qualities

**Features:**
- Load factor limiting (±2.5g clean, -1g to +2.0g with flaps)
- Bank angle limiting (67°)
- Pitch attitude limiting (30° nose up, 15° nose down)
- Angle of attack protection (alpha floor)
- High and low-speed protection
- Turn coordination
- Spiral stability

**Stick-to-Surface Relationship:**
- Pitch: stick deflection → load factor command (C* law)
- Roll: stick deflection → roll rate command
- Yaw: pedal deflection → sideslip coordination (automatic turn coordination)

### Alternate Law 1

**Activation:** Loss of 1 AoA sensor or 1 rate gyro

**Features:**
- Reduced envelope protection (no alpha floor)
- Load factor limiting still active
- Bank angle limiting still active
- Direct pitch rate command (no load factor protection at low speeds)

### Alternate Law 2

**Activation:** Loss of 2 AoA sensors or significant sensor degradation

**Features:**
- No envelope protection
- Direct pitch and roll rate commands
- Yaw damper active
- Speed stability maintained

### Direct Law

**Activation:** Multiple sensor failures or FCC degradation

**Features:**
- Stick deflection → surface deflection (direct proportional)
- Minimal augmentation (yaw damper only if available)
- Pilot responsible for all protections
- Manual reversion mode

## Handling Qualities

Per MIL-STD-1797A:

**Normal Law:** Level 1 handling qualities across full envelope  
**Alternate Law 1:** Level 2 handling qualities  
**Alternate Law 2:** Level 2-3 handling qualities  
**Direct Law:** Level 3 handling qualities

**Short Period:**
- Frequency: 2.0-3.5 rad/sec
- Damping: 0.5-1.0

**Dutch Roll:**
- Frequency: 1.0-2.0 rad/sec
- Damping: > 0.4

---

**Document Owner:** Flight Controls Engineering  
**Next Review:** 2026-10-30
