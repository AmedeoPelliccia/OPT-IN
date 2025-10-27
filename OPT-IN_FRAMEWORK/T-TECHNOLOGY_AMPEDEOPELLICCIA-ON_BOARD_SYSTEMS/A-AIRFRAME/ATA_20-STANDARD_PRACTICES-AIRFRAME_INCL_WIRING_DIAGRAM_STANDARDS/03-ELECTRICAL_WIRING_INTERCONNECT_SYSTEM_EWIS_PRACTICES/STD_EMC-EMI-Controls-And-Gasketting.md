# EWIS Standard: EMC/EMI Controls and Gasketting

**Revision:** 1.0.0

## 1. Scope
This standard defines electromagnetic compatibility (EMC) and electromagnetic interference (EMI) controls for EWIS installations.

## 2. General Requirements
All EWIS installations must comply with DO-160 environmental and EMI/EMC requirements for Category M (severe) environments.

## 3. Shielding Requirements

### 3.1 Signal Wires
- All signal wires < 100 mV signal level: Shielded twisted pair required.
- Analog sensor signals: Overall shield plus individual pair shields.
- Digital data buses: Shield per bus specification (MIL-STD-1553, ARINC 429, AFDX).

### 3.2 Shield Effectiveness
- Minimum shield coverage: 85% (braid or serve).
- Preferred: 95% coverage or foil+braid combination.
- High-frequency applications (>10 MHz): Foil shield required.

## 4. Cable Separation
Reference DATA_Route-Separation-Matrix.csv for minimum separation distances:
- HV power to low-level signals: 25 mm minimum or grounded metallic barrier.
- Digital data to analog signals: 13 mm minimum.
- RF transmission lines: Isolated in dedicated conduit or separated by 50 mm.

## 5. Connector EMI Gasketting

### 5.1 When Required
- All connectors in avionics bays.
- Connectors on EMI-sensitive equipment (< 1V signal levels).
- Connectors on shielded enclosures or equipment chassis.

### 5.2 Gasket Types
- Conductive elastomer: General-purpose, 50-85 shore hardness.
- Knitted wire mesh: High-shielding effectiveness (>80 dB), 30-50 kHz to 10 GHz.
- Conductive fabric-over-foam: Conformable for irregular surfaces.
- Metallic fingerstock: High-current, high-temperature applications.

### 5.3 Installation
- Clean mating surfaces to remove paint, oxidation, and contamination.
- Install gasket in groove or adhesive-backed to one mating surface.
- Compress gasket 20-40% of original thickness when mated.
- Verify electrical continuity across gasket: Maximum 5 milliohms.

## 6. Equipment Bonding
- Bond all equipment chassis to aircraft structure.
- Maximum bond resistance: 2.5 milliohms to primary structure.
- Use bonding jumpers across shock mounts or isolation mounts.

## 7. Conduit and Shielding

### 7.1 Metallic Conduit
- Use for HV power cables in sensitive areas.
- Use for segregation of incompatible circuits.
- Bond conduit to structure at both ends and at intermediate supports.
- Maximum bond resistance: 5 milliohms per connection.

### 7.2 Braided Expandable Sleeving
- Use for additional shielding of harnesses in high-EMI environments.
- Terminate sleeving to structure or connector shells with 360-degree bond.

## 8. Filtering
- Install EMI filters on equipment power inputs in avionics bays.
- Filter performance: Minimum 40 dB attenuation 10 kHz to 10 GHz.
- Mount filters directly on equipment chassis or bulkhead feedthrough.

## 9. Grounding Architecture
- Single-point ground for analog signals: Ground at source end only.
- Multi-point ground for high-frequency circuits: Ground every wavelength/10.
- Equipment chassis: Bonded to aircraft structure (multipoint ground).

## 10. Testing and Verification
- Perform radiated emissions test per DO-160 Category M.
- Verify shielding effectiveness: Minimum 40 dB at 10 kHz, 60 dB at 100 MHz.
- Measure bond resistances with 4-wire ohmmeter at 10 A test current.

## 11. Maintenance Inspection
- Inspect EMI gaskets for compression set, corrosion, or damage every C-check.
- Verify electrical continuity of shields and bonds.
- Replace gaskets showing signs of degradation or loss of conductivity.
