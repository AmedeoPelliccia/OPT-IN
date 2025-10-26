# Standard Electrical Symbols Chart

## Power Sources

### Battery
```
  +  ——
     ━━  (longer line is positive terminal)
```

### AC Generator/Alternator
```
  ~~~  (wavy line in circle)
  ⚪
```

### DC Generator
```
  +─  (straight line with circle)
  ⚪
```

## Passive Components

### Resistor
```
  ──╱╲╱╲╱╲── (zigzag line)
```

### Capacitor
```
  ──||── (two parallel lines)
```

### Inductor/Coil
```
  ──∩∩∩∩── (series of loops)
```

### Transformer
```
  ∩∩∩∩  ||  ∩∩∩∩
  (two coils with core between)
```

## Semiconductor Components

### Diode
```
  ──▷|── (triangle with line, current flows in direction of triangle)
```

### Zener Diode
```
  ──▷|── (with bent cathode line)
```

### LED (Light Emitting Diode)
```
  ──▷|── (with arrows indicating light emission)
```

### Transistor (NPN)
```
     C (Collector)
     |
  B──┤ (Base)
     |
     E (Emitter, with arrow pointing out)
```

## Switches and Relays

### Single-Pole Single-Throw (SPST) Switch
```
  ──╱  ── (line with break and actuator)
```

### Single-Pole Double-Throw (SPDT) Switch
```
      ──
    ╱
  ──    
      ──
```

### Relay
```
  ∩∩∩  (coil)
  ──╱  ── (switch contacts)
```

### Circuit Breaker
```
  ──[╱]── (zigzag with break)
```

## Connectors

### Plug (Male)
```
  P101
  ⚪═══ (circle with lines representing pins)
```

### Receptacle/Jack (Female)
```
  J101
  ═══⚪ (lines representing sockets with circle)
```

### Terminal/Connection Point
```
  ● (solid dot at wire junction)
```

### No Connection (Wire Crossover)
```
  ─┬─ (wires cross with bridge)
   │
```

## Grounds

### Chassis Ground
```
  ──┬── (single horizontal line)
```

### Earth Ground
```
  ──┬── (three horizontal lines, decreasing length)
    ┼
    ╧
```

### Signal Ground
```
  ──▽── (inverted triangle)
```

## Fuses and Protection

### Fuse
```
  ──[─]── (rectangle with line through center)
```

### Thermal Protector
```
  ──[~]── (rectangle with wavy line)
```

## Indicators

### Lamp/Light
```
  ──(×)── (circle with X)
```

### LED Indicator
```
  ──(▷)── (circle with triangle)
```

### Meter/Gauge
```
  ──(M)── (circle with letter M)
```

## Shielding

### Shielded Wire
```
  ════ (wire line)
  ----  (dashed line representing shield)
```

### Shielded Cable with Ground
```
  ════ (wire line)
  ----┬ (dashed line with ground connection)
      ⏚
```

### Coaxial Cable
```
  ═══⊙ (center conductor with surrounding shield)
```

## Logic Gates (Digital Systems)

### AND Gate
```
  ──┐
    D── (D-shaped symbol)
  ──┘
```

### OR Gate
```
  ──┐
    ⊃── (curved input symbol)
  ──┘
```

### NOT Gate (Inverter)
```
  ──▷○── (triangle with circle at output)
```

## Wire Identification

### Wire Bundle
```
  ═══ (multiple parallel lines)
```

### Wire Splice
```
  ──●── (solid dot at junction)
```

### Wire Color Code
- **R:** Red
- **BK:** Black
- **W:** White
- **BL:** Blue
- **Y:** Yellow
- **G:** Green
- **BR:** Brown
- **O:** Orange
- **V:** Violet
- **GY:** Gray

### Wire Stripe Notation
- **R/W:** Red with white stripe
- **BL/Y:** Blue with yellow stripe

## Notes and Annotations

### Test Point
```
  TP-01
  ──●── (marked with "TP" prefix)
```

### Terminal Block
```
  TB1
  ══╪══ (marked with terminal block ID)
```

### Reference Designator Examples
- **R15:** Resistor 15
- **C22:** Capacitor 22
- **K3:** Relay 3
- **CB15:** Circuit breaker 15
- **S4:** Switch 4
- **P101/J101:** Connector pair 101

## Usage Guidelines

1. All symbols should be drawn to consistent scale
2. Wire lines should be horizontal or vertical where possible
3. Component designators should be clearly visible and adjacent to symbol
4. Signal flow should generally be left-to-right or top-to-bottom
5. Ground symbols should point downward
6. Power supplies should be at top of schematic
