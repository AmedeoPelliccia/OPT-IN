#!/usr/bin/env bash
# CI Validation Script for ATA 24: Electrical Power
# Validates file structure, naming conventions, schemas, metadata sidecars, and software components

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA24_ROOT="$(dirname "$SCRIPT_DIR")"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

echo "=================================="
echo "ATA 24 Validation Script"
echo "=================================="
echo "Root directory: $ATA24_ROOT"
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
    "10-SIDE-CAR_META"
    "schemas"
    "ci"
)

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$ATA24_ROOT/$dir" ]; then
        success "Directory exists: $dir"
    else
        error "Missing required directory: $dir"
    fi
done

# Check if required root files exist
echo ""
echo "Checking required root files..."
REQUIRED_FILES=(
    "README.md"
    "INDEX.meta.yaml"
    "DATA_SOFTWARE_BOM_ATA24.csv"
    "DATA_SOFTWARE_BOM_ATA24.json"
)

for file in "${REQUIRED_FILES[@]}"; do
    if [ -f "$ATA24_ROOT/$file" ]; then
        success "File exists: $file"
    else
        error "Missing required file: $file"
    fi
done

# Check schema files
echo ""
echo "Checking schema files..."
REQUIRED_SCHEMAS=(
    "software.schema.json"
)

for schema in "${REQUIRED_SCHEMAS[@]}"; do
    SCHEMA_PATH="$ATA24_ROOT/schemas/$schema"
    if [ -f "$SCHEMA_PATH" ]; then
        # Validate JSON syntax
        if command -v jq &> /dev/null; then
            if jq empty "$SCHEMA_PATH" 2>/dev/null; then
                success "Schema valid: $schema"
            else
                error "Invalid JSON in schema: $schema"
            fi
        elif command -v python3 &> /dev/null; then
            if python3 -m json.tool "$SCHEMA_PATH" > /dev/null 2>&1; then
                success "Schema valid: $schema"
            else
                error "Invalid JSON in schema: $schema"
            fi
        else
            warning "Neither jq nor python3 installed, skipping JSON validation for $schema"
        fi
    else
        error "Missing schema file: $schema"
    fi
done

# Validate JSON BOM file
echo ""
echo "Validating JSON BOM file..."
JSON_BOM="$ATA24_ROOT/DATA_SOFTWARE_BOM_ATA24.json"
if [ -f "$JSON_BOM" ]; then
    if command -v python3 &> /dev/null; then
        if python3 -m json.tool "$JSON_BOM" > /dev/null 2>&1; then
            success "JSON BOM is valid"
            # Count components
            COMPONENT_COUNT=$(python3 -c "import json; data = json.load(open('$JSON_BOM')); print(len(data['components']))" 2>/dev/null || echo "0")
            success "Component count: $COMPONENT_COUNT"
            if [ "$COMPONENT_COUNT" -ne 38 ]; then
                warning "Expected 38 components, found $COMPONENT_COUNT"
            fi
        else
            error "Invalid JSON in BOM file"
        fi
    else
        warning "python3 not installed, skipping JSON BOM validation"
    fi
fi

# Validate CSV BOM file
echo ""
echo "Validating CSV BOM file..."
CSV_BOM="$ATA24_ROOT/DATA_SOFTWARE_BOM_ATA24.csv"
if [ -f "$CSV_BOM" ]; then
    # Count lines (should be 39: 1 header + 38 components)
    LINE_COUNT=$(wc -l < "$CSV_BOM")
    if [ "$LINE_COUNT" -eq 39 ]; then
        success "CSV BOM has correct line count: $LINE_COUNT (1 header + 38 components)"
    else
        warning "CSV BOM line count: $LINE_COUNT (expected 39)"
    fi
    
    # Check for required columns
    HEADER=$(head -n 1 "$CSV_BOM")
    REQUIRED_COLS=("component_code" "name" "ata_subchapter" "purpose" "certification_note" "do178c_level" "do254_applicable" "criticality")
    for col in "${REQUIRED_COLS[@]}"; do
        if echo "$HEADER" | grep -q "$col"; then
            success "CSV column exists: $col"
        else
            error "Missing CSV column: $col"
        fi
    done
    
    # Check component code format (should be 24YYZZ)
    if grep -E '^24[0-9]{4},' "$CSV_BOM" | wc -l | grep -q "38"; then
        success "All 38 component codes follow 24YYZZ pattern"
    else
        warning "Some component codes may not follow 24YYZZ pattern"
    fi
fi

# Check for metadata sidecars
echo ""
echo "Checking metadata sidecars..."
find "$ATA24_ROOT" -type f \( -name "DATA_*.csv" -o -name "DATA_*.json" \) ! -path "*/templates/*" | while read -r file; do
    sidecar="${file}.meta.yaml"
    if [ -f "$sidecar" ]; then
        success "Sidecar exists: $(basename "$sidecar")"
    else
        warning "Missing sidecar for: $(basename "$file")"
    fi
done

# Check software sidecar templates
echo ""
echo "Checking software sidecar templates..."
TEMPLATE_PATH="$ATA24_ROOT/10-SIDE-CAR_META/templates/software.meta.yaml"
if [ -f "$TEMPLATE_PATH" ]; then
    success "Software sidecar template exists"
    # Check for required fields in template
    REQUIRED_TEMPLATE_FIELDS=("component_code" "name" "ata_subchapter" "certification" "do178c_level" "sw_baseline" "integrity")
    for field in "${REQUIRED_TEMPLATE_FIELDS[@]}"; do
        if grep -q "^${field}:" "$TEMPLATE_PATH" || grep -q "^  ${field}:" "$TEMPLATE_PATH"; then
            success "Template field exists: $field"
        else
            warning "Template missing field: $field"
        fi
    done
else
    error "Software sidecar template not found"
fi

# Check for DO-178C and DO-254 references
echo ""
echo "Checking for DO-178C/DO-254 compliance references..."
if [ -f "$ATA24_ROOT/README.md" ] && [ -f "$ATA24_ROOT/INDEX.meta.yaml" ]; then
    if grep -r "DO-178C\|DO-254\|ARP4754A\|ARP4761" "$ATA24_ROOT/README.md" "$ATA24_ROOT/INDEX.meta.yaml" 2>/dev/null | grep -q .; then
        success "DO-178C/DO-254/ARP references found in documentation"
    else
        warning "No DO-178C/DO-254/ARP references found in documentation"
    fi
else
    warning "README.md or INDEX.meta.yaml not found for reference checking"
fi

# Check for ATA cross-references
echo ""
echo "Checking for ATA cross-references..."
CROSSREF_ATAS=("ATA 23" "ATA 31" "ATA 33" "ATA 47" "ATA 49" "ATA 80" "ATA 95")
for ata in "${CROSSREF_ATAS[@]}"; do
    if [ -f "$ATA24_ROOT/README.md" ] && [ -f "$ATA24_ROOT/INDEX.meta.yaml" ]; then
        if grep -q "$ata" "$ATA24_ROOT/README.md" "$ATA24_ROOT/INDEX.meta.yaml" 2>/dev/null; then
            success "Cross-reference found: $ata"
        else
            warning "Missing cross-reference: $ata"
        fi
    else
        warning "Cannot check cross-references: files not found"
        break
    fi
done

# Check for software component categories
echo ""
echo "Checking for software component categories..."
COMPONENT_CATEGORIES=("24-00" "24-33" "24-34" "24-45" "24-60" "24-99")
for category in "${COMPONENT_CATEGORIES[@]}"; do
    if grep -q "$category" "$CSV_BOM"; then
        success "Category found in BOM: $category"
    else
        warning "Category not found in BOM: $category"
    fi
done

# Check for criticality levels
echo ""
echo "Checking for criticality levels in BOM..."
if grep -q "Critical" "$CSV_BOM" && grep -q "Non-critical" "$CSV_BOM"; then
    success "Both Critical and Non-critical components found"
else
    warning "Missing criticality classifications in BOM"
fi

# Check for DO-178C levels
echo ""
echo "Checking for DO-178C certification levels..."
set +e  # Temporarily disable exit on error
DO178C_LEVELS=("A" "B" "C" "N/A")
LEVELS_FOUND=0
for level in "${DO178C_LEVELS[@]}"; do
    COUNT=$(grep -c ",${level}," "$CSV_BOM" 2>/dev/null || echo "0")
    if [ "$COUNT" -gt 0 ]; then
        success "DO-178C level found: $level (count: $COUNT)"
        ((LEVELS_FOUND++))
    fi
done
set -e  # Re-enable exit on error
if [ $LEVELS_FOUND -lt 3 ]; then
    warning "Expected multiple DO-178C levels, found only $LEVELS_FOUND"
fi

# Verify component code uniqueness
echo ""
echo "Checking component code uniqueness..."
if command -v python3 &> /dev/null && [ -f "$CSV_BOM" ]; then
    DUPLICATE_COUNT=$(python3 -c "
import csv
import sys
from collections import Counter
with open('$CSV_BOM', newline='') as f:
    reader = csv.reader(f)
    next(reader, None)  # skip header
    codes = [row[0] for row in reader if row]
    c = Counter(codes)
    print(sum(1 for v in c.values() if v > 1))
")
    if [ "$DUPLICATE_COUNT" -eq 0 ]; then
        success "All component codes are unique"
    else
        error "Found $DUPLICATE_COUNT duplicate component code(s)"
    fi
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
