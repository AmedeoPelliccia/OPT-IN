#!/usr/bin/env bash
# ATA 42 Core OS Structure Validation Script
# Validates directory structure, schemas, and metadata integrity

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"

echo "=== ATA 42 Core OS Validation ==="
echo "Base directory: $BASE_DIR"

# Check for required files
echo ""
echo "Checking required files..."
REQUIRED_FILES=(
    "README.md"
    "INDEX.meta.yaml"
    "META.json"
)

for file in "${REQUIRED_FILES[@]}"; do
    if [ -f "$BASE_DIR/$file" ]; then
        echo "✓ $file exists"
    else
        echo "✗ $file missing"
        exit 1
    fi
done

# Check for required directories
echo ""
echo "Checking required directories..."
REQUIRED_DIRS=(
    "ci"
    "schemas"
    "01-GENERAL"
    "02-ARCHITECTURE_AND_SERVICES"
    "03-VERIFICATION_AND_SOFTWARE_ASSURANCE"
    "04-SECURITY_AND_UPDATE_MECHANISMS"
    "05-INTEGRATION_AND_HIL"
    "06-METRICS_DIAGNOSTICS_AND_HEALTH"
    "07-MATERIALS_M_AND_P_AND_TOOLCHAIN"
)

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$BASE_DIR/$dir" ]; then
        echo "✓ $dir/ exists"
    else
        echo "✗ $dir/ missing"
        exit 1
    fi
done

# Check for schemas
echo ""
echo "Checking schema files..."
REQUIRED_SCHEMAS=(
    "core-os.schema.json"
    "partition.schema.json"
    "sw-component.schema.json"
    "repair-record.schema.json"
    "health-metric.schema.json"
    "ncr.schema.json"
    "test-case.schema.json"
)

for schema in "${REQUIRED_SCHEMAS[@]}"; do
    if [ -f "$BASE_DIR/schemas/$schema" ]; then
        echo "✓ schemas/$schema exists"
    else
        echo "✗ schemas/$schema missing"
        exit 1
    fi
done

# Validate JSON files
echo ""
echo "Validating JSON syntax..."
for json_file in "$BASE_DIR"/**/*.json; do
    if [ -f "$json_file" ]; then
        if python3 -m json.tool "$json_file" > /dev/null 2>&1; then
            echo "✓ $(basename "$json_file") valid"
        else
            echo "✗ $(basename "$json_file") invalid JSON"
            exit 1
        fi
    fi
done

# Validate YAML files
echo ""
echo "Validating YAML syntax..."
if command -v python3 &> /dev/null; then
    for yaml_file in "$BASE_DIR"/**/*.yaml; do
        if [ -f "$yaml_file" ]; then
            python3 -c "import yaml; yaml.safe_load(open('$yaml_file'))" 2>/dev/null && \
                echo "✓ $(basename "$yaml_file") valid" || \
                (echo "✗ $(basename "$yaml_file") invalid YAML" && exit 1)
        fi
    done
fi

echo ""
echo "=== Validation Complete ==="
echo "All checks passed ✓"
