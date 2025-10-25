# Hardware Catalog: Standard Wire and Cable
**Revision:** 3.1.0

---

## Overview

This catalog contains approved aircraft wire and cable for AMPEL360 electrical systems. All wire meets or exceeds applicable MIL-W specifications for aerospace applications.

---

## MIL-W-22759 Series - Teflon Insulated Wire (High Temperature)

| Part Number         | Description                       | AWG Size | Insulation | Voltage Rating | Temp Rating |
| :------------------ | :-------------------------------- | :------- | :--------- | :------------- | :---------- |
| **M22759/16-20-9**  | WIRE, TEFLON, SINGLE, 20 AWG, WHITE | 20     | PTFE       | 600V           | 200°C       |
| **M22759/16-22-9**  | WIRE, TEFLON, SINGLE, 22 AWG, WHITE | 22     | PTFE       | 600V           | 200°C       |
| **M22759/16-24-9**  | WIRE, TEFLON, SINGLE, 24 AWG, WHITE | 24     | PTFE       | 600V           | 200°C       |
| **M22759/16-18-9**  | WIRE, TEFLON, SINGLE, 18 AWG, WHITE | 18     | PTFE       | 600V           | 200°C       |
| **M22759/16-16-9**  | WIRE, TEFLON, SINGLE, 16 AWG, WHITE | 16     | PTFE       | 600V           | 200°C       |

### Color Code Availability
All wire available in standard colors: White (9), Black (19), Red (2), Blue (6), Green (5), Yellow (3), Orange (12)

---

## MIL-W-81381 Series - Shielded Cable (Twisted Pair)

| Part Number         | Description                       | AWG Size | Pairs | Shield Type | Voltage Rating |
| :------------------ | :-------------------------------- | :------- | :---- | :---------- | :------------- |
| **M81381/12-22-1**  | CABLE, SHIELDED, TWISTED PAIR, 22 AWG | 22    | 1     | Tinned Copper Braid | 300V |
| **M81381/12-20-1**  | CABLE, SHIELDED, TWISTED PAIR, 20 AWG | 20    | 1     | Tinned Copper Braid | 300V |
| **M81381/12-22-2**  | CABLE, SHIELDED, TWO TWISTED PAIR, 22 AWG | 22 | 2  | Tinned Copper Braid | 300V |

---

## MIL-W-16878 Series - General Purpose Hook-Up Wire

| Part Number         | Description                       | AWG Size | Insulation | Voltage Rating | Temp Rating |
| :------------------ | :-------------------------------- | :------- | :--------- | :------------- | :---------- |
| **M16878/4-BG-0**   | WIRE, HOOK-UP, 20 AWG, BLACK     | 20       | PVC        | 600V           | 105°C       |
| **M16878/4-BG-1**   | WIRE, HOOK-UP, 18 AWG, BLACK     | 18       | PVC        | 600V           | 105°C       |
| **M16878/4-BG-2**   | WIRE, HOOK-UP, 16 AWG, BLACK     | 16       | PVC        | 600V           | 105°C       |
| **M16878/4-BG-3**   | WIRE, HOOK-UP, 14 AWG, BLACK     | 14       | PVC        | 600V           | 105°C       |

---

## Wire Specifications

### Current Carrying Capacity (Free Air, 25°C Ambient)

| AWG Size | Conductor Area (mm²) | Max Current (A) | Resistance (Ω/1000 ft) |
| :------- | :------------------- | :-------------- | :--------------------- |
| 14       | 2.081                | 15              | 2.525                  |
| 16       | 1.309                | 10              | 4.016                  |
| 18       | 0.823                | 7               | 6.385                  |
| 20       | 0.519                | 5               | 10.15                  |
| 22       | 0.324                | 3               | 16.14                  |
| 24       | 0.205                | 2               | 25.67                  |

**Note:** Apply 80% derating factor for bundled wires and elevated temperature environments.

---

## Wire Selection Guidelines

### By Application

**Power Distribution (Heavy Current):**
- 14-16 AWG, MIL-W-22759 series
- Voltage drop: <3% for power circuits

**Signal Circuits:**
- 20-22 AWG, MIL-W-22759 series
- Use shielded cable (MIL-W-81381) for sensitive signals

**Data/Communications:**
- 22-24 AWG, shielded twisted pair (MIL-W-81381)
- Impedance-controlled for high-speed data

**Ground Returns:**
- Minimum 16 AWG, up to same size as power conductor
- Use green or green/yellow identification

---

## Color Coding Standards

| Color         | Primary Use                       | ATA Reference |
| :------------ | :-------------------------------- | :------------ |
| White         | General purpose, AC neutral       | ATA 24        |
| Black         | Grounds, returns                  | ATA 24        |
| Red           | DC positive, power feeds          | ATA 24        |
| Blue          | AC phase conductors               | ATA 24        |
| Green         | Ground conductors                 | ATA 24        |
| Yellow        | Interconnect, signal              | ATA 24        |
| Orange        | High voltage warning              | ATA 24        |
| Brown         | DC negative, returns              | ATA 24        |

---

## Installation Requirements

### Wire Preparation
1. Strip insulation to proper length (typically 0.200-0.250 in.)
2. Use calibrated wire strippers to avoid conductor damage
3. Inspect for nicks, cuts, or excessive conductor exposure
4. Twist stranded conductors to prevent fraying
5. Tin wire ends if required by procedure

### Wire Routing
- Minimum bend radius: 10 × wire diameter
- Support every 6-8 inches using approved clamps
- Separate power and signal wires by minimum 1 inch
- Avoid sharp edges and high-temperature areas
- Route away from moving parts and control cables

### Wire Termination
- Use proper crimp terminals for wire gauge
- Perform pull test after crimping (5-10 lbs depending on gauge)
- Apply heat shrink tubing for environmental protection
- Label both ends per wire identification system
- Maintain proper torque on terminal screws

---

## Testing and Inspection

### Continuity Test
- Verify end-to-end continuity on all conductors
- Resistance should match published values (±10%)
- No intermittent connections allowed

### Insulation Resistance
- Minimum 5000 megohms at 500V DC
- Test conductor-to-conductor and conductor-to-ground
- Perform on completed wire bundles before installation

### High Voltage (Hi-Pot) Test
- Test voltage: 2 × rated voltage + 1000V (minimum 1 minute)
- Apply only to completed assemblies
- No breakdown or flashover allowed

---

## Storage and Handling

- Store on reels in climate-controlled environment
- Protect from UV light, moisture, and contaminants
- Maximum storage temperature: 30°C
- Shelf life: Unlimited for PTFE insulated; 5 years for PVC insulated
- Inspect insulation for cracks or damage before use

---

## References

- ATA 20 (Standard Practices - Airframe)
- ATA 24 (Electrical Power)
- ATA 24-45-xx (EWIS Monitoring)
- MIL-W-22759 Specification
- MIL-W-81381 Specification
- CAT_Standard-Connectors-MIL-DTL-38999.md
- DATA_Part-Number-Cross-Reference-Table.csv

---

*Revision History:*
- 3.1.0 (2029-01-15): Added shielded cable series and wire selection guidelines
- 3.0.0 (2028-10-10): Major revision for AMPEL360 program
- 2.5.0 (2028-06-01): Updated specifications and color coding
