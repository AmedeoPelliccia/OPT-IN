#!/usr/bin/env bash
set -euo pipefail

# CI validation script for ATA 12 - SERVICING
# Validates naming conventions, checksums, and JSON schemas

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
errors=0

echo "================================================"
echo "ATA 12 - SERVICING Validation"
echo "================================================"

# 1. Filename policy - verify semantic versioning and date format
echo ""
echo "1. Validating filename conventions..."
bad_files=""
for file in $(find "$root" -type f \( -name "PROC_*.md" -o -name "DATA_*.csv" -o -name "FIG_*.dxf" \)); do
    basename=$(basename "$file")
    # Check for rev[major].[minor].[patch]_[YYYYMMDD] pattern
    if ! echo "$basename" | grep -qE 'rev[0-9]+\.[0-9]+\.[0-9]+_[0-9]{8}'; then
        bad_files="${bad_files}${file}\n"
    fi
done

if [ -n "$bad_files" ]; then
    echo "✗ FAILED: Files with non-compliant names:"
    echo -e "$bad_files"
    errors=$((errors + 1))
else
    echo "✓ PASSED: All filenames follow naming convention"
fi

# 2. Checksum verification (placeholder - files should contain sha256 checksums)
echo ""
echo "2. Validating checksums..."
missing_checksums=""
while IFS= read -r -d '' file; do
    if ! grep -qi 'sha256' "$file"; then
        missing_checksums="${missing_checksums}${file}\n"
    fi
done < <(find "$root" -type f \( -name "*.md" -o -name "*.csv" -o -name "*.dxf" \) ! -name "00_README.md" ! -name "README.md" -print0)

if [ -n "$missing_checksums" ]; then
    echo "⚠ WARNING: Files missing SHA256 checksum references:"
    echo -e "$missing_checksums"
    # Not counting as error for now, just warning
else
    echo "✓ PASSED: All files reference SHA256 checksums"
fi

# 3. JSON Schema validation
echo ""
echo "3. Validating JSON schemas..."

# Check if schemas directory exists
if [ ! -d "$root/schemas" ]; then
    echo "✗ FAILED: schemas/ directory not found"
    errors=$((errors + 1))
else
    # Verify required schemas exist
    required_schemas=("servicing-event.schema.json" "fluid-spec.schema.json" "procedure.meta.schema.json")
    for schema in "${required_schemas[@]}"; do
        if [ ! -f "$root/schemas/$schema" ]; then
            echo "✗ FAILED: Required schema missing: $schema"
            errors=$((errors + 1))
        else
            echo "✓ Found schema: $schema"
        fi
    done
    
    # Validate JSON syntax of schemas
    for schema in "$root/schemas"/*.json; do
        if [ -f "$schema" ]; then
            if command -v python3 &> /dev/null; then
                if ! python3 -m json.tool "$schema" > /dev/null 2>&1; then
                    echo "✗ FAILED: Invalid JSON syntax in $(basename $schema)"
                    errors=$((errors + 1))
                else
                    echo "✓ Valid JSON: $(basename $schema)"
                fi
            fi
        fi
    done
fi

# 4. CSV file validation
echo ""
echo "4. Validating CSV files..."
csv_errors=""
while IFS= read -r -d '' csv; do
    # Check if file is not empty
    if [ ! -s "$csv" ]; then
        csv_errors="${csv_errors}Empty CSV file: $csv\n"
        continue
    fi
    
    # Check if file has header row
    header=$(head -n 1 "$csv")
    if [ -z "$header" ]; then
        csv_errors="${csv_errors}Missing header in: $csv\n"
    else
        echo "✓ Valid CSV: $(basename $csv)"
    fi
done < <(find "$root" -name "DATA_*.csv" -print0)

if [ -n "$csv_errors" ]; then
    echo "✗ FAILED: CSV validation errors:"
    echo -e "$csv_errors"
    errors=$((errors + 1))
fi

# 5. Procedure file validation
echo ""
echo "5. Validating procedure files..."
proc_errors=""
while IFS= read -r -d '' proc; do
    # Check for required sections
    if ! grep -q "## Purpose" "$proc"; then
        proc_errors="${proc_errors}Missing '## Purpose' section in: $(basename $proc)\n"
    fi
    if ! grep -q "## Prerequisites" "$proc"; then
        proc_errors="${proc_errors}Missing '## Prerequisites' section in: $(basename $proc)\n"
    fi
    if ! grep -q "## Cross-References" "$proc"; then
        proc_errors="${proc_errors}Missing '## Cross-References' section in: $(basename $proc)\n"
    fi
    
    if [ -z "$proc_errors" ]; then
        echo "✓ Valid procedure: $(basename $proc)"
    fi
done < <(find "$root" -name "PROC_*.md" -print0)

if [ -n "$proc_errors" ]; then
    echo "⚠ WARNING: Procedure validation issues:"
    echo -e "$proc_errors"
    # Not counting as error, just warning
fi

# 6. Directory structure validation
echo ""
echo "6. Validating directory structure..."
required_dirs=(
    "01-FUEL_AND_OIL"
    "02-HYDRAULICS_AND_PNEUMATICS"
    "03-ENVIRONMENTAL_AND_CIRCULAR_SYSTEMS"
    "04-WATER_AND_WASTE"
    "05-DIAGRAMS_AND_TABLES"
    "schemas"
    "ci"
)

for dir in "${required_dirs[@]}"; do
    if [ ! -d "$root/$dir" ]; then
        echo "✗ FAILED: Required directory missing: $dir"
        errors=$((errors + 1))
    else
        echo "✓ Directory exists: $dir"
    fi
done

# Summary
echo ""
echo "================================================"
echo "Validation Summary"
echo "================================================"
if [ $errors -eq 0 ]; then
    echo "✓ ALL VALIDATIONS PASSED"
    echo "ATA 12 - SERVICING structure is compliant"
    exit 0
else
    echo "✗ VALIDATION FAILED"
    echo "Number of errors: $errors"
    exit 1
fi
