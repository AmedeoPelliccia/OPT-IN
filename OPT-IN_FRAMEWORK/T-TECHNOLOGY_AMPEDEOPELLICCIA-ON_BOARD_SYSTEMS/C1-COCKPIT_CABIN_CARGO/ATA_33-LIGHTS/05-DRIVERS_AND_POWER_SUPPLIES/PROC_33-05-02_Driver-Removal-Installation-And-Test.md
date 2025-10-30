# PROC_33-05-02: Driver Removal, Installation, and Test

---

### Document Control
- **Document ID:** PROC_33-05-02
- **Revision:** A
- **Effective Date:** 2025-10-30

---

## 1. Scope
Removal, installation, and testing of LED drivers and power supplies.

## 2. Tools
- Screwdrivers (Phillips, flat)
- Torque wrench
- Multimeter
- Oscilloscope (for ripple measurement)
- ESD wrist strap

## 3. Safety
- **WARNING:** ESD-sensitive components - use ESD protection
- **CAUTION:** Ensure power OFF before work

## 4. Removal

### 4.1 Procedure
1. Open circuit breaker
2. Access driver location (PSU, overhead panel, etc.)
3. Disconnect input power connector
4. Disconnect output LED connector
5. Remove mounting fasteners
6. Extract driver unit
7. Inspect for damage (burn marks, swollen capacitors, corrosion)

## 5. Installation

### 5.1 Pre-Installation
- Verify replacement part number matches IPC
- Inspect new driver for shipping damage
- Check connectors for cleanliness

### 5.2 Procedure
1. Position driver in mounting location
2. Install mounting fasteners, torque per spec
3. Connect output LED connector
4. Connect input power connector
5. Verify connections secure

## 6. Functional Test

### 6.1 Basic Function
1. Close circuit breaker
2. Verify LED illuminates
3. Check dimming function (if applicable)
4. Verify no abnormal noise (buzzing)

### 6.2 Output Current Test (optional)
1. Open LED output circuit
2. Connect ammeter in series
3. Measure output current
4. **Acceptance:** Current within ±5% of rated value

### 6.3 Ripple Test (optional, requires oscilloscope)
1. Measure AC component on DC output
2. **Acceptance:** Ripple ≤5% of DC level

## 7. Troubleshooting

| Symptom | Probable Cause | Action |
|---------|----------------|--------|
| No output | Driver failure | Replace driver |
| Flicker | Ripple excessive, poor connection | Check connections, replace driver |
| Dim output | Current low, LED degradation | Test current, replace driver or LED |
| Overheating | Poor thermal contact, overload | Check heatsink, verify LED load |

---

**END OF PROCEDURE**
