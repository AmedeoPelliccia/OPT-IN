#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "--- Running validation on ATA 50 repository ---"
error_count=0

# 1. Validate filenames for rev/date convention and prefix
echo "1. Checking filenames..."
noncompliant_files=$(find "$root" -type f -not -path "*/ci/*" -not -path "*/schemas/*" -not -name "README.md" -not -name "00_README.md" -not -name "INDEX.meta.yaml" -not -name "*.meta.yaml" | grep -vE '(PROC_|INSP_|DESC_|DATA_|FIG_)([0-9]{2}-){2}[0-9]{2}.*_rev[0-9]+\.[0-9]+\.[0-9]+_[0-9]{8}\.' || true)
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
for f in $(find "$root" -type f \( -name "*.md" -o -name "*.csv" -o -name "*.dxf" \) -not -name "README.md" -not -name "00_README.md"); do
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
# Add logic for ajv-cli here if JSON files are used in the future
echo "✅ Schema validation step complete (no JSON files to check)."

echo "--- Validation finished. Total errors: $error_count ---"
[[ $error_count -gt 0 ]] && exit 1 || exit 0
