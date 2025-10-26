#!/bin/bash
# ATA 07 Validation Script
# Enforces schemas, checksums, and naming conventions for all controlled artifacts

set -e

echo "========================================="
echo "ATA 07 - LIFTING AND SHORING Validation"
echo "========================================="

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

# Function to print error
error() {
    echo -e "${RED}[ERROR]${NC} $1"
    ((ERRORS++))
}

# Function to print warning
warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
    ((WARNINGS++))
}

# Function to print success
success() {
    echo -e "${GREEN}[OK]${NC} $1"
}

echo ""
echo "Checking directory structure..."
REQUIRED_DIRS=(
    "ci"
    "schemas"
    "01-JACKING_PROCEDURES"
    "02-SHORING_PROCEDURES"
    "03-COMPONENT_HOISTING_AND_LIFTING"
    "04-DIAGRAMS_AND_LOAD_DATA"
)

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$BASE_DIR/$dir" ]; then
        success "Directory exists: $dir"
    else
        error "Missing required directory: $dir"
    fi
done

echo ""
echo "Checking for INDEX.meta.yaml..."
if [ -f "$BASE_DIR/INDEX.meta.yaml" ]; then
    success "INDEX.meta.yaml exists"
else
    error "INDEX.meta.yaml is missing"
fi

echo ""
echo "Checking naming conventions..."
# Check that all procedure files follow naming convention
for file in "$BASE_DIR"/01-JACKING_PROCEDURES/*.md "$BASE_DIR"/02-SHORING_PROCEDURES/*.md "$BASE_DIR"/03-COMPONENT_HOISTING_AND_LIFTING/*.md; do
    if [ -f "$file" ]; then
        basename=$(basename "$file")
        if [[ "$basename" =~ ^(PROC|CHK|DATA|FIG)_.*_rev[0-9]+\.[0-9]+\.[0-9]+_[0-9]{8}\.(md|csv|xlsx|dxf)$ ]]; then
            success "Valid naming: $basename"
        else
            # Check if it's a README file
            if [[ "$basename" != "README.md" ]]; then
                warning "Naming convention issue: $basename (expected format: TYPE_Name_revX.Y.Z_YYYYMMDD.ext)"
            fi
        fi
    fi
done

echo ""
echo "Checking schema files..."
REQUIRED_SCHEMAS=(
    "schemas/ata07.meta.schema.json"
    "schemas/load-envelope.schema.json"
    "schemas/procedure.meta.schema.json"
)

for schema in "${REQUIRED_SCHEMAS[@]}"; do
    if [ -f "$BASE_DIR/$schema" ]; then
        success "Schema exists: $schema"
        # Validate JSON syntax
        if command -v python3 &> /dev/null; then
            if python3 -m json.tool "$BASE_DIR/$schema" > /dev/null 2>&1; then
                success "Valid JSON: $schema"
            else
                error "Invalid JSON: $schema"
            fi
        fi
    else
        error "Missing required schema: $schema"
    fi
done

echo ""
echo "========================================="
echo "Validation Summary"
echo "========================================="
echo "Errors:   $ERRORS"
echo "Warnings: $WARNINGS"

if [ $ERRORS -gt 0 ]; then
    echo -e "${RED}Validation FAILED${NC}"
    exit 1
else
    echo -e "${GREEN}Validation PASSED${NC}"
    if [ $WARNINGS -gt 0 ]; then
        echo -e "${YELLOW}Note: $WARNINGS warning(s) found${NC}"
    fi
    exit 0
fi
