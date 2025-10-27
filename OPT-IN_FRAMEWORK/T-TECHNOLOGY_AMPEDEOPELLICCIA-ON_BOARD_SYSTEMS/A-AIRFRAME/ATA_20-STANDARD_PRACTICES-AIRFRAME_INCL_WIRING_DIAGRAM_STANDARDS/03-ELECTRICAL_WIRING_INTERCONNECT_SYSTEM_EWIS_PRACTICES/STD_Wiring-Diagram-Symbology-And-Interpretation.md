# EWIS Standard: Wiring Diagram Symbology and Interpretation

**Revision:** 1.0.0

## 1. Scope
This standard defines the symbology and interpretation rules for electrical wiring diagrams used in the AMPEL360 aircraft documentation.

## 2. Diagram Types

### 2.1 Schematic Diagrams
- Show electrical connections and component relationships.
- Do not show physical routing or location.
- Use standard electrical symbols per MIL-STD-15.

### 2.2 Wiring Diagrams
- Show physical wire routing, colors, and gauge.
- Include connector pin assignments.
- Show wire identification numbers.

### 2.3 Installation Diagrams
- Show physical location of components and wire routing paths.
- Include clamp locations and part numbers.
- Reference aircraft zones and stations.

## 3. Wire Identification

### 3.1 Wire Numbering System
Format: `AABB-CCC-DD`
- `AA`: System code (two letters, e.g., "FC" for flight controls, "EL" for electrical)
- `BB`: Subsystem code (two digits)
- `CCC`: Sequential wire number within subsystem
- `DD`: Segment identifier (optional, for wires with splices or branches)

Example: `FC01-127-01` = Flight Control system, subsystem 01, wire 127, segment 01

### 3.2 Wire Color Codes
- Use standard wire colors per MIL-W-22759 or equivalent.
- Color code indicates circuit function:
  - Red: Power, ungrounded
  - Black: Ground, return
  - White: Grounded side of AC power
  - Blue: Essential/emergency power
  - Yellow: Caution/warning signals
  - Green: Navigation signals
  - Brown: Audio signals
  
- Stripes indicate specific circuits (e.g., Red/White = 115V AC phase A).

## 4. Standard Electrical Symbols

### 4.1 Basic Components
Reference FIG_Standard-Electrical-Symbols-Chart.md for complete symbol library.

Common symbols:
- Battery: Two parallel lines (one longer than other)
- Ground: Three horizontal lines decreasing in length
- Resistor: Zigzag line
- Capacitor: Two parallel lines
- Switch: Line with break and actuator symbol
- Relay: Coil symbol with switch contacts
- Connector: Circle or rectangle with pin identifiers

### 4.2 Connectors
- Connector symbols show plug and receptacle orientations.
- Pin numbers inside connector symbol.
- Connector identification adjacent to symbol (e.g., "P101" for plug, "J101" for jack/receptacle).

### 4.3 Shielded Cables
- Shield shown as dashed line surrounding wire(s).
- Shield ground connection shown with ground symbol.
- Multiple shields shown as multiple dashed lines.

## 5. Connector Pin Assignment Tables

### 5.1 Table Format
Tables show connector view, pin numbering, and wire assignments:

| Pin | Wire ID     | Signal Name      | Wire Spec         | Destination      |
|-----|-------------|------------------|-------------------|------------------|
| A   | EL01-001    | +28V DC BUS      | 22 AWG Red        | CB15, Pin 1      |
| B   | EL01-002    | Ground Return    | 22 AWG Black      | Ground Stud G12  |
| C   | FC01-127-01 | Aileron Position | 22 AWG Blue/White | LRU3, Pin 5      |

### 5.2 Pin Numbering
- Circular connectors: Numbered sequentially starting from key position.
- Rectangular connectors: Row/column designation (e.g., A1, A2, B1, B2).
- D-subminiature: Numbered 1-n from top left to bottom right.

## 6. Circuit Protective Devices

### 6.1 Circuit Breakers
- Symbol: Rectangle with internal zigzag (thermal trip element).
- Identification includes: CB location, rating, trip curve.
- Example: "CB15, 5A, Type C" = Circuit breaker 15, 5 amp rating, Type C trip curve.

### 6.2 Fuses
- Symbol: Rectangle with line through center.
- Identification includes: Fuse location, rating, type (fast-blow, slow-blow).

## 7. Notes and Annotations

### 7.1 Wire Gauge and Type
- Shown adjacent to wire line: "22 AWG" or "16 AWG".
- Wire specification: "M22759/16" (MIL spec wire type).

### 7.2 Splice Identification
- Splice symbol: Dot at wire junction.
- Splice ID: "S101" (sequential splice numbering).

### 7.3 Test Points
- Symbol: Circle with "TP" prefix.
- Test point ID: "TP-FC01" = Test point for Flight Control circuit 01.

## 8. Reference Designators

### 8.1 Equipment
- Format: Functional group + sequential number.
- Examples:
  - "R15" = Resistor 15
  - "C22" = Capacitor 22
  - "K3" = Relay 3
  - "CB15" = Circuit breaker 15
  - "P101/J101" = Connector pair 101 (plug/jack)

### 8.2 Location Codes
- Zone designation: Three-digit code (e.g., "212" = nose gear bay).
- Station: Fuselage station or wing buttline (e.g., "STA 450").

## 9. Diagram Reading Rules

### 9.1 Power Flow
- Power flows from top to bottom or left to right on schematics.
- Higher voltage at top/left, ground at bottom/right.

### 9.2 Signal Flow
- Input signals on left, output signals on right.
- Control signals shown above or below power and signal paths.

### 9.3 Sheet References
- Cross-references to other diagram sheets shown in parentheses: "(Sheet 3)".
- Off-page connectors labeled with destination sheet number.

## 10. Revision Control
- Revision symbols (triangles or clouds) identify changes from previous revision.
- Revision table lists changes by zone with description and date.
