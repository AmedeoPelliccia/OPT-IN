#!/usr/bin/env bash
# validate_ata26.sh
# Validates ATA-26 Fire Protection documentation structure and content
# Part of CI/CD pipeline for OPT-IN Framework

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA26_DIR="$(dirname "$SCRIPT_DIR")"
EXIT_CODE=0

echo "========================================="
echo "ATA-26 Fire Protection Validation"
echo "========================================="
echo "Base Directory: $ATA26_DIR"
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Validation functions
validate_file_exists() {
    local file="$1"
    if [[ ! -f "$ATA26_DIR/$file" ]]; then
        echo -e "${RED}✗${NC} Missing required file: $file"
        EXIT_CODE=1
        return 1
    else
        echo -e "${GREEN}✓${NC} Found: $file"
        return 0
    fi
}

validate_directory_exists() {
    local dir="$1"
    if [[ ! -d "$ATA26_DIR/$dir" ]]; then
        echo -e "${RED}✗${NC} Missing required directory: $dir"
        EXIT_CODE=1
        return 1
    else
        echo -e "${GREEN}✓${NC} Found: $dir"
        return 0
    fi
}

validate_sidecar() {
    local doc="$1"
    local sidecar="${doc}.meta.yaml"
    
    if [[ ! -f "$sidecar" ]]; then
        echo -e "${YELLOW}⚠${NC} Missing sidecar: $sidecar"
        return 1
    fi
    
    # Check for required fields in sidecar
    if ! grep -q "effective_date:" "$sidecar"; then
        echo -e "${YELLOW}⚠${NC} Missing effective_date in: $sidecar"
        return 1
    fi
    
    if ! grep -q "checksum:" "$sidecar" && ! grep -q "sha256" "$sidecar"; then
        echo -e "${YELLOW}⚠${NC} Missing checksum in: $sidecar"
        return 1
    fi
    
    return 0
}

echo "1. Validating Core Structure"
echo "-----------------------------"

# Validate required root files
validate_file_exists "00_README.md"
validate_file_exists "INDEX.meta.yaml"

# Validate required directories
validate_directory_exists "ci"
validate_directory_exists "schemas"
validate_directory_exists "01-GENERAL"
validate_directory_exists "02-DETECTION_AND_SENSING"
validate_directory_exists "03-SUPPRESSION_AND_AGENT_SYSTEMS"
validate_directory_exists "04-ENGINE_APU_FIRE_HANDLING"
validate_directory_exists "05-CARGO_AND_LAVATORY_FIRE_PROTECTION"
validate_directory_exists "06-MATERIALS_M_AND_P"
validate_directory_exists "07-NONCONFORMANCE_AND_DEVIATION"
validate_directory_exists "08-DIAGRAMS_AND_REFERENCE_DATA"
validate_directory_exists "09-SIDE-CAR_META"
validate_directory_exists "10-EXAMPLES_AND_RECORDS"

echo ""
echo "2. Validating Schemas"
echo "--------------------"

# Check for required schemas
REQUIRED_SCHEMAS=(
    "fire-system.schema.json"
    "extinguisher.schema.json"
    "detection-schema.json"
    "suppression-system.schema.json"
    "repair-record.schema.json"
    "test-record.schema.json"
    "ncr.schema.json"
)

for schema in "${REQUIRED_SCHEMAS[@]}"; do
    if validate_file_exists "schemas/$schema"; then
        # Validate JSON syntax if jq is available
        if command -v jq &> /dev/null; then
            if jq empty "$ATA26_DIR/schemas/$schema" 2>/dev/null; then
                echo "  → Valid JSON syntax"
            else
                echo -e "  ${RED}→ Invalid JSON syntax${NC}"
                EXIT_CODE=1
            fi
        fi
    fi
done

echo ""
echo "3. Validating Subsystem Structure"
echo "---------------------------------"

# Validate 02-DETECTION_AND_SENSING subsystems
DETECTION_SUBSYSTEMS=(
    "02-10_SMOKE_DETECTORS"
    "02-20_HEAT_DETECTORS"
    "02-30_FLAME_DETECTORS"
    "02-40_FIRE_DETECTION_CONTROL_UNIT"
    "02-50_INDICATION_AND_WARNING"
)

for subsys in "${DETECTION_SUBSYSTEMS[@]}"; do
    validate_directory_exists "02-DETECTION_AND_SENSING/SUBSYSTEMS_AND_COMPONENTS/$subsys"
done

# Validate 03-SUPPRESSION_AND_AGENT_SYSTEMS subsystems
SUPPRESSION_SUBSYSTEMS=(
    "03-10_FIRE_EXTINGUISHING_AGENT"
    "03-20_FIRE_BOTTLES_CONTAINERS"
    "03-30_DISCHARGE_VALVES_ACTUATORS"
    "03-40_DISTRIBUTION_TUBING_NOZZLES"
    "03-50_PRESSURE_SWITCHES_SENSORS"
    "03-60_FIRE_EXTINGUISHER_CONTROL"
)

for subsys in "${SUPPRESSION_SUBSYSTEMS[@]}"; do
    validate_directory_exists "03-SUPPRESSION_AND_AGENT_SYSTEMS/SUBSYSTEMS_AND_COMPONENTS/$subsys"
done

echo ""
echo "4. Validating Document Sidecars"
echo "-------------------------------"

# Find all markdown and CSV files and check for sidecars
SIDECAR_COUNT=0
MISSING_SIDECAR_COUNT=0

while IFS= read -r -d '' file; do
    if [[ "$file" != *.meta.yaml ]]; then
        SIDECAR_COUNT=$((SIDECAR_COUNT + 1))
        if ! validate_sidecar "$file"; then
            MISSING_SIDECAR_COUNT=$((MISSING_SIDECAR_COUNT + 1))
        fi
    fi
done < <(find "$ATA26_DIR" -type f \( -name "*.md" -o -name "*.csv" -o -name "*.json" \) ! -path "*/node_modules/*" ! -path "*/.git/*" ! -name "*.meta.yaml" -print0 2>/dev/null || true)

if [[ $MISSING_SIDECAR_COUNT -gt 0 ]]; then
    echo -e "${YELLOW}Warning: $MISSING_SIDECAR_COUNT of $SIDECAR_COUNT documents missing sidecars${NC}"
else
    echo -e "${GREEN}All documents have sidecars (checked $SIDECAR_COUNT files)${NC}"
fi

echo ""
echo "5. Validating Naming Conventions"
echo "--------------------------------"

# Check that key procedures follow naming convention
NAMING_VIOLATIONS=0

while IFS= read -r -d '' file; do
    basename=$(basename "$file")
    # Check if file follows pattern: TYPE_##-##-##_Title or similar
    if [[ ! "$basename" =~ ^(DESC|PROC|DATA|CALC|DIAG|TESTPLAN|EXAMPLE)_[0-9]{2}- ]] && [[ ! "$basename" =~ ^(README|INDEX|00_README) ]]; then
        echo -e "${YELLOW}⚠${NC} Potential naming violation: $basename"
        NAMING_VIOLATIONS=$((NAMING_VIOLATIONS + 1))
    fi
done < <(find "$ATA26_DIR" -maxdepth 2 -type f \( -name "*.md" -o -name "*.csv" \) ! -name "*.meta.yaml" -print0 2>/dev/null || true)

if [[ $NAMING_VIOLATIONS -eq 0 ]]; then
    echo -e "${GREEN}✓${NC} All files follow naming conventions"
else
    echo -e "${YELLOW}Found $NAMING_VIOLATIONS potential naming violations${NC}"
fi

echo ""
echo "========================================="
if [[ $EXIT_CODE -eq 0 ]]; then
    echo -e "${GREEN}✓ ATA-26 Validation PASSED${NC}"
else
    echo -e "${RED}✗ ATA-26 Validation FAILED${NC}"
fi
echo "========================================="

exit $EXIT_CODE
