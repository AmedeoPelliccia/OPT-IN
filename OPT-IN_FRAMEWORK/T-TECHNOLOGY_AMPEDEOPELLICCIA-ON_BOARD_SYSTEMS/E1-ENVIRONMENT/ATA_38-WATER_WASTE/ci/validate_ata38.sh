#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
missing=0
required=( "00_README.md" "INDEX.meta.yaml" "schemas/water-system.schema.json" "09-SIDE-CAR_META/templates/document.meta.yaml" )
for f in "${required[@]}"; do
  if [ ! -e "$ROOT/$f" ]; then
    echo "MISSING: $f"
    missing=1
  fi
done
if [ "$missing" -ne 0 ]; then
  echo "Validation failed."
  exit 2
fi
echo "Basic ATA-38 validation passed."
