# LTSP: Long-Term Storage Master Procedure

**Document ID**: LTSP_Master-Procedure-Long-Term-Prep  
**Revision**: 2.0.0  
**Date**: 2025-10-27  
**ATA Chapter**: 10  
**Subsection**: 03-02 - LONG TERM STORAGE (> 30 DAYS)

---

## 1. Purpose

Master procedure for preparing AMPEL360 aircraft for long-term storage exceeding 30 days.

## 2. Scope

Applies to aircraft storage periods > 30 days up to 24 months. Storage beyond 24 months requires engineering evaluation and special procedures.

## 3. Long-Term Storage Philosophy

Long-term storage requires comprehensive preservation to prevent:
- Corrosion of metal components
- Degradation of seals and composites
- Fluid contamination and breakdown
- Battery degradation
- System stagnation and seizure
- Environmental damage

## 4. Prerequisites

- Aircraft airworthy or maintenance status documented
- Storage facility approved for long-term storage
- All component-specific procedures available
- Qualified maintenance personnel assigned
- Parts and materials procured
- Engineering approval obtained (if > 12 months)

## 5. Planning Requirements

### 5.1 Pre-Storage Assessment (Minimum 2 weeks before storage)

1. **Engineering Review**
   - Identify components requiring special preservation
   - Review component life limits vs. storage duration
   - Approve storage plan and location
   - Identify regulatory requirements

2. **Materials and Parts**
   - Preservation fluids and desiccants
   - Protective covers and seals
   - Replacement items (filters, seals, fluids)
   - Inspection equipment

3. **Facility Preparation**
   - Verify hangar/storage area suitable (temp, humidity, security)
   - Prepare stands, jacks, or cradles if needed
   - Install environmental monitoring
   - Arrange power for battery maintenance (if applicable)

### 5.2 Storage Duration Categories

| Duration | Category | Additional Requirements |
|----------|----------|------------------------|
| 31-90 days | Short Long-Term | Standard preservation |
| 91-180 days | Medium Long-Term | Enhanced preservation + monthly inspections |
| 181-365 days | Long-Term | Full preservation + bi-weekly inspections |
| > 365 days | Extended Long-Term | Maximum preservation + engineering oversight |

---

## 6. MASTER CHECKLIST - LONG-TERM STORAGE

### PHASE 1: PRE-PRESERVATION (All Storage Durations)

✅ Complete short-term storage checklist (STSP_Checklist-Short-Term-Prep)  
✅ Perform additional inspection for long-term storage readiness  
✅ Repair all outstanding maintenance items or document deferral justification  
✅ Complete all time/cycle limited items due within storage + 30 days  
✅ Obtain regulatory storage authorization (if required)

### PHASE 2: COMPONENT-SPECIFIC PRESERVATION

Execute the following component-specific procedures:

| Component System | Procedure Document | ATA | Duration |
|------------------|-------------------|-----|----------|
| **Cryogenic H₂ System** | LTSP-PROC_28-60_Cryo-H2-System-Inerting.md | 28-60 | All durations |
| **Battery Systems** | LTSP-PROC_24-33_Battery-Preservation-SOC-Mgmt.md | 24-33 | All durations |
| **Engines/Powerplant** | LTSP-PROC_72-00_Engine-Preservation.md | 72-00 | All durations |
| **Airframe Protection** | LTSP-PROC_5x-xx_Airframe-Protection.md | 51-57 | All durations |

### PHASE 3: SYSTEM-SPECIFIC ACTIONS

#### 3.1 Fuel System (ATA 28)

| Action | < 90 Days | 90-365 Days | > 365 Days |
|--------|-----------|-------------|------------|
| SAF tank preservation | Fill 95% + biocide | Fill 100% + biocide + seal vents | Drain + nitrogen purge |
| LH2 system | Inerting per LTSP-PROC_28-60 | Inerting per LTSP-PROC_28-60 | Full defuel + inerting |
| Fuel lines | Flush with biocide | Flush + fog with oil | Flush + fog + cap |
| Refuel capability | 7 days notice | 14 days notice | 30 days notice |

#### 3.2 Hydraulic Systems (ATA 29)

| Action | < 90 Days | 90-365 Days | > 365 Days |
|--------|-----------|-------------|------------|
| Fluid level | Maximum | Maximum + preservation additive | Drain + flush + refill new |
| Actuators | Cycle monthly | Cycle bi-weekly + lubricate | Preserve in mid-position |
| Accumulators | Monitor nitrogen charge weekly | Re-charge monthly | Discharge + inspect |
| Seals | Visual inspection | Preserve with seal swell additive | Replace on RTS |

#### 3.3 Landing Gear (ATA 32)

| Action | < 90 Days | 90-365 Days | > 365 Days |
|--------|-----------|-------------|------------|
| Tire pressure | Inflate to max + 10 psi | Inflate to max + 15 psi | Jack aircraft off tires |
| Shock struts | Service to correct extension | Service + add nitrogen | Deflate + service on RTS |
| Exposed surfaces | Clean + apply corrosion inhibitor | Clean + apply + cover | Max protection + covers |
| Brakes | Release | Release + preserve | Disassemble if rusty environment |

#### 3.4 Flight Controls (ATA 27)

| Action | < 90 Days | 90-365 Days | > 365 Days |
|--------|-----------|-------------|------------|
| Control surfaces | Neutral position | Install locks/gust locks | Install locks + covers |
| Actuators | Cycle monthly | Cycle bi-weekly | Preserve in mid-stroke |
| Cable systems | Lubricate | Lubricate + adjust tension | Replace on RTS if corroded |

#### 3.5 Environmental Systems (ATA 21/26/30/36/38)

| Action | < 90 Days | 90-365 Days | > 365 Days |
|--------|-----------|-------------|------------|
| Air conditioning | Drain + desiccant | Drain + desiccant + seal | Drain + seal + replace desiccant quarterly |
| Pressurization | Disable outflow valves | Disable + preserve actuators | Disable + inspect seals |
| Water/waste | Drain + flush | Drain + flush + sanitize + fog | Drain + flush + cap all lines |
| Fire detection | Functional test before storage | Test monthly | Recalibrate on RTS |

#### 3.6 Avionics (ATA 31/34/42/46)

| Action | < 90 Days | 90-365 Days | > 365 Days |
|--------|-----------|-------------|------------|
| Power state | Powered down | Powered down + desiccant | Powered down + environmental control |
| Displays | Covered | Covered + desiccant | Remove if harsh environment |
| Antennas | Inspect | Inspect + preserve | Cover or remove |
| Software/data | Backup | Backup + version control | Backup + update plan before RTS |

#### 3.7 Electrical Power (ATA 24)

See LTSP-PROC_24-33_Battery-Preservation-SOC-Mgmt.md for comprehensive battery procedures.

| Action | < 90 Days | 90-365 Days | > 365 Days |
|--------|-----------|-------------|------------|
| Main batteries | 50% SOC + disconnect | Maintenance charge cycle monthly | Remove + external storage |
| CO₂ batteries | 40% SOC + disconnect | Maintenance charge cycle monthly | Remove + external storage |
| Fuel cells | Maintain humidity | Maintenance cycle bi-weekly | Preserve per OEM procedure |
| Generators | Preserve + dessicant | Preserve + rotate monthly | Full preservation + seal |

### PHASE 4: AIRFRAME AND EXTERNAL PROTECTION

Execute LTSP-PROC_5x-xx_Airframe-Protection.md for detailed procedures.

| Action | < 90 Days | 90-365 Days | > 365 Days |
|--------|-----------|-------------|------------|
| Exterior cleaning | Wash + dry | Wash + dry + wax | Wash + dry + wax + additional coating |
| Paint touchup | All damaged areas | All damaged areas | Full inspection + major repairs |
| Sealing | Cover pitots/static ports | Cover all openings + tape | Seal all openings + bag aircraft |
| Corrosion prevention | Standard inhibitor | Enhanced inhibitor | Maximum protection + covers |
| Cockpit/cabin | Sun shades | Sun shades + cabin desiccant | Full coverage + environmental control |

### PHASE 5: SPECIAL SYSTEMS (AMPEL360-Specific)

#### 5.1 Cryogenic H₂ System (ATA 28-60)
Execute LTSP-PROC_28-60_Cryo-H2-System-Inerting.md

#### 5.2 CO₂ Capture System (ATA 21-80)
| Action | All Durations |
|--------|---------------|
| Drain all condensate | ✅ |
| Purge with dry nitrogen | ✅ |
| Seal all ports | ✅ |
| Document system state | ✅ |
| Mark "DO NOT OPERATE" | ✅ |

#### 5.3 Quantum Scheduler (ATA 42-60)
| Action | All Durations |
|--------|---------------|
| Export all state data | ✅ |
| Graceful shutdown | ✅ |
| Document software version | ✅ |
| Plan update strategy for RTS | ✅ |

### PHASE 6: DOCUMENTATION AND PLACARDING

| Task | Required |
|------|----------|
| Complete long-term storage logbook entry | ✅ |
| Attach component-specific procedure sign-offs | ✅ |
| Install "AIRCRAFT IN LONG-TERM STORAGE" placards (cockpit, exterior) | ✅ |
| Post contact information and inspection schedule | ✅ |
| File storage plan with regulatory authority (if required) | ✅ |
| Create detailed inspection schedule | ✅ |
| Photograph aircraft before storage (all angles) | ✅ |
| Submit documentation to maintenance control | ✅ |

---

## 7. INSPECTION SCHEDULE DURING STORAGE

| Duration | External Inspection | Internal Inspection | System Servicing | Documentation |
|----------|-------------------|-------------------|-----------------|---------------|
| 31-90 days | Weekly | Bi-weekly | Monthly | Monthly |
| 91-180 days | Bi-weekly | Weekly | Bi-weekly | Bi-weekly |
| 181-365 days | Weekly | Weekly | Weekly | Weekly |
| > 365 days | Bi-weekly | Bi-weekly + quarterly deep | Weekly | Weekly + monthly report |

### 7.1 Inspection Checklist Items

**External Inspection:**
- General condition and security
- Tie-downs/mooring (if applicable)
- Covers and seals intact
- No fluid leaks
- No animal/insect infestation
- Environmental conditions (temp, humidity)

**Internal Inspection:**
- Cabin desiccant condition
- No moisture accumulation
- No corrosion development
- Battery status (if installed)
- LH2 system status (if pressurized)
- Placard and documentation current

**System Servicing:**
- Battery charge cycle (if installed)
- Tire pressure adjustment
- Actuator exercising (per schedule)
- Fluid level verification
- Environmental control verification

---

## 8. RETURN TO SERVICE PREPARATION

When storage period ending:
1. **Minimum 30 days before RTS**: Notify maintenance control and engineering
2. **Minimum 14 days before RTS**: Begin RTS planning and parts procurement
3. **Execute**: RTS-Checklist_From-Long-Term-Storage_rev2.0.0_20281201.md

---

## 9. COMPLETION SIGN-OFF

**Aircraft Registration**: _______________  
**Storage Location**: _______________  
**Storage Category**: [ ] 31-90d  [ ] 91-180d  [ ] 181-365d  [ ] >365d  
**Storage Start Date**: _______________  
**Planned RTS Date**: _______________  
**Inspection Frequency**: _______________

**Component Procedures Completed:**
- [ ] LTSP-PROC_28-60_Cryo-H2-System-Inerting.md
- [ ] LTSP-PROC_24-33_Battery-Preservation-SOC-Mgmt.md
- [ ] LTSP-PROC_72-00_Engine-Preservation.md
- [ ] LTSP-PROC_5x-xx_Airframe-Protection.md

**Prepared by**:  
Name: _______________ Signature: _______________ Date: _______________  
License #: _______________

**Engineering Approval** (if > 12 months):  
Name: _______________ Signature: _______________ Date: _______________

**Approved for Long-Term Storage**:  
Chief of Maintenance: _______________ Date: _______________

---

## 10. Related Documents

- STSP_Checklist-Short-Term-Prep_rev1.5.0_20281118.md
- Component-specific procedures (Section 6, Phase 2)
- RTS-Checklist_From-Long-Term-Storage_rev2.0.0_20281201.md
- Aircraft Maintenance Manual Chapter 10
- EASA Part-M / FAA AC 43-16

## 11. Revision History

| Version | Date | Changes | Approved By |
|---------|------|---------|-------------|
| 2.0.0 | 2025-10-27 | Complete restructure with component procedures | Chief Engineer |
| 1.5.0 | 2025-10-27 | Added AMPEL360-specific systems | Engineering Manager |
| 1.0.0 | 2025-10-27 | Initial release | Maintenance Manager |

---

**Approval**: Chief of Maintenance & Chief Engineer  
**Next Review**: 2025-10-27  
**Distribution**: All Maintenance Bases, Engineering, Regulatory Affairs

**⚠️ CRITICAL: Long-term storage requires strict adherence to all procedures to ensure aircraft airworthiness upon return to service.**
