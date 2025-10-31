#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
ENG="$ROOT"

# HIL Test Execution Wrapper
# This script provides a CI-friendly interface to the HIL test orchestrator
# Example usages:
#   ./run_fire_system_tests.sh --test-id HIL-001 --baseline abc123 --artifact-store ./artifacts
#   ./run_fire_system_tests.sh --matrix --baseline abc123

usage() {
  cat <<EOF
Run HIL test(s) via orchestrator.

Usage: $0 [OPTIONS]

Options:
  --test-id <id>        Run single test from DATA_42-05-02_HIL-Test-Matrix.csv
  --baseline <id>       SW baseline id or hash (required)
  --artifact-store <p>  Directory to store artifacts (default: ./artifacts)
  --matrix              Run all tests in DATA_42-05-02_HIL-Test-Matrix.csv
  --help                Show this help message

Examples:
  $0 --test-id HIL-001 --baseline abc123
  $0 --matrix --baseline \$(git rev-parse HEAD)

EOF
  exit 1
}

ARTIFACT_STORE="$ENG/artifacts"
TEST_ID=""
BASELINE=""
MATRIX=0

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    --test-id)
      TEST_ID="$2"
      shift 2
      ;;
    --baseline)
      BASELINE="$2"
      shift 2
      ;;
    --artifact-store)
      ARTIFACT_STORE="$2"
      shift 2
      ;;
    --matrix)
      MATRIX=1
      shift
      ;;
    --help)
      usage
      ;;
    *)
      echo "Error: Unknown option $1"
      usage
      ;;
  esac
done

# Validate required arguments
if [ -z "$BASELINE" ]; then
  echo "Error: --baseline is required"
  usage
fi

if [ "$MATRIX" -eq 0 ] && [ -z "$TEST_ID" ]; then
  echo "Error: Either --test-id or --matrix must be specified"
  usage
fi

# Create artifact store directory
mkdir -p "$ARTIFACT_STORE"

# Check for Python
if ! command -v python3 &> /dev/null; then
  echo "Error: python3 is required but not found"
  exit 1
fi

# Check for PyYAML
if ! python3 -c "import yaml" 2>/dev/null; then
  echo "Warning: PyYAML not installed. Some validators may fail."
  echo "Install with: pip install pyyaml"
fi

echo "=========================================="
echo "HIL Test Execution"
echo "=========================================="
echo "Baseline:       $BASELINE"
echo "Artifact Store: $ARTIFACT_STORE"
if [ "$MATRIX" -eq 1 ]; then
  echo "Mode:           Full Matrix"
else
  echo "Mode:           Single Test"
  echo "Test ID:        $TEST_ID"
fi
echo "=========================================="
echo ""

# Build orchestrator arguments
ORCH_ARGS=(
  "--baseline" "$BASELINE"
  "--artifact-store" "$ARTIFACT_STORE"
)

if [ "$MATRIX" -eq 1 ]; then
  ORCH_ARGS+=("--matrix")
else
  ORCH_ARGS+=("--test-id" "$TEST_ID")
fi

# Run the orchestrator
echo "Starting test orchestrator..."
python3 "$ENG/run_hil_orchestrator.py" "${ORCH_ARGS[@]}"
RESULT=$?

echo ""
echo "=========================================="
if [ $RESULT -eq 0 ]; then
  echo "✓ Tests completed successfully"
  echo "Results: $ARTIFACT_STORE"
else
  echo "✗ Tests failed (exit code: $RESULT)"
  echo "Check logs in: $ARTIFACT_STORE"
fi
echo "=========================================="

exit $RESULT
