# DESC: Test Automation Architecture

## Overview

The HIL test automation system provides a complete framework for executing, validating, and documenting hardware-in-loop tests for the ATA-42 Core OS.

## Architecture

### Components

1. **run_fire_system_tests.sh** - Main CI entry point
   - Wrapper script for test execution
   - Handles command-line arguments
   - Manages artifact storage
   - Supports single test or full matrix execution

2. **run_hil_orchestrator.py** - Test orchestrator
   - Reads test matrix from CSV
   - Executes test scripts in sequence
   - Collects results and artifacts
   - Generates traceability reports
   - Computes SHA-256 checksums

3. **Test Scripts** (scripts/)
   - run_partition_overload.py: Tests partition scheduling under load
   - run_boot_check.py: Validates boot sequence and timing
   - run_ipc_stress.sh: Stresses inter-partition communication

4. **Utilities** (utils/)
   - compute_sha256.py: Generates checksums for artifacts
   - manifest_helpers.py: Manages manifest files and metadata

5. **Validators** (validators/)
   - validate-meta-consistency.py: Checks metadata consistency
   - validate-traceability.py: Verifies requirement traceability

## Workflow

```
User → run_fire_system_tests.sh → run_hil_orchestrator.py
                                          ↓
                                   Test Scripts
                                          ↓
                                   Artifacts + Logs
                                          ↓
                                   Validators
                                          ↓
                                   Pass/Fail Report
```

## Test Execution Flow

1. Parse command-line arguments
2. Load test matrix from CSV
3. For each test:
   - Execute test script
   - Capture stdout/stderr
   - Record exit code
   - Compute SHA-256 of outputs
4. Generate manifest with:
   - Test results
   - Timestamps
   - Baseline ID
   - Traceability links
5. Run validators
6. Generate final report

## Artifact Management

All test artifacts are stored in `artifacts/` with:
- Unique timestamp-based directory
- Test logs
- SHA-256 checksums
- Manifest.json
- Traceability report

Format: `artifacts/test-run-YYYYMMDD-HHMMSS/`

## Traceability

Each test execution maintains complete chain of custody:
- Baseline/commit SHA
- Test matrix version
- Script versions (SHA-256)
- Environment details
- Execution timestamps
- Results with pass/fail criteria

## Integration with CI

The system integrates with CI pipelines:
```bash
# Single test
./run_fire_system_tests.sh --test-id HIL-001 --baseline $GIT_SHA

# Full matrix
./run_fire_system_tests.sh --matrix --baseline $GIT_SHA
```

## Error Handling

- All scripts use `set -euo pipefail` (bash) or proper exception handling (Python)
- Failed tests are logged with full context
- Partial results are preserved
- Exit codes propagate to CI

## Requirements

- Python 3.8+
- PyYAML library
- Bash 4.0+
- Target hardware or simulator

## Configuration

Test parameters are stored in:
- DATA_42-05-02_HIL-Test-Matrix.csv: Test definitions
- DATA_Test-Scripts.csv: Script inventory
- META.json: System metadata

## Compliance

The system meets DO-178C requirements for:
- Test documentation
- Traceability
- Configuration management
- Quality assurance

---

*Version: 1.0.0*  
*Last Updated: 2025-10-30*
