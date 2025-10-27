#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "--- Running validation on ATA 56 — WINDOWS repository ---"
error_count=0

# 1. Validate filenames for rev/date convention and prefix
echo "1. Checking filenames..."
noncompliant_files=$(find "$root" -type f \
  -not -path "*/ci/*" \
  -not -path "*/schemas/*" \
  -not -path "*/templates/*" \
  -not -name "README.md" \
  -not -name "00_README.md" \
  -not -name "INDEX.meta.yaml" \
  -not -name "*.meta.yaml" \
  -not -name "*.pdf" \
  -not -name "*.dwg" \
  -not -name "*.json" | \
  grep -vE '(PROC_|INSP_|DESC_|DATA_|FIG_|DIAG_|TESTPLAN_|EXAMPLE_)56-([0-9]{2}-){1,2}[0-9]{2}_[A-Za-z0-9&-]+_rev[0-9]+\.[0-9]+\.[0-9]+_[0-9]{8}\.(md|csv|pdf|dwg)' || true)

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
  \( -name "PROC_*.md" -o -name "DESC_*.md" -o -name "DATA_*.csv" -o -name "INSP_*.md" -o -name "TESTPLAN_*.md" \) \
  -not -name "README.md" \
  -not -name "00_README.md"); do
  if [[ ! -f "${f}.meta.yaml" ]]; then
    echo "❌ ERROR: Missing sidecar for $f"
    error_count=$((error_count + 1))
    sidecar_errors=$((sidecar_errors + 1))
  fi
done
if [[ $sidecar_errors -eq 0 ]]; then
    echo "✅ All required sidecars are present."
fi

# 3. Validate directory structure
echo "3. Validating directory structure..."
required_dirs=(
  "01-GENERAL"
  "02-PANES_AND-LAMINATES"
  "03-SEALS_AND-FRAMES"
  "04-HEATING_AND-ANTI-ICE"
  "05-OPTICS_AND-VISIBILITY"
  "06-LOADS_AND-STRUCTURAL_INTERFACE"
  "07-NDT_AND-INSPECTION"
  "08-REPAIR_METHODS"
  "09-LIGHTNING_STRIKE_PROTECTION_AND-BONDING"
  "10-QUALIFICATION_AND-TEST_PLANS"
  "11-MATERIALS_M_AND_P_TRACEABILITY"
  "12-NONCONFORMANCE_AND-DEVIATION"
  "13-HUMAN_FACTORS_AND-ERGONOMICS"
  "14-DIAGRAMS_AND_REFERENCE_DATA"
  "15-SIDE-CAR_META/templates"
  "16-EXAMPLES_AND_RECORDS"
  "ci"
  "schemas"
)

dir_errors=0
for dir in "${required_dirs[@]}"; do
  if [[ ! -d "$root/$dir" ]]; then
    echo "❌ ERROR: Required directory missing: $dir"
    error_count=$((error_count + 1))
    dir_errors=$((dir_errors + 1))
  fi
done
if [[ $dir_errors -eq 0 ]]; then
  echo "✅ Directory structure OK."
fi

# 4. Validate required schema files
echo "4. Checking required schema files..."
required_schemas=(
  "schemas/repair-record.schema.json"
  "schemas/damage-classification.schema.json"
  "schemas/window-spec.schema.json"
  "schemas/inspection.schema.json"
)

schema_errors=0
for schema in "${required_schemas[@]}"; do
  if [[ ! -f "$root/$schema" ]]; then
    echo "❌ ERROR: Required schema missing: $schema"
    error_count=$((error_count + 1))
    schema_errors=$((schema_errors + 1))
  fi
done
if [[ $schema_errors -eq 0 ]]; then
  echo "✅ All required schemas present."
fi

# 5. Validate JSON schema files are valid JSON
echo "5. Validating JSON schemas..."
if command -v jq &> /dev/null; then
  for schema in "$root/schemas"/*.json; do
    if [[ -f "$schema" ]]; then
      if ! jq empty "$schema" 2>/dev/null; then
        echo "❌ ERROR: Invalid JSON in $schema"
        error_count=$((error_count + 1))
      fi
    fi
  done
  for example in "$root/16-EXAMPLES_AND_RECORDS"/*.json; do
    if [[ -f "$example" ]]; then
      if ! jq empty "$example" 2>/dev/null; then
        echo "❌ ERROR: Invalid JSON in $example"
        error_count=$((error_count + 1))
      fi
    fi
  done
  echo "✅ JSON schema validation complete."
else
  echo "⚠️  WARNING: jq not found, skipping JSON validation."
fi

# 6. Validate cross-references in INDEX.meta.yaml
echo "6. Checking INDEX.meta.yaml cross-references..."
if [[ -f "$root/INDEX.meta.yaml" ]]; then
  # Check for required cross-references
  required_xrefs=("ATA 20" "ATA 51" "ATA 52" "ATA 53")
  xref_errors=0
  for xref in "${required_xrefs[@]}"; do
    if ! grep -q "$xref" "$root/INDEX.meta.yaml"; then
      echo "❌ ERROR: Missing required cross-reference in INDEX.meta.yaml: $xref"
      error_count=$((error_count + 1))
      xref_errors=$((xref_errors + 1))
    fi
  done
  if [[ $xref_errors -eq 0 ]]; then
    echo "✅ INDEX.meta.yaml cross-references OK."
  fi
else
  echo "❌ ERROR: INDEX.meta.yaml not found"
  error_count=$((error_count + 1))
fi

# 7. Check for required template files
echo "7. Checking template files..."
required_templates=(
  "15-SIDE-CAR_META/templates/document.meta.yaml"
  "15-SIDE-CAR_META/templates/proc_sidecar_template.meta.yaml"
)

template_errors=0
for template in "${required_templates[@]}"; do
  if [[ ! -f "$root/$template" ]]; then
    echo "❌ ERROR: Required template missing: $template"
    error_count=$((error_count + 1))
    template_errors=$((template_errors + 1))
  fi
done
if [[ $template_errors -eq 0 ]]; then
  echo "✅ All required templates present."
fi

# 8. Validate numeric acceptance criteria in INDEX.meta.yaml
echo "8. Validating acceptance criteria in INDEX.meta.yaml..."
if [[ -f "$root/INDEX.meta.yaml" ]]; then
  required_criteria=(
    "optical_quality"
    "structural_limits"
    "heating_systems"
    "seal_performance"
    "lightning_strike_protection"
  )
  criteria_errors=0
  for criteria in "${required_criteria[@]}"; do
    if ! grep -q "$criteria" "$root/INDEX.meta.yaml"; then
      echo "❌ ERROR: Missing acceptance criteria in INDEX.meta.yaml: $criteria"
      error_count=$((error_count + 1))
      criteria_errors=$((criteria_errors + 1))
    fi
  done
  if [[ $criteria_errors -eq 0 ]]; then
    echo "✅ Acceptance criteria OK."
  fi
fi

# 9. Validate that repair-record.schema.json includes window-specific fields
echo "9. Validating repair-record.schema.json content..."
if [[ -f "$root/schemas/repair-record.schema.json" ]]; then
  required_fields=(
    "pane_type"
    "pane_serial"
    "optical_quality_score"
    "scratch_depth"
    "heater_resistance"
    "seal_torque"
    "ndt_file_hashes"
    "effectivity"
  )
  field_errors=0
  for field in "${required_fields[@]}"; do
    if ! grep -q "\"$field\"" "$root/schemas/repair-record.schema.json"; then
      echo "❌ ERROR: Missing required field in repair-record.schema.json: $field"
      error_count=$((error_count + 1))
      field_errors=$((field_errors + 1))
    fi
  done
  if [[ $field_errors -eq 0 ]]; then
    echo "✅ repair-record.schema.json includes all required fields."
  fi
fi

# 10. Verify LSP-specific requirements
echo "10. Checking LSP requirements..."
if grep -q "LSP" "$root/INDEX.meta.yaml" && \
   grep -q "continuity" "$root/INDEX.meta.yaml" && \
   grep -q "4-wire" "$root/schemas/repair-record.schema.json"; then
  echo "✅ LSP requirements documented."
else
  echo "⚠️  WARNING: LSP and 4-wire continuity test requirements may be incomplete."
fi

echo ""
echo "--- Validation finished. Total errors: $error_count ---"
[[ $error_count -gt 0 ]] && exit 1 || exit 0
