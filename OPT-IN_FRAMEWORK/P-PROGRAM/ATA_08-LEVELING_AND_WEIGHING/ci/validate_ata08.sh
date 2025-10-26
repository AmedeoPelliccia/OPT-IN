#!/bin/bash
# validate_ata08.sh
# CI/CD validation script for ATA 08 Leveling and Weighing
# Validates structure, schemas, and data integrity

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA08_DIR="$(dirname "$SCRIPT_DIR")"
ERRORS=0

echo "========================================="
echo "ATA 08 Validation Script"
echo "========================================="
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Helper functions
pass() {
    echo -e "${GREEN}[PASS]${NC} $1"
}

fail() {
    echo -e "${RED}[FAIL]${NC} $1"
    ERRORS=$((ERRORS + 1))
}

warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

info() {
    echo "[INFO] $1"
}

# 1. Directory Structure Validation
echo "1. Validating directory structure..."

REQUIRED_DIRS=(
    "01-LEVELING_PROCEDURES"
    "02-WEIGHING_PROCEDURES"
    "03-WEIGHT_AND_BALANCE_DATA"
    "04-DIAGRAMS_AND_REFERENCE_POINTS"
    "ci"
    "schemas"
)

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$ATA08_DIR/$dir" ]; then
        pass "Directory exists: $dir"
    else
        fail "Missing required directory: $dir"
    fi
done

echo ""

# 2. Required Files Validation
echo "2. Validating required files..."

REQUIRED_FILES=(
    "00_README.md"
    "INDEX.meta.yaml"
    "schemas/weighing-report.schema.json"
    "schemas/corrections.schema.json"
    "schemas/procedure.meta.schema.json"
    "01-LEVELING_PROCEDURES/PROC_Aircraft-Leveling-Using-Laser-Tracker_rev1.1.0_20280710.md"
    "02-WEIGHING_PROCEDURES/PROC_Aircraft-Weighing-On-Load-Cells_rev1.5.0_20280715.md"
    "03-WEIGHT_AND_BALANCE_DATA/DATA_Corrections-Tables_rev1.0.0_20280701.csv"
    "03-WEIGHT_AND_BALANCE_DATA/DATA_Uncertainty-Budget_rev1.0.0_20280701.csv"
    "03-WEIGHT_AND_BALANCE_DATA/LOG_Weighing-History.csv"
    "03-WEIGHT_AND_BALANCE_DATA/DATA_Standard-Weighing-Configuration-Definition.md"
    "03-WEIGHT_AND_BALANCE_DATA/REPORT_Aircraft-Weighing-Template_rev1.0.0_20280701.md"
    "04-DIAGRAMS_AND_REFERENCE_POINTS/FIG_Leveling-And-Weighing-Points_rev1.2.0_20280705.dxf"
)

for file in "${REQUIRED_FILES[@]}"; do
    if [ -f "$ATA08_DIR/$file" ]; then
        pass "File exists: $file"
    else
        fail "Missing required file: $file"
    fi
done

echo ""

# 3. README Content Validation
echo "3. Validating README.md content..."

if [ -f "$ATA08_DIR/00_README.md" ]; then
    # Check for critical content markers
    if grep -q "CRITICAL METROLOGY WARNING" "$ATA08_DIR/00_README.md"; then
        pass "README contains critical warning"
    else
        fail "README missing critical metrology warning"
    fi

    if grep -q "Calculation Methods (Normative)" "$ATA08_DIR/00_README.md"; then
        pass "README contains calculation methods"
    else
        fail "README missing calculation methods section"
    fi

    if grep -q "Standard Weighing Configuration" "$ATA08_DIR/00_README.md"; then
        pass "README references Standard Weighing Configuration"
    else
        fail "README missing Standard Weighing Configuration reference"
    fi
fi

echo ""

# 4. Schema Validation (JSON syntax)
echo "4. Validating JSON schemas..."

for schema in "$ATA08_DIR/schemas"/*.json; do
    if [ -f "$schema" ]; then
        if command -v python3 &> /dev/null; then
            if python3 -c "import json; json.load(open('$schema'))" 2>/dev/null; then
                pass "Valid JSON schema: $(basename "$schema")"
            else
                fail "Invalid JSON syntax: $(basename "$schema")"
            fi
        else
            warn "Python3 not available, skipping JSON validation for $(basename "$schema")"
        fi
    fi
done

echo ""

# 5. CSV File Validation
echo "5. Validating CSV files..."

for csv in "$ATA08_DIR/03-WEIGHT_AND_BALANCE_DATA"/*.csv; do
    if [ -f "$csv" ]; then
        # Check if file has header
        if [ "$(wc -l < "$csv")" -gt 0 ]; then
            pass "CSV file not empty: $(basename "$csv")"
        else
            fail "CSV file is empty: $(basename "$csv")"
        fi
        
        # Check for consistent column count
        if command -v awk &> /dev/null; then
            FIRST_LINE_COLS=$(head -n1 "$csv" | awk -F',' '{print NF}')
            ALL_SAME=true
            while IFS= read -r line; do
                COLS=$(echo "$line" | awk -F',' '{print NF}')
                if [ "$COLS" -ne "$FIRST_LINE_COLS" ]; then
                    ALL_SAME=false
                    break
                fi
            done < "$csv"
            
            if [ "$ALL_SAME" = true ]; then
                pass "CSV has consistent columns: $(basename "$csv")"
            else
                fail "CSV has inconsistent columns: $(basename "$csv")"
            fi
        fi
    fi
done

echo ""

# 6. Procedure File Content Validation
echo "6. Validating procedure files..."

# Check leveling procedure
LEVELING_PROC="$ATA08_DIR/01-LEVELING_PROCEDURES/PROC_Aircraft-Leveling-Using-Laser-Tracker_rev1.1.0_20280710.md"
if [ -f "$LEVELING_PROC" ]; then
    if grep -q "± 0.05°" "$LEVELING_PROC"; then
        pass "Leveling procedure contains tolerance spec"
    else
        fail "Leveling procedure missing tolerance spec"
    fi
fi

# Check weighing procedure
WEIGHING_PROC="$ATA08_DIR/02-WEIGHING_PROCEDURES/PROC_Aircraft-Weighing-On-Load-Cells_rev1.5.0_20280715.md"
if [ -f "$WEIGHING_PROC" ]; then
    if grep -qi "Stabilization" "$WEIGHING_PROC"; then
        pass "Weighing procedure contains stabilization check"
    else
        fail "Weighing procedure missing stabilization check"
    fi
    
    if grep -q "Repeatability Check" "$WEIGHING_PROC" || grep -q "repeatability check" "$WEIGHING_PROC"; then
        pass "Weighing procedure contains repeatability check"
    else
        fail "Weighing procedure missing repeatability check"
    fi
    
    if grep -q "ABORT CRITERIA" "$WEIGHING_PROC" || grep -q "Abort Criteria" "$WEIGHING_PROC"; then
        pass "Weighing procedure contains abort criteria"
    else
        fail "Weighing procedure missing abort criteria"
    fi
    
    # Check for specific procedure inserts
    if grep -q "wait 10 min" "$WEIGHING_PROC"; then
        pass "Stabilization waiting period specified"
    else
        warn "Stabilization waiting period not clearly specified"
    fi
    
    if grep -q "0.02%" "$WEIGHING_PROC"; then
        pass "Drift tolerance (0.02%) specified"
    else
        warn "Drift tolerance not clearly specified"
    fi
    
    if grep -q "0.05%" "$WEIGHING_PROC"; then
        pass "Repeatability tolerance (0.05%) specified"
    else
        warn "Repeatability tolerance not clearly specified"
    fi
fi

echo ""

# 7. INDEX.meta.yaml Validation
echo "7. Validating INDEX.meta.yaml..."

if [ -f "$ATA08_DIR/INDEX.meta.yaml" ]; then
    if command -v python3 &> /dev/null; then
        if python3 -c "import yaml; yaml.safe_load(open('$ATA08_DIR/INDEX.meta.yaml'))" 2>/dev/null; then
            pass "Valid YAML syntax in INDEX.meta.yaml"
        else
            fail "Invalid YAML syntax in INDEX.meta.yaml"
        fi
    else
        warn "Python3 not available, skipping YAML validation"
    fi
    
    # Check for required fields
    if grep -q "schema_version" "$ATA08_DIR/INDEX.meta.yaml"; then
        pass "INDEX contains schema_version"
    else
        fail "INDEX missing schema_version"
    fi
    
    if grep -q "tolerances:" "$ATA08_DIR/INDEX.meta.yaml"; then
        pass "INDEX contains tolerances"
    else
        fail "INDEX missing tolerances"
    fi
fi

echo ""

# 8. Standard Configuration Definition Validation
echo "8. Validating Standard Weighing Configuration..."

CONFIG_DEF="$ATA08_DIR/03-WEIGHT_AND_BALANCE_DATA/DATA_Standard-Weighing-Configuration-Definition.md"
if [ -f "$CONFIG_DEF" ]; then
    REQUIRED_SECTIONS=(
        "Fluids"
        "Equipment Status"
        "Battery State"
        "Environmental Conditions"
        "Configuration Hash"
    )
    
    for section in "${REQUIRED_SECTIONS[@]}"; do
        if grep -qi "$section" "$CONFIG_DEF"; then
            pass "Configuration definition contains: $section"
        else
            fail "Configuration definition missing: $section"
        fi
    done
fi

echo ""

# Summary
echo "========================================="
echo "Validation Summary"
echo "========================================="

if [ $ERRORS -eq 0 ]; then
    echo -e "${GREEN}All validations passed!${NC}"
    exit 0
else
    echo -e "${RED}Validation failed with $ERRORS error(s)${NC}"
    exit 1
fi
