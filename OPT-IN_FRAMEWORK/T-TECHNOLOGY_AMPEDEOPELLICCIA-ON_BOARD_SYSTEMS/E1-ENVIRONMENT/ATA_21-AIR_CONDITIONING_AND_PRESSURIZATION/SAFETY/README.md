# ATA 21 - SAFETY

## Purpose

This directory contains safety analysis artifacts, hazard assessments, and safety case documentation for the Air Conditioning and Pressurization system.

## Contents

### Safety Analyses

- **21-00-00_HAZOP_ANALYSIS.md** - Hazard and Operability Study
- **21-00-00_FHA.md** - Functional Hazard Assessment (FAR 25.1309)
- **21-00-00_PSSA.md** - Preliminary System Safety Assessment
- **21-00-00_SSA.md** - System Safety Assessment
- **21-00-00_FMEA.xlsx** - Failure Modes and Effects Analysis

### Safety Cases

Located in `SAFETY_CASES/`:
- **21-00-00_PRESSURIZATION_LOSS.md** - Loss of cabin pressurization scenarios
- **21-00-00_CONTAMINATION.md** - Air contamination and quality hazards
- **21-00-00_THERMAL_RUNAWAY.md** - Thermal control failure scenarios

### Analysis Tools

Located in `scripts/`:
- **fmea_calculator.py** - FMEA risk priority number calculator
- **safety_analysis.py** - Safety metrics and analysis automation
- **risk_matrix_generator.py** - Risk matrix visualization and reporting

## Safety Classification

**Design Assurance Level (DAL)**: C
- Failure condition: MAJOR
- Probability requirement: < 10^-5 per flight hour
- Development assurance: DO-178C Level C / DO-254 Level C

## Key Hazards

1. **Loss of Pressurization**
   - Rapid decompression
   - Slow leak scenarios
   - Outflow valve failures

2. **Contamination**
   - Bleed air contamination
   - Smoke/fume detection
   - Filter effectiveness

3. **Thermal Control Failures**
   - Overheat conditions
   - Freezing conditions
   - Zone control failures

4. **System Integration**
   - Electrical failures
   - Pneumatic supply loss
   - Control system faults

## Compliance Requirements

- FAR 25.1309 - Equipment, systems, and installations
- FAR 25.831 - Ventilation
- FAR 25.841 - Pressurization systems
- ARP4754A - Development of civil aircraft systems
- ARP4761 - Safety assessment process

## Navigation

- [↑ Parent: ATA-21 Root](../README.md)
- [→ Requirements](../REQUIREMENTS/README.md)
- [→ Design](../DESIGN/README.md)

---

*Part of the AMPEL360 OPT-IN Framework - ATA Chapter 21*
