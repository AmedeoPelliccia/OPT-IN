# Test Case: ATA 21-00-00-TC-001 - System Startup

## Test Information

- **Test Case ID**: 21-00-00-TC-001
- **Title**: Air Conditioning and Pressurization System Startup
- **Subsystem**: ATA-21 (All)
- **Test Type**: Functional
- **Test Level**: System Integration
- **Version**: 1.0.0
- **Date**: 2025-10-31
- **Status**: APPROVED

**Related Documents:**
- [System Description](../../../OVERVIEW/21-00-00_SYSTEM_DESCRIPTION.md)
- [Operational Concepts](../../../OVERVIEW/21-00-00_OPERATIONAL_CONCEPTS.md)
- [V&V Master Test Plan](../../PLANS/)
- [Requirements](../../../REQUIREMENTS/README.md)
- [Complete References](../../../REFERENCES.md)

## Test Objective

Verify that the Air Conditioning and Pressurization system can be properly started from a cold aircraft condition and transition to normal operational mode.

## Requirements Traced

- SYS-21-0001: System shall start and reach operational status within 5 minutes
- SYS-21-0010: Packs shall provide conditioned air within specified temperature range
- SYS-21-0020: Cabin pressure control shall engage automatically during climb
- SYS-21-0030: All system BITE shall complete successfully at startup

## Test Prerequisites

### Equipment Required
- Aircraft with ATA-21 system installed and operational
- Ground power cart or APU running
- Environmental chamber (for temperature control) - OR - Natural ground conditions documented
- Test instrumentation:
  - Cabin temperature probes (multiple zones)
  - Cabin pressure/altitude recorder
  - Pack outlet temperature probes
  - Differential pressure gauge
  - Airflow measurement device
  - Data acquisition system

### Initial Conditions
- Aircraft on ground
- External power connected OR APU running
- All ATA-21 circuit breakers in (closed)
- All system switches in OFF position
- Cabin and cockpit doors closed (for pressure test)
- Ground temperature: Record actual (target 15-35°C)

### Personnel
- Test conductor
- Test pilot or qualified systems operator
- Data recorder
- Safety observer

### Documentation
- Test procedure (this document)
- Aircraft flight manual (AFM) procedures
- System schematic diagrams
- Data recording sheets

## Test Procedure

### Phase 1: Pre-Start Checks

#### Step 1.1: Visual Inspection
**Action**: Perform visual inspection of ECS components
**Expected Result**:
- No visible damage to ducts, packs, or valves
- All access panels properly secured
- No fluid leaks
- All connectors properly mated

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

#### Step 1.2: Circuit Breaker Check
**Action**: Verify all ATA-21 circuit breakers are IN (closed)
**Expected Result**:
- Left pack CB: IN
- Right pack CB: IN
- Cabin pressure controller CB: IN
- Temperature controller CB: IN
- Recirculation fans CB: IN

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

#### Step 1.3: Control Panel Check
**Action**: Verify all switches in correct position
**Expected Result**:
- Pack switches: OFF
- Temperature selectors: MID range (24°C)
- Pressurization mode: AUTO

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

### Phase 2: System Power-Up

#### Step 2.1: Apply Power
**Action**: Apply electrical power (external power or APU)
**Expected Result**:
- Power available indication
- No caution/warning lights (initial)
- Cockpit displays active

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

#### Step 2.2: System Self-Test (BITE)
**Action**: Observe system self-test sequence (automatic on power-up)
**Expected Result**:
- BITE runs automatically
- Duration: < 30 seconds
- BITE pass indication
- No fault messages

**Pass/Fail**: [ ]
**Notes**: _______________________________
**Fault Codes (if any)**: _______________________________

---

### Phase 3: Pack Startup

#### Step 3.1: Start Left Pack
**Action**: Select LEFT PACK switch to ON
**Expected Result** (within 60 seconds):
- Left pack status: RUNNING
- Left pack outlet temperature: Cooling down from ambient
- No pack trip or fault
- Airflow from cabin outlets (verify by hand)

**Measurements**:
- Time to pack running: _____ seconds
- Initial pack outlet temp: _____ °C
- Pack outlet temp after 60 sec: _____ °C
- Cabin outlet airflow: Perceptible / Weak / None

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

#### Step 3.2: Start Right Pack
**Action**: Select RIGHT PACK switch to ON
**Expected Result** (within 60 seconds):
- Right pack status: RUNNING
- Right pack outlet temperature: Cooling down from ambient
- No pack trip or fault
- Increased airflow from cabin outlets

**Measurements**:
- Time to pack running: _____ seconds
- Initial pack outlet temp: _____ °C
- Pack outlet temp after 60 sec: _____ °C

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

### Phase 4: Temperature Control Verification

#### Step 4.1: Monitor Pack Temperature Stabilization
**Action**: Monitor both packs for 5 minutes
**Expected Result**:
- Left pack outlet temp: 10-20°C (typical cruise temp range)
- Right pack outlet temp: 10-20°C
- No pack trips or overheats
- Stable operation (no cycling)

**Measurements** (at 5 minutes):
- Left pack outlet: _____ °C
- Right pack outlet: _____ °C
- Cabin temperature (cockpit): _____ °C
- Cabin temperature (fwd): _____ °C
- Cabin temperature (aft): _____ °C

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

#### Step 4.2: Zone Temperature Control Check
**Action**: Adjust cockpit zone temperature selector from 24°C to 22°C
**Expected Result** (within 3 minutes):
- Cockpit temperature decreases
- Temperature change of at least 1°C
- No effect on other zones (minimal)

**Measurements**:
- Cockpit temp before: _____ °C
- Cockpit temp after 3 min: _____ °C
- Forward cabin temp (for comparison): _____ °C

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

### Phase 5: Pressurization Control Verification (Ground Check)

#### Step 5.1: Pressurization Controller Active
**Action**: Verify pressurization system is in AUTO mode
**Expected Result**:
- Cabin altitude indication: Field elevation ±100 ft
- Differential pressure: 0 ± 0.1 psi
- Outflow valves: Position appropriate for ground (partially open)
- No cabin altitude warnings

**Measurements**:
- Cabin altitude indication: _____ ft
- Field elevation: _____ ft MSL
- Differential pressure: _____ psi
- Outflow valve position (if available): _____ %

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

#### Step 5.2: Manual Pressurization Control Check (Optional/Caution)
**Action**: Switch pressurization mode to MANUAL and command outflow valves closed slightly
**Expected Result**:
- Cabin differential pressure increases slightly (< 0.5 psi)
- Outflow valve position changes as commanded
- System responsive to manual inputs

**Measurements**:
- Differential pressure before: _____ psi
- Differential pressure after: _____ psi
- Time to return to AUTO mode: _____ sec

**Pass/Fail**: [ ]
**Notes**: _______________________________

**Return to AUTO**: [ ] Verified

---

### Phase 6: Recirculation and Filtration Check

#### Step 6.1: Recirculation Fans Operation
**Action**: Verify recirculation fans are operating (listen/feel for airflow)
**Expected Result**:
- Both fans running (sound/vibration)
- Airflow from recirculation vents
- No abnormal noise or vibration

**Measurements**:
- Left fan status: Running / Not Running
- Right fan status: Running / Not Running
- Abnormal noise: Yes / No

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

#### Step 6.2: Filter Differential Pressure Check (if instrumented)
**Action**: Read filter differential pressure indication
**Expected Result**:
- Differential pressure: < 1.5 in H₂O (new filter)
- If > 1.5 in H₂O, filter replacement recommended

**Measurements**:
- Filter ΔP: _____ in H₂O

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

### Phase 7: System Shutdown

#### Step 7.1: Pack Shutdown
**Action**: Select both pack switches to OFF
**Expected Result**:
- Packs stop within 10 seconds
- Pack outlet temperature rises (no cooling)
- No residual faults

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

#### Step 7.2: Power Removal
**Action**: Remove external power or shut down APU
**Expected Result**:
- System powers down gracefully
- No stuck relays or valves (verify by sound)

**Pass/Fail**: [ ]
**Notes**: _______________________________

---

## Test Acceptance Criteria

### Mandatory
- [ ] All BITE checks pass
- [ ] Both packs start and run without trips
- [ ] Temperature control functional in all zones
- [ ] Pressurization controller operational
- [ ] No safety-critical faults
- [ ] Startup time < 5 minutes (from power on to stable operation)

### Advisory
- [ ] Pack outlet temperatures within expected range (10-20°C)
- [ ] Zone temperature control responsive (< 3 min for 2°C change)
- [ ] Recirculation fans operational
- [ ] Filter differential pressure acceptable

## Test Results

**Overall Result**: PASS / FAIL / INCOMPLETE

**Summary**: 
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________

**Issues Identified**:
1. _________________________________________________________________
2. _________________________________________________________________
3. _________________________________________________________________

**Action Items**:
1. _________________________________________________________________
2. _________________________________________________________________
3. _________________________________________________________________

## Test Signatures

**Test Conducted By**: _______________________ Date: ___________

**Test Witnessed By**: _______________________ Date: ___________

**Data Reviewed By**: ________________________ Date: ___________

**Test Approved By**: ________________________ Date: ___________

---

## Appendices

### Appendix A: Data Plots
*(Attach time-history plots of key parameters if using automated data acquisition)*

### Appendix B: Photographs
*(Attach photos of test setup, instrumentation, any anomalies)*

### Appendix C: Raw Data Sheets
*(Attach completed data recording sheets)*

---

*Part of the AMPEL360 OPT-IN Framework - ATA Chapter 21 V&V*
