# Logs Directory

This directory stores test execution logs generated during HIL testing.

## Structure

```
logs/
├── examples/                # Example logs (reference)
│   ├── README.md           # This file
│   └── example-format.log  # Example log format
└── (auto-generated logs)   # Created during test runs
```

## Log Format

Each test generates detailed execution logs with:
- Test identification (ID, name, timestamp)
- Step-by-step execution progress
- Pass/fail criteria evaluation
- Timing information
- Traceability information

## Log Retention

- Logs are preserved for audit and DO-178C compliance
- Critical for debugging and failure analysis
- Include full traceability to requirements

## Usage

Logs are automatically generated during test execution:

```bash
# Run tests (logs created automatically)
./run_fire_system_tests.sh --test-id HIL-001 --baseline abc123

# View logs
cat logs/*.log

# Search for failures
grep -i "fail\|error" logs/*.log
```

During test runs, logs are also placed in the artifacts directory for complete test run archives.

## Related Documentation

- [README](../README.md) - Main documentation
- [Artifacts Directory](../artifacts/examples/README.md) - Artifact structure
- [Test Matrix](../DATA_42-05-02_HIL-Test-Matrix.csv) - Test definitions

---

*Part of ATA-42 Core OS HIL Test Automation*
