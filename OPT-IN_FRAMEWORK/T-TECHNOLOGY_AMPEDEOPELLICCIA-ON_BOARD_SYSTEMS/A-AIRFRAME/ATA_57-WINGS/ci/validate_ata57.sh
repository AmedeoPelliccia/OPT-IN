#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "--- Running validation on ATA 57 repository ---"
error_count=0

# 1. Validate filenames for rev/date convention and prefix
echo "1. Checking filenames..."
noncompliant_files=$(find "$root" -type f \
  -not -path "*/ci/*" \
  -not -path "*/schemas/*" \
  -not -path "*/templates/*" \
  -not -path "*/20-EXAMPLES_AND_RECORDS/*" \
  -not -name "README.md" \
  -not -name "00_README.md" \
  -not -name "INDEX.meta.yaml" \
  -not -name "*.meta.yaml" \
  -not -name "*.pdf" \
  -not -name "*.dwg" \
  -not -name "*.dxf" \
  -not -name "*.json" | \
  grep -vE '(PROC_|INSP_|DESC_|DATA_|DIAG_|TESTPLAN_|EXAMPLE_)([0-9]{2}-){2}[0-9]{2}.*_rev[0-9]+\.[0-9]+\.[0-9]+_[0-9]{8}\.' || true)

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
for f in $(find "$root" -type f \
  \( -name "*.md" -o -name "*.csv" -o -name "*.dxf" -o -name "*.dwg" \) \
  -not -name "README.md" \
  -not -name "00_README.md" \
  -not -path "*/templates/*" \
  -not -path "*/20-EXAMPLES_AND_RECORDS/*"); do
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
for schema in "$root"/schemas/*.json; do
  if [[ -f "$schema" ]]; then
    # Basic JSON syntax check
    if ! python3 -m json.tool "$schema" > /dev/null 2>&1; then
      echo "❌ ERROR: Invalid JSON syntax in $schema"
      error_count=$((error_count + 1))
      schema_errors=$((schema_errors + 1))
    fi
  fi
done
if [[ $schema_errors -eq 0 ]]; then
  echo "✅ Schema validation complete."
fi

# 4. Validate INDEX.meta.yaml structure
echo "4. Validating INDEX.meta.yaml..."
if [[ -f "$root/INDEX.meta.yaml" ]]; then
  # Check for required fields
  required_fields=("schema_version" "id" "chapter" "governance" "traceability")
  for field in "${required_fields[@]}"; do
    if ! grep -q "^${field}:" "$root/INDEX.meta.yaml"; then
      echo "❌ ERROR: INDEX.meta.yaml missing required field: $field"
      error_count=$((error_count + 1))
    fi
  done
  
  # Check for cross-references to ATA-20, ATA-27, ATA-28, ATA-30, ATA-51
  required_refs=("ATA 20" "ATA 27" "ATA 28" "ATA 30" "ATA 51")
  for ref in "${required_refs[@]}"; do
    if ! grep -q "$ref" "$root/INDEX.meta.yaml"; then
      echo "⚠️  WARNING: INDEX.meta.yaml should reference $ref"
    fi
  done
  
  echo "✅ INDEX.meta.yaml structure validated."
else
  echo "❌ ERROR: INDEX.meta.yaml not found"
  error_count=$((error_count + 1))
fi

# 5. Validate schema files exist
echo "5. Checking required schema files..."
required_schemas=(
  "repair-record.schema.json"
  "damage-classification.schema.json"
  "wing-spec.schema.json"
  "inspection.schema.json"
)
for schema in "${required_schemas[@]}"; do
  if [[ ! -f "$root/schemas/$schema" ]]; then
    echo "❌ ERROR: Missing required schema: schemas/$schema"
    error_count=$((error_count + 1))
  fi
done
echo "✅ Required schemas check complete."

# 6. Validate repair-record.schema.json has wing-specific fields
echo "6. Validating repair-record.schema.json has required wing-specific fields..."
if [[ -f "$root/schemas/repair-record.schema.json" ]]; then
  required_fields=(
    "wing_station"
    "spar_id"
    "rib_id"
    "surface"
    "control_surface_id"
    "post_repair_leak_check_result"
    "repair_procedure_ref"
    "inspections"
  )
  for field in "${required_fields[@]}"; do
    if ! grep -q "\"$field\"" "$root/schemas/repair-record.schema.json"; then
      echo "❌ ERROR: repair-record.schema.json missing required field: $field"
      error_count=$((error_count + 1))
    fi
  done
  echo "✅ Repair record schema field validation complete."
else
  echo "⚠️  WARNING: repair-record.schema.json not found, skipping field validation."
fi

# 7. Check directory structure
echo "7. Validating directory structure..."
required_dirs=(
  "01-GENERAL"
  "02-WING-BOX_AND-PRIMARY_STRUCTURE"
  "03-SKIN-PANELS_AND-SPLICES"
  "04-LEADING_EDGE_AND-ICE_PROTECTION"
  "05-TRAILING_EDGE"
  "06-FLAPS-SLATS_AND-ACTUATION"
  "07-CONTROL_SURFACES_AILERONS_AND-TRIM"
  "08-SPOILERS_SPEEDBRAKES_AND-LOAD_INTERACTIONS"
  "09-FUEL-TANKS_AND-INTEGRATION"
  "10-FASTENERS_FITS_AND-JOINTS"
  "11-NDT_AND-INSPECTION"
  "12-LIGHTNING-STRIKE-PROTECTION_AND-BONDING"
  "13-REPAIR-GUIDELINES_AND-REPAIRABILITY"
  "14-QUALIFICATION_AND-TEST_PLANS"
  "15-MATERIALS_M_AND_P_TRACEABILITY"
  "16-NONCONFORMANCE_AND-DEVIATION"
  "17-ENVIRONMENTAL_AND-OPERATING_LIMITS"
  "18-DIAGRAMS_AND-REFERENCE_DATA"
  "19-SIDE-CAR_META/templates"
  "20-EXAMPLES_AND_RECORDS"
)
for dir in "${required_dirs[@]}"; do
  if [[ ! -d "$root/$dir" ]]; then
    echo "❌ ERROR: Missing required directory: $dir"
    error_count=$((error_count + 1))
  fi
done
echo "✅ Directory structure validated."

# 8. Validate metadata sidecars have required fields
echo "8. Validating metadata sidecar structure..."
sidecar_structure_errors=0
for sidecar in $(find "$root" -name "*.meta.yaml" -not -name "INDEX.meta.yaml" -not -path "*/templates/*"); do
  # Check for required fields in sidecars
  if [[ -f "$sidecar" ]]; then
    required_sidecar_fields=("schema_version" "id" "document")
    for field in "${required_sidecar_fields[@]}"; do
      if ! grep -q "^${field}:" "$sidecar" && ! grep -q "^  ${field}:" "$sidecar"; then
        echo "⚠️  WARNING: $sidecar may be missing field: $field"
        sidecar_structure_errors=$((sidecar_structure_errors + 1))
      fi
    done
  fi
done
if [[ $sidecar_structure_errors -eq 0 ]]; then
  echo "✅ Metadata sidecar structure validated."
else
  echo "⚠️  Found $sidecar_structure_errors potential sidecar structure issues (warnings only)."
fi

echo "--- Validation finished. Total errors: $error_count ---"
[[ $error_count -gt 0 ]] && exit 1 || exit 0
