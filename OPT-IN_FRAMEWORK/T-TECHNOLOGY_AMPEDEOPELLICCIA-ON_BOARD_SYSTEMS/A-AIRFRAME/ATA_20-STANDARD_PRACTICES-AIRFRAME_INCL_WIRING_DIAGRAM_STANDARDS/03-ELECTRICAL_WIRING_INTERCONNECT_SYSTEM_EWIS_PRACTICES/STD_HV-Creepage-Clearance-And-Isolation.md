# EWIS Standard: High-Voltage Creepage, Clearance, and Isolation
**Revision:** 1.0.0

## 1. Scope
This standard defines the mandatory minimum spacing for all high-voltage (HV) conductors to prevent arcing and tracking. These values are derated for altitude and moisture.

## 2. Definitions
- **Clearance:** The shortest distance through air between two conductive parts.
- **Creepage:** The shortest distance along the surface of an insulating material between two conductive parts.
- **HV:** Any voltage > 115V AC RMS or > 270V DC.

## 3. Minimum Requirements
The minimum required distances are specified in `DATA_HV-Creepage-Clearance-Table.csv`. These values assume a maximum cabin altitude of 8,000 ft.

- **Unpressurized Bays:** Multiply all Clearance values by an Altitude Factor of 1.25.
- **Wet/Condensing Zones:** Multiply all Creepage values by a Moisture Factor of 1.6 and require hydrophobic coatings or barriers.

## 4. Voltage Categories

### 4.1 Low Voltage (LV)
- AC: ≤ 115V RMS
- DC: ≤ 270V
- Standard aircraft electrical system voltage.

### 4.2 High Voltage (HV)
- AC: > 115V RMS to 1000V RMS
- DC: > 270V to 1500V DC
- Includes 230V AC, 270V DC, 540V DC systems.

### 4.3 Extra High Voltage (EHV)
- AC: > 1000V RMS
- DC: > 1500V DC
- Includes electric propulsion systems, energy storage systems.

## 5. Clearance Requirements (Through Air)

Reference DATA_HV-Creepage-Clearance-Table.csv for specific values. General guidelines:

| Voltage System | Clearance (Sea Level) | Clearance (Unpressurized) |
|----------------|----------------------|---------------------------|
| 230V AC        | 6.4 mm               | 8.0 mm                    |
| 540V DC        | 12.7 mm              | 15.9 mm                   |
| 1000V AC       | 25.4 mm              | 31.8 mm                   |
| 3000V DC       | 76.2 mm              | 95.3 mm                   |

## 6. Creepage Requirements (Along Insulation Surface)

Creepage distances are longer than clearance to account for surface contamination:

| Voltage System | Creepage (Dry) | Creepage (Wet/Condensing) |
|----------------|----------------|---------------------------|
| 230V AC        | 12.7 mm        | 20.3 mm                   |
| 540V DC        | 25.4 mm        | 40.6 mm                   |
| 1000V AC       | 50.8 mm        | 81.3 mm                   |
| 3000V DC       | 152.4 mm       | 243.8 mm                  |

## 7. Insulation Materials

### 7.1 Tracking Resistance
- Use materials with Comparative Tracking Index (CTI) ≥ 175 per IEC 60112.
- Preferred materials: Polyamide, polycarbonate, polyetherimide (PEI).
- Avoid materials prone to tracking: Phenolic, some epoxies.

### 7.2 Environmental Considerations
- Altitude derating: Factor 1.25 for altitudes > 8,000 ft.
- Temperature derating: Factor 1.1 for ambient temperatures > 85°C.
- Contamination: Factor 1.6 for environments with conductive contamination (salt, moisture).

## 8. Physical Barriers

### 8.1 When Required
- When clearance or creepage distances cannot be met.
- In areas accessible to maintenance personnel.
- Between HV and low-voltage circuits in same enclosure.

### 8.2 Barrier Materials
- Metallic barriers: Grounded sheet metal, minimum 0.032 inch (0.8 mm) thick.
- Non-metallic barriers: Polycarbonate, G-10 fiberglass, minimum 0.125 inch (3.2 mm) thick.

## 9. HV Connector Requirements
- Use connectors rated for maximum system voltage plus 50% margin.
- Connectors must have positive locking mechanism.
- Keying required to prevent mis-mating with LV connectors.
- High-voltage warning label required within 3 inches of connector.

## 10. Testing and Verification

### 10.1 Hi-Pot Testing
- Test voltage: 2× operating voltage + 1000V, minimum 1 minute.
- Maximum leakage current: 1 mA per kV of test voltage.
- Perform hi-pot test after installation and after any maintenance.

### 10.2 Insulation Resistance
- Minimum insulation resistance: 50 megohms at operating voltage.
- Measure with megohmmeter at 500V DC (for systems ≤ 600V) or 1000V DC (for higher voltage systems).

## 11. Maintenance and Inspection
- Inspect HV insulation for cracks, contamination, or damage every 600 flight hours.
- Verify clearance and creepage distances are maintained (no debris, moisture buildup).
- Perform insulation resistance test annually or after exposure to moisture.
- Replace any HV components showing signs of tracking or carbonization.

## 12. Lockout/Tagout
- LOTO is mandatory before any work on HV systems.
- Verify system de-energization with voltage tester rated for system voltage.
- Discharge high-voltage capacitors through approved discharge resistor.
- Ground HV conductors during maintenance.
