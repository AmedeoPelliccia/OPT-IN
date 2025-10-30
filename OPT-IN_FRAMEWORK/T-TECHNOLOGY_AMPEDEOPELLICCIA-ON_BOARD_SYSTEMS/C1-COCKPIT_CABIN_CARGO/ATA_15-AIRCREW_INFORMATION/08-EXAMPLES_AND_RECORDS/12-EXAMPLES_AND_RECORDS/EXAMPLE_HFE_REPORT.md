---
# EXAMPLE_HFE_REPORT.meta.yaml
schema_version: "1.1"
id: "EXAMPLE_HFE_REPORT_HFE-RPT-2025-001"
document:
  type: "EXAMPLE"
  title: "Example HFE Validation Report — PFD v2.1"
  revision: "1.0.0"
  effective_date: "2025-10-30"
effectivity: { msn: "ALL" }
safety:
  hazards: ["Acoustic exposure","Operational risk during tests"]
  criticality: "Documentation"
training_required: []
approvals: []
integrity:
  checksum: { algorithm: "sha256", value: "" }
traceability:
  crossrefs:
    - "PROC_15-04-01"
    - "DESC_15-02-01"
    - "PROC_15-03-01"
---

# EXAMPLE_HFE_REPORT — Human Factors Engineering (HFE) Validation Report  
**Procedure / Project:** PROC_15-04-01 HFE Process — Example Validation  
**System:** Flightdeck Primary Flight Display (PFD) v2.1  
**Report ID:** HFE-RPT-2025-001  
**Revision:** 1.0.0  
**Date:** 2025-10-30  
**Author:** Jane Doe (HFE Lead)  
**Owner:** Human Factors & Aircrew Systems Engineering

---

## 1. Executive Summary
Objective: Summative validation of the PFD v2.1 layout and alerting changes for critical flight modes (approach/flare).  
Result: **PASS (with actions)**. Critical tasks met performance thresholds. Two usability-related defects require minor UI changes prior to fleet-wide release.

Key metrics:
- Summative SUS: **74** (pass threshold 68)  
- NASA-TLX median: **42** (acceptable per HFE Plan)  
- Critical task success: **97.5%** (threshold ≥95%)  
- Mean reaction time to critical alert: **2.4 s** (threshold ≤ 5 s)

Attachments: raw audio `.wav` and measurement CSVs, video captures, HIL logs, instrument calibration certificates. All attachments have been archived and hashed (see §11).

---

## 2. Scope & Acceptance Criteria
- **Scope:** Verify PFD v2.1 symbology, night/day luminance, critical alert audio pairing, and pilot task performance under nominal and degraded conditions.  
- **Summative Acceptance Criteria (from HFE Plan):**
  1. Critical task success ≥ 95% under nominal and degraded conditions.
  2. SUS ≥ 68.
  3. STI ≥ 0.60 for critical speech alerts; SNR ≥ 15 dB(A) for critical tones.
  4. Mean operator reaction time ≤ 5 s for critical alerts.
  5. Visual legibility and brightness conform to DESC_15-02-01 thresholds.

---

## 3. Participants & Test Beds
- **Participants:** 12 pilots (weights: 8 line pilots, 4 training captains). Age 28–56. All current on type.  
- **Test beds:**  
  - HIL cockpit simulator (certified).  
  - Acoustic mock-up for audio verification.  
- **Instruments:** Class 1 microphone (cal ID: MIC-2025-001), luminance meter (LUX-2025-02), eye-tracker (ET-100). Calibration certificates included.

---

## 4. Methods & Scenarios
### 4.1 Methods
- Summative scenario-driven testing in HIL (N=12).  
- Metrics: task success, task time, error rate, SUS, NASA-TLX, STI (speech), SNR (tone).  
- Data capture: video, screen logs, event timestamps, audio recordings.

### 4.2 Scenarios
1. **Nominal approach** — day lighting, autopilot engaged, one non-critical system message.  
2. **Degraded approach** — partial instrumentation failure; simulated sensor latency.  
3. **High workload go-around** — multiple concurrent alerts.  

Each pilot completed all scenarios. Randomized scenario order to reduce learning bias.

---

## 5. Tasks & Measures
| Task ID | Description | Success Criteria | Measurement |
|---|---|---:|---|
| T1 | Identify airspeed anomaly and acknowledge | Correct action within 5 s | Success (Y/N), time (s) |
| T2 | Respond to glidepath deviation alert | Correct vertical mode change within 7 s | Success, time |
| T3 | Complete HUD re-centering | Within allowed tolerance | Error count, time |
| T4 | Respond to critical audio alert + visual cue | Acknowledge within 5 s | SNR, STI, reaction time |

---

## 6. Results (summary)

### 6.1 Task Performance
- **Critical task aggregate:** 117/120 successes → **97.5%** success.
- **Mean reaction time (critical alerts):** 2.4 s (SD 0.9 s).
- **Average task time (T1):** 3.2 s (SD 1.1 s).

### 6.2 Usability Scores
- **SUS (N=12):** Mean = **74** (SD 6). 10/12 participants ≥ 68.
- **NASA-TLX (median):** 42 (range 28–58). Degraded scenario increased median to 49.

### 6.3 Audio Metrics (Critical tones & speech)
- **SNR (critical):** Mean 16.8 dB (threshold ≥15 dB) — PASS.
- **STI (critical speech):** Mean 0.64 (threshold ≥0.60) — PASS.

### 6.4 Eye-Tracking & Visual Metrics
- **Fixation time on critical symbology:** mean 0.9 s.  
- **Photometric checks:** PFD luminance day mode averaged 380 cd/m² (target 300–800) — PASS. Uniformity ±8%.

### 6.5 Defects & Findings
1. **DEF-001 (Moderate):** In degraded scenario, secondary status icons overlap on small-format MFD causing brief confusion. Mitigation: shift icon layout, increase spacing.  
2. **DEF-002 (Minor):** Night-mode contrast for advisory text marginal at extreme dimming. Mitigation: slightly increase night-mode luminance for advisory text; revalidate.

---

## 7. Analysis & Statistical Notes
- Sample size (N=12) consistent with HFE Plan summative N. Confidence intervals computed at 95%.  
- Reaction-time distribution approximates log-normal; median reported where appropriate. No statistically significant difference (p>0.05) between left/right seat positions.

---

## 8. Mitigations & Re-tests
- **Mitigation for DEF-001** proposed UI change V2.1a. Re-test focused on layout with 6 pilots; expected re-test pass criteria identical to original.  
- **Mitigation for DEF-002** implemented in Night-mode patch V2.1b, revalidated in acoustic mock-up.

---

## 9. Conclusions & Recommendation
PFD v2.1 meets summative HFE acceptance for critical tasks, audio intelligibility and photometrics. Release to limited operational trial contingent on implementation of DEF-001 and DEF-002 mitigations and completion of re-test evidence. Recommend conditional release (Limitations: V2.1 deployed to test fleet only) and full release following closure.

---

## 10. Approvals
- HFE Lead: Jane Doe — **Signed** — 2025-10-30  
- Airworthiness: John Smith — **Pending** — 2025-10-31  
- Training Lead: Maria Rossi — **Signed** — 2025-10-30

---

## 11. Attachments (archived)
| File | Type | sha256 |
|---|---|---|
| raw_audio_critical_01.wav | audio | `sha256:1111111111111111111111111111111111111111111111111111111111111111` |
| cabin_test_video_20251025.mp4 | video | `sha256:2222222222222222222222222222222222222222222222222222222222222222` |
| hivoltage_luminance_log.csv | csv | `sha256:3333333333333333333333333333333333333333333333333333333333333333` |
| calibration_MIC-2025-001.pdf | pdf | `sha256:4444444444444444444444444444444444444444444444444444444444444444` |
| HIL_log_build_20251020.zip | zip | `sha256:5555555555555555555555555555555555555555555555555555555555555555` |

> Note: Replace example SHA-256 values with actual computed hashes prior to commit.

---

## 12. DPP / Traceability
- DPP record: `DPP-PFD-v2.1` includes SW baseline hash `sha256:aaaaaaaa...`, FAT report hash `sha256:bbbbbbbb...` and HFE report hash `sha256:cccccccc...`. Linked artifacts in DPP.

---

## 13. Revision history
- **1.0.0 — 2025-10-30** Initial example HFE validation report.

---

*End of example HFE report.*
