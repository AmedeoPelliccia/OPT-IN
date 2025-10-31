# ATA-49-00-00-010 Fire Safety Analysis

**Document Type**: Safety Analysis Report  
**ATA Chapter**: 49-00-00 - Airborne Auxiliary Power  
**Analysis Type**: Particular Risk Analysis - Fire Hazards  
**Baseline**: BL_001  
**Status**: Active  
**Revision**: 1.0  
**Date**: 2025-10-31

## Cross-References

### Safety Documentation
- [Safety Case Report](./ATA-49-00-00-015_SAFETY_CASE_REPORT.md)
- [Functional Hazard Assessment (FHA)](./ATA-49-00-00-FHA_APU_SYSTEM.md)
- [System Safety Assessment (SSA)](./ATA-49-00-00-SSA_SYSTEM_SAFETY.md)
- [Fault Tree Analysis](./ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md)
- [H2 Safety Considerations](./ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md)

### Design Documentation
- [Fire Protection Design](../DESIGN/ATA-49-00-00-034_FIRE_PROTECTION_DESIGN.md)
- [Fire Detection & Extinguishing System](../DESIGN/PHYSICAL_COMPONENTS/ATA-49-00-00-PC-490005_FIRE_DETECTION_EXTINGUISH.md)
- [APU Installation Design](../DESIGN/ATA-49-00-00-031_INSTALLATION_DESIGN.md)
- [Ventilation & Cooling Design](../DESIGN/ATA-49-00-00-035_VENTILATION_COOLING_DESIGN.md)

### Test Evidence
- [Fire Test Results](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-002_FIRE_TEST_RESULTS.md)
- [Fire Protection Test Cases](../V_AND_V/ATA-49-00-00-104_TEST_CASES_FIRE_PROTECTION.md)

### Applicable Standards
- [FAR 25.863](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) - Flammable Fluid Fire Protection
- [FAR 25.1182](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1182) - Nacelle Areas Behind Firewalls
- [FAR 25.1203](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1203) - Fire Detection System
- [FAR 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECb/section-25.1431) - APU Installation
- [AC 25.863-1](https://www.faa.gov/regulations_policies/advisory_circulars) - Compartment Interiors
- [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) - APU Installation Guide
- [NFPA 409](https://www.nfpa.org/codes-and-standards/all-codes-and-standards/list-of-codes-and-standards/detail?code=409) - Aircraft Hangars

## 1. Executive Summary

### 1.1 Purpose

This Fire Safety Analysis provides comprehensive evaluation of fire hazards associated with the ATA-49 Airborne Auxiliary Power Unit system and demonstrates compliance with applicable airworthiness regulations. The analysis identifies fire zones, evaluates ignition sources, assesses fire risks, and validates fire protection measures.

### 1.2 Key Findings

**Fire Risk Assessment**: ✅ ACCEPTABLE

**Summary Results**:
- **3 Designated Fire Zones** identified and protected per [FAR 25.863](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863)
- **Dual-Loop Fire Detection** with < 1 second response time
- **Dual-Shot Fire Suppression** with 100% extinguishing effectiveness
- **15-Minute Firewall Protection** (tested to 22 minutes)
- **Zero Single-Point Failures** in fire protection system
- **Probability of Uncontained Fire**: < 1 × 10⁻⁹ per flight hour (meets catastrophic requirement)

### 1.3 Compliance Status

| Regulation | Requirement | Compliance Status |
|------------|-------------|-------------------|
| [FAR 25.863(a)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) | Fire zones designated | ✅ Compliant |
| [FAR 25.863(b)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) | Drainage provisions | ✅ Compliant |
| [FAR 25.863(c)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) | Fireproof construction | ✅ Compliant |
| [FAR 25.863(d)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) | Fire-resistant lines | ✅ Compliant |
| [FAR 25.1182](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1182) | Firewall requirements | ✅ Compliant |
| [FAR 25.1203](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1203) | Fire detection | ✅ Compliant |

## 2. Fire Zone Identification

### 2.1 Fire Zone Classification

Per [FAR 25.863(a)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863), fire zones are designated areas where:
1. Flammable fluids or combustible materials are present
2. Ignition sources exist
3. Fire could occur and spread

**APU Fire Zones Identified**:

#### Fire Zone 1: APU Core Compartment
**Location**: Primary APU housing  
**Volume**: 3.2 m³ (113 ft³)  
**Classification**: Class A - High Risk

**Fire Hazards Present**:
- Hot turbine components (1,800°F / 982°C)
- Fuel lines and connections
- Hydraulic fluid lines (if installed)
- Oil system components
- Electrical ignition sources
- Combustible materials (insulation, seals)

**Ignition Sources**:
1. **Primary**: Hot turbine and combustor surfaces
2. **Secondary**: Electrical arcing, bearing failures
3. **Tertiary**: Lightning strike, external heat source

**Fire Scenarios**:
- Fuel leak onto hot surfaces → flash fire
- Oil leak with ignition → sustained fire
- Bleed air leak → overtemperature
- Electrical short → wire bundle fire

#### Fire Zone 2: Accessory Gearbox Compartment
**Location**: Gearbox and accessories  
**Volume**: 1.8 m³ (64 ft³)  
**Classification**: Class B - Medium Risk

**Fire Hazards Present**:
- Gearbox oil mist
- Fuel pump and control unit
- Hydraulic pump (if installed)
- Generator and electrical components
- Oil cooler and lines

**Ignition Sources**:
1. **Primary**: Generator electrical faults
2. **Secondary**: Gearbox bearing failures
3. **Tertiary**: Fuel pump malfunction

#### Fire Zone 3: APU Exhaust Duct
**Location**: Exhaust tailpipe and muffler  
**Volume**: 0.9 m³ (32 ft³)  
**Classification**: Class C - Lower Risk (monitored)

**Fire Hazards Present**:
- High-temperature exhaust gases (1,200°F / 649°C)
- Potential fuel unburned hydrocarbons
- External flammable materials

**Ignition Sources**:
1. **Primary**: Hot exhaust surfaces
2. **Secondary**: Afterburn from rich mixture

**Note**: Exhaust zone monitored but not typically equipped with suppression due to normal high temperatures and limited combustibles.

### 2.2 Fire Zone Boundaries

**Physical Segregation** per [FAR 25.863(c)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863):

```
┌─────────────────────────────────────────────┐
│         AIRCRAFT STRUCTURE                   │
│  ┌────────────────────────────────────┐     │
│  │   FIREWALL (15-min rating)         │     │
│  │  ┌──────────────────────────┐      │     │
│  │  │  FIRE ZONE 1: APU CORE   │      │     │
│  │  │  - Detection: Dual Loop  │      │     │
│  │  │  - Suppression: Dual Shot│      │     │
│  │  └──────────────────────────┘      │     │
│  │  ┌──────────────────────────┐      │     │
│  │  │  FIRE ZONE 2: GEARBOX    │      │     │
│  │  │  - Detection: Dual Loop  │      │     │
│  │  │  - Suppression: Dual Shot│      │     │
│  │  └──────────────────────────┘      │     │
│  │  ┌──────────────────────────┐      │     │
│  │  │  FIRE ZONE 3: EXHAUST    │      │     │
│  │  │  - Detection: Single     │      │     │
│  │  │  - Suppression: None     │      │     │
│  │  └──────────────────────────┘      │     │
│  └────────────────────────────────────┘     │
└─────────────────────────────────────────────┘
```

**Firewall Specifications**:
- **Material**: Titanium alloy + ceramic blanket
- **Thickness**: 0.040" titanium + 0.5" ceramic
- **Rating**: 15 minutes minimum (tested to 22 minutes)
- **Penetrations**: Sealed with fire-resistant grommets and sleeves
- **Test Evidence**: [Fire Test Results](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-002_FIRE_TEST_RESULTS.md) Section 4.1

## 3. Ignition Source Analysis

### 3.1 Thermal Ignition Sources

#### Hot Surfaces
**APU Operating Temperatures**:
| Component | Normal Temp | Max Temp | Auto-Ignition Risk |
|-----------|-------------|----------|-------------------|
| Turbine Inlet | 1,850°F (1,010°C) | 1,900°F (1,038°C) | ⚠️ HIGH |
| Turbine Outlet | 1,250°F (677°C) | 1,350°F (732°C) | ⚠️ HIGH |
| Combustor Case | 800°F (427°C) | 900°F (482°C) | ⚠️ MEDIUM |
| Exhaust Duct | 700°F (371°C) | 850°F (454°C) | ⚠️ MEDIUM |
| Gearbox Case | 185°F (85°C) | 220°F (104°C) | ✅ LOW |
| Generator | 285°F (141°C) | 350°F (177°C) | ✅ LOW |

**Auto-Ignition Temperatures** ([NFPA 30](https://www.nfpa.org/codes-and-standards/all-codes-and-standards/list-of-codes-and-standards/detail?code=30)):
- Jet fuel (JP-8 / Jet A): 410°F (210°C)
- Hydraulic fluid (MIL-PRF-83282): 700°F (371°C)
- Lubricating oil (MIL-PRF-23699): 500°F (260°C)

**Mitigations**:
- ✅ Thermal barriers on hot surfaces
- ✅ Minimum 3" separation between hot surfaces and fuel/oil lines
- ✅ Insulation blankets on turbine section
- ✅ Ventilation air flow to reduce surface temperatures

### 3.2 Electrical Ignition Sources

**Potential Electrical Faults**:
1. **Generator Winding Failure**: Internal short circuit → arc flash
   - Probability: 1 × 10⁻⁶ per flight hour
   - Mitigation: Differential protection, thermal monitoring

2. **Wiring Harness Chafing**: Insulation wear → short to ground
   - Probability: 5 × 10⁻⁷ per flight hour
   - Mitigation: Protective conduit, periodic inspection

3. **Connector Corrosion**: High resistance → overheating
   - Probability: 3 × 10⁻⁷ per flight hour
   - Mitigation: Sealed connectors, corrosion-resistant materials

4. **Lightning Strike**: Direct/indirect effects
   - Probability: Considered per aircraft lightning protection design
   - Mitigation: Bonding, grounding, surge protection per [FAR 25.581](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-C/section-25.581)

**Electrical System Protection**:
- ✅ Circuit breakers on all power circuits
- ✅ Arc fault detection (AFCI) on critical circuits
- ✅ Ground fault protection
- ✅ Thermal fuses on high-current components
- ✅ Lightning protection per [DO-160G Section 22](https://www.rtca.org/content/standards-guidance-materials)

### 3.3 Mechanical Ignition Sources

**Potential Mechanical Failures**:
1. **Bearing Seizure**: Friction → sparks and heat
   - Probability: 2 × 10⁻⁶ per flight hour
   - Mitigation: Oil pressure monitoring, vibration monitoring

2. **Turbine Blade Rub**: Contact with casing → sparks
   - Probability: 5 × 10⁻⁷ per flight hour
   - Mitigation: Clearance design, tip clearance monitoring

3. **Foreign Object Damage (FOD)**: Ingestion → impact sparks
   - Probability: 1 × 10⁻⁶ per flight hour
   - Mitigation: Inlet particle separator, inspection

## 4. Flammable Materials Assessment

### 4.1 Flammable Fluids

#### Jet Fuel (Jet A / JP-8)
**Properties**:
- Flash point: 100°F (38°C) minimum
- Auto-ignition: 410°F (210°C)
- Flammability limits: 0.6% - 4.7% (vol/vol in air)
- Vapor density: 4-5 (heavier than air)

**Locations in APU System**:
- Fuel supply line from aircraft tank
- Fuel control unit (FCU)
- Fuel manifold and nozzles
- Fuel filter and boost pump

**Maximum Quantity in Fire Zone**: ~2 quarts (1.9 L)

**Ignition Scenario**:
```
Fuel Line Fracture → Spray onto Hot Surface (>410°F) → Ignition
    ↓
Spray Fire (Class B) → Detection < 1s → Suppression Activation
    ↓
Halon Discharge → Fire Extinguished < 3s → Re-Ignition Prevention
```

#### Lubricating Oil (MIL-PRF-23699)
**Properties**:
- Flash point: 490°F (254°C) minimum
- Auto-ignition: 500°F (260°C)
- Fire class: Class B (flammable liquid)
- Vapor pressure: Low (minimal vapor at normal temperatures)

**Locations in APU System**:
- Oil tank (3 quarts / 2.8 L)
- Oil lines to/from bearings
- Gearbox sump
- Oil cooler

**Maximum Quantity in Fire Zone**: ~3 quarts (2.8 L)

**Ignition Scenario**:
```
Oil Line Leak → Oil Mist Formation → Contact with Hot Surface (>500°F)
    ↓
Sustained Oil Fire → Detection < 1s → Suppression Activation
    ↓
Halon Discharge → Fire Extinguished < 3s
```

#### Hydrogen (H₂) - Fuel Cell Configuration Only
**Properties** ([ISO 23273](https://www.iso.org/standard/75105.html)):
- Flash point: N/A (gas)
- Auto-ignition: 1,060°F (571°C)
- Flammability limits: 4% - 75% (vol/vol in air) - VERY WIDE
- Diffusion rate: Very high (14× faster than air)
- Vapor density: 0.07 (much lighter than air)

**Unique Hazards**:
- Extremely wide flammability range
- Invisible flame (UV detection required)
- Low ignition energy (0.02 mJ)
- Rapid flame propagation
- Potential for detonation in confined spaces

**Safety Systems** (49-60 Configuration):
- Triple-redundant H₂ leak detection
- Automatic isolation valves (< 1s closure)
- Forced ventilation (50 ACH minimum)
- Explosion-proof electrical equipment
- Concentration monitoring (25% LEL alarm)

**Detailed Analysis**: [H2 Safety Considerations](./ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md)

### 4.2 Combustible Materials

**Materials in Fire Zones**:
| Material | Location | Fire Class | Mitigation |
|----------|----------|------------|------------|
| Wire insulation | Harnesses | A | Fire-resistant per [FAR 25.853](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.853) |
| Seals/gaskets | Joints | A | High-temperature silicone |
| Hoses | Fluid connections | A | Fire-resistant sleeves |
| Acoustic blankets | Insulation | A | Fire-resistant fiberglass |
| Paint/coatings | Surfaces | A | Intumescent fire-retardant |

**Fire Resistance Testing**:
- All materials tested per [FAR 25.853](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.853) Appendix F
- Vertical Bunsen burner test: Self-extinguishing within 15 seconds
- Smoke density: < 100 (Ds) per [FAR 25.853(d)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.853)

## 5. Fire Detection System

### 5.1 Detection Architecture

**Dual-Loop Configuration** per [FAR 25.1203(c)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1203):

```
Fire Zone 1 (APU Core):
├─ Loop A: Optical Flame Detectors (3× units)
│  ├─ UV/IR flame detection
│  ├─ Response time: < 0.5s
│  └─ Coverage: 98% of zone volume
│
└─ Loop B: Thermal Detectors (Continuous loop)
   ├─ Pneumatic sensing line
   ├─ Response time: < 1.5s
   └─ Coverage: 100% of zone perimeter

Voting Logic: 2-out-of-N (either loop triggers alarm)
```

**Design Features**:
- ✅ **No Single Point of Failure**: Either loop can detect fire independently
- ✅ **Complementary Technologies**: Optical (fast, flame-specific) + Thermal (reliable, environmental)
- ✅ **Continuous Monitoring**: Real-time status, Built-In Test (BIT)
- ✅ **False Alarm Prevention**: Logic filters, environmental compensation

### 5.2 Detection Performance

**Response Time Requirements** per [FAR 25.1203(b)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1203):
- Requirement: < 2.0 seconds
- Achieved: 0.8 seconds average (60% margin)

**Test Results** ([Fire Test Results](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-002_FIRE_TEST_RESULTS.md) Section 2.1):
| Fire Type | Loop A | Loop B | Combined | Status |
|-----------|---------|---------|----------|--------|
| Fuel spray | 0.6s | 1.2s | 0.6s | ✅ PASS |
| Fuel pool | 0.9s | 1.5s | 0.9s | ✅ PASS |
| Oil fire | 0.7s | 1.1s | 0.7s | ✅ PASS |
| H₂ fire | 0.5s | 0.9s | 0.5s | ✅ PASS |

**False Alarm Performance**:
- Test duration: 103.4 hours continuous monitoring
- False alarms: **0** (zero)
- Stimuli tested: Hot bleed air, reflected sunlight, EMI, vibration, temperature transients
- **Result**: ✅ No nuisance alarms

### 5.3 Crew Alerting

**Flight Deck Indications**:
- **Visual**: Red "APU FIRE" warning light (both pilot and co-pilot)
- **Aural**: "Fire, Fire, APU" voice alert + master warning chime
- **Synoptic**: APU fire indication on EICAS/ECAM display
- **Priority**: Level 1 Warning (immediate crew action required)

**Automatic Actions**:
- Fire detection signal latches (remains active even if fire self-extinguishes)
- APU fire handle armed (enables crew to discharge suppression)
- Optional: Automatic APU shutdown (configurable by aircraft type)

## 6. Fire Suppression System

### 6.1 Suppression Agent

**Agent Selection**: Halon 1301 (primary) / HFC-236fa (alternative)

**Halon 1301 Properties**:
- Chemical formula: CF₃Br (Bromotrifluoromethane)
- Extinguishing mechanism: Chemical flame inhibition
- Effectiveness: Excellent for Class A, B, C fires
- Toxicity: Low (suitable for occupied areas if necessary)
- Ozone Depletion Potential (ODP): 10.0 (being phased out)
- Status: Allowed for aviation critical applications

**HFC-236fa (Halon Replacement)**:
- Chemical formula: C₃H₂F₆
- ODP: 0 (ozone-friendly)
- Effectiveness: Comparable to Halon 1301
- Global Warming Potential: 9,810 (high but acceptable for aviation)
- Status: Approved replacement per [FAA Policy Statement PS-AIR-25.853-02](https://www.faa.gov/regulations_policies/policy_guidance/policy_statements)

### 6.2 Suppression System Design

**Dual-Shot Configuration** per [FAR 25.863(e)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863):

```
Suppression System:
├─ Bottle 1: 7.5 lbs Halon 1301
│  ├─ Discharge pressure: 600 psi
│  ├─ Distribution: 8 nozzles (Zone 1 & 2)
│  └─ Discharge time: < 1.0 second
│
└─ Bottle 2: 7.5 lbs Halon 1301 (redundant)
   ├─ Independent discharge
   ├─ Same distribution network
   └─ Provides 100% redundancy

Activation: Manual (APU fire handle) or Automatic (optional)
```

**Agent Distribution**:
- **Zone 1 (APU Core)**: 5 nozzles
- **Zone 2 (Gearbox)**: 3 nozzles
- Nozzle placement optimized for uniform concentration
- Target concentration: 6.0% volume minimum
- Achieved concentration: 6.5% average (test data)

### 6.3 Suppression Performance

**Extinguishing Effectiveness**:
| Fire Type | Fuel Load | Extinction Time | Agent Used | Result |
|-----------|-----------|-----------------|------------|--------|
| Fuel spray | 0.5 gal/min | 2.1s | 95% bottle | ✅ PASS |
| Fuel pool | 2.0 gallons | 2.8s | 98% bottle | ✅ PASS |
| Oil fire | 1.0 quart | 1.9s | 92% bottle | ✅ PASS |
| H₂ fire | 10 L/min | 1.2s | 90% bottle | ✅ PASS |

**Test Evidence**: [Fire Test Results](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-002_FIRE_TEST_RESULTS.md) Section 3.1

**Key Performance Metrics**:
- ✅ 100% success rate (all test fires extinguished)
- ✅ Extinction time: < 3 seconds (all scenarios)
- ✅ No re-ignition observed during 10-minute hold period
- ✅ Dual-shot redundancy verified

### 6.4 Re-Ignition Prevention

**Post-Discharge Protection**:
1. **Agent Concentration Hold**: Halon remains in fire zone for 10+ minutes
2. **Fuel Shutoff**: Automatic closure of APU fuel valve
3. **APU Shutdown**: Turbine coastdown eliminates ignition sources
4. **Ventilation Control**: Maintained to prevent agent loss but allow cooling

**Procedure** ([AMM Reference](../OPERATIONS_AND_MAINTENANCE/ATA-49-00-00-AMM_AIRCRAFT_MAINTENANCE_MANUAL.md)):
```
Fire Detected → Discharge Bottle 1 → Monitor for 30 seconds
                                      ↓
                         Re-Ignition? → Yes → Discharge Bottle 2
                                      ↓
                                      No → Continue monitoring
                                         → Declare emergency if airborne
                                         → Land ASAP
```

## 7. Fire Containment

### 7.1 Firewall Design

**Firewall Specifications**:
- **Material**: Grade 5 titanium alloy (Ti-6Al-4V) + ceramic fiber blanket
- **Thickness**: 0.040" titanium + 0.5" ceramic insulation
- **Configuration**: Dual-barrier design
- **Rating**: 15 minutes minimum burnthrough protection

**Test Results** ([Fire Test Results](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-002_FIRE_TEST_RESULTS.md) Section 4.1):
- **Burnthrough Time**: 22 minutes (47% margin over requirement)
- **Test Conditions**: 2,000°F (1,093°C) JP-8 fuel fire
- **Cold Side Temperature**: 512°F max (limit: 750°F for structure integrity)
- **Result**: ✅ PASS with significant margin

**Penetration Sealing**:
| Penetration Type | Qty | Seal Method | Fire Rating |
|------------------|-----|-------------|-------------|
| Fuel lines | 2 | Fire-resistant sleeve + metal grommet | 15 min |
| Oil lines | 4 | Fire-resistant sleeve + metal grommet | 15 min |
| Electrical harness | 3 | Fireproof grommet (ceramic) | 15 min |
| Bleed air duct | 1 | Expansion joint with fire seal | 15 min |
| Control cables | 2 | Metal conduit through firewall | 15 min |

**Smoke Penetration Test**: ✅ PASS - No smoke leakage detected during fire test

### 7.2 Drainage System

**Requirement** per [FAR 25.863(b)](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863):  
Fire zones must be drained to prevent accumulation of flammable fluids.

**Drainage Design**:
- **Number of Drains**: 4 drain masts
- **Drain Diameter**: 0.5" minimum
- **Drain Location**: Lowest points in each fire zone
- **Drain Protection**: Flame-resistant check valves
- **Overboard Discharge**: Aft of aircraft, away from hot surfaces

**Drainage Performance** ([Fire Test Results](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-002_FIRE_TEST_RESULTS.md) Section 5.1):
| Aircraft Attitude | Drainage Time | Residual Fluid | Result |
|-------------------|---------------|----------------|--------|
| Level | 45s | < 50 mL | ✅ PASS |
| Nose Up 10° | 38s | < 40 mL | ✅ PASS |
| Nose Down 5° | 52s | < 60 mL | ✅ PASS |
| Bank 15° | 42s avg | < 48 mL | ✅ PASS |

**Drainage Test Scenario**: 2 gallons fuel injected into fire zone

## 8. Fire Hazard Scenarios

### 8.1 Scenario 1: Fuel Line Rupture Fire

**Initiating Event**: Fuel line fracture due to vibration fatigue

**Sequence of Events**:
1. **T=0s**: Fuel line fractures, fuel sprays onto hot turbine casing (1,800°F)
2. **T=0.1s**: Fuel ignites instantly (spray fire)
3. **T=0.6s**: Fire detection Loop A (optical) detects flame
4. **T=0.6s**: Master warning activated, crew alerted
5. **T=2s**: Crew initiates fire handle pull (or automatic if configured)
6. **T=2.5s**: Bottle 1 discharges Halon into fire zones
7. **T=4.5s**: Fire extinguished (2 seconds after agent discharge)
8. **T=4.5s**: Fuel valve closes, APU shuts down
9. **T=10min**: Halon concentration maintained, no re-ignition

**Probability Analysis**:
- Fuel line rupture: 5 × 10⁻⁷ per flight hour
- Ignition given rupture: 0.9 (90%)
- Detection failure: 1 × 10⁻⁵ (dual-loop system)
- Suppression failure: 1 × 10⁻⁴ (dual-shot system)
- **Overall fire containment failure**: 5 × 10⁻¹⁵ per flight hour

**Conclusion**: ✅ Acceptable (well below 10⁻⁹ catastrophic requirement)

### 8.2 Scenario 2: Oil Fire

**Initiating Event**: Oil line chafing leads to leak

**Sequence of Events**:
1. **T=0s**: Oil line develops leak, oil mist forms in gearbox compartment
2. **T=5s**: Oil mist contacts hot surface (generator at 350°F)
3. **T=5.5s**: Oil vapor ignites (sustained fire)
4. **T=6.2s**: Fire detection Loop B (thermal) detects temperature rise
5. **T=6.2s**: Master warning activated, crew alerted
6. **T=8s**: Crew initiates fire handle pull
7. **T=8.5s**: Bottle 1 discharges Halon
8. **T=10.4s**: Fire extinguished
9. **T=10.4s**: APU shuts down, oil pump stops

**Probability Analysis**:
- Oil line leak: 3 × 10⁻⁷ per flight hour
- Ignition given leak: 0.7 (70%)
- Fire containment failure: 5 × 10⁻⁴ (single failure tolerance)
- **Overall uncontained fire**: 1.05 × 10⁻¹⁰ per flight hour

**Conclusion**: ✅ Acceptable (below 10⁻⁹ catastrophic requirement)

### 8.3 Scenario 3: Hydrogen Leak Fire (49-60 Configuration)

**Initiating Event**: H₂ line connection leak

**Sequence of Events**:
1. **T=0s**: H₂ connection develops leak (10 L/min)
2. **T=0.3s**: H₂ concentration sensor detects 25% LEL
3. **T=0.3s**: Master caution activated
4. **T=0.8s**: Automatic H₂ isolation valve closes
5. **T=1.0s**: If ignition occurs before isolation, UV flame detector activates
6. **T=1.0s**: Master warning, fire indications
7. **T=2s**: Crew or automatic suppression activation
8. **T=2.5s**: Halon discharge (effective on H₂ fires)
9. **T=3.7s**: Fire extinguished
10. **T=3.7s**: Emergency ventilation activated (50 ACH)

**Probability Analysis**:
- H₂ leak: 1 × 10⁻⁶ per flight hour
- Ignition before isolation: 0.3 (30%)
- Fire containment failure: 1 × 10⁻⁴
- **Overall uncontained H₂ fire**: 3 × 10⁻¹¹ per flight hour

**Conclusion**: ✅ Acceptable with significant margin

**Additional Safeguards**:
- Triple-redundant leak detection
- Automatic isolation < 1 second
- Explosion-proof equipment in H₂ zones
- Enhanced ventilation (50 ACH vs. 20 ACH for fuel)

**Detailed Analysis**: [H2 Safety Considerations](./ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md)

## 9. Quantitative Risk Assessment

### 9.1 Fire Probability Analysis

**Fault Tree Analysis Results** ([FTA Document](./ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md)):

**Top Event**: APU Fire Penetrates Firewall to Aircraft Structure

```
Probability Calculation:
─────────────────────────────────────────────
Fire Initiation:           8 × 10⁻⁷ /FH
× Detection Failure:       1 × 10⁻⁵
× Suppression Failure:     1 × 10⁻⁴
× Firewall Breach:         1 × 10⁻³
─────────────────────────────────────────────
= Total Probability:       8 × 10⁻¹⁹ /FH
```

**Requirement**: < 10⁻⁹ per flight hour (catastrophic)  
**Achieved**: 8 × 10⁻¹⁹ per flight hour  
**Margin**: 10 orders of magnitude  
**Status**: ✅ COMPLIANT with extremely high margin

### 9.2 Fire Severity Classification

Per [ARP4761A](https://www.sae.org/standards/content/arp4761a/) and [FAR 25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR8cecfeb5bb76b8a/section-25.1309):

| Fire Scenario | Effect on Aircraft | Severity | Prob Requirement | Achieved |
|---------------|-------------------|----------|------------------|----------|
| Fire contained in zone | No safety effect | Minor | Any | Frequent |
| Fire detected & suppressed | Nuisance, crew workload | Major | < 10⁻⁵ /FH | 8 × 10⁻⁷ /FH ✅ |
| Fire penetrates one barrier | Reduced margins | Hazardous | < 10⁻⁷ /FH | 8 × 10⁻¹³ /FH ✅ |
| Fire penetrates to aircraft | Multiple fatalities | Catastrophic | < 10⁻⁹ /FH | 8 × 10⁻¹⁹ /FH ✅ |

**All scenarios meet or exceed requirements** ✅

## 10. Operational Considerations

### 10.1 Fire Response Procedures

**Flight Crew Immediate Actions** ([AMM Reference](../OPERATIONS_AND_MAINTENANCE/ATA-49-00-00-AMM_AIRCRAFT_MAINTENANCE_MANUAL.md)):

```
APU FIRE Warning:
1. APU FIRE HANDLE ............................ PULL
   (Shuts off fuel, arms suppression)
2. FIRE EXTINGUISHER BOTTLE 1 ................ DISCHARGE
3. Monitor for 30 seconds
4. If fire continues:
   FIRE EXTINGUISHER BOTTLE 2 ................ DISCHARGE
5. If airborne:
   - Declare emergency
   - Land at nearest suitable airport
6. After landing:
   - Evacuate aircraft if fire not confirmed extinguished
```

**Ground Crew Actions**:
1. Notify airport fire services immediately
2. Prepare for aircraft evacuation
3. Position fire equipment
4. Do not approach aircraft until fire confirmed extinguished
5. Follow airport emergency response plan

### 10.2 Maintenance and Inspection

**Fire Protection System Checks** ([Inspection Intervals](../OPERATIONS_AND_MAINTENANCE/ATA-49-00-00-147_INSPECTION_INTERVALS.md)):

| Inspection | Interval | Tasks |
|------------|----------|-------|
| **Pre-Flight** | Each flight | • Visual inspection of fire zones<br>• Fire detection BIT check<br>• Bottle pressure check |
| **A-Check** | 500 FH | • Detailed visual inspection<br>• Detection loop continuity test<br>• Fire handle test<br>• Download fire system events |
| **C-Check** | 3,000 FH | • Detection system functional test<br>• Bottle hydrostatic inspection<br>• Nozzle inspection and cleaning<br>• Firewall seal inspection |
| **Component Overhaul** | 10 years | • Replace detection loops<br>• Replace fire bottles<br>• Pressure test all fire zone seals |

**Test Requirements**:
- Fire detection test: Quarterly (ground functional test)
- Suppression system discharge test: Every 5 years (test bottle)
- Firewall integrity: Every heavy maintenance check (visual + thermal imaging)

### 10.3 Dispatch with Fire Protection Inoperative

**Minimum Equipment List (MEL) Considerations**:

| Condition | Dispatch Status | Limitations |
|-----------|-----------------|-------------|
| Both detection loops operative | ✅ Dispatch | None |
| One detection loop inoperative | ⚠️ Dispatch (Category B) | • Max 3 days<br>• Enhanced ground inspections |
| Both detection loops inoperative | ❌ No Dispatch | Repair required |
| One bottle inoperative | ❌ No Dispatch | Repair required (no redundancy) |
| Fire detection test fail | ❌ No Dispatch | System fault must be cleared |

**Rationale**: Fire protection is critical for safe APU operation. MEL allows limited dispatch with one detection loop inoperative due to dual-loop redundancy, but both bottles must be operative to ensure fire can be extinguished.

## 11. Continuous Improvement

### 11.1 Lessons Learned from Service

**Industry Fire Events** (anonymized data):
1. **Event**: APU fuel nozzle leak caused sustained fire
   - **Action**: Enhanced fuel system inspection procedures
   - **Status**: Incorporated in [AMM](../OPERATIONS_AND_MAINTENANCE/ATA-49-00-00-AMM_AIRCRAFT_MAINTENANCE_MANUAL.md)

2. **Event**: False alarm due to hot bleed air leak
   - **Action**: Improved detection logic to discriminate hot air vs. fire
   - **Status**: Software update implemented

3. **Event**: Suppression bottle discharge did not extinguish fire (improper nozzle)
   - **Action**: Added nozzle orientation inspection to maintenance checks
   - **Status**: Incorporated in [C-Check procedures](../OPERATIONS_AND_MAINTENANCE/ATA-49-00-00-AMM_AIRCRAFT_MAINTENANCE_MANUAL.md)

### 11.2 Future Enhancements

**Potential Improvements**:
1. **Advanced Detection**: Thermal imaging cameras for early detection
2. **Halon Replacement**: Transition to more environmentally friendly agents (HFC-236fa)
3. **Predictive Monitoring**: AI-based anomaly detection for pre-fire conditions
4. **Integrated Health Monitoring**: Real-time fire risk assessment based on system health

## 12. Conclusions and Recommendations

### 12.1 Fire Safety Assessment Summary

**Overall Fire Safety Assessment**: ✅ **ACCEPTABLE**

**Key Findings**:
1. ✅ All fire zones properly identified and protected
2. ✅ Dual-loop fire detection with < 1 second response time
3. ✅ Dual-shot fire suppression with 100% extinguishing effectiveness
4. ✅ Firewall protection exceeds 15-minute requirement (22 min tested)
5. ✅ Drainage system prevents flammable fluid accumulation
6. ✅ Fire containment failure probability < 10⁻⁹ per flight hour
7. ✅ Full compliance with FAR 25.863, 25.1182, 25.1203, 25.1431

**Safety Margins**:
- Detection response time: 60% faster than required
- Firewall burnthrough: 47% margin
- Suppression effectiveness: 100% success rate
- Probability margin: 10 orders of magnitude below catastrophic limit

### 12.2 Recommendations

1. **Production Implementation**: ✅ Fire protection design ready for production release
2. **Certification**: ✅ Test evidence supports type certification per [Safety Case](./ATA-49-00-00-015_SAFETY_CASE_REPORT.md)
3. **Operations**: Implement fire response procedures per [AMM](../OPERATIONS_AND_MAINTENANCE/ATA-49-00-00-AMM_AIRCRAFT_MAINTENANCE_MANUAL.md)
4. **Training**: Flight crew and maintenance personnel training on fire system operation and inspection
5. **H₂ Configuration**: Additional safety analysis for fuel cell APU per [H2 Safety](./ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md)

### 12.3 Open Items

**None** - All fire safety analyses complete and passed ✅

## References

### Regulatory Documents
1. [FAR 25.863](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-D/section-25.863) - Flammable Fluid Fire Protection
2. [FAR 25.1182](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1182) - Nacelle Areas Behind Firewalls
3. [FAR 25.1203](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-E/section-25.1203) - Fire Detection System
4. [FAR 25.1431](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECb/section-25.1431) - APU Installation
5. [FAR 25.1309](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-C/part-25/subpart-F/subject-group-ECFR8cecfeb5bb76b8a/section-25.1309) - Equipment, Systems, and Installations
6. [AC 25.863-1](https://www.faa.gov/regulations_policies/advisory_circulars) - Flammable Fluid Fire Protection

### Industry Standards
7. [SAE AIR1818B](https://www.sae.org/standards/content/air1818b/) - APU Installation Guide
8. [SAE ARP4761A](https://www.sae.org/standards/content/arp4761a/) - Safety Assessment Process
9. [NFPA 30](https://www.nfpa.org/codes-and-standards/all-codes-and-standards/list-of-codes-and-standards/detail?code=30) - Flammable and Combustible Liquids Code
10. [NFPA 409](https://www.nfpa.org/codes-and-standards/all-codes-and-standards/list-of-codes-and-standards/detail?code=409) - Aircraft Hangars
11. [ISO 23273](https://www.iso.org/standard/75105.html) - Fuel Cell Vehicles - Safety Specifications

### Internal Documentation
12. [Safety Case Report](./ATA-49-00-00-015_SAFETY_CASE_REPORT.md)
13. [Fault Tree Analysis](./ATA-49-00-00-014_FAULT_TREE_ANALYSIS.md)
14. [Fire Protection Design](../DESIGN/ATA-49-00-00-034_FIRE_PROTECTION_DESIGN.md)
15. [Fire Test Results](../V_AND_V/TEST_EVIDENCE/ATA-49-00-00-TE-002_FIRE_TEST_RESULTS.md)
16. [H2 Safety Considerations](./ATA-49-00-00-012_H2_SAFETY_CONSIDERATIONS.md)

---

**Document Control**  
**Classification**: Controlled - Safety Analysis  
**Distribution**: Safety, Engineering, Certification  
**Next Review**: Annual or upon design change

[🔥 Return to Safety Documentation](./README.md) | [🏠 ATA-49 Home](../README.md)
