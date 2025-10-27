#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "--- Running validation on ATA 52 - DOORS repository ---"
error_count=0

# 1. Validate filenames for rev/date convention and prefix
echo "1. Checking filenames..."
noncompliant_files=$(find "$root" -type f -not -path "*/ci/*" -not -path "*/schemas/*" -not -name "README.md" -not -name "00_README.md" -not -name "INDEX.meta.yaml" -not -name "*.meta.yaml" | grep -vE '(PROC_|INSP_|DESC_|DATA_|TESTPLAN_|DIAG_|EXAMPLE_)([0-9]{2}-){2}[0-9]{2}.*_rev[0-9]+\.[0-9]+\.[0-9]+_[0-9]{8}\.' || true)
if [[ -n "$noncompliant_files" ]]; then
  echo "❌ ERROR: The following filenames do not match naming/versioning convention:"
  echo "$noncompliant_files"
  error_count=$((error_count + 1))
else
  echo "✅ Filenames OK."
fi

# 2. Check for missing metadata sidecars
echo "2. Checking for missing .meta.yaml sidecars..."
sidecar_errors=0
for f in $(find "$root" -type f \( -name "*.md" -o -name "*.csv" -o -name "*.pdf" -o -name "*.dwg" -o -name "*.dxf" -o -name "*.json" \) -not -name "README.md" -not -name "00_README.md" -not -path "*/schemas/*" -not -path "*/templates/*"); do
  if [[ ! -f "${f}.meta.yaml" ]]; then
    echo "❌ ERROR: Missing sidecar for $f"
    error_count=$((error_count + 1))
    sidecar_errors=$((sidecar_errors + 1))
  fi
done
if [[ $sidecar_errors -eq 0 ]]; then
    echo "✅ All required sidecars are present."
fi

# 3. Validate JSON schemas
echo "3. Validating JSON schemas..."
schema_errors=0
for schema_file in "$root/schemas"/*.schema.json; do
  if [[ -f "$schema_file" ]]; then
    # Basic JSON syntax validation
    if ! jq empty "$schema_file" 2>/dev/null; then
      echo "❌ ERROR: Invalid JSON in $schema_file"
      error_count=$((error_count + 1))
      schema_errors=$((schema_errors + 1))
    fi
  fi
done
if [[ $schema_errors -eq 0 ]]; then
  echo "✅ Schema validation complete."
fi

# 4. Check for required cross-references in INDEX.meta.yaml
echo "4. Validating INDEX.meta.yaml cross-references..."
if [[ -f "$root/INDEX.meta.yaml" ]]; then
  if grep -q "ATA 20" "$root/INDEX.meta.yaml" && grep -q "ATA 51" "$root/INDEX.meta.yaml"; then
    echo "✅ Required cross-references to ATA 20 and ATA 51 found."
  else
    echo "❌ ERROR: INDEX.meta.yaml must include cross-references to ATA 20 and ATA 51"
    error_count=$((error_count + 1))
  fi
else
  echo "❌ ERROR: INDEX.meta.yaml not found"
  error_count=$((error_count + 1))
fi

# 5. Verify required schemas exist
echo "5. Checking for required schemas..."
required_schemas=("repair-record.schema.json" "damage-classification.schema.json" "door-spec.schema.json")
for schema in "${required_schemas[@]}"; do
  if [[ ! -f "$root/schemas/$schema" ]]; then
    echo "❌ ERROR: Required schema missing: schemas/$schema"
    error_count=$((error_count + 1))
  fi
done
if [[ $error_count -eq 0 ]]; then
  echo "✅ All required schemas present."
fi

# 6. Verify door-specific fields in repair-record schema
echo "6. Validating door-specific fields in repair-record.schema.json..."
if [[ -f "$root/schemas/repair-record.schema.json" ]]; then
  required_fields=("sealType" "leakageCFM" "latchTorque" "actuatorHours" "slideSerial" "ndtFileHashes")
  missing_fields=()
  for field in "${required_fields[@]}"; do
    if ! grep -q "\"$field\"" "$root/schemas/repair-record.schema.json"; then
      missing_fields+=("$field")
    fi
  done
  if [[ ${#missing_fields[@]} -gt 0 ]]; then
    echo "❌ ERROR: repair-record.schema.json missing required door-specific fields: ${missing_fields[*]}"
    error_count=$((error_count + 1))
  else
    echo "✅ All door-specific fields present in repair-record schema."
  fi
fi

echo "--- Validation finished. Total errors: $error_count ---"
[[ $error_count -gt 0 ]] && exit 1 || exit 0
