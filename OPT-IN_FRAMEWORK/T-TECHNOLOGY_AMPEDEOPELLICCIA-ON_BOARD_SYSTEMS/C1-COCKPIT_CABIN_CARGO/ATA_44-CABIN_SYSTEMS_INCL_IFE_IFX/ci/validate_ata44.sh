#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "--- Running validation on ATA 44 repository ---"
error_count=0

# 1. Validate filenames for rev/date convention and prefix
echo "1. Checking filenames..."
noncompliant_files=$(find "$root" -type f \
  -not -path "*/ci/*" \
  -not -path "*/schemas/*" \
  -not -path "*/templates/*" \
  -not -path "*/17-EXAMPLES_AND_RECORDS/*" \
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
  -not -path "*/17-EXAMPLES_AND_RECORDS/*"); do
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
  
  # Check for cross-references to key ATA chapters
  required_refs=("ATA 20" "ATA 21" "ATA 25" "ATA 35" "ATA 46" "ATA 51")
  for ref in "${required_refs[@]}"; do
    if ! grep -q "$ref" "$root/INDEX.meta.yaml"; then
      echo "⚠️  WARNING: INDEX.meta.yaml should reference $ref"
    fi
  done
  
  # Check for regulatory references
  required_regs=("25.853" "DO-178C" "DO-160")
  for reg in "${required_regs[@]}"; do
    if ! grep -q "$reg" "$root/INDEX.meta.yaml"; then
      echo "⚠️  WARNING: INDEX.meta.yaml should reference $reg"
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
  "cabin-system.schema.json"
  "ife-ifx.schema.json"
  "repair-record.schema.json"
  "damage-classification.schema.json"
  "inspection.schema.json"
)
for schema in "${required_schemas[@]}"; do
  if [[ ! -f "$root/schemas/$schema" ]]; then
    echo "❌ ERROR: Missing required schema: schemas/$schema"
    error_count=$((error_count + 1))
  fi
done
echo "✅ Required schemas check complete."

# 6. Validate repair-record.schema.json has cabin-specific fields
echo "6. Validating repair-record.schema.json has required cabin-specific fields..."
if [[ -f "$root/schemas/repair-record.schema.json" ]]; then
  required_fields=(
    "cabinZone"
    "seatRowPosition"
    "ifeIfxComponentIds"
    "oxygenModuleIds"
    "materialFlammabilityCert"
    "ndtResults"
    "effectivity"
  )
  for field in "${required_fields[@]}"; do
    if ! grep -q "\"$field\"" "$root/schemas/repair-record.schema.json"; then
      echo "⚠️  WARNING: repair-record.schema.json may be missing field: $field"
    fi
  done
  echo "✅ Repair record schema field validation complete."
fi

# 7. Validate ife-ifx.schema.json has DO-178C/DO-254 fields
echo "7. Validating ife-ifx.schema.json has required DO-178C/DO-254 fields..."
if [[ -f "$root/schemas/ife-ifx.schema.json" ]]; then
  required_fields=(
    "softwareBaseline"
    "hardwareBaseline"
    "do178cDAL"
    "do254AssuranceLevel"
    "cyberSecurityNotes"
    "hilTestPlan"
  )
  for field in "${required_fields[@]}"; do
    if ! grep -q "\"$field\"" "$root/schemas/ife-ifx.schema.json"; then
      echo "⚠️  WARNING: ife-ifx.schema.json may be missing field: $field"
    fi
  done
  echo "✅ IFE/IFX schema field validation complete."
fi

# 8. Check directory structure
echo "8. Validating directory structure..."
required_dirs=(
  "01-GENERAL"
  "02-CABIN_LAYOUT_AND_FURNISHINGS"
  "03-CABIN_ENVIRONMENTAL_AND_PRESSURIZATION"
  "04-EMERGENCY_OXYGEN_AND_LIFE-SUPPORT"
  "05-FIRE_DETECTION_AND_SUPPRESSION"
  "06-GALLEY_AND_SERVICE_SYSTEMS"
  "07-IFE_IFX_AND_CABIN_CONNECTIVITY"
  "08-CABIN_CONTROLS_AND_INDICATIONS"
  "09-WIRING_HARNESSES_AND_CONNECTIVITY"
  "10-NDT_AND_INSPECTION"
  "11-QUALIFICATION_AND_TEST_PLANS"
  "12-MATERIALS_M_AND_P_TRACEABILITY"
  "13-NONCONFORMANCE_AND-DEVIATION"
  "14-LIGHTNING_STRIKE_PROTECTION_AND_BONDING"
  "15-SIDE-CAR_META/templates"
  "16-DIAGRAMS_AND_REFERENCE_DATA"
  "17-EXAMPLES_AND_RECORDS"
)
for dir in "${required_dirs[@]}"; do
  if [[ ! -d "$root/$dir" ]]; then
    echo "❌ ERROR: Missing required directory: $dir"
    error_count=$((error_count + 1))
  fi
done
echo "✅ Directory structure validated."

# 9. Validate metadata sidecars have required fields
echo "9. Validating metadata sidecar structure..."
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

# 10. Check for flammability certification references
echo "10. Checking for flammability certification references..."
if [[ -f "$root/05-FIRE_DETECTION_AND_SUPPRESSION/DATA_44-05-03_Fireproofing-And-Flammability-Limits.csv"* ]]; then
  echo "✅ Flammability data file found."
else
  echo "⚠️  WARNING: Flammability limits data file not found (expected in 05-FIRE_DETECTION_AND_SUPPRESSION)"
fi

# 11. Check for IFE/IFX baseline documentation
echo "11. Checking for IFE/IFX baseline documentation..."
if [[ -f "$root/07-IFE_IFX_AND_CABIN_CONNECTIVITY/DATA_44-07-04_IFE-HW-SW-Baseline-And-Cyber-Notes.csv"* ]]; then
  echo "✅ IFE/IFX baseline data file found."
else
  echo "⚠️  WARNING: IFE/IFX baseline data file not found (expected in 07-IFE_IFX_AND_CABIN_CONNECTIVITY)"
fi

echo "--- Validation finished. Total errors: $error_count ---"
[[ $error_count -gt 0 ]] && exit 1 || exit 0
