# PROC_28-40-50 — Helium Leak Test and Report

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Method for helium mass-spectrometer leak testing of vacuum jacket and transfer-line welds.

## Acceptance

Leak rate ≤ 1e-6 mbar·L/s (as-measured), measurement uncertainty and coupling factor documented.

## Steps (summary)

1. Prepare part; purge and dry per M&P.
2. Evacuate vacuum jacket to baseline.
3. Pressurize test volume with helium tracer to specified pressure.
4. Sweep external seams with mass spectrometer probe.
5. Record time series and raw files; calculate leak.
6. Attach raw file hashes (sha256) and report.

## Records

- Test raw file (.lkt/.csv)
- Calibration cert for mass-spec
- Test report JSON with computed leak and uncertainty
