#!/usr/bin/env bash
# validate_42-60-prov.sh
# CI validation script for ATA 42-60-00 Quantum-Inspired Scheduler

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

echo "=== ATA 42-60-00 Validation Script ==="
echo "Root directory: $ROOT_DIR"

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

check_file() {
    local file="$1"
    local description="$2"
    
    if [[ -f "$ROOT_DIR/$file" ]]; then
        echo -e "${GREEN}✓${NC} $description: $file"
    else
        echo -e "${RED}✗${NC} MISSING $description: $file"
        ((ERRORS++))
    fi
}

check_schema() {
    local schema="$1"
    
    if command -v python3 &> /dev/null && [[ -f "$ROOT_DIR/schemas/$schema" ]]; then
        if python3 -c "import json; json.load(open('$ROOT_DIR/schemas/$schema'))" 2>/dev/null; then
            echo -e "${GREEN}✓${NC} Valid JSON schema: $schema"
        else
            echo -e "${RED}✗${NC} Invalid JSON schema: $schema"
            ((ERRORS++))
        fi
    else
        echo -e "${YELLOW}⚠${NC} Cannot validate schema (python3 not available or file missing): $schema"
        ((WARNINGS++))
    fi
}

echo ""
echo "--- Checking Required Root Files ---"
check_file "00_README.md" "Root README"
check_file "INDEX.meta.yaml" "Master Index"
check_file "META.json" "Section Metadata"

echo ""
echo "--- Checking Schemas ---"
for schema in scheduler.schema.json policy.schema.json resource.schema.json experiment.schema.json result.schema.json; do
    check_schema "$schema"
done

echo ""
echo "--- Checking Directory Structure ---"
for dir in "01-GENERAL" "02-DESIGN_AND_ALGORITHMS" "03-SIMULATION_AND_VERIFICATION" \
           "04-POLICIES_AND_RESOURCE_MODELS" "05-SAFETY_AND_CERTIFICATION_WORKBENCH" \
           "06-TOOLS_AND_INTEGRATION" "07-NONCONFORMANCE_AND_DEVIATION" \
           "08-SIDE-CAR_META" "09-EXAMPLES_AND_RECORDS"; do
    if [[ -d "$ROOT_DIR/$dir" ]]; then
        echo -e "${GREEN}✓${NC} Directory exists: $dir"
    else
        echo -e "${RED}✗${NC} Missing directory: $dir"
        ((ERRORS++))
    fi
done

echo ""
echo "--- Checking CI Scripts ---"
check_file "ci/validate_42-60-prov.sh" "Validation Script"
check_file "ci/run_simulation_suite.sh" "Simulation Runner"
check_file "ci/compute_repro_hash.py" "Reproducibility Hash"

echo ""
echo "--- Validation Summary ---"
echo "Errors: $ERRORS"
echo "Warnings: $WARNINGS"

if [[ $ERRORS -eq 0 ]]; then
    echo -e "${GREEN}✓ Validation PASSED${NC}"
    exit 0
else
    echo -e "${RED}✗ Validation FAILED with $ERRORS error(s)${NC}"
    exit 1
fi
