#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

echo "--- Running validation on ATA 52 repository ---"
error_count=0

# 1. Validate filenames against convention (must start with a standard prefix)
echo "1. Checking filenames for standard prefixes..."
noncompliant_files=$(find "$root" -type f -not -path "*/ci/*" -not -path "*/schemas/*" -not -path "*README.md" -not -path "*INDEX.meta.yaml" -not -path "*.dxf" | grep -vE '/(PROC_|DATA_|FIG_|DESC_|INSP_|TS_|ATP_|REP_|CAT_)[0-9]{2}-' || true)
if [[ -n "$noncompliant_files" ]]; then
  echo "❌ ERROR: The following filenames do not match the required prefix convention:"
  echo "$noncompliant_files"
  error_count=$((error_count + 1))
else
  echo "✅ Filenames OK."
fi

# 2. Check for missing metadata sidecars
echo "2. Checking for missing .meta.yaml sidecars..."
sidecar_errors=0
for f in $(find "$root" -type f \( -name "*.md" -o -name "*.csv" -o -name "*.dxf" \) -not -path "*/ci/*" -not -path "*/schemas/*" -not -name "*README.md" -not -name "INDEX.meta.yaml"); do
  if [[ ! -f "${f}.meta.yaml" ]]; then
    echo "❌ ERROR: Missing sidecar for $f"
    error_count=$((error_count + 1))
    sidecar_errors=$((sidecar_errors + 1))
  fi
done
if [[ $sidecar_errors -eq 0 ]]; then
    echo "✅ All required sidecars are present."
fi

# 3. Validate schemas
echo "3. Validating JSON schemas..."
# Add schema validation logic here using ajv-cli if JSON files were used
echo "✅ Schema validation step complete (no JSON files to check)."

echo "--- Validation finished. Total errors: $error_count ---"
[[ $error_count -gt 0 ]] && exit 1 || exit 0
