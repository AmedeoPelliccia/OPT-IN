# ICD_AP360-S001_LH2-Coupling_rev3.0.0_20280901

## Interface Control Document: LH2 Cryogenic Refueling Coupling

**Document Type:** Interface Control Document (ICD)  
**GSE ID:** AP360-S001  
**Revision:** 3.0.0  
**Effective Date:** 2028-09-01  
**Status:** Released

---

## 1. Mechanical Interface

### 1.1 Coupling Standard
- **Standard:** ISO 21013-1:2008 (Cryogenic vessels - Pressure-relief accessories for cryogenic service)
- **Profile:** DN25 (1-inch nominal diameter)
- **Material:** 316L stainless steel, cryogenic rated to -253°C (LH2 temperature)
- **Pressure Rating:** 16 bar working pressure, 24 bar test pressure
- **Connection Type:** Quick-disconnect bayonet coupling with automatic shut-off valves

### 1.2 Dimensional Requirements
- **Mating Height:** 1850 mm ± 50 mm above ground level (aircraft fueling port centerline)
- **Approach Clearance:** Minimum 500 mm radial clearance for coupling engagement
- **Hose Length:** 15 meters ± 0.5 m (from GSE unit to aircraft connection point)

### 1.3 Sealing & Leak Rate
- **Primary Seal:** PTFE gasket with Inconel 718 spring-energized lip seal
- **Leak Rate:** < 1×10⁻⁶ mbar·L/s helium equivalent at operating pressure
- **Verification:** Helium mass spectrometry leak test per ISO 21013-3

---

## 2. Electrical Interface

### 2.1 High Voltage Power Connection
- **Standard:** IEC 62196-3 (DC charging connector, modified for aviation use)
- **Voltage:** 800 Vdc nominal (720-880 Vdc operating range)
- **Current:** 500 A continuous, 600 A peak (30 second rating)
- **Connector Type:** CCS2-Aviation variant with silver-plated copper contacts

### 2.2 Pinout Table

| Pin | Function | Wire Gauge | Voltage | Current |
|:----|:---------|:-----------|:--------|:--------|
| 1 | DC+ Power | 95 mm² | 800 V | 500 A |
| 2 | DC- Return | 95 mm² | 0 V (ref) | 500 A |
| 3 | Ground/Shield | 35 mm² | 0 V | - |
| 4 | CAN-H | 0.75 mm² | 5 V | 100 mA |
| 5 | CAN-L | 0.75 mm² | 0 V | 100 mA |
| 6 | Interlock Loop + | 0.5 mm² | 12 V | 50 mA |
| 7 | Interlock Loop - | 0.5 mm² | 0 V | 50 mA |
| 8 | Emergency Stop | 1.0 mm² | 24 V | 1 A |

### 2.3 Safety Interlock
- **Interlock Type:** Series break-circuit with magnetic proximity detection
- **Logic:** Connection verified before HV energization; broken loop triggers immediate shutdown
- **Response Time:** < 50 ms from interlock break to HV disconnect

---

## 3. Communication Interface

### 3.1 Protocol
- **Standard:** CAN FD 2.0 (ISO 11898-1:2015)
- **Baud Rate:** 500 kbit/s nominal, 2 Mbit/s data phase
- **Termination:** 120 Ω resistor at each end

### 3.2 Message Map

| CAN ID (Hex) | Direction | Period | Description |
|:-------------|:----------|:-------|:------------|
| 0x100 | GSE → Aircraft | 1 Hz | Heartbeat / Status |
| 0x110 | GSE → Aircraft | 100 ms | LH2 Flow Rate & Pressure |
| 0x120 | GSE → Aircraft | 100 ms | Temperature (Tank, Coupling) |
| 0x200 | Aircraft → GSE | 1 Hz | Handshake / Command |
| 0x210 | Aircraft → GSE | 500 ms | Fuel Level / Target Fill |
| 0x7FF | Bidirectional | Event | Emergency Stop / Fault |

### 3.3 Data Encoding
- **Byte Order:** Little-endian
- **Flow Rate:** 16-bit unsigned, scale 0.01 kg/s, range 0-655 kg/s
- **Pressure:** 16-bit unsigned, scale 0.1 bar, range 0-6553 bar
- **Temperature:** 16-bit signed, scale 0.1 K, range -273.1 to 3276.7 K

---

## 4. Safety Requirements

### 4.1 Emergency Stop Circuit
- **Architecture:** Dual-channel E-stop loop (series redundancy)
- **Activation:** Any E-stop button (GSE or aircraft side) opens loop
- **Response:** 
  - HV power disconnect < 100 ms
  - LH2 flow valve closure < 500 ms
  - Audible/visual alarm activation
  
### 4.2 Bonding & ESD
- **Bonding Path:** Dedicated bonding wire, < 0.1 Ω resistance aircraft-to-GSE chassis
- **Bonding Verification:** Continuity check required before LH2 flow initiation
- **ESD Mitigation:** Conductive flooring, personnel grounding straps mandatory in H₂ Zone 2

### 4.3 Hazardous Area Classification
- **Zone:** ATEX/IEC Zone 2 (H₂ atmosphere possible during abnormal conditions)
- **Equipment Rating:** Ex d IIC T1 (flameproof enclosure, hydrogen-safe)
- **Ignition Prevention:** No exposed sparking contacts; intrinsically safe circuits for sensors

---

## 5. Environmental & Operating Conditions

### 5.1 Operating Envelope
- **Ambient Temperature:** -40°C to +50°C
- **Humidity:** 5% to 95% RH, non-condensing
- **Wind:** Operations suspended if sustained winds > 15 m/s (30 knots)
- **Precipitation:** Rain/snow operations permitted with weather-protected coupling

### 5.2 Cryogenic Exposure
- **LH2 Temperature:** -253°C (20 K) at atmospheric pressure
- **Thermal Cycling:** Coupling rated for 5000+ thermal cycles (-253°C to +50°C)
- **Insulation:** Vacuum-insulated hose with multi-layer insulation (MLI), heat leak < 1 W/m

---

## 6. Compliance & Certification

### 6.1 Referenced Standards
- ISO 21013 (Cryogenic pressure vessels)
- IEC 62196-3 (EV DC charging, aviation variant)
- ISO 11898-1 (CAN bus)
- ATEX 2014/34/EU (Explosive atmospheres)
- SAE AS50881 (GSE general requirements)

### 6.2 Test & Certification Requirements
- Pressure test to 1.5× working pressure (24 bar)
- Helium leak test < 1×10⁻⁶ mbar·L/s
- Dielectric withstand test: 2000 Vdc for 1 minute (HV circuits)
- EMC testing per DO-160G Section 20 (RF susceptibility)
- Functional safety assessment per ISO 26262 ASIL-B

---

## 7. Traceability & Cross-References

### 7.1 Related ATA Chapters
- **ATA 28-60:** Cryogenic H₂ Storage & Distribution
- **ATA 26-40:** H₂ Leak/Fire Detection
- **ATA 24:** Electrical Power (HV)
- **ATA 21-50:** Power Electronics Cooling

### 7.2 Related Documents
- `GOM_AP360-S001_LH2-Refueler_rev2.0.0_20281101.md` (Operations Manual)
- `ATP_AP360-S001_LH2-Coupling_rev1.2.0_20280815.md` (Acceptance Test Procedure)
- `SDS_LH2_rev4.0.0_20280601.md` (Safety Data Sheet - Liquid Hydrogen)

---

## 8. Revision History

| Revision | Date | Author | Changes |
|:---------|:-----|:-------|:--------|
| 1.0.0 | 2027-01-15 | J. Smith | Initial release |
| 2.0.0 | 2027-08-20 | A. Jones | Added CAN FD support, updated pinout |
| 3.0.0 | 2028-09-01 | M. Williams | Updated to IEC 62196-3, enhanced safety interlock |

---

## 9. Approval

| Role | Name | Signature | Date |
|:-----|:-----|:----------|:-----|
| Chief Engineer | TBD | ___________ | 2028-09-01 |
| Safety Officer | TBD | ___________ | 2028-09-01 |
| Ground Ops Manager | TBD | ___________ | 2028-09-01 |

---

*Document ID: ICD-AP360-S001-20280901*  
*Classification: Controlled - Distribution: Need-to-Know*  
*© 2028 AMPEL360 Program - All Rights Reserved*
