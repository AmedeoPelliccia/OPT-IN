#!/usr/bin/env bash
set -euo pipefail

# This script provides basic validation for the ATA 20 repository.
# It requires yq and ajv-cli to be installed.

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
echo "--- Running validation on ATA 20 repository at $root_dir ---"
error_count=0

# 1. Validate filenames against convention: REV_DATE.ext
echo "1. Checking filenames for rev/date convention..."
noncompliant_files=$(find "$root_dir" -type f \
if [[ -n "$noncompliant_files" ]]; then
  echo "❌ ERROR: The following files do not match the naming convention:"
  echo "$noncompliant_files"
  error_count=$((error_count + 1))
else
  echo "✅ Filenames OK."
fi

# 2. Validate all .meta.yaml files against their schemas
echo "2. Checking .meta.yaml files against schemas..."
for f in $(find "$root_dir" -type f -name "*.meta.yaml"); do
  schema_file="$root_dir/schemas/procedure.meta.schema.json" # Default schema
  if [[ "$f" == *"workmanship-record"* ]]; then
      schema_file="$root_dir/schemas/workmanship-record.schema.json"
  fi
  
  if ! yq -e -o=json "$f" | ajv validate -s "$schema_file" -d - >/dev/null 2>&1; then
    echo "❌ ERROR: Metadata validation failed for $f"
    error_count=$((error_count + 1))
  fi
done
if [[ $error_count -eq 0 ]]; then
    echo "✅ All metadata files OK."
fi

# 3. Check CSV headers
echo "3. Checking required CSV headers..."
if ! head -n 1 "$root_dir/05-REFERENCE_DATA_AND_DIAGRAMS/DATA_Standard-Torque-Values.csv" | grep -q "Part_Family,Diameter,Lube_State,Torque_Nm,Torque_Angle_deg,Notes"; then
    echo "❌ ERROR: Incorrect headers in DATA_Standard-Torque-Values.csv"
    error_count=$((error_count + 1))
else
    echo "✅ CSV headers OK."
fi

# Final result
if [[ $error_count -gt 0 ]]; then
  echo "--- Validation FAILED with $error_count errors. ---"
  exit 1
else
  echo "--- Validation PASSED. ---"
fi
