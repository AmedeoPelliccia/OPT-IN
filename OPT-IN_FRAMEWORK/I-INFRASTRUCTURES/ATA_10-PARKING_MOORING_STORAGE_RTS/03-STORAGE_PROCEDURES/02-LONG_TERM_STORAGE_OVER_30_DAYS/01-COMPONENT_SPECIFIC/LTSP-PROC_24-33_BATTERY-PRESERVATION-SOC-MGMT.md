# LTSP-PROC: Battery Preservation and SOC Management

**Document ID**: LTSP-PROC_24-33_Battery-Preservation-SOC-Mgmt  
**ATA Chapter**: 24-33 (Battery Systems including CO₂ Solid-State)  
**Storage Type**: Long-Term Storage Component-Specific  
**Revision**: 1.0.0  
**Date**: 2025-10-27

---

## 1. Purpose

Procedure for preserving AMPEL360 battery systems during long-term storage, including conventional lithium-ion and advanced CO₂ solid-state battery modules.

## 2. Scope

Covers all battery systems:
- Main aircraft batteries (ATA 24-21)
- APU batteries (ATA 49)
- Emergency batteries (ATA 24-22)
- **CO₂ Solid-State Battery Modules (ATA 24-33)** - AMPEL360 specific

## 3. Battery Storage Principles

### 3.1 Degradation Factors During Storage
- **Calendar aging**: Time-based degradation (irreversible)
- **SOC stress**: High SOC accelerates aging
- **Temperature**: Each 10°C increase doubles aging rate
- **Depth of discharge**: Deep discharge causes damage
- **Self-discharge**: ~3-5% per month at room temperature

### 3.2 Optimal Storage Conditions

| Parameter | Li-Ion Batteries | CO₂ Solid-State Batteries |
|-----------|-----------------|--------------------------|
| **SOC** | 40-60% | 30-50% |
| **Temperature** | 5-15°C (41-59°F) | 10-20°C (50-68°F) |
| **Humidity** | 45-65% RH | 40-60% RH |
| **Charge Cycle** | Every 3-6 months | Every 2-4 months |

---

## 4. BATTERY INVENTORY AND ASSESSMENT

### 4.1 Pre-Storage Battery Survey

Document all batteries in aircraft:

| Location | Battery Type | P/N | S/N | Capacity | Age | SOH |
|----------|-------------|-----|-----|----------|-----|-----|
| Main DC Bus 1 | Li-Ion | | | | | % |
| Main DC Bus 2 | Li-Ion | | | | | % |
| APU Start | Li-Ion | | | | | % |
| Emergency | Li-Ion | | | | | % |
| CO₂ Module 1 | CO₂ Solid-State | | | | | % |
| CO₂ Module 2 | CO₂ Solid-State | | | | | % |

### 4.2 Battery Health Assessment

For each battery:
1. Measure State of Health (SOH)
2. Perform capacity test (if SOH < 80%)
3. Check for:
   - Physical damage
   - Swelling or deformation
   - Corrosion on terminals
   - Abnormal self-discharge rate
4. **Decision**: Store in aircraft OR remove to controlled storage

**Recommended for removal if:**
- SOH < 70%
- Storage > 180 days
- Temperature control not available in storage location
- Battery nearing end of life

---

## 5. STORAGE PREPARATION PROCEDURE

### 5.1 Battery SOC Adjustment

**For Li-Ion Batteries:**

| Current SOC | Target SOC | Action |
|------------|-----------|---------|
| 0-30% | 50% | **Charge** to 50% (slow charge, C/10 rate) |
| 31-60% | 50% | **Verify** and document |
| 61-80% | 50% | **Discharge** to 50% (controlled discharge) |
| 81-100% | 50% | **Discharge** to 50% (monitor temperature) |

**For CO₂ Solid-State Batteries:**

| Current SOC | Target SOC | Action |
|------------|-----------|---------|
| 0-20% | 40% | **Charge** to 40% (manufacturer protocol) |
| 21-50% | 40% | **Verify** and document |
| 51-100% | 40% | **Discharge** to 40% via controlled load |

**Procedure:**
1. Connect battery monitoring equipment
2. If charging needed:
   - Use aircraft charging system OR external charger
   - Monitor cell voltages (balance)
   - Target rate: 0.1C maximum
   - Stop at target SOC ±2%
3. If discharging needed:
   - Use controlled resistive load OR aircraft systems
   - Monitor temperature (do not exceed 30°C)
   - Stop at target SOC ±2%
4. Document final SOC and cell voltages

### 5.2 Battery Disconnect Procedure

**For storage > 30 days: ALWAYS disconnect batteries**

1. **Record Configuration**
   - Photograph battery connections
   - Document wire routing
   - Label all connections

2. **Electrical Isolation**
   - Disconnect negative terminal first
   - Disconnect positive terminal
   - Install terminal protective caps
   - Verify no parasitic drain path

3. **Mechanical Securing**
   - Verify battery restraints tight
   - Install protective covers
   - Document battery remains in aircraft

### 5.3 Battery Removal (if elected)

**Criteria for removal:**
- Storage > 180 days
- Temperature-controlled storage not available
- Battery nearing replacement
- Engineering directive

**Removal Procedure:**
1. Perform disconnect procedure (Section 5.2)
2. Remove battery per AMM procedures
3. Install dummy load or ballast (maintain weight/CG)
4. Transport battery to controlled storage facility
5. Document removal in aircraft logs

**External Storage Requirements:**
- Temperature: 10-15°C (50-59°F)
- Humidity: 50-60% RH
- Individual battery storage (no stacking)
- Fire-resistant container
- Monthly SOC check capability

---

## 6. BATTERY MONITORING DURING STORAGE

### 6.1 In-Aircraft Monitoring (Batteries Not Removed)

| Check | Frequency | Action |
|-------|-----------|--------|
| **Visual inspection** | Monthly | Check for leakage, swelling, corrosion |
| **Terminal condition** | Monthly | Clean if corrosion detected |
| **SOC measurement** | Every 60-90 days | Record SOC of each battery |
| **Charge cycle** | When SOC < 30% (Li-Ion) or < 20% (CO₂) | Recharge to target SOC |
| **Temperature log** | Weekly | Record storage environment temp |

**SOC Measurement Procedure (batteries disconnected):**
1. Temporarily reconnect battery to monitoring equipment
2. Allow 30 min stabilization
3. Measure open-circuit voltage
4. Calculate SOC from voltage (use manufacturer curve)
5. Disconnect and secure

### 6.2 External Storage Monitoring

If batteries removed to external storage:
- Weekly visual inspection
- Bi-weekly SOC check
- Monthly capacity check (discharge-recharge cycle)
- Quarterly full diagnostic

---

## 7. MAINTENANCE CHARGE CYCLES

### 7.1 When to Perform Charge Cycle

**Li-Ion Batteries:**
- SOC drops below 35% → Recharge to 50%
- Routine: Every 6 months regardless of SOC

**CO₂ Solid-State Batteries:**
- SOC drops below 25% → Recharge to 40%
- Routine: Every 4 months regardless of SOC

### 7.2 Charge Cycle Procedure

1. **Pre-Charge Checks**
   - Verify battery temperature 10-25°C
   - Inspect for damage or swelling
   - Check terminal condition

2. **Charging**
   - Reconnect battery (if disconnected)
   - Use aircraft charging system OR external charger
   - Charge rate: 0.1C (slow charge preferred for storage)
   - Monitor cell voltages (ensure balanced)
   - Target SOC: 50% (Li-Ion) or 40% (CO₂)

3. **Post-Charge**
   - Allow 1 hour rest
   - Measure and document final SOC
   - Disconnect battery
   - Document in storage log

---

## 8. CO₂ SOLID-STATE BATTERY SPECIAL CONSIDERATIONS

### 8.1 Unique Characteristics

The AMPEL360 CO₂ solid-state batteries (ATA 24-33) have unique properties:
- Solid electrolyte (no liquid leakage risk)
- Lower optimal storage SOC than Li-Ion
- More sensitive to humidity extremes
- Different self-discharge profile
- Integrated thermal management

### 8.2 CO₂ Battery Storage Protocol

**Short-term (31-90 days):**
- SOC: 40%
- Disconnect from aircraft
- Thermal management system OFF
- Monitor every 60 days

**Medium-term (91-180 days):**
- SOC: 35%
- Disconnect from aircraft
- Install desiccant pack near battery compartment
- Maintenance charge every 90 days
- Monitor thermal management seals

**Long-term (> 180 days):**
- **RECOMMENDATION**: Remove to controlled storage
- SOC: 30-35%
- Temperature: 15°C ±5°C
- Humidity: 45-55% RH
- Charge cycle every 60 days
- Full diagnostic every 180 days

### 8.3 CO₂ Battery Thermal Management

During storage:
1. Deactivate active cooling/heating
2. Verify thermal insulation intact
3. Check desiccant in battery compartment (if equipped)
4. Monitor compartment humidity monthly
5. Replace desiccant if humidity > 70% RH

---

## 9. DOCUMENTATION

### 9.1 Storage Log Entry

For each battery, document:
- Serial number and location
- Pre-storage SOH and SOC
- Storage preparation date
- Disconnect date (if applicable)
- Target SOC
- Storage location (in aircraft or external)
- Planned charge cycle dates

### 9.2 Inspection and Charge Records

Maintain log with:
- Date of each inspection
- SOC measured
- Any abnormalities observed
- Charge cycles performed
- Personnel performing work

---

## 10. RETURN TO SERVICE

**Minimum 7 days before RTS:**

### 10.1 Battery Reactivation Procedure

1. **Inspection**
   - Visual inspection for damage
   - Check for swelling, leakage, corrosion
   - Measure current SOC

2. **Charging**
   - Charge to operational SOC (90-95%)
   - Monitor cell balance
   - Verify charging current normal
   - Check temperature during charge

3. **Capacity Test**
   - Perform capacity test if storage > 180 days
   - Compare to baseline (SOH check)
   - Document results

4. **Reinstallation** (if removed)
   - Clean and prepare mounting location
   - Install battery per AMM
   - Torque terminals to specification
   - Apply terminal corrosion inhibitor

5. **Functional Test**
   - Reconnect battery
   - Verify battery online with bus
   - Test discharge capability (brief load test)
   - Verify battery monitoring system functional
   - Check thermal management system

6. **Documentation**
   - Complete RTS entry in aircraft logs
   - Update battery service records
   - Document final SOH
   - Certify battery airworthy

### 10.2 Battery Replacement Criteria

**Replace battery instead of RTS if:**
- SOH < 70%
- Capacity loss > 30% from rated
- Physical damage or swelling observed
- Abnormal self-discharge (> 10% per month)
- Storage duration exceeded manufacturer limits
- Cell imbalance cannot be corrected

---

## 11. COMPLETION SIGN-OFF

**Aircraft Registration**: _______________  
**Storage Start Date**: _______________

**Battery Storage Status:**

| Battery | Location | S/N | Pre-Storage SOC | Target SOC | Status | Removed |
|---------|----------|-----|----------------|-----------|---------|---------|
| Main 1 | | | % | % | ☐ In A/C  ☐ External | ☐ |
| Main 2 | | | % | % | ☐ In A/C  ☐ External | ☐ |
| APU | | | % | % | ☐ In A/C  ☐ External | ☐ |
| Emergency | | | % | % | ☐ In A/C  ☐ External | ☐ |
| CO₂ Mod 1 | | | % | % | ☐ In A/C  ☐ External | ☐ |
| CO₂ Mod 2 | | | % | % | ☐ In A/C  ☐ External | ☐ |

**Inspection Schedule**: ☐ Monthly  ☐ Bi-monthly  ☐ Quarterly  
**Charge Cycle Schedule**: Every ______ days

**Performed by**:  
Name: _______________ License: _______________ Date: _______________  
Signature: _______________

**Inspected by**:  
Name: _______________ License: _______________ Date: _______________  
Signature: _______________

---

## 12. Related Documents

- AMM 24-21: Main Battery System
- AMM 24-33: CO₂ Solid-State Battery Modules (Provisional)
- LTSP_Master-Procedure-Long-Term-Prep_rev2.0.0_20281201.md
- Battery Manufacturer Service Bulletins
- RTS-Checklist_From-Long-Term-Storage_rev2.0.0_20281201.md

---

**Approval**: Chief Engineer - Electrical Systems  
**Next Review**: 2025-10-27  
**Distribution**: All Maintenance Bases, Battery Shops
