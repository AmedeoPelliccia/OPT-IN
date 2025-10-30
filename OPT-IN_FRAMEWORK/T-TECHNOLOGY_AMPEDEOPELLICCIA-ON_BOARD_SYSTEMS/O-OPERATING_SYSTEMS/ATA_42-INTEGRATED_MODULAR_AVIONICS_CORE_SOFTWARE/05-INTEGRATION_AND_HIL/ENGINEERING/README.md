# ENGINEERING - HIL Test Automation

This directory contains the complete HIL (Hardware-in-Loop) test automation system for ATA-42 Core OS integration testing.

## Structure

```
ENGINEERING/
├── README.md                      # This file
├── META.json                      # Engineering metadata
├── PROC_42-05-01_HIL-Test-Plan-Core-OS.md           # Test plan
├── PROC_42-05-01_HIL-Test-Plan-Core-OS.meta.yaml   # Test plan metadata
├── DATA_42-05-02_HIL-Test-Matrix.csv                # Test matrix
├── DESC_Test-Automation.md        # Automation description
├── DATA_Test-Scripts.csv          # Test script inventory
├── CALC_Signal-Integrity-Analysis.xlsx  # Signal analysis
├── run_fire_system_tests.sh       # CI wrapper script
├── run_hil_orchestrator.py        # Main orchestrator
├── utils/                         # Utility modules
│   ├── compute_sha256.py         # SHA-256 computation
│   └── manifest_helpers.py       # Manifest handling
├── scripts/                       # Test scripts
│   ├── run_partition_overload.py # Partition overload test
│   ├── run_boot_check.py         # Boot validation
│   └── run_ipc_stress.sh         # IPC stress test
├── validators/                    # Validation tools
│   ├── validate-meta-consistency.py  # Metadata validator
│   └── validate-traceability.py      # Traceability checker
├── artifacts/                     # Test artifacts (generated)
└── logs/                          # Test logs (generated)
```

## Quick Start

### Run Single Test

```bash
./run_fire_system_tests.sh --test-id HIL-001 --baseline abc123
```

### Run Full Test Matrix

```bash
./run_fire_system_tests.sh --matrix --baseline abc123
```

### Validate Metadata

```bash
python3 validators/validate-meta-consistency.py
```

## Requirements

- Python 3.8+
- PyYAML: `pip install pyyaml`
- Bash 4.0+

## Test Categories

1. **Functional**: Basic feature validation
2. **Performance**: Timing and throughput
3. **Stress**: Resource exhaustion scenarios
4. **Robustness**: Fault injection and recovery
5. **Security**: Access control and secure boot

## Artifacts

All test results are stored in `artifacts/` with:
- Test logs
- SHA-256 checksums
- Manifest files
- Traceability reports

## Validation

The system includes automated validators:
- Metadata consistency checker
- Traceability validator
- DO-178C compliance checker

## Chain of Custody

All artifacts include:
- SHA-256 hash
- Timestamp
- Baseline ID
- Test environment details
- Traceability to requirements

---

*Version: 1.0.0*  
*Last Updated: 2025-10-30*  
*Part of ATA-42 Core OS Integration & HIL Testing*
