#!/usr/bin/env bash
# ATA 33 — LIGHTS: Validation Script
# Validates lighting documentation, data files, schemas, and metadata for audit compliance
# Version: 1.0.0
# Effective: 2025-10-30

set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Counters
ERRORS=0
WARNINGS=0
CHECKS=0

# Base directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA33_DIR="$(dirname "$SCRIPT_DIR")"

echo -e "${BLUE}================================${NC}"
echo -e "${BLUE}ATA 33 LIGHTS Validation${NC}"
echo -e "${BLUE}================================${NC}"
echo ""

# Helper functions
log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
    ((ERRORS++))
}

log_warning() {
    echo -e "${YELLOW}[WARN]${NC} $1"
    ((WARNINGS++))
}

log_success() {
    echo -e "${GREEN}[PASS]${NC} $1"
}

log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

check_file_exists() {
    ((CHECKS++))
    if [[ -f "$1" ]]; then
        log_success "File exists: $1"
        return 0
    else
        log_error "Missing file: $1"
        return 1
    fi
}

check_dir_exists() {
    ((CHECKS++))
    if [[ -d "$1" ]]; then
        log_success "Directory exists: $1"
        return 0
    else
        log_error "Missing directory: $1"
        return 1
    fi
}

validate_yaml() {
    local file=$1
    ((CHECKS++))
    
    if ! command -v yq &> /dev/null && ! command -v python3 &> /dev/null; then
        log_warning "No YAML validator (yq/python3) found, skipping: $file"
        return 0
    fi
    
    if command -v yq &> /dev/null; then
        if yq eval '.' "$file" > /dev/null 2>&1; then
            log_success "Valid YAML: $file"
            return 0
        else
            log_error "Invalid YAML syntax: $file"
            return 1
        fi
    elif command -v python3 &> /dev/null; then
        if python3 -c "import yaml; yaml.safe_load(open('$file'))" 2>/dev/null; then
            log_success "Valid YAML: $file"
            return 0
        else
            log_error "Invalid YAML syntax: $file"
            return 1
        fi
    fi
}

validate_json() {
    local file=$1
    ((CHECKS++))
    
    if ! command -v jq &> /dev/null && ! command -v python3 &> /dev/null; then
        log_warning "No JSON validator (jq/python3) found, skipping: $file"
        return 0
    fi
    
    if command -v jq &> /dev/null; then
        if jq empty "$file" 2>/dev/null; then
            log_success "Valid JSON: $file"
            return 0
        else
            log_error "Invalid JSON syntax: $file"
            return 1
        fi
    elif command -v python3 &> /dev/null; then
        if python3 -c "import json; json.load(open('$file'))" 2>/dev/null; then
            log_success "Valid JSON: $file"
            return 0
        else
            log_error "Invalid JSON syntax: $file"
            return 1
        fi
    fi
}

validate_csv() {
    local file=$1
    ((CHECKS++))
    
    if [[ ! -f "$file" ]]; then
        log_error "CSV file not found: $file"
        return 1
    fi
    
    # Check if file has at least a header row
    local line_count=$(wc -l < "$file")
    if [[ $line_count -lt 1 ]]; then
        log_error "CSV file empty or missing header: $file"
        return 1
    fi
    
    # Check if header contains common unit patterns
    local header=$(head -n 1 "$file")
    if [[ "$header" =~ (lux|cd|nm|mA|V|W|hours|seconds|mm|ratio|percent|\%) ]]; then
        log_success "CSV has units in header: $file"
    else
        log_warning "CSV header may be missing units: $file"
    fi
    
    return 0
}

validate_effective_date() {
    local file=$1
    ((CHECKS++))
    
    if [[ ! -f "$file" ]]; then
        return 1
    fi
    
    # Extract effective_date from YAML sidecar
    local effective_date=""
    if command -v yq &> /dev/null; then
        effective_date=$(yq eval '.document.effective_date' "$file" 2>/dev/null || echo "")
    elif command -v python3 &> /dev/null; then
        effective_date=$(python3 -c "import yaml; print(yaml.safe_load(open('$file')).get('document', {}).get('effective_date', ''))" 2>/dev/null || echo "")
    fi
    
    if [[ -z "$effective_date" ]] || [[ "$effective_date" == "null" ]]; then
        log_warning "No effective_date found in: $file"
        return 0
    fi
    
    # Check if date is not in the future
    local today=$(date +%Y-%m-%d)
    if [[ "$effective_date" > "$today" ]]; then
        log_error "Future effective_date in $file: $effective_date > $today"
        return 1
    else
        log_success "Valid effective_date in $file: $effective_date"
        return 0
    fi
}

# ============================================
# Validation Checks
# ============================================

echo ""
echo "1. Checking Core Structure..."
echo "-----------------------------------"

check_file_exists "$ATA33_DIR/00_README.md"
check_file_exists "$ATA33_DIR/INDEX.meta.yaml"
check_file_exists "$ATA33_DIR/ci/validate_ata33.sh"

validate_yaml "$ATA33_DIR/INDEX.meta.yaml"

echo ""
echo "2. Checking Schemas..."
echo "-----------------------------------"

check_dir_exists "$ATA33_DIR/schemas"
for schema in lighting-spec photometric-test repair-record inspection; do
    schema_file="$ATA33_DIR/schemas/${schema}.schema.json"
    check_file_exists "$schema_file"
    if [[ -f "$schema_file" ]]; then
        validate_json "$schema_file"
    fi
done

echo ""
echo "3. Checking Chapter Sections..."
echo "-----------------------------------"

SECTIONS=(
    "01-GENERAL"
    "02-INTERIOR_LIGHTING"
    "03-EXTERIOR_LIGHTING"
    "04-EMERGENCY_AND_EXIT_LIGHTING"
    "05-DRIVERS_AND_POWER_SUPPLIES"
    "06-PHOTOMETRIC_TESTING"
    "07-EMC_LSP_AND_BONDING"
    "08-INSPECTION_AND_NDT"
    "09-REPAIR_GUIDELINES"
    "10-QUALIFICATION_AND_TEST_PLANS"
    "11-MATERIALS_M_AND_P_TRACEABILITY"
    "12-NONCONFORMANCE_AND-DEVIATION"
    "13-DIAGRAMS_AND_REFERENCE_DATA"
    "14-SIDE-CAR_META"
    "15-EXAMPLES_AND_RECORDS"
)

for section in "${SECTIONS[@]}"; do
    check_dir_exists "$ATA33_DIR/$section"
done

echo ""
echo "4. Validating Data Files (CSV)..."
echo "-----------------------------------"

find "$ATA33_DIR" -name "*.csv" -type f | while read -r csv_file; do
    validate_csv "$csv_file"
done

echo ""
echo "5. Validating JSON Files..."
echo "-----------------------------------"

find "$ATA33_DIR" -name "*.json" -type f | while read -r json_file; do
    validate_json "$json_file"
done

echo ""
echo "6. Validating YAML Metadata..."
echo "-----------------------------------"

find "$ATA33_DIR" -name "*.meta.yaml" -type f | while read -r yaml_file; do
    validate_yaml "$yaml_file"
    validate_effective_date "$yaml_file"
done

echo ""
echo "7. Checking Critical Content Requirements..."
echo "-----------------------------------"

# Check for photometric test procedures
((CHECKS++))
if grep -r "calibration.*ID\|instrument.*serial\|NIST" "$ATA33_DIR/06-PHOTOMETRIC_TESTING" >/dev/null 2>&1; then
    log_success "Photometric procedures include calibration traceability"
else
    log_warning "Photometric procedures may be missing calibration requirements"
fi

# Check for EMC/DO-160 references
((CHECKS++))
if grep -r "DO-160\|Section 22\|Lightning" "$ATA33_DIR/07-EMC_LSP_AND_BONDING" >/dev/null 2>&1; then
    log_success "EMC procedures reference DO-160"
else
    log_warning "EMC procedures may be missing DO-160 references"
fi

# Check for emergency lighting requirements
((CHECKS++))
if grep -r "0\.05.*lux\|emergency.*duration\|10.*minute" "$ATA33_DIR/04-EMERGENCY_AND_EXIT_LIGHTING" >/dev/null 2>&1; then
    log_success "Emergency lighting includes regulatory limits"
else
    log_warning "Emergency lighting may be missing regulatory requirements"
fi

# Check for LED lifetime specs
((CHECKS++))
if grep -r "L70\|50.*000.*hour\|lifetime" "$ATA33_DIR/05-DRIVERS_AND_POWER_SUPPLIES" >/dev/null 2>&1; then
    log_success "LED/Driver specs include lifetime requirements"
else
    log_warning "LED/Driver specs may be missing lifetime data"
fi

echo ""
echo "================================"
echo "Validation Summary"
echo "================================"
echo -e "Total Checks: ${BLUE}${CHECKS}${NC}"
echo -e "Errors:       ${RED}${ERRORS}${NC}"
echo -e "Warnings:     ${YELLOW}${WARNINGS}${NC}"
echo ""

if [[ $ERRORS -eq 0 ]]; then
    echo -e "${GREEN}✓ VALIDATION PASSED${NC}"
    echo ""
    exit 0
else
    echo -e "${RED}✗ VALIDATION FAILED${NC}"
    echo ""
    exit 1
fi
