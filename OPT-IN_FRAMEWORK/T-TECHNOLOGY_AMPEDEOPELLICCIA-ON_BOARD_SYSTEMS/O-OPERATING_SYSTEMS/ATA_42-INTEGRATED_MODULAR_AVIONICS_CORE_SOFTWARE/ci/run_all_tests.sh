#!/usr/bin/env bash
# Run all ATA 42 Core OS tests
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"

echo "=== Running All ATA 42 Core OS Tests ==="

# Run structure validation
echo ""
echo "Step 1: Structure Validation"
bash "$SCRIPT_DIR/validate_ata42-core.sh"

# Run traceability checks
echo ""
echo "Step 2: Traceability Check"
if [ -f "$SCRIPT_DIR/generate_traceability.py" ]; then
    python3 "$SCRIPT_DIR/generate_traceability.py" --check
else
    echo "⚠ Traceability script not found (optional)"
fi

# Run DO-178C compliance check
echo ""
echo "Step 3: DO-178C Compliance Check"
if [ -f "$SCRIPT_DIR/check_do178c_compliance.py" ]; then
    python3 "$SCRIPT_DIR/check_do178c_compliance.py"
else
    echo "⚠ DO-178C compliance script not found (optional)"
fi

echo ""
echo "=== All Tests Complete ==="
