# ICD: Host Computer to Motion Controller Interface

**Document ID:** ICD-ATA116-02-01  
**Revision:** 3.0.0  
**Effective Date:** 2025-10-27  
**Simulator ID:** FFS-001

---

## 1. Purpose

This Interface Control Document (ICD) defines the data interface between the Simulator Host Computer and the Motion Platform Controller for the AMPEL360 Full Flight Simulator.

---

## 2. Interface Overview

### 2.1 Communication Architecture
- **Protocol:** UDP over Ethernet
- **Network:** Dedicated 10 Gigabit Ethernet (motion-only VLAN)
- **Update Rate:** 1000 Hz (1 ms period)
- **Packet Size:** 256 bytes (fixed)

### 2.2 Network Configuration
- **Host Computer IP:** 192.168.100.10
- **Motion Controller IP:** 192.168.100.20
- **Subnet Mask:** 255.255.255.0
- **VLAN ID:** 100 (motion control)

---

## 3. Data Packet Structure

### 3.1 Host-to-Motion Packet (256 bytes)

| Offset | Field Name | Type | Units | Range | Description |
|--------|------------|------|-------|-------|-------------|
| 0 | Header | uint32 | - | 0xABCD1234 | Packet sync header |
| 4 | Sequence | uint32 | - | 0 - 2³² | Incrementing packet number |
| 8 | Timestamp | uint64 | µs | - | Host system time |
| 16 | Latitude | double | rad | -π/2 to π/2 | Aircraft geodetic latitude |
| 24 | Longitude | double | rad | -π to π | Aircraft geodetic longitude |
| 32 | Altitude | double | m | -500 to 50000 | Altitude above MSL |
| 40 | VelocityX | float | m/s | -300 to 300 | Body-axis velocity (forward) |
| 44 | VelocityY | float | m/s | -100 to 100 | Body-axis velocity (right) |
| 48 | VelocityZ | float | m/s | -100 to 100 | Body-axis velocity (down) |
| 52 | AccelX | float | m/s² | -50 to 50 | Body-axis accel (forward) |
| 56 | AccelY | float | m/s² | -50 to 50 | Body-axis accel (right) |
| 60 | AccelZ | float | m/s² | -50 to 50 | Body-axis accel (down) |
| 64 | Roll | float | rad | -π to π | Roll attitude |
| 68 | Pitch | float | rad | -π/2 to π/2 | Pitch attitude |
| 72 | Yaw | float | rad | -π to π | Yaw attitude (true heading) |
| 76 | RollRate | float | rad/s | -5 to 5 | Body-axis roll rate |
| 80 | PitchRate | float | rad/s | -5 to 5 | Body-axis pitch rate |
| 84 | YawRate | float | rad/s | -5 to 5 | Body-axis yaw rate |
| 88 | RollAccel | float | rad/s² | -50 to 50 | Roll angular acceleration |
| 92 | PitchAccel | float | rad/s² | -50 to 50 | Pitch angular acceleration |
| 96 | YawAccel | float | rad/s² | -50 to 50 | Yaw angular acceleration |
| 100 | GearDown | uint8 | bool | 0/1 | Landing gear extended |
| 101 | OnGround | uint8 | bool | 0/1 | Weight-on-wheels |
| 102 | Buffet | uint8 | 0-255 | - | Aerodynamic buffet intensity |
| 103 | TurbulenceLevel | uint8 | 0-10 | - | Atmospheric turbulence |
| 104-127 | Reserved1 | - | - | - | Reserved for future use |
| 128 | Checksum | uint32 | - | - | CRC-32 of bytes 0-127 |
| 132-255 | Reserved2 | - | - | - | Reserved for future use |

### 3.2 Data Coordinate System
- **Body Axes:** X = forward, Y = right, Z = down (aircraft standard)
- **Angular Convention:** Right-hand rule (positive = clockwise when looking along axis)
- **Units:** SI units (meters, radians, seconds) unless noted

---

## 4. Motion Controller Response Packet (128 bytes)

### 4.1 Motion-to-Host Feedback Packet

| Offset | Field Name | Type | Units | Range | Description |
|--------|------------|------|-------|-------|-------------|
| 0 | Header | uint32 | - | 0xDCBA4321 | Response packet header |
| 4 | SequenceEcho | uint32 | - | - | Echo of host sequence number |
| 8 | Timestamp | uint64 | µs | - | Motion controller time |
| 16 | Status | uint32 | bitfield | - | System status flags |
| 20 | Act1Position | float | mm | 0-1500 | Actuator 1 position |
| 24 | Act2Position | float | mm | 0-1500 | Actuator 2 position |
| 28 | Act3Position | float | mm | 0-1500 | Actuator 3 position |
| 32 | Act4Position | float | mm | 0-1500 | Actuator 4 position |
| 36 | Act5Position | float | mm | 0-1500 | Actuator 5 position |
| 40 | Act6Position | float | mm | 0-1500 | Actuator 6 position |
| 44 | PlatformRoll | float | rad | -π to π | Actual platform roll |
| 48 | PlatformPitch | float | rad | -π to π | Actual platform pitch |
| 52 | PlatformYaw | float | rad | -π to π | Actual platform yaw |
| 56-63 | Reserved | - | - | - | Reserved |
| 64 | Checksum | uint32 | - | - | CRC-32 of bytes 0-63 |
| 68-127 | Reserved | - | - | - | Reserved |

### 4.2 Status Bitfield (Offset 16)

| Bit | Name | Description |
|-----|------|-------------|
| 0 | READY | Motion system ready (0 = not ready, 1 = ready) |
| 1 | FAULT | Fault detected (0 = OK, 1 = fault) |
| 2 | E_STOP | Emergency stop active (0 = OK, 1 = E-stop) |
| 3 | MOVING | Platform in motion (0 = stationary, 1 = moving) |
| 4 | CALIBRATED | System calibrated (0 = not calibrated, 1 = calibrated) |
| 5-31 | Reserved | Reserved for future use |

---

## 5. Timing & Latency Requirements

### 5.1 Update Rates
- **Host → Motion:** 1000 Hz (1 packet per millisecond)
- **Motion → Host:** 500 Hz (feedback every 2 milliseconds)

### 5.2 Latency Budget
- **Host Computation:** < 2 ms
- **Network Transmission:** < 1 ms
- **Motion Controller Processing:** < 5 ms
- **Actuator Response (First Movement):** < 42 ms
- **Total System Latency:** < 50 ms (meets EASA requirement of <100 ms)

---

## 6. Error Handling

### 6.1 Packet Loss
- If no packet received for 10 ms, motion controller enters safe mode (freeze current position)
- If no packet for 100 ms, motion controller returns to neutral position

### 6.2 Checksum Failure
- Discard packet, use previous valid data
- Log error to `/06-REGISTRY_AND_LOGS/defects.csv`

### 6.3 Out-of-Range Data
- Clamp values to specified range
- Log warning if values exceed expected range by >10%

---

## 7. Compliance & Qualification

### 7.1 Applicable Standards
- EASA CS-FSTD(A) Issue 2, Section 4.D (Motion System)
- IEEE 802.3 (Ethernet)

### 7.2 Qualification Test References
- **QTG-TEST_4.A.1a:** Transport Delay (Latency) - verifies end-to-end timing
- **QTG-TEST_4.D.1a:** Motion Onset Cues - validates motion fidelity

---

## 8. Version History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0.0 | 2025-10-27 | Motion SW Team | Initial release |
| 2.0.0 | 2025-10-27 | Motion SW Team | Added buffet and turbulence fields |
| 3.0.0 | 2025-10-27 | Motion SW Team | AMPEL360 BWB-specific tuning, increased update rate to 1000 Hz |

---

## 9. Traceability

**Related Documents:**
- SPEC_6DOF-Motion-Platform.md
- ATA 115: Simulator Host Computer Specification

**QTG Tests:**
- QTG-TEST_4.A.1a_Transport-Delay-Latency.md
- QTG-TEST_4.D.1a_Motion-Onset-Cues.md

**Defect Tracking:** See `/06-REGISTRY_AND_LOGS/defects.csv`

---

## 10. Approval

**Author:** Motion Software Engineer  
**Reviewed by:** Chief Simulator Engineer  
**Approved by:** Simulator Engineering Authority  
**Approval Date:** 2025-10-27  

**Signature:** ______________________

---

*Refs: ATA 115, ATA 116, EASA CS-FSTD(A)*
