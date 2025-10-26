#!/bin/bash
# ci/validate_ata09.sh
# Validation script for ATA 09: Towing and Taxiing
# This script validates the structure, naming conventions, and data integrity
# of all files in the ATA 09 chapter.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA09_DIR="$(dirname "$SCRIPT_DIR")"

echo "============================================"
echo "ATA 09: TOWING AND TAXIING - Validation"
echo "============================================"
echo ""
echo "Working directory: $ATA09_DIR"
echo ""

# Track errors and warnings
ERRORS=0
WARNINGS=0

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to report errors
error() {
    echo -e "${RED}✗ ERROR:${NC} $1"
    ((ERRORS++))
}

# Function to report warnings
warning() {
    echo -e "${YELLOW}⚠ WARNING:${NC} $1"
    ((WARNINGS++))
}

# Function to report success
success() {
    echo -e "${GREEN}✓${NC} $1"
}

# Test 1: Verify required directories exist
echo "Test 1: Verifying required directory structure..."
echo "------------------------------------------------"

required_dirs=(
    "schemas"
    "01-TOWING_PROCEDURES"
    "02-TAXIING_PROCEDURES"
    "03-LIMITS_AND_DATA"
    "04-DIAGRAMS_AND_POINTS"
    "05-LOGS_AND_REPORTS"
    "ci"
)

for dir in "${required_dirs[@]}"; do
    if [ -d "$ATA09_DIR/$dir" ]; then
        success "Directory exists: $dir"
    else
        error "Missing required directory: $dir"
    fi
done
echo ""

# Test 2: Verify required files exist
echo "Test 2: Verifying required files..."
echo "------------------------------------"

required_files=(
    "00_README.md"
    "INDEX.meta.yaml"
    "ci/validate_ata09.sh"
    "schemas/procedure.meta.schema.json"
    "schemas/taxi-profile.schema.json"
    "schemas/towing-event.schema.json"
)

for file in "${required_files[@]}"; do
    if [ -f "$ATA09_DIR/$file" ]; then
        success "File exists: $file"
    else
        error "Missing required file: $file"
    fi
done
echo ""

# Test 3: Validate file naming conventions
echo "Test 3: Validating file naming conventions..."
echo "----------------------------------------------"

# Check procedure files
for dir in "01-TOWING_PROCEDURES" "02-TAXIING_PROCEDURES"; do
    if [ -d "$ATA09_DIR/$dir" ]; then
        for file in "$ATA09_DIR/$dir"/*.md; do
            [ -e "$file" ] || continue
            basename_file=$(basename "$file")
            
            # Check naming pattern: TYPE_Name_revX.Y.Z_YYYYMMDD.md
            if [[ "$basename_file" =~ ^(PROC|CHK)_[A-Za-z0-9_-]+_rev[0-9]+\.[0-9]+\.[0-9]+_[0-9]{8}\.md$ ]]; then
                success "Valid naming: $basename_file"
            else
                error "Invalid naming convention: $basename_file (expected: TYPE_Name_revX.Y.Z_YYYYMMDD.md)"
            fi
        done
    fi
done

# Check data files
if [ -d "$ATA09_DIR/03-LIMITS_AND_DATA" ]; then
    for file in "$ATA09_DIR/03-LIMITS_AND_DATA"/*; do
        [ -e "$file" ] || continue
        basename_file=$(basename "$file")
        
        # Check naming pattern: DATA_Name_revX.Y.Z.{csv,md}
        if [[ "$basename_file" =~ ^DATA_[A-Za-z0-9_-]+_rev[0-9]+\.[0-9]+\.[0-9]+\.(csv|md)$ ]]; then
            success "Valid naming: $basename_file"
        else
            warning "Non-standard naming: $basename_file (expected: DATA_Name_revX.Y.Z.{csv,md})"
        fi
    done
fi

# Check diagram files
if [ -d "$ATA09_DIR/04-DIAGRAMS_AND_POINTS" ]; then
    for file in "$ATA09_DIR/04-DIAGRAMS_AND_POINTS"/*; do
        [ -e "$file" ] || continue
        basename_file=$(basename "$file")
        
        # Check naming pattern: FIG_Name_revX.Y.Z.{dxf,dwg,pdf}
        if [[ "$basename_file" =~ ^FIG_[A-Za-z0-9_-]+_rev[0-9]+\.[0-9]+\.[0-9]+\.(dxf|dwg|pdf)$ ]]; then
            success "Valid naming: $basename_file"
        else
            warning "Non-standard naming: $basename_file (expected: FIG_Name_revX.Y.Z.{dxf,dwg,pdf})"
        fi
    done
fi
echo ""

# Test 4: Validate JSON schemas
echo "Test 4: Validating JSON schema syntax..."
echo "-----------------------------------------"

for schema_file in "$ATA09_DIR/schemas"/*.json; do
    [ -e "$schema_file" ] || continue
    basename_file=$(basename "$schema_file")
    
    if python3 -m json.tool "$schema_file" > /dev/null 2>&1; then
        success "Valid JSON: $basename_file"
    else
        error "Invalid JSON syntax: $basename_file"
    fi
done
echo ""

# Test 5: Validate YAML files
echo "Test 5: Validating YAML syntax..."
echo "----------------------------------"

if command -v python3 &> /dev/null; then
    for yaml_file in "$ATA09_DIR"/*.yaml "$ATA09_DIR"/**/*.yaml; do
        [ -e "$yaml_file" ] || continue
        basename_file=$(basename "$yaml_file")
        
        if python3 -c "import yaml; yaml.safe_load(open('$yaml_file'))" 2>/dev/null; then
            success "Valid YAML: $basename_file"
        else
            error "Invalid YAML syntax: $basename_file"
        fi
    done
else
    warning "Python3 not available, skipping YAML validation"
fi
echo ""

# Test 6: Validate CSV files
echo "Test 6: Validating CSV file structure..."
echo "-----------------------------------------"

for csv_file in "$ATA09_DIR/03-LIMITS_AND_DATA"/*.csv "$ATA09_DIR/05-LOGS_AND_REPORTS"/*.csv; do
    [ -e "$csv_file" ] || continue
    basename_file=$(basename "$csv_file")
    
    # Check if file has a header row and at least one data row
    line_count=$(wc -l < "$csv_file")
    if [ "$line_count" -ge 2 ]; then
        success "Valid CSV structure: $basename_file ($line_count lines)"
    else
        warning "CSV file has less than 2 lines: $basename_file"
    fi
    
    # Check for consistent column counts
    if command -v awk &> /dev/null; then
        header_cols=$(head -1 "$csv_file" | awk -F',' '{print NF}')
        inconsistent=false
        while IFS= read -r line; do
            cols=$(echo "$line" | awk -F',' '{print NF}')
            if [ "$cols" -ne "$header_cols" ]; then
                inconsistent=true
                break
            fi
        done < "$csv_file"
        
        if [ "$inconsistent" = false ]; then
            success "Consistent column count: $basename_file ($header_cols columns)"
        else
            warning "Inconsistent column count in: $basename_file"
        fi
    fi
done
echo ""

# Test 7: Check for required content in README
echo "Test 7: Checking README content..."
echo "-----------------------------------"

if [ -f "$ATA09_DIR/00_README.md" ]; then
    readme_file="$ATA09_DIR/00_README.md"
    
    # Check for critical safety warning
    if grep -q "CRITICAL SAFETY WARNING" "$readme_file"; then
        success "README contains critical safety warning"
    else
        error "README missing critical safety warning"
    fi
    
    # Check for key sections
    required_sections=(
        "Scope and Applicability"
        "Key References"
        "Environmental Gates & Limits"
        "Communications Protocol"
    )
    
    for section in "${required_sections[@]}"; do
        if grep -q "$section" "$readme_file"; then
            success "README contains section: $section"
        else
            warning "README missing recommended section: $section"
        fi
    done
fi
echo ""

# Test 8: Validate INDEX.meta.yaml content
echo "Test 8: Validating INDEX.meta.yaml content..."
echo "----------------------------------------------"

if [ -f "$ATA09_DIR/INDEX.meta.yaml" ] && command -v python3 &> /dev/null; then
    index_file="$ATA09_DIR/INDEX.meta.yaml"
    
    # Check for required fields using Python
    python3 <<EOF
import yaml
import sys

with open('$index_file', 'r') as f:
    data = yaml.safe_load(f)

required_fields = ['schema_version', 'id', 'chapter', 'governance', 'limits', 'traceability']
errors = []

for field in required_fields:
    if field not in data:
        errors.append(f"Missing required field: {field}")

if data.get('id') != 'ATA_09_INDEX':
    errors.append(f"ID should be 'ATA_09_INDEX', got: {data.get('id')}")

if 'limits' in data:
    required_limits = ['towing_speed_kmh_max', 'pushback_speed_kmh_max', 
                       'crosswind_pushback_max_kt', 'slope_percent_max']
    for limit in required_limits:
        if limit not in data['limits']:
            errors.append(f"Missing required limit: {limit}")

if errors:
    for error in errors:
        print(f"ERROR: {error}")
    sys.exit(1)
else:
    print("SUCCESS: All required INDEX fields present")
    sys.exit(0)
EOF
    
    if [ $? -eq 0 ]; then
        success "INDEX.meta.yaml has valid structure"
    else
        error "INDEX.meta.yaml has structural issues"
    fi
fi
echo ""

# Test 9: Check for metadata sidecars
echo "Test 9: Checking for metadata sidecars..."
echo "------------------------------------------"

for dir in "01-TOWING_PROCEDURES" "02-TAXIING_PROCEDURES"; do
    if [ -d "$ATA09_DIR/$dir" ]; then
        for file in "$ATA09_DIR/$dir"/*.md; do
            [ -e "$file" ] || continue
            basename_file=$(basename "$file" .md)
            meta_file="$ATA09_DIR/$dir/${basename_file}.meta.yaml"
            
            if [ -f "$meta_file" ]; then
                success "Metadata sidecar exists: ${basename_file}.meta.yaml"
            else
                warning "Missing metadata sidecar for: $basename_file"
            fi
        done
    fi
done
echo ""

# Summary
echo "============================================"
echo "Validation Summary"
echo "============================================"
echo -e "Errors:   ${RED}$ERRORS${NC}"
echo -e "Warnings: ${YELLOW}$WARNINGS${NC}"
echo ""

if [ $ERRORS -gt 0 ]; then
    echo -e "${RED}✗ Validation FAILED${NC}"
    echo "Please fix the errors above before committing."
    exit 1
elif [ $WARNINGS -gt 0 ]; then
    echo -e "${YELLOW}⚠ Validation passed with warnings${NC}"
    echo "Consider addressing the warnings above."
    exit 0
else
    echo -e "${GREEN}✓ Validation PASSED${NC}"
    echo "All checks completed successfully."
    exit 0
fi
