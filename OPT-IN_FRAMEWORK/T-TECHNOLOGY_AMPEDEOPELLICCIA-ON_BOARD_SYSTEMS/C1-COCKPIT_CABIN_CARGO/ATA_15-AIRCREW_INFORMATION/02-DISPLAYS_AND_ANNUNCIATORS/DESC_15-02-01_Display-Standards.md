# DESC_15-02-01 — Display Standards  
**Chapter:** ATA 15 — Aircrew Information / 02 — Displays and Annunciators  
**Revision:** 1.0.0  
**Effective date:** 2025-10-30  
**Owner:** Aircrew Systems Engineering

---

## 1.0 Purpose
Define engineering, human-factors, electrical, environmental and verification requirements for cockpit and aircrew displays and annunciators. Ensure displays and alerts meet operational, regulatory and maintainability constraints and are traceable for certification evidence.

---

## 2.0 Scope
Applies to all crew-facing fixed and removable displays, head-up displays (HUD), standby displays, integrated display units (IDU), multifunction displays (MFD), and discrete annunciator panels used by flight crew, cabin crew and maintenance personnel. Includes graphic displays, LED/segment annunciators and touch-enabled interfaces. Does not replace part-level hardware drawings or software design documents; it defines chapter-level standards and acceptance criteria.

---

## 3.0 Definitions
- **Luminance (cd/m² / nits):** surface luminous exitance perceived by human eye.  
- **Contrast ratio:** ratio of luminous intensity (white/black).  
- **Viewing Angle:** angular range providing ≥ specified contrast.  
- **Annunciator:** discrete indicator (LED, lamp) or graphic element used to indicate system state.  
- **Night Mode:** reduced-luminance, contrast-tuned display state for low-light operations.  
- **Pixel Failure Rate:** percentage of non-functioning pixels allowed for an assembly.  
- **ARINC 661:** cockpit display system architecture standard (use where applicable).

---

## 4.0 Applicable Standards & Cross-References
- ATA-20 Workmanship and fastener standards.  
- ARINC 661 (Cockpit display system integration).  
- RTCA/DO-160 (Environmental and EMC).  
- DO-178C (Safety-critical display software where applicable).  
- DO-254 (Hardware design assurance as applicable).  
- EASA/FAA certification guidance on flightdeck information and alerts.  
- ATA-51 for LSP and composite repair implications.

---

## 5.0 Display Types and Roles
1. **Primary Flight Displays (PFD)** — flight-critical. Redundancy and qualification required.  
2. **Multi-Function Displays (MFD)** — navigation, systems synoptic, procedures.  
3. **Standby Displays** — crash/tolerant, dedicated simple flight instruments.  
4. **Heads-Up Displays (HUD)** — overlay symbology, conformal cues.  
5. **Annunciator Panels** — discrete, color-coded alerts for crew attention.  
6. **Cabin/Crew Displays** — non-primary but safety-related (e.g., door status).  
7. **Maintenance Displays** — shop/ground use, may expose diagnostic data and logs.

---

## 6.0 Human-Factors & Visual Requirements
All visual requirements derive from human-factors principles and regulatory mandates.

### 6.1 Legibility & Text
- Minimum character height at normal viewing distance: **3.0 mm stroke height** for critical text; **2.0 mm** for supplementary text. Specify distance in part plybook.  
- Fonts: use clear sans family optimized for small characters. Avoid condensed or decorative fonts.  
- Minimum contrast ratio (luminance white to black): **≥ 8:1** for primary flight symbology in day mode. For night mode, ensure contrast that avoids bloom and glare.

### 6.2 Brightness & Adaptive Control
- Day mode target luminance: **≥ 1000 cd/m² (nits)** for outdoor readable displays (HUDs or sunlight-readable).  
- Cockpit normal mode: **300–800 cd/m²** depending on unit and bezel.  
- Night mode max luminance: **≤ 10 cd/m²** for primary symbology; annunciator night luminance lower per operator preference.  
- Automatic adaptive dimming required with manual override. Ramp time for brightness changes ≤ **1.0 s** for transitions.

### 6.3 Viewing Angle & Uniformity
- Full contrast retention over ±60° horizontal and ±40° vertical for primary flight displays. Specify per part.  
- Luminance uniformity across active area: **±10%** typical. Hot/cold spots > ±20% require engineering disposition.

### 6.4 Resolution & Refresh
- Symbol resolution to preserve required symbol fidelity. Minimum pixel density: **> 70 ppi** for cockpit graphics (or as required by symbology spec).  
- Refresh rate: **≥ 60 Hz** for primary flight symbology to avoid flicker and latency. HUD symbology recommended ≥ **80 Hz**.  
- Response time (gray-to-gray): **≤ 16 ms** for flight critical displays.

### 6.5 Failure Modes & Pixel Defects
- Maximum allowed pixel failure: **≤ 0.01%** of pixels for primary flight displays. For non-primary units tolerances higher with approved limits.  
- Display must report degraded-mode annunciation when failure threshold reached (operator guidance).

---

## 7.0 Annunciator & Alerting Standards
- Use standardized color semantics: **Red = Immediate/critical**, **Amber = Caution**, **Green = Normal/active**, **Blue/White = Advisory**. Document in ATA 15 color table.  
- Annunciator brightness and flash patterns standardized:  
  - Critical flash frequency: **1.5 ± 0.3 Hz**.  
  - Flash duty cycle: **40–60%**.  
- Auditory cue pairing: each critical annunciator must have a unique paired aural tone per Ops spec.  
- Annunciator test mode: built-in functional test with proof-of-operation.

---

## 8.0 Electrical, EMC and LSP
- Power input ranges per ATA-24/AMM. Transients and inrush tested and documented.  
- EMC compliance: DO-160 sections applicable. Document test levels and attachments with `sha256` hashes.  
- LSP: conductive coatings or meshes integrated into display bezels must be restored per ATA-51 when repaired. Provide continuity acceptance (4-wire) thresholds.  
- Grounding and bonding requirements: display frame resistance ≤ **2.5 mΩ** where LSP required.

---

## 9.0 Mechanical, Environmental & Durability
- Vibration: DO-160 vibration categories apply. Provide random & sinusoidal test evidence.  
- Temperature: operating range per aircraft environmental envelope. Typical cockpit range **–40°C to +70°C** for electronics; display surface limits to be stated explicitly.  
- Shock: survive specified drop/impact loads for crashworthiness.  
- Sealing and ingress: IP rating per location (e.g., IP54 for flightdeck controls; higher if required).  
- Optical coatings: anti-reflective and scratch resistance per M&P.

---

## 10.0 Software & Interface Requirements
- Display software that is safety-critical must follow DO-178C process and be traceable to SW requirements.  
- Partitioning: separate display application layers from core flight software per IMAS/ARINC guidance.  
- Interface protocols: ARINC 661 for CDU/EDCS integration where used. Use documented message maps and versioning.  
- Update mechanism: secure SW load/rollback with cryptographic integrity verification. Store SW baseline and hash in sidecar/DPP.

---

## 11.0 Test, Acceptance & Verification
- **Factory acceptance tests (FAT):** photometric, colorimetry, EMC, vibration, thermal cycle, and software acceptance. Store raw test artifacts and `sha256` checksums.  
- **Integration tests:** system level verification with avionics, sensors and input devices.  
- **Operational tests:** HUD collimation, conformal alignment and symbology validation.  
- **Maintenance tests:** BIT, annunciator-selftest, lamp/LED change verification and built-in loopback tests.  
- **Qualification acceptance:** provide test reports with uncertainty, instrumentation calibration IDs and measurement methods.

### 11.1 Photometric and Colorimetry
- Measure white point, color coordinates and CRI as required. Document measurement method and uncertainty.  
- For HUD and primary symbology, chromaticity must minimize perceptual confusion with environmental lighting.

---

## 12.0 Human Factors, HMI and Accessibility
- Critical information prioritized and segregated from meshing content.  
- Use standard symbology and unambiguous iconography. Provide caption/alternate text for maintenance displays.  
- Touch targets ≥ **10 mm** minimum for touch displays in turbulence conditions; prefer **> 14 mm** for gloved operations.  
- Touch responsiveness and debouncing tested for false actuations.  
- Menu depth limited to avoid concealed critical actions. Provide emergency function shortcuts.

---

## 13.0 Maintenance, Repair and Sidecar Requirements
- Every display assembly and annunciator must have a sidecar `.meta.yaml` documenting: `id`, `type`, `revision`, `effective_date`, `effectivity`, `safety.hazards`, `training_required`, `approvals`, `integrity.checksum.value` (sha256).  
- Repair that affects display optical surface, LSP, or structural mounting requires engineering disposition and ATA-51 disposition.  
- Maintenance records must include calibration certificates, photometric reports and raw files (with sha256).

---

## 14.0 Traceability & DPP
- Maintain DPP entries for each display module: PN/SN, SW baseline hash, FAT report hash, integration test hash, calibration certificate hash.  
- Cross-reference display requirements to ATA 15 procedures, DO-178C software requirements, and ARINC 661 message definitions.

---

## 15.0 Safety Warnings
- Do not operate or adjust HUD collimation when aircraft engines or systems are running unless procedure permits.  
- Cleaning agents must be display-safe; do not use solvents that degrade anti-reflective coatings.  
- LSP repairs must be validated for continuity before return to service.

---

## 16.0 Acceptance Criteria Summary (example table)

| Item | Requirement (example) |
|------|-----------------------|
| Day luminance (PFD) | ≥ 300 cd/m² (typical), sunlight readable units ≥ 1000 cd/m² |
| Night luminance (PFD) | ≤ 10 cd/m² (max) |
| Contrast ratio | ≥ 8:1 (day) |
| Viewing angle | ±60° H / ±40° V with ≥ specified contrast |
| Refresh rate | ≥ 60 Hz (flight symbology) |
| Response time (g→g) | ≤ 16 ms |
| Pixel failure | ≤ 0.01% (primary flight displays) |
| Annunciator flash | 1.5 ± 0.3 Hz; duty 40–60% |
| LSP continuity | 4-wire ≤ 2.5 mΩ where applicable |

---

## 17.0 References
- ATA-20 — Standard Practices (workmanship, fastening).  
- ARINC 661 — Cockpit Display System.  
- RTCA DO-160 — Environmental Conditions and Test Procedures.  
- DO-178C / DO-254 — SW/HW design assurance.  
- Human factors guidance and operator HMI standards.

---

## 18.0 Revision history
- **1.0.0 — 2025-10-30** Initial release.

---

*Notes:* numeric values are baseline examples. All values must be substantiated by FAT, FEA, or supplier evidence and recorded in sidecars before release.
