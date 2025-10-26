# ATA 116 - FLIGHT SIMULATOR CUING SYSTEM

**Revision:** 2.0.0  
**Effective Date:** 2029-01-01  
**Simulator ID:** FFS-001 (AMPEL360)

---

## Overview

This chapter contains the technical data, qualification tests, and maintenance procedures for all systems that provide sensory cues to the pilot, including visual, motion, aural, and control loading systems. The fidelity and performance of these systems are paramount for achieving high-level simulator qualification and preventing negative training.

**Governance & Fidelity Note:**
The systems defined in this chapter are the primary contributors to the simulator's immersion and fidelity. Their performance, especially **transport delay (latency)**, is rigorously tested against regulatory standards (e.g., EASA CS-FSTD(A)). All documentation must maintain explicit traceability to the qualification requirements in ATA 115 and the source aircraft data.

---

## AMPEL360 Specific Challenges

The AMPEL360 Blended Wing Body aircraft presents unique simulator cuing requirements:

### Visual System
Must accurately render the unique out-of-cockpit view of a Blended Wing Body, including:
- Wing flex and ground effect visuals
- Wide field-of-view for the integrated wing-body configuration
- Accurate representation of open-fan propulsor positions

### Aural System
Must model the complex soundscape of hybrid-electric propulsion:
- The transition from silent battery/fuel-cell taxi
- The distinct acoustic signature of the open-fan propulsors
- Multi-mode propulsion sound transitions

### Motion & Control Loading
Must replicate the handling qualities of:
- A large, tailless aircraft
- Advanced fly-by-wire controls
- Unique BWB control characteristics

---

## Applicable Standards & Regulations

- **EASA CS-FSTD(A) Issue 2** - Certification Specifications for Flight Simulation Training Devices
- **FAA AC 120-40** - Airplane Simulator Qualification
- **ARINC 610C** - Visual System Interface Standards
- **ISO/IEC 17025** - Calibration Laboratory Requirements

---

## Directory Structure

```
/ATA_116-FLIGHT_SIMULATOR_CUING_SYSTEM
├── 00_README.md (This file)
├── INDEX.meta.yaml
├── /01-SYSTEM_ARCHITECTURE_AND_SPECS
├── /02-QUALIFICATION_AND_COMPLIANCE
├── /03-CALIBRATION_AND_ALIGNMENT
├── /04-SOFTWARE_AND_MODELS
├── /05-OPERATIONS_AND_MAINTENANCE
└── /06-REGISTRY_AND_LOGS
```

---

## Related ATA Chapters

- **ATA 115:** FLIGHT SIMULATOR SYSTEMS (Host computer, interfaces, qualification plan)
- **ATA 27:** FLIGHT CONTROLS (Source data for control loading)
- **ATA 02:** OPERATIONS INFORMATION (Simulator operations procedures)
- **ATA 03:** SUPPORT INFORMATION (GSE for simulator maintenance)

---

## Document Control

**Approved by:** Simulator Engineering  
**Approval Date:** 2028-12-15  
**Next Review:** 2030-01-01  

**Change Log:**
- v2.0.0 (2029-01-01): Complete restructure for AMPEL360 BWB simulator
- v1.5.0 (2028-06-01): Added hybrid-electric propulsion aural model
- v1.0.0 (2027-01-01): Initial release for Level D qualification

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[📚 Framework Documentation](../../README.md) | [🏠 Repository Root](../../../README.md)
