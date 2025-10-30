#!/usr/bin/env bash
# CI Validation Script for ATA 27: Flight Controls System for Aerodynamic Manipulation
# Validates file structure, naming conventions, schemas, and metadata sidecars

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA27_ROOT="$(dirname "$SCRIPT_DIR")"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

echo "=================================="
echo "ATA 27 Validation Script"
echo "=================================="
echo "Root directory: $ATA27_ROOT"
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
    "02-CONTROL_SURFACES"
    "03-ACTUATORS_AND_SERVO_SYSTEMS"
    "04-CABLES_LINKS_AND_MECHANICAL_INTERFACES"
    "05-ELECTRICAL_CONTROLS_AND_FCC"
    "06-FLIGHT_CONTROL_LAWS_AND_AUTOPILOT"
    "07-SENSORS_AND_TRANSDUCERS"
    "08-FLIGHT-SAFETY_AND_FAILURE_MODES"
    "09-NDT_AND-INSPECTION"
    "10-QUALIFICATION_AND_TEST_PLANS"
    "11-LIGHTNING-STRIKE_PROTECTION_AND_BONDING"
    "12-MATERIALS_M_AND_P_TRACEABILITY"
    "13-NONCONFORMANCE_AND-DEVIATION"
    "14-DIAGRAMS_AND_REFERENCE_DATA"
    "15-SIDE-CAR_META"
    "16-EXAMPLES_AND_RECORDS"
    "schemas"
    "ci"
)

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$ATA27_ROOT/$dir" ]; then
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
    if [ -f "$ATA27_ROOT/$file" ]; then
        success "File exists: $file"
    else
        error "Missing required file: $file"
    fi
done

# Check schema files
echo ""
echo "Checking schema files..."
REQUIRED_SCHEMAS=(
    "repair-record.schema.json"
    "damage-classification.schema.json"
    "flight-control.schema.json"
    "actuator.schema.json"
    "control-law.schema.json"
)

for schema in "${REQUIRED_SCHEMAS[@]}"; do
    SCHEMA_PATH="$ATA27_ROOT/schemas/$schema"
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
find "$ATA27_ROOT" -type f \( -name "*.md" -o -name "*.csv" \) ! -name "00_README.md" ! -name "README.md" | while read -r file; do
    filename=$(basename "$file")
    # Expected pattern: (DESC|PROC|DATA|TESTPLAN|DIAG|EXAMPLE)_27-XX-XX_*
    if [[ ! "$filename" =~ ^(DESC|PROC|DATA|TESTPLAN|DIAG|EXAMPLE)_27-[0-9]{2}-[0-9]{2}_.* ]]; then
        warning "File does not follow naming convention: $filename"
    fi
done

# Check for metadata sidecars
echo ""
echo "Checking metadata sidecars..."
find "$ATA27_ROOT" -type f \( -name "PROC_*.md" -o -name "DATA_*.csv" -o -name "DESC_*.md" -o -name "TESTPLAN_*.md" \) | while read -r file; do
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
find "$ATA27_ROOT" -type f -name "*.meta.yaml" ! -name "INDEX.meta.yaml" | while read -r sidecar; do
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
find "$ATA27_ROOT" -type f -name "DATA_*.csv" | while read -r csv; do
    # Check if first line or first few lines contain unit information
    head -n 5 "$csv" | grep -qi "unit\|mm\|deg\|N·m\|kg\|%\|MPa\|psi\|°C\|°F" && success "Units found in: $(basename "$csv")" || warning "No units detected in: $(basename "$csv")"
done

# Check for DO-178C and DO-254 references in software/hardware docs
echo ""
echo "Checking for DO-178C/DO-254 compliance references..."
if grep -r "DO-178C\|DO-254" "$ATA27_ROOT/05-ELECTRICAL_CONTROLS_AND_FCC" "$ATA27_ROOT/06-FLIGHT_CONTROL_LAWS_AND_AUTOPILOT" 2>/dev/null | grep -q .; then
    success "DO-178C/DO-254 references found in software/hardware documentation"
else
    warning "No DO-178C/DO-254 references found in software/hardware documentation"
fi

# Check for ATA cross-references
echo ""
echo "Checking for ATA cross-references..."
CROSSREF_ATAS=("ATA-20" "ATA-22" "ATA-24" "ATA-29" "ATA-51" "ATA-55" "ATA-57")
for ata in "${CROSSREF_ATAS[@]}"; do
    if grep -q "$ata" "$ATA27_ROOT/00_README.md"; then
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
