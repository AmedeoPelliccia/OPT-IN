#!/usr/bin/env bash
#===============================================================================
# ATA 28-60-00 Cryogenic H₂ Storage and Distribution - Validation Script
#===============================================================================
# Purpose: Validate chapter structure, required files, and metadata compliance
# Author: Cryogenic Systems Engineering
# Date: 2025-10-30
#===============================================================================

set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get script directory and chapter root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "=================================================="
echo "ATA 28-60-00 Validation Script"
echo "=================================================="
echo "Root directory: $ROOT"
echo ""

# Initialize counters
missing_count=0
warning_count=0
check_count=0

#===============================================================================
# Function: check_file_exists
#===============================================================================
check_file_exists() {
    local file="$1"
    local description="$2"
    check_count=$((check_count + 1))
    
    if [ -e "$ROOT/$file" ]; then
        echo -e "${GREEN}✓${NC} Found: $description"
        return 0
    else
        echo -e "${RED}✗${NC} MISSING: $description"
        echo "   Expected: $file"
        missing_count=$((missing_count + 1))
        return 1
    fi
}

#===============================================================================
# Function: check_directory_exists
#===============================================================================
check_directory_exists() {
    local dir="$1"
    local description="$2"
    check_count=$((check_count + 1))
    
    if [ -d "$ROOT/$dir" ]; then
        echo -e "${GREEN}✓${NC} Found: $description"
        return 0
    else
        echo -e "${RED}✗${NC} MISSING: $description"
        echo "   Expected: $dir/"
        missing_count=$((missing_count + 1))
        return 1
    fi
}

#===============================================================================
# Function: check_yaml_syntax
#===============================================================================
check_yaml_syntax() {
    local file="$1"
    check_count=$((check_count + 1))
    
    if [ ! -e "$ROOT/$file" ]; then
        return 1
    fi
    
    # Basic YAML syntax check (requires python or yq)
    if command -v python3 &> /dev/null; then
        if python3 -c "import yaml; yaml.safe_load(open('$ROOT/$file'))" 2>/dev/null; then
            echo -e "${GREEN}✓${NC} Valid YAML: $file"
            return 0
        else
            echo -e "${RED}✗${NC} Invalid YAML syntax: $file"
            missing_count=$((missing_count + 1))
            return 1
        fi
    else
        echo -e "${YELLOW}⚠${NC} Cannot validate YAML (python3 not available): $file"
        warning_count=$((warning_count + 1))
        return 0
    fi
}

#===============================================================================
# 1. Check Core Documentation
#===============================================================================
echo "=== Core Documentation ==="
check_file_exists "00_README.md" "Main README"
check_file_exists "INDEX.meta.yaml" "Chapter Index"
check_yaml_syntax "INDEX.meta.yaml"
echo ""

#===============================================================================
# 2. Check CI Infrastructure
#===============================================================================
echo "=== CI Infrastructure ==="
check_file_exists "ci/validate_ata28.sh" "Validation script"
if [ -e "$ROOT/ci/validate_ata28.sh" ]; then
    if [ -x "$ROOT/ci/validate_ata28.sh" ]; then
        echo -e "${GREEN}✓${NC} Script is executable"
    else
        echo -e "${YELLOW}⚠${NC} Script exists but not executable"
        warning_count=$((warning_count + 1))
    fi
fi
echo ""

#===============================================================================
# 3. Check Schema Files
#===============================================================================
echo "=== Schema Files ==="
check_directory_exists "schemas" "Schemas directory"
check_file_exists "schemas/tank-spec.schema.json" "Tank specification schema"
check_file_exists "schemas/valve-actuator.schema.json" "Valve actuator schema"
check_file_exists "schemas/line-pressure-test.schema.json" "Line pressure test schema"
check_file_exists "schemas/repair-record.schema.json" "Repair record schema"
check_file_exists "schemas/cryo-sensor.schema.json" "Cryogenic sensor schema"
echo ""

#===============================================================================
# 4. Check Chapter Structure (Directories)
#===============================================================================
echo "=== Chapter Structure ==="
check_directory_exists "01-GENERAL" "General information directory"
check_directory_exists "02-TANK_SYSTEMS" "Tank systems directory"
check_directory_exists "03-DISTRIBUTION_LINES_AND_VALVES" "Distribution lines and valves directory"
check_directory_exists "04-SENSORS_AND_CONTROLS" "Sensors and controls directory"
check_directory_exists "05-SAFETY_AND_RELIEF_SYSTEMS" "Safety and relief systems directory"
check_directory_exists "06-THERMAL_MANAGEMENT" "Thermal management directory"
check_directory_exists "07-INSPECTION_AND_MAINTENANCE" "Inspection and maintenance directory"
check_directory_exists "08-NONCONFORMANCE_AND-DEVIATION" "Nonconformance and deviation directory"
check_directory_exists "09-DIAGRAMS_AND_REFERENCE_DATA" "Diagrams and reference data directory"
check_directory_exists "10-SIDE-CAR_META/templates" "Sidecar metadata templates directory"
check_directory_exists "11-EXAMPLES_AND_RECORDS" "Examples and records directory"
echo ""

#===============================================================================
# 5. Check Key Procedure Files
#===============================================================================
echo "=== Key Procedure Files ==="
check_file_exists "01-GENERAL/DESC_28-60-01_Chapter-Scope-And-Applicability.md" "Chapter scope description"
check_file_exists "02-TANK_SYSTEMS/DESC_28-60-02_Tank-Design-Specification.md" "Tank design specification"
check_file_exists "02-TANK_SYSTEMS/PROC_28-60-02_LH2-Tank-Hydrostatic-Test.md" "Tank hydrostatic test procedure"
check_file_exists "03-DISTRIBUTION_LINES_AND_VALVES/PROC_28-60-03_Cryogenic-Line-Installation.md" "Line installation procedure"
check_file_exists "07-INSPECTION_AND_MAINTENANCE/PROC_28-60-07_Vacuum-Integrity-Test.md" "Vacuum integrity test procedure"
echo ""

#===============================================================================
# 6. Check Data Tables
#===============================================================================
echo "=== Data Tables ==="
check_file_exists "01-GENERAL/DATA_28-60-01_Material-Properties-Cryogenic.csv" "Material properties data"
check_file_exists "02-TANK_SYSTEMS/DATA_28-60-02_Tank-System-Limits.csv" "Tank system limits data"
check_file_exists "05-SAFETY_AND_RELIEF_SYSTEMS/DATA_28-60-05_Relief-Valve-Settings.csv" "Relief valve settings data"
echo ""

#===============================================================================
# 7. Check Metadata Templates
#===============================================================================
echo "=== Metadata Templates ==="
check_file_exists "10-SIDE-CAR_META/templates/document.meta.yaml" "Document metadata template"
check_file_exists "10-SIDE-CAR_META/templates/procedure.meta.yaml" "Procedure metadata template"
check_file_exists "10-SIDE-CAR_META/templates/test-report.meta.yaml" "Test report metadata template"
echo ""

#===============================================================================
# 8. Check Example Files
#===============================================================================
echo "=== Example Files ==="
check_file_exists "11-EXAMPLES_AND_RECORDS/EXAMPLE_28-60-01_Pressure-Test-Report.json" "Example pressure test report"
check_file_exists "11-EXAMPLES_AND_RECORDS/EXAMPLE_28-60-02_Boiloff-Rate-Log.csv" "Example boiloff rate log"
echo ""

#===============================================================================
# 9. Summary
#===============================================================================
echo ""
echo "=================================================="
echo "Validation Summary"
echo "=================================================="
echo "Total checks: $check_count"
echo -e "${GREEN}Passed: $((check_count - missing_count - warning_count))${NC}"
echo -e "${YELLOW}Warnings: $warning_count${NC}"
echo -e "${RED}Failed: $missing_count${NC}"
echo ""

if [ "$missing_count" -eq 0 ]; then
    echo -e "${GREEN}✓ ATA 28-60-00 validation PASSED${NC}"
    exit 0
else
    echo -e "${RED}✗ ATA 28-60-00 validation FAILED${NC}"
    echo "Please create missing files/directories before proceeding."
    exit 1
fi
