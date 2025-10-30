# DESC_33-05-01: LED Drivers and CCR Philosophy

---

### Document Control
- **Document ID:** DESC_33-05-01
- **Revision:** A
- **Effective Date:** 2025-10-28

---

## 1. LED Driver Overview

LED drivers provide regulated constant current to LED modules, ensuring:
- Consistent light output
- Long LED lifetime
- Protection against voltage transients

## 2. Constant Current Regulation (CCR)

### 2.1 Principle
LEDs require constant current (not constant voltage) for stable operation.
- Forward voltage (Vf) varies with temperature and LED characteristics
- CCR maintains fixed current regardless of Vf variation

### 2.2 Typical Specifications
- **Input:** 28VDC ±4V (22-32VDC range)
- **Output Current:** 350mA, 700mA, 1000mA (common values)
- **Output Ripple:** <5% peak-to-peak
- **Efficiency:** ≥85%
- **Inrush Current:** <10A peak, <5ms duration

## 3. Environmental Qualification

All LED drivers must meet DO-160G:
- **Section 4:** Temperature/Altitude (-55°C to +85°C)
- **Section 5:** Temperature Variation
- **Section 16:** Power Input (28VDC transients)
- **Section 22:** Lightning Induced Transients

## 4. Thermal Management

### 4.1 Thermal Derating
- LED current reduced at elevated temperatures
- Typical derating: 2-3% per °C above 50°C

### 4.2 Heatsinking
- Adequate thermal path to aircraft structure
- Thermal interface material (TIM) where required

## 5. Dimming Capability

### 5.1 PWM Dimming
- Pulse Width Modulation of LED current
- Frequency: ≥200 Hz (to avoid flicker perception)
- Dimming range: 10-100% or 0-100%

### 5.2 Analog Dimming
- Current reduction via control signal
- 0-10V or 0-5V analog input

## 6. Protection Features

- **Overvoltage Protection:** Shuts down if input >35V
- **Overcurrent Protection:** Limits output current
- **Overtemperature Protection:** Shuts down or derates if >85°C
- **Short Circuit Protection:** Survives output short

## 7. Reliability and Lifetime

- **MTBF:** ≥50,000 hours
- **LED Lifetime (L70):** ≥50,000 hours at rated current and 25°C
- **Capacitor Selection:** Long-life electrolytic or ceramic

---

**END OF DOCUMENT**
