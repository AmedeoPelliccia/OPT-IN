#!/usr/bin/env bash
set -euo pipefail

# This script provides basic validation for the ATA 54 repository.
# It requires yq and ajv-cli to be installed.

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
echo "--- Running validation on ATA 54 repository at $root_dir ---"
error_count=0

# 1. Validate filenames against convention
echo "1. Checking filenames for naming convention..."
noncompliant_files=$(find "$root_dir" -type f \
  -not -path "*/\.*" \
  -not -path "*/ci/*" \
  -not -name "00_README.md" \
  -not -name "INDEX.meta.yaml" \
  -not -name "*.schema.json" \
  -not -name "README.md" \
  | grep -Ev '(DESC|PROC|DATA|DIAG|TESTPLAN|EXAMPLE)_[0-9]{2}-[0-9]{2}-[0-9]{2}_.*\.(md|csv|json|pdf|dwg)$' || true)

if [[ -n "$noncompliant_files" ]]; then
  echo "⚠️  WARNING: The following files do not match the naming convention:"
  echo "$noncompliant_files"
  # Don't fail on naming convention for now
else
  echo "✅ Filenames OK."
fi

# 2. Validate all JSON schema files are valid JSON
echo "2. Checking JSON schema files..."
for f in $(find "$root_dir/schemas" -type f -name "*.schema.json" 2>/dev/null || true); do
  if ! python3 -m json.tool "$f" >/dev/null 2>&1; then
    echo "❌ ERROR: Invalid JSON in schema file: $f"
    error_count=$((error_count + 1))
  fi
done
if [[ $error_count -eq 0 ]]; then
    echo "✅ All JSON schema files are valid."
fi

# 3. Validate INDEX.meta.yaml exists and is valid YAML
echo "3. Checking INDEX.meta.yaml..."
if [[ -f "$root_dir/INDEX.meta.yaml" ]]; then
  if command -v yq &> /dev/null; then
    if ! yq -e '.' "$root_dir/INDEX.meta.yaml" >/dev/null 2>&1; then
      echo "❌ ERROR: Invalid YAML in INDEX.meta.yaml"
      error_count=$((error_count + 1))
    else
      echo "✅ INDEX.meta.yaml is valid YAML."
    fi
  else
    echo "⚠️  WARNING: yq not found, skipping YAML validation."
  fi
else
  echo "❌ ERROR: INDEX.meta.yaml not found"
  error_count=$((error_count + 1))
fi

# 4. Check that 00_README.md exists
echo "4. Checking 00_README.md..."
if [[ ! -f "$root_dir/00_README.md" ]]; then
  echo "❌ ERROR: 00_README.md not found"
  error_count=$((error_count + 1))
else
  echo "✅ 00_README.md exists."
fi

# Final result
if [[ $error_count -gt 0 ]]; then
  echo "--- Validation FAILED with $error_count errors. ---"
  exit 1
else
  echo "--- Validation PASSED. ---"
fi
