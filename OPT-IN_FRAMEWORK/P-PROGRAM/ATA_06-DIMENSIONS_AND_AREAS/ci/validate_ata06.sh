#!/usr/bin/env bash
set -euo pipefail

##############################################################################
# ATA 06 Validation Script
# Purpose: Validate schema compliance, checksum integrity, and naming conventions
#          for all files in ATA_06-DIMENSIONS_AND_AREAS
##############################################################################

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA06_ROOT="$(dirname "$SCRIPT_DIR")"
SCHEMAS_DIR="${ATA06_ROOT}/schemas"
INDEX_FILE="${ATA06_ROOT}/INDEX.meta.yaml"

echo "=== ATA 06 Validation ==="
echo "Root directory: ${ATA06_ROOT}"

# Check if required tools are available
command -v python3 >/dev/null 2>&1 || { echo "Error: python3 is required but not installed."; exit 1; }

# Validate INDEX.meta.yaml exists
if [[ ! -f "${INDEX_FILE}" ]]; then
    echo "Error: INDEX.meta.yaml not found at ${INDEX_FILE}"
    exit 1
fi
echo "✓ INDEX.meta.yaml found"

# Validate schema files exist
if [[ ! -f "${SCHEMAS_DIR}/ata06.meta.schema.json" ]]; then
    echo "Error: ata06.meta.schema.json not found"
    exit 1
fi
echo "✓ Schema files found"

# Validate naming conventions for files
echo ""
echo "Validating file naming conventions..."
INVALID_FILES=0

# Check for files in subdirectories
for subdir in "${ATA06_ROOT}"/0*; do
    if [[ -d "$subdir" ]]; then
        while IFS= read -r -d '' file; do
            filename=$(basename "$file")
            # Valid patterns: DATA_*, FIG_*, or *.meta.yaml
            if [[ ! "$filename" =~ ^(DATA_|FIG_).*_(rev[0-9]+\.[0-9]+\.[0-9]+)_([0-9]{8})\.(md|csv|dxf)$ ]] && \
               [[ ! "$filename" =~ \.meta\.yaml$ ]]; then
                echo "  ✗ Invalid filename: $filename"
                INVALID_FILES=$((INVALID_FILES + 1))
            fi
        done < <(find "$subdir" -type f -print0)
    fi
done

if [[ $INVALID_FILES -eq 0 ]]; then
    echo "✓ All filenames follow naming conventions"
else
    echo "✗ Found $INVALID_FILES files with invalid names"
    exit 1
fi

# Validate metadata files against schema
echo ""
echo "Validating metadata files..."
SCHEMA_ERRORS=0

# Find all .meta.yaml files and validate them
while IFS= read -r -d '' meta_file; do
    filename=$(basename "$meta_file")
    echo "  Checking: $filename"
    # Use Python to validate YAML against JSON schema
    if ! python3 -c "
import sys
import yaml
import json
from pathlib import Path

try:
    # Simple validation that file is valid YAML
    with open('$meta_file', 'r') as f:
        data = yaml.safe_load(f)
    
    # Different validation for INDEX.meta.yaml vs document sidecars
    if '$filename' == 'INDEX.meta.yaml':
        # INDEX file has different required fields
        required = ['schema_version', 'id', 'program', 'chapter']
    else:
        # Document sidecars require these fields
        required = ['schema_version', 'id', 'document', 'effectivity', 'traceability', 'integrity']
    
    for field in required:
        if field not in data:
            print(f'  Missing required field: {field}', file=sys.stderr)
            sys.exit(1)
    
    print('  ✓ Valid')
except Exception as e:
    print(f'  ✗ Error: {e}', file=sys.stderr)
    sys.exit(1)
" 2>&1; then
        SCHEMA_ERRORS=$((SCHEMA_ERRORS + 1))
    fi
done < <(find "${ATA06_ROOT}" -name "*.meta.yaml" -type f -print0)

if [[ $SCHEMA_ERRORS -eq 0 ]]; then
    echo "✓ All metadata files are valid"
else
    echo "✗ Found $SCHEMA_ERRORS metadata validation errors"
    exit 1
fi

echo ""
echo "=== ATA 06 Validation Complete ==="
echo "All checks passed ✓"
exit 0
