#!/usr/bin/env bash
# CI Validation Script for ATA 35: Oxygen Systems
# Validates file structure, naming conventions, schemas, and metadata sidecars

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA35_ROOT="$(dirname "$SCRIPT_DIR")"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

echo "=================================="
echo "ATA 35 Validation Script"
echo "=================================="
echo "Root directory: $ATA35_ROOT"
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
    "02-OXYGEN_SYSTEM_DESIGN"
    "03-CYLINDERS_AND_STORAGE"
    "04-SERVICE_AND_INSPECTION"
    "05-REGULATORY_AND_SAFETY"
    "06-MATERIALS_M_AND_P"
    "07-ELECTRO-MECH_INTERFACES_AND_VALVING"
    "08-NDT_AND_INSPECTION_RECORDS"
    "09-REPAIR_GUIDELINES"
    "10-QUALIFICATION_AND_TEST_PLANS"
    "11-NONCONFORMANCE_AND_DEVIATION"
    "12-DIAGRAMS_AND_REFERENCE_DATA"
    "13-SIDE-CAR_META"
    "14-EXAMPLES_AND_RECORDS"
    "schemas"
    "ci"
)

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$ATA35_ROOT/$dir" ]; then
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
    if [ -f "$ATA35_ROOT/$file" ]; then
        success "File exists: $file"
    else
        error "Missing required file: $file"
    fi
done

# Check schema files
echo ""
echo "Checking schema files..."
REQUIRED_SCHEMAS=(
    "oxygen-system.schema.json"
    "repair-record.schema.json"
    "damage-classification.schema.json"
    "inspection.schema.json"
)

for schema in "${REQUIRED_SCHEMAS[@]}"; do
    SCHEMA_PATH="$ATA35_ROOT/schemas/$schema"
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
find "$ATA35_ROOT" -type f \( -name "*.md" -o -name "*.csv" \) ! -name "00_README.md" ! -name "README.md" | while read -r file; do
    filename=$(basename "$file")
    # Expected pattern: (DESC|PROC|DATA|TESTPLAN|DIAG|EXAMPLE)_35-XX-XX_*
    if [[ ! "$filename" =~ ^(DESC|PROC|DATA|TESTPLAN|DIAG|EXAMPLE)_35-[0-9]{2}-[0-9]{2}_.* ]]; then
        warning "File does not follow naming convention: $filename"
    fi
done

# Check for metadata sidecars
echo ""
echo "Checking metadata sidecars..."
find "$ATA35_ROOT" -type f \( -name "PROC_*.md" -o -name "DATA_*.csv" -o -name "DESC_*.md" -o -name "TESTPLAN_*.md" \) | while read -r file; do
    sidecar="${file}.meta.yaml"
    if [ -f "$sidecar" ]; then
        success "Sidecar exists: $(basename "$sidecar")"
    else
        warning "Missing sidecar for: $(basename "$file")"
    fi
done

# Check metadata sidecar content
echo ""
echo "Checking metadata sidecar content..."
find "$ATA35_ROOT" -type f -name "*.meta.yaml" ! -name "INDEX.meta.yaml" | while read -r sidecar; do
    # Check for required fields
    REQUIRED_FIELDS=("schema_version" "id" "document" "effectivity" "integrity")
    for field in "${REQUIRED_FIELDS[@]}"; do
        if ! grep -q "^${field}:" "$sidecar"; then
            error "Missing required field '$field' in: $(basename "$sidecar")"
        fi
    done
    
    # Check for ISO 8601 date format in effective_date
    if grep -q "effective_date:" "$sidecar"; then
        if ! grep -E "effective_date: ['\"]?[0-9]{4}-[0-9]{2}-[0-9]{2}['\"]?" "$sidecar" > /dev/null; then
            warning "effective_date not in ISO 8601 format in: $(basename "$sidecar")"
        fi
    fi
    
    # Check effective_date is not in the future
    if grep -q "effective_date:" "$sidecar"; then
        effective_date=$(grep -oP "effective_date:\s*['\"]?\K[0-9]{4}-[0-9]{2}-[0-9]{2}" "$sidecar" || echo "")
        if [ -n "$effective_date" ]; then
            current_date=$(date +%Y-%m-%d)
            if [[ "$effective_date" > "$current_date" ]]; then
                warning "effective_date is in the future in: $(basename "$sidecar")"
            fi
        fi
    fi
done

# Check CSV files for unit specifications
echo ""
echo "Checking CSV files for unit specifications..."
find "$ATA35_ROOT" -type f -name "DATA_*.csv" | while read -r csv; do
    # Check if first line or first few lines contain unit information
    head -n 5 "$csv" | grep -qi "unit\|bar\|kPa\|L/min\|mbar·L/s\|mm\|%\|s\|months" && success "Units found in: $(basename "$csv")" || warning "No units detected in: $(basename "$csv")"
done

# Check for oxygen-specific safety requirements
echo ""
echo "Checking for oxygen safety references..."
if grep -r "oxygen.*compatible\|purity\|fire.*safety\|contamination" "$ATA35_ROOT/05-REGULATORY_AND_SAFETY" "$ATA35_ROOT/06-MATERIALS_M_AND_P" 2>/dev/null | grep -q .; then
    success "Oxygen safety references found in documentation"
else
    warning "No oxygen safety references found in regulatory/materials documentation"
fi

# Check for pressure vessel requirements
echo ""
echo "Checking for pressure vessel requirements..."
if grep -r "hydrostatic.*test\|cylinder.*pressure\|CoC\|Certificate.*Conformance" "$ATA35_ROOT/03-CYLINDERS_AND_STORAGE" "$ATA35_ROOT/02-OXYGEN_SYSTEM_DESIGN" 2>/dev/null | grep -q .; then
    success "Pressure vessel requirements found in documentation"
else
    warning "No pressure vessel requirements found in cylinder/design documentation"
fi

# Check for NDT requirements
echo ""
echo "Checking for NDT requirements..."
if grep -r "NDT\|ultrasonic\|penetrant\|radiographic" "$ATA35_ROOT/08-NDT_AND_INSPECTION_RECORDS" 2>/dev/null | grep -q .; then
    success "NDT requirements found in documentation"
else
    warning "No NDT requirements found in NDT/inspection documentation"
fi

# Check for ATA cross-references
echo ""
echo "Checking for ATA cross-references..."
CROSSREF_ATAS=("ATA-04" "ATA-20" "ATA-21" "ATA-44" "ATA-95")
for ata in "${CROSSREF_ATAS[@]}"; do
    if grep -q "$ata" "$ATA35_ROOT/00_README.md"; then
        success "Cross-reference found: $ata"
    else
        warning "Missing cross-reference: $ata"
    fi
done

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
