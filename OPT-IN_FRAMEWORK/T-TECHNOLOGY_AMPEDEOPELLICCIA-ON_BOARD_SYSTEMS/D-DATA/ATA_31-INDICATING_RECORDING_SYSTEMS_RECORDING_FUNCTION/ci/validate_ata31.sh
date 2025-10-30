#!/usr/bin/env bash
# CI Validation Script for ATA 31: Indicating & Recording Systems (Recording Function)
# Validates file structure, naming conventions, schemas, and metadata sidecars

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA31_ROOT="$(dirname "$SCRIPT_DIR")"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

echo "=================================="
echo "ATA 31 Validation Script"
echo "=================================="
echo "Root directory: $ATA31_ROOT"
echo ""

# Function to report errors
error() {
    echo -e "${RED}[ERROR]${NC} $1"
    ((ERRORS++))
}

# Function to report warnings
warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
    ((WARNINGS++))
}

# Function to report success
success() {
    echo -e "${GREEN}[OK]${NC} $1"
}

# Check if required directories exist
echo "Checking directory structure..."
REQUIRED_DIRS=(
    "01-GENERAL"
    "02-FDR_FUNCTION"
    "03-CVR_FUNCTION"
    "04-DATA_MANAGEMENT_AND_DPP"
    "05-QUALIFICATION_AND_TEST"
    "06-NONCONFORMANCE_AND_DEVIATION"
    "07-SIDE-CAR_META"
    "08-EXAMPLES_AND_RECORDS"
    "schemas"
    "ci"
)

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$ATA31_ROOT/$dir" ]; then
        success "Directory exists: $dir"
    else
        error "Missing required directory: $dir"
    fi
done

# Check if required root files exist
echo ""
echo "Checking required root files..."
REQUIRED_FILES=(
    "00_README.md"
    "INDEX.meta.yaml"
)

for file in "${REQUIRED_FILES[@]}"; do
    if [ -f "$ATA31_ROOT/$file" ]; then
        success "File exists: $file"
    else
        error "Missing required file: $file"
    fi
done

# Check schema files
echo ""
echo "Checking schema files..."
REQUIRED_SCHEMAS=(
    "recording-function.schema.json"
    "fdr-schema.json"
    "cvr-schema.json"
    "recording-record.schema.json"
)

for schema in "${REQUIRED_SCHEMAS[@]}"; do
    SCHEMA_PATH="$ATA31_ROOT/schemas/$schema"
    if [ -f "$SCHEMA_PATH" ]; then
        # Validate JSON syntax
        if command -v jq &> /dev/null; then
            if jq empty "$SCHEMA_PATH" 2>/dev/null; then
                success "Schema valid: $schema"
            else
                error "Invalid JSON in schema: $schema"
            fi
        else
            warning "jq not installed, skipping JSON validation for $schema"
        fi
    else
        error "Missing schema file: $schema"
    fi
done

# Check for document naming conventions
echo ""
echo "Checking document naming conventions..."
find "$ATA31_ROOT" -type f \( -name "*.md" -o -name "*.csv" -o -name "*.json" \) \
    ! -name "00_README.md" ! -name "README.md" ! -name "*.schema.json" ! -name "INDEX.meta.yaml" \
    ! -path "*/templates/*" | while read -r file; do
    filename=$(basename "$file")
    # Expected pattern: (DESC|PROC|DATA|TESTPLAN|EXAMPLE)_31-XX-XX_*
    if [[ ! "$filename" =~ ^(DESC|PROC|DATA|TESTPLAN|EXAMPLE)_31-[0-9]{2}-[0-9]{2}_.* ]]; then
        warning "File does not follow naming convention: $filename"
    fi
done

# Check for metadata sidecars
echo ""
echo "Checking metadata sidecars..."
find "$ATA31_ROOT" -type f \( -name "PROC_*.md" -o -name "DATA_*.csv" -o -name "DESC_*.md" \) \
    ! -path "*/templates/*" | while read -r file; do
    sidecar="${file}.meta.yaml"
    if [ -f "$sidecar" ]; then
        success "Sidecar exists: $(basename "$sidecar")"
    else
        warning "Missing sidecar for: $(basename "$file")"
    fi
done

# Check for SHA-256 references in download records
echo ""
echo "Checking for SHA-256 hashes in example records..."
if grep -r "sha256" "$ATA31_ROOT/08-EXAMPLES_AND_RECORDS" 2>/dev/null | grep -q .; then
    success "SHA-256 hash references found in example records"
else
    warning "No SHA-256 hash references found in example records"
fi

# Check for regulatory references
echo ""
echo "Checking for regulatory compliance references..."
REGULATORY_REFS=("ARINC 717" "ED-112" "DO-160" "DO-178C" "ICAO Annex 6")
for ref in "${REGULATORY_REFS[@]}"; do
    if grep -r "$ref" "$ATA31_ROOT/01-GENERAL" "$ATA31_ROOT/00_README.md" "$ATA31_ROOT/INDEX.meta.yaml" 2>/dev/null | grep -q .; then
        success "Regulatory reference found: $ref"
    else
        warning "Missing regulatory reference: $ref"
    fi
done

# Check for chain-of-custody mentions in CVR procedures
echo ""
echo "Checking for chain-of-custody procedures..."
if grep -r "chain-of-custody\|custody" "$ATA31_ROOT/02-FDR_FUNCTION" "$ATA31_ROOT/03-CVR_FUNCTION" 2>/dev/null | grep -q .; then
    success "Chain-of-custody procedures found"
else
    warning "No chain-of-custody procedures found"
fi

# Check for DPP integration references
echo ""
echo "Checking for DPP integration..."
if grep -r "DPP\|Digital Product Passport" "$ATA31_ROOT/04-DATA_MANAGEMENT_AND_DPP" 2>/dev/null | grep -q .; then
    success "DPP integration references found"
else
    warning "No DPP integration references found"
fi

# Summary
echo ""
echo "=================================="
echo "Validation Summary"
echo "=================================="
echo -e "Errors:   ${RED}$ERRORS${NC}"
echo -e "Warnings: ${YELLOW}$WARNINGS${NC}"

if [ $ERRORS -eq 0 ]; then
    echo -e "${GREEN}✓ Validation passed${NC}"
    exit 0
else
    echo -e "${RED}✗ Validation failed with $ERRORS error(s)${NC}"
    exit 1
fi
