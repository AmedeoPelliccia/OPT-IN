#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
echo "Running ATA-15 validation from: $ROOT_DIR"

# Basic existence checks
missing=0
for f in "00_README.md" "INDEX.meta.yaml" "schemas/display-spec.schema.json" "schemas/hfe-report.schema.json"; do
  if [ ! -f "$ROOT_DIR/$f" ]; then
    echo "MISSING: $ROOT_DIR/$f"
    missing=$((missing+1))
  fi
done

if [ "$missing" -gt 0 ]; then
  echo "Validation failed: missing $missing required files."
  exit 2
fi

# Validate JSON schema syntax if python3 or python is available
if command -v python3 >/dev/null 2>&1; then
  PYTHON_BIN=python3
elif command -v python >/dev/null 2>&1; then
  PYTHON_BIN=python
else
  echo "Neither python3 nor python found; skipping JSON schema validation."
  PYTHON_BIN=""
fi

if [ -n "${PYTHON_BIN}" ]; then
  echo "Validating JSON syntax for schema files..."
  for s in "$ROOT_DIR"/schemas/*.json; do
    "$PYTHON_BIN" -m json.tool "$s" > /dev/null || {
      echo "Invalid JSON: $s"
      exit 3
    }
  done
fi

echo "ATA-15 validation passed."
exit 0
