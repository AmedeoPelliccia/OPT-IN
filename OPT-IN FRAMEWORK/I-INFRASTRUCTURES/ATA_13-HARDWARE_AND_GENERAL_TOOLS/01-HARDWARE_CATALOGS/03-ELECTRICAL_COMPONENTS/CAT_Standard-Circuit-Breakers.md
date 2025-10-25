# Hardware Catalog: Standard Circuit Breakers
**Revision:** 1.9.0

---

## Overview

This catalog contains approved aircraft circuit breakers for AMPEL360 electrical protection systems. All circuit breakers meet applicable MIL-C specifications and FAA/EASA certification requirements.

---

## MS25244 Series - Push-Pull Type Circuit Breakers

| Part Number    | Description                       | Current Rating | Voltage Rating | Trip Characteristic |
| :------------- | :-------------------------------- | :------------- | :------------- | :------------------ |
| **MS25244-1**  | CIRCUIT BREAKER, 1A, 28V DC      | 1A             | 28V DC         | Thermal/Magnetic    |
| **MS25244-2**  | CIRCUIT BREAKER, 2A, 28V DC      | 2A             | 28V DC         | Thermal/Magnetic    |
| **MS25244-3**  | CIRCUIT BREAKER, 3A, 28V DC      | 3A             | 28V DC         | Thermal/Magnetic    |
| **MS25244-5**  | CIRCUIT BREAKER, 5A, 28V DC      | 5A             | 28V DC         | Thermal/Magnetic    |
| **MS25244-10** | CIRCUIT BREAKER, 10A, 28V DC     | 10A            | 28V DC         | Thermal/Magnetic    |
| **MS25244-15** | CIRCUIT BREAKER, 15A, 28V DC     | 15A            | 28V DC         | Thermal/Magnetic    |
| **MS25244-20** | CIRCUIT BREAKER, 20A, 28V DC     | 20A            | 28V DC         | Thermal/Magnetic    |
| **MS25244-25** | CIRCUIT BREAKER, 25A, 28V DC     | 25A            | 28V DC         | Thermal/Magnetic    |

---

## MS25245 Series - Toggle Type Circuit Breakers

| Part Number    | Description                       | Current Rating | Voltage Rating | Trip Characteristic |
| :------------- | :-------------------------------- | :------------- | :------------- | :------------------ |
| **MS25245-5**  | CIRCUIT BREAKER, TOGGLE, 5A      | 5A             | 115V AC        | Thermal/Magnetic    |
| **MS25245-10** | CIRCUIT BREAKER, TOGGLE, 10A     | 10A            | 115V AC        | Thermal/Magnetic    |
| **MS25245-15** | CIRCUIT BREAKER, TOGGLE, 15A     | 15A            | 115V AC        | Thermal/Magnetic    |
| **MS25245-20** | CIRCUIT BREAKER, TOGGLE, 20A     | 20A            | 115V AC        | Thermal/Magnetic    |

---

## Wood Electric Series - High Reliability Push-Pull Type

| Part Number    | Description                       | Current Rating | Voltage Rating | Trip Characteristic |
| :------------- | :-------------------------------- | :------------- | :------------- | :------------------ |
| **WE-5-1-1**   | CIRCUIT BREAKER, 5A, 28V DC      | 5A             | 28V DC         | Thermal/Magnetic    |
| **WE-5-10-1**  | CIRCUIT BREAKER, 10A, 28V DC     | 10A            | 28V DC         | Thermal/Magnetic    |
| **WE-5-15-1**  | CIRCUIT BREAKER, 15A, 28V DC     | 15A            | 28V DC         | Thermal/Magnetic    |
| **WE-5-20-1**  | CIRCUIT BREAKER, 20A, 28V DC     | 20A            | 28V DC         | Thermal/Magnetic    |

---

## Technical Specifications

### Trip Characteristics

| Current Rating | Thermal Trip Time @ 135% | Magnetic Trip Time @ 400% |
| :------------- | :----------------------- | :------------------------ |
| 1-5A           | 5-60 seconds             | <0.1 seconds              |
| 6-15A          | 10-120 seconds           | <0.1 seconds              |
| 16-25A         | 15-180 seconds           | <0.1 seconds              |

### Environmental Ratings
- **Operating Temperature:** -55°C to +85°C
- **Storage Temperature:** -65°C to +125°C
- **Humidity:** 95% RH non-condensing
- **Vibration:** Per MIL-STD-810
- **Shock:** 30g, 11ms half-sine wave
- **Altitude:** Up to 70,000 ft

---

## Installation Requirements

### Panel Mounting
1. Verify proper circuit breaker rating for application
2. Check panel cutout dimensions (typically 0.406 in. diameter)
3. Insert circuit breaker from front of panel
4. Secure with retaining nut on rear of panel (torque: 3-5 in-lbs)
5. Do not over-tighten (can damage breaker or panel)

### Wire Termination
1. Use proper size terminal lug for wire gauge and stud size
2. Strip wire to proper length (typically 0.25 in.)
3. Crimp terminal lug using proper tool and die
4. Place terminal lug on circuit breaker stud
5. Install lockwasher and nut
6. Torque nut to specified value (typically 15-20 in-lbs)
7. Verify no wire strands are outside terminal lug

### Identification
- Label circuit breaker with circuit function
- Include circuit number from wiring diagram
- Use durable labels resistant to cleaning solvents
- Follow ATA 24 labeling standards

---

## Testing and Maintenance

### Functional Test
1. Reset circuit breaker to ON position
2. Apply rated load current
3. Verify breaker holds without tripping
4. Increase load to 135% of rating
5. Breaker should trip within specified time
6. Reset breaker and verify normal operation

### Trip Test
1. Apply overload current (200% of rating)
2. Measure trip time (should be <1 second)
3. Allow breaker to cool for 5 minutes
4. Reset and verify normal operation
5. Repeat test 3 times minimum

### Inspection Intervals
- Visual inspection: Every 100 flight hours
- Functional test: Every 500 flight hours or annually
- Replacement: As required or after 10 years in service

---

## Acceptance/Rejection Criteria

### Acceptance
- Trips within specified time at 135% load
- Holds rated load indefinitely
- Smooth push-pull operation (no binding)
- No signs of overheating or discoloration
- Proper contact resistance (<0.01 ohms)

### Rejection
- Fails to trip at 135% load within specified time
- Trips under rated load
- Stiff or binding operation
- Signs of overheating (discoloration, burning smell)
- High contact resistance (>0.02 ohms)
- Damaged terminals or mounting threads
- Cracked or damaged housing

---

## Usage Notes

- **Sizing:** Circuit breaker rating should be 125% of continuous load current minimum
- **Derating:** Apply 80% derating at elevated ambient temperatures (>50°C)
- **Coordination:** Ensure proper coordination with upstream protection devices
- **Reset Attempts:** Do not reset more than 3 times if breaker continues to trip; investigate circuit
- **Nuisance Tripping:** If breaker trips under normal load, replace with next larger size (after engineering approval)
- **Storage:** Store in original packaging in climate-controlled environment
- **Shelf Life:** 10 years if properly stored

---

## Safety Notes

- **Hot Work:** Allow circuit breaker to cool before handling after trip event
- **Arc Flash:** Use proper PPE when working on energized circuits
- **Overload Protection Only:** Circuit breakers provide overload protection, not short-circuit protection for all scenarios
- **Not a Switch:** Do not use circuit breakers as a normal on/off switch; use for protection only
- **Ground Fault:** Circuit breakers do not provide ground fault protection

---

## Derating Guidelines

| Ambient Temperature | Derating Factor |
| :------------------ | :-------------- |
| 25°C                | 100%            |
| 50°C                | 90%             |
| 70°C                | 80%             |
| 85°C                | 70%             |

**Example:** A 10A circuit breaker operating at 70°C ambient should be derated to 8A maximum continuous current.

---

## References

- ATA 24 (Electrical Power)
- MIL-C-5809 (Circuit Breaker Specification)
- FAA AC 43.13-1B (Acceptable Methods, Techniques, and Practices)
- CAT_Standard-Wire-And-Cable.md
- DATA_Part-Number-Cross-Reference-Table.csv

---

*Revision History:*
- 1.9.0 (2029-01-15): Added Wood Electric series and derating guidelines
- 1.8.0 (2028-11-20): Updated testing procedures and acceptance criteria
- 1.7.0 (2028-07-15): Initial AMPEL360 catalog release
