#!/usr/bin/env bash
# CI Validation Script for ATA 25: Equipment / Furnishings
# Validates file structure, naming conventions, schemas, and metadata sidecars

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA25_ROOT="$(dirname "$SCRIPT_DIR")"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

echo "=================================="
echo "ATA 25 Validation Script"
echo "=================================="
echo "Root directory: $ATA25_ROOT"
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
    "02-SEATS_AND_RESTRAINTS"
    "03-MONUMENTS_GALLEYS_LAVATORIES"
    "04-STOWAGE_BINS_AND_PANELS"
    "05-SAFETY_EQUIPMENT_STOWAGE"
    "06-FLAMMABILITY_AND_MATERIALS"
    "07-DYNAMIC_AND_HIC_TESTS"
    "08-INSPECTION_AND_MAINTENANCE"
    "09-NONCONFORMANCE_AND-DEVIATION"
    "10-DIAGRAMS_AND_REFERENCE_DATA"
    "11-SIDE-CAR_META"
    "12-EXAMPLES_AND_RECORDS"
    "schemas"
    "ci"
)

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$ATA25_ROOT/$dir" ]; then
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
    if [ -f "$ATA25_ROOT/$file" ]; then
        success "File exists: $file"
    else
        error "Missing required file: $file"
    fi
done

# Check schema files
echo ""
echo "Checking schema files..."
REQUIRED_SCHEMAS=(
    "equipment-spec.schema.json"
    "installation-record.schema.json"
    "inspection.schema.json"
    "flammability-test.schema.json"
    "dynamic-seat-test.schema.json"
)

for schema in "${REQUIRED_SCHEMAS[@]}"; do
    SCHEMA_PATH="$ATA25_ROOT/schemas/$schema"
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
find "$ATA25_ROOT" -type f \( -name "*.md" -o -name "*.csv" \) ! -name "00_README.md" ! -name "README.md" | while read -r file; do
    filename=$(basename "$file")
    # Expected pattern: (DESC|PROC|DATA|TESTPLAN|DIAG|EXAMPLE)_25-XX-XX_*
    if [[ ! "$filename" =~ ^(DESC|PROC|DATA|TESTPLAN|DIAG|EXAMPLE)_25-[0-9]{2}-[0-9]{2}_.* ]]; then
        warning "File does not follow naming convention: $filename"
    fi
done

# Check for metadata sidecars
echo ""
echo "Checking metadata sidecars..."
find "$ATA25_ROOT" -type f \( -name "PROC_*.md" -o -name "DATA_*.csv" -o -name "DESC_*.md" -o -name "TESTPLAN_*.md" \) | while read -r file; do
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
find "$ATA25_ROOT" -type f -name "*.meta.yaml" ! -name "INDEX.meta.yaml" | while read -r sidecar; do
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
    
    # Check for SHA-256 checksum format
    if grep -q "checksum:" "$sidecar"; then
        if ! grep -E "checksum: ['\"]?[a-f0-9]{64}['\"]?" "$sidecar" > /dev/null; then
            warning "checksum does not appear to be SHA-256 in: $(basename "$sidecar")"
        fi
    fi
done

# Check CSV files for unit specifications
echo ""
echo "Checking CSV files for unit specifications..."
find "$ATA25_ROOT" -type f -name "DATA_*.csv" | while read -r csv; do
    # Check if first line or first few lines contain unit information
    head -n 5 "$csv" | grep -qi "unit\|mm\|N·m\|Nm\|kg\|%\|mΩ\|mohm" && success "Units found in: $(basename "$csv")" || warning "No units detected in: $(basename "$csv")"
done

# Check for 14 CFR 25 compliance references
echo ""
echo "Checking for 14 CFR Part 25 compliance references..."
if grep -r "25\.561\|25\.562\|25\.785\|25\.853\|14 CFR" "$ATA25_ROOT/01-GENERAL" 2>/dev/null | grep -q .; then
    success "14 CFR Part 25 references found in documentation"
else
    warning "No 14 CFR Part 25 references found in documentation"
fi

# Check for flammability test references
echo ""
echo "Checking for flammability test references..."
if grep -r "25\.853\|flammability\|Appendix F" "$ATA25_ROOT/06-FLAMMABILITY_AND_MATERIALS" 2>/dev/null | grep -q .; then
    success "Flammability test references found"
else
    warning "No flammability test references found in materials documentation"
fi

# Check for dynamic seat test references
echo ""
echo "Checking for dynamic seat test references..."
if grep -r "25\.562\|HIC\|dynamic test" "$ATA25_ROOT/07-DYNAMIC_AND_HIC_TESTS" 2>/dev/null | grep -q .; then
    success "Dynamic seat test references found"
else
    warning "No dynamic seat test references found in test documentation"
fi

# Check for ATA cross-references
echo ""
echo "Checking for ATA cross-references..."
CROSSREF_ATAS=("ATA_11" "ATA_33" "ATA_35" "ATA_44" "ATA_51")
for ata in "${CROSSREF_ATAS[@]}"; do
    if grep -q "$ata" "$ATA25_ROOT/00_README.md"; then
        success "Cross-reference found: $ata"
    else
        warning "Missing cross-reference: $ata"
    fi
done

# Check for torque specifications in seat data
echo ""
echo "Checking for torque specifications..."
if find "$ATA25_ROOT/02-SEATS_AND_RESTRAINTS" -name "*.csv" -type f -exec grep -qi "torque" {} \; 2>/dev/null; then
    success "Torque specifications found in seat documentation"
else
    warning "No torque specifications found in seat documentation"
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
