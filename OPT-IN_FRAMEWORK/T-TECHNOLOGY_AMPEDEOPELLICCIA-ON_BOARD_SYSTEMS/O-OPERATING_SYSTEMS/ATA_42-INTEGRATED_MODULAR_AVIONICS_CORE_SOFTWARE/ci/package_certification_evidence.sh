#!/usr/bin/env bash
# Package certification evidence for audit
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"
OUTPUT_DIR="${OUTPUT_DIR:-$BASE_DIR/_certification_package}"

echo "=== Packaging ATA 42 Core OS Certification Evidence ==="
echo "Output directory: $OUTPUT_DIR"

mkdir -p "$OUTPUT_DIR"

# Copy key artifacts
echo "Collecting artifacts..."
cp "$BASE_DIR/INDEX.meta.yaml" "$OUTPUT_DIR/"
cp "$BASE_DIR/META.json" "$OUTPUT_DIR/"

# Copy schemas
mkdir -p "$OUTPUT_DIR/schemas"
cp -r "$BASE_DIR/schemas/"*.json "$OUTPUT_DIR/schemas/"

# Generate checksums
echo "Generating checksums..."
cd "$OUTPUT_DIR"
find . -type f -exec sha256sum {} \; > CHECKSUMS.sha256

echo "✓ Certification package created at: $OUTPUT_DIR"
echo "✓ Package complete"
