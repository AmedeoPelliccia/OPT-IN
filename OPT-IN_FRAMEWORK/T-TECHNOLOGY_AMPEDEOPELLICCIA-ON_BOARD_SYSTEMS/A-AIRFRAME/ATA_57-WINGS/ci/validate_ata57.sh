#!/bin/bash
# CI Validation Script for ATA 57 - WINGS
# This script validates the structure and content of ATA 57 documentation

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA57_DIR="$(dirname "$SCRIPT_DIR")"

echo "========================================="
echo "ATA 57 - WINGS Validation Script"
echo "========================================="
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

errors=0
warnings=0

# Function to print error
error() {
    echo -e "${RED}[ERROR]${NC} $1"
    ((errors++))
}

# Function to print warning
warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
    ((warnings++))
}

# Function to print success
success() {
    echo -e "${GREEN}[OK]${NC} $1"
}

echo "Validating directory structure..."

# Check required directories exist
required_dirs=(
    "schemas"
    "ci"
    "01-GENERAL"
    "02-WING-BOX_AND-PRIMARY_STRUCTURE"
    "03-SKIN-PANELS_AND-SPLICES"
    "04-LEADING_EDGE_AND-ICE_PROTECTION"
    "05-TRAILING_EDGE"
    "06-FLAPS-SLATS_AND-ACTUATION"
    "07-CONTROL_SURFACES_AILERONS_AND-TRIM"
    "08-SPOILERS_SPEEDBRAKES_AND-LOAD_INTERACTIONS"
    "09-FUEL-TANKS_AND-INTEGRATION"
    "10-FASTENERS_FITS_AND-JOINTS"
    "11-NDT_AND-INSPECTION"
    "12-LIGHTNING-STRIKE-PROTECTION_AND-BONDING"
    "13-REPAIR-GUIDELINES_AND-REPAIRABILITY"
    "14-QUALIFICATION_AND-TEST-PLANS"
    "15-MATERIALS_M_AND_P_TRACEABILITY"
    "16-NONCONFORMANCE_AND-DEVIATION"
    "17-ENVIRONMENTAL_AND-OPERATING_LIMITS"
    "18-DIAGRAMS_AND-REFERENCE_DATA"
    "19-SIDE-CAR_META"
    "20-EXAMPLES_AND_RECORDS"
)

for dir in "${required_dirs[@]}"; do
    if [ -d "$ATA57_DIR/$dir" ]; then
        success "Directory exists: $dir"
    else
        error "Missing required directory: $dir"
    fi
done

echo ""
echo "Validating required files..."

# Check required files
required_files=(
    "00_README.md"
    "INDEX.meta.yaml"
)

for file in "${required_files[@]}"; do
    if [ -f "$ATA57_DIR/$file" ]; then
        success "File exists: $file"
    else
        error "Missing required file: $file"
    fi
done

echo ""
echo "Validating schemas..."

# Check schema files
schema_files=(
    "repair-record.schema.json"
    "damage-classification.schema.json"
    "wing-spec.schema.json"
    "inspection.schema.json"
)

for schema in "${schema_files[@]}"; do
    schema_path="$ATA57_DIR/schemas/$schema"
    if [ -f "$schema_path" ]; then
        # Validate JSON syntax
        if jq . "$schema_path" > /dev/null 2>&1; then
            success "Schema valid: $schema"
        else
            error "Invalid JSON in schema: $schema"
        fi
    else
        error "Missing schema file: $schema"
    fi
done

echo ""
echo "Validating INDEX.meta.yaml..."

# Check INDEX.meta.yaml structure
if [ -f "$ATA57_DIR/INDEX.meta.yaml" ]; then
    # Check for required fields in INDEX.meta.yaml
    required_fields=("schema_version" "id" "chapter" "governance" "traceability")
    
    for field in "${required_fields[@]}"; do
        if grep -q "^${field}:" "$ATA57_DIR/INDEX.meta.yaml"; then
            success "INDEX.meta.yaml contains: $field"
        else
            error "INDEX.meta.yaml missing required field: $field"
        fi
    done
    
    # Check for cross-references
    if grep -q "crossrefs:" "$ATA57_DIR/INDEX.meta.yaml"; then
        success "INDEX.meta.yaml contains crossrefs"
        
        # Verify key cross-references are present
        required_refs=("ATA-20" "ATA-51" "ATA-53" "ATA-55")
        for ref in "${required_refs[@]}"; do
            if grep -q "$ref" "$ATA57_DIR/INDEX.meta.yaml"; then
                success "Cross-reference present: $ref"
            else
                warning "Missing recommended cross-reference: $ref"
            fi
        done
    else
        error "INDEX.meta.yaml missing crossrefs section"
    fi
fi

echo ""
echo "Validating file naming conventions..."

# Check file naming conventions in subdirectories
cd "$ATA57_DIR"

# Find all markdown and CSV files
find . -type f \( -name "*.md" -o -name "*.csv" -o -name "*.json" \) | while read -r file; do
    basename=$(basename "$file")
    
    # Skip special files
    if [[ "$basename" == "00_README.md" ]] || [[ "$basename" == "README.md" ]] || [[ "$basename" == "INDEX.meta.yaml" ]]; then
        continue
    fi
    
    # Check if file follows naming convention (PREFIX_57-XX-YY_Description.ext)
    if [[ "$basename" =~ ^(DESC|PROC|DATA|TESTPLAN|DIAG|EXAMPLE)_57-[0-9]{2}-[0-9]{2}_.+\.(md|csv|json|pdf|dwg)$ ]] || 
       [[ "$basename" =~ .*\.schema\.json$ ]] ||
       [[ "$basename" =~ .*\.meta\.yaml$ ]]; then
        success "File naming convention valid: $basename"
    else
        warning "File naming may not follow convention: $basename"
    fi
done

echo ""
echo "Checking for metadata sidecars..."

# Check that PROC and DESC files have corresponding .meta.yaml sidecars
find . -type f -name "PROC_*.md" -o -name "DESC_*.md" | while read -r file; do
    meta_file="${file}.meta.yaml"
    if [ -f "$meta_file" ]; then
        success "Metadata sidecar exists for: $(basename "$file")"
    else
        warning "Missing metadata sidecar for: $(basename "$file")"
    fi
done

echo ""
echo "========================================="
echo "Validation Summary"
echo "========================================="
echo -e "Errors:   ${RED}$errors${NC}"
echo -e "Warnings: ${YELLOW}$warnings${NC}"
echo ""

if [ $errors -gt 0 ]; then
    echo -e "${RED}Validation FAILED${NC} - Please fix errors before proceeding"
    exit 1
elif [ $warnings -gt 0 ]; then
    echo -e "${YELLOW}Validation PASSED with warnings${NC} - Consider addressing warnings"
    exit 0
else
    echo -e "${GREEN}Validation PASSED${NC} - All checks successful"
    exit 0
fi
