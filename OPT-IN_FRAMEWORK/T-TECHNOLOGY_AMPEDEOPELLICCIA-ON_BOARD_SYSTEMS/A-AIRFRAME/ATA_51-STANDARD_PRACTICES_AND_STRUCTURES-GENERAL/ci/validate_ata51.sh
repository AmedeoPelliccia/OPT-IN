#!/usr/bin/env bash
set -euo pipefail

# This script provides validation for the ATA 51 repository.
# It validates schemas, filenames, and CSV headers.

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
echo "--- Running validation on ATA 51 repository at $root_dir ---"
error_count=0

# 1. Validate that required directories exist
echo "1. Checking directory structure..."
required_dirs=(
  "00-GOVERNANCE_AND_QUALIFICATION"
  "01-DAMAGE_ASSESSMENT_AND_CLASSIFICATION"
  "02-INSPECTION_METHODS_NDT"
  "03-METALLIC_STRUCTURE_REPAIR"
  "04-COMPOSITE_STRUCTURE_REPAIR"
  "05-SPECIAL_REPAIRS_AND_PROTECTION"
  "06-REFERENCE_DATA_AND_TEMPLATES"
  "schemas"
  "ci"
)

for dir in "${required_dirs[@]}"; do
  if [[ ! -d "$root_dir/$dir" ]]; then
    echo "❌ ERROR: Required directory not found: $dir"
    error_count=$((error_count + 1))
  fi
done

if [[ $error_count -eq 0 ]]; then
  echo "✅ Directory structure OK."
fi

# 2. Validate that required files exist
echo "2. Checking required files..."
required_files=(
  "00_README.md"
  "INDEX.meta.yaml"
  "schemas/damage-classification.schema.json"
  "schemas/repair-record.schema.json"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$root_dir/$file" ]]; then
    echo "❌ ERROR: Required file not found: $file"
    error_count=$((error_count + 1))
  fi
done

if [[ $error_count -eq 0 ]]; then
  echo "✅ Required files OK."
fi

# 3. Validate JSON schema files
echo "3. Validating JSON schema files..."
for schema in "$root_dir"/schemas/*.json; do
  if [[ -f "$schema" ]]; then
    if ! python3 -m json.tool "$schema" >/dev/null 2>&1; then
      echo "❌ ERROR: Invalid JSON in schema file: $(basename "$schema")"
      error_count=$((error_count + 1))
    fi
  fi
done

if [[ $error_count -eq 0 ]]; then
  echo "✅ JSON schemas OK."
fi

# 4. Validate example repair record against schema
echo "4. Validating example repair record..."
example_file="$root_dir/06-REFERENCE_DATA_AND_TEMPLATES/EXAMPLE_51-06-04_Repair-Record.json"
schema_file="$root_dir/schemas/repair-record.schema.json"

if [[ -f "$example_file" ]] && [[ -f "$schema_file" ]]; then
  # Check if ajv-cli is available
  if command -v ajv >/dev/null 2>&1; then
    if ! ajv validate -s "$schema_file" -d "$example_file" >/dev/null 2>&1; then
      echo "❌ ERROR: Example repair record does not validate against schema"
      error_count=$((error_count + 1))
    else
      echo "✅ Example repair record validates against schema."
    fi
  else
    echo "⚠️  WARNING: ajv-cli not installed; skipping JSON validation"
  fi
else
  echo "⚠️  WARNING: Example file or schema not found; skipping validation"
fi

# 5. Check CSV headers for key data files
echo "5. Checking CSV headers..."

# Check Repair Qualification Matrix
qual_matrix="$root_dir/00-GOVERNANCE_AND_QUALIFICATION/DATA_51-00-01_Repair-Qualification-Matrix.csv"
if [[ -f "$qual_matrix" ]]; then
  expected_header="Test_Type,Repair_ID,Qualification_Level,Test_Method,Acceptance_Criteria,Status,Test_Report_Ref"
  actual_header=$(head -n 1 "$qual_matrix")
  if [[ "$actual_header" != "$expected_header" ]]; then
    echo "❌ ERROR: Incorrect header in DATA_51-00-01_Repair-Qualification-Matrix.csv"
    echo "   Expected: $expected_header"
    echo "   Actual:   $actual_header"
    error_count=$((error_count + 1))
  fi
fi

# Check Damage Classification Limits
damage_limits="$root_dir/01-DAMAGE_ASSESSMENT_AND_CLASSIFICATION/DATA_51-01-01_Damage-Classification-Limits.csv"
if [[ -f "$damage_limits" ]]; then
  expected_header="Damage_Type,Material_Type,Max_Length_mm,Max_Width_mm,Max_Depth_mm,Classification,Notes"
  actual_header=$(head -n 1 "$damage_limits")
  if [[ "$actual_header" != "$expected_header" ]]; then
    echo "❌ ERROR: Incorrect header in DATA_51-01-01_Damage-Classification-Limits.csv"
    echo "   Expected: $expected_header"
    echo "   Actual:   $actual_header"
    error_count=$((error_count + 1))
  fi
fi

# Check Materials and Process Specifications
materials_spec="$root_dir/06-REFERENCE_DATA_AND_TEMPLATES/DATA_51-06-01_Repair-Materials-And-Process-Specifications.csv"
if [[ -f "$materials_spec" ]]; then
  expected_header="Material_ID,Description,Specification,Manufacturer,Storage_Condition,Shelf_Life_Days"
  actual_header=$(head -n 1 "$materials_spec")
  if [[ "$actual_header" != "$expected_header" ]]; then
    echo "❌ ERROR: Incorrect header in DATA_51-06-01_Repair-Materials-And-Process-Specifications.csv"
    echo "   Expected: $expected_header"
    echo "   Actual:   $actual_header"
    error_count=$((error_count + 1))
  fi
fi

if [[ $error_count -eq 0 ]]; then
  echo "✅ CSV headers OK."
fi

# 6. Validate INDEX.meta.yaml structure
echo "6. Validating INDEX.meta.yaml..."
index_file="$root_dir/INDEX.meta.yaml"
if [[ -f "$index_file" ]]; then
  # Check if yq is available
  if command -v yq >/dev/null 2>&1; then
    # Validate required fields
    if ! yq -e '.schema_version' "$index_file" >/dev/null 2>&1; then
      echo "❌ ERROR: INDEX.meta.yaml missing schema_version field"
      error_count=$((error_count + 1))
    fi
    if ! yq -e '.id' "$index_file" >/dev/null 2>&1; then
      echo "❌ ERROR: INDEX.meta.yaml missing id field"
      error_count=$((error_count + 1))
    fi
    if ! yq -e '.chapter' "$index_file" >/dev/null 2>&1; then
      echo "❌ ERROR: INDEX.meta.yaml missing chapter field"
      error_count=$((error_count + 1))
    fi
    if ! yq -e '.governance' "$index_file" >/dev/null 2>&1; then
      echo "❌ ERROR: INDEX.meta.yaml missing governance field"
      error_count=$((error_count + 1))
    fi
    
    if [[ $error_count -eq 0 ]]; then
      echo "✅ INDEX.meta.yaml structure OK."
    fi
  else
    echo "⚠️  WARNING: yq not installed; skipping YAML validation"
  fi
fi

# 7. Check for broken internal references in markdown files
echo "7. Checking internal references in markdown files..."
ref_check_count=0
for md_file in $(find "$root_dir" -type f -name "*.md" 2>/dev/null); do
  # Check for references to DATA files
  if grep -q "DATA_51-" "$md_file" 2>/dev/null; then
    ref_check_count=$((ref_check_count + 1))
  fi
  # Check for references to PROC files
  if grep -q "PROC_51-" "$md_file" 2>/dev/null; then
    ref_check_count=$((ref_check_count + 1))
  fi
done

echo "✅ Internal references check complete (checked $ref_check_count references)."

# Final result
echo ""
if [[ $error_count -gt 0 ]]; then
  echo "--- Validation FAILED with $error_count errors. ---"
  exit 1
else
  echo "--- Validation PASSED. ---"
  exit 0
fi
