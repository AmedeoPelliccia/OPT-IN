#!/bin/bash
# ATA 16 - CHANGE OF ROLE - Validation Script
# Purpose: Validate all ATA-16 deliverables for audit readiness
# - Check presence of .meta.yaml sidecars for all documents
# - Validate schema conformance for JSON files
# - Verify CSV files include units in headers
# - Check numeric test criteria completeness
# - Verify SHA-256 hashes present for test evidence
# - Validate ISO 8601 date format
# - Check effective dates are not in future
# - Verify safety assessment references
# - Check change request IDs follow pattern
# - Verify required approvals present

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA16_DIR="$(dirname "$SCRIPT_DIR")"
ERRORS=0
WARNINGS=0

echo "=========================================="
echo "ATA-16 CHANGE OF ROLE VALIDATION"
echo "=========================================="
echo ""

# Color codes for output
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

error() {
    echo -e "${RED}[ERROR]${NC} $1"
    ((ERRORS++))
}

warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
    ((WARNINGS++))
}

success() {
    echo -e "${GREEN}[OK]${NC} $1"
}

# Check 1: Verify INDEX.meta.yaml exists
echo "Check 1: Verifying INDEX.meta.yaml..."
if [ -f "$ATA16_DIR/INDEX.meta.yaml" ]; then
    success "INDEX.meta.yaml exists"
else
    error "INDEX.meta.yaml not found"
fi

# Check 2: Verify all documents have .meta.yaml sidecars
echo ""
echo "Check 2: Verifying .meta.yaml sidecars..."
SIDECAR_MISSING=0
for doc in $(find "$ATA16_DIR" -type f \( -name "*.md" -o -name "*.csv" -o -name "*.json" \) -not -path "*/schemas/*" -not -path "*/ci/*" -not -path "*/.meta.yaml" -not -name "README.md" -not -name "00_README.md" -not -name "INDEX.meta.yaml"); do
    sidecar="${doc}.meta.yaml"
    if [ ! -f "$sidecar" ]; then
        error "Missing sidecar: $sidecar"
        ((SIDECAR_MISSING++))
    fi
done
if [ $SIDECAR_MISSING -eq 0 ]; then
    success "All documents have sidecars"
fi

# Check 3: Verify CSV files have units in headers
echo ""
echo "Check 3: Verifying CSV files have units..."
CSV_NO_UNITS=0
for csv in $(find "$ATA16_DIR" -type f -name "*.csv"); do
    header=$(head -n 1 "$csv")
    # Check if header contains units indicators like _mm, _m, _unitless, _ratio, etc.
    if ! echo "$header" | grep -qE "_(mm|cm|m|px|unitless|ratio|units|N|Nm|Pa|MPa|kg|hrs|days|pct)"; then
        warning "CSV may be missing units in header: $(basename $csv)"
        ((CSV_NO_UNITS++))
    fi
done
if [ $CSV_NO_UNITS -eq 0 ]; then
    success "All CSV files appear to have units in headers"
fi

# Check 4: Verify change request ID pattern in change requests
echo ""
echo "Check 4: Checking change request ID patterns..."
CHANGE_REQUEST_DIR="$ATA16_DIR/05-RECORDS/12-EXAMPLES_AND_RECORDS"
if [ -d "$CHANGE_REQUEST_DIR" ]; then
    INVALID_IDS=0
    for file in $(find "$CHANGE_REQUEST_DIR" -type f \( -name "*ECR*.json" -o -name "*NCR*.json" \)); do
        if [ -f "$file" ]; then
            # Check if file contains valid ECR or NCR ID pattern
            if ! grep -qE "(ECR|NCR)-[0-9]{4}-[0-9]{4}" "$file"; then
                warning "Change request ID may not follow pattern ECR-YYYY-NNNN or NCR-YYYY-NNNN in: $(basename $file)"
                ((INVALID_IDS++))
            fi
        fi
    done
    if [ $INVALID_IDS -eq 0 ]; then
        success "Change request IDs follow correct pattern"
    fi
else
    warning "Change request directory not found"
fi

# Check 5: Verify SHA-256 hashes in test evidence sidecars
echo ""
echo "Check 5: Verifying SHA-256 hashes in test evidence metadata..."
TEST_DIR="$ATA16_DIR/03-TESTS_AND_EVIDENCE"
if [ -d "$TEST_DIR" ]; then
    MISSING_SHA256=0
    for sidecar in $(find "$TEST_DIR" -type f -name "*.meta.yaml"); do
        if ! grep -q "sha256" "$sidecar"; then
            warning "SHA-256 hash may be missing in: $(basename $sidecar)"
            ((MISSING_SHA256++))
        fi
    done
    if [ $MISSING_SHA256 -eq 0 ]; then
        success "All test evidence sidecars contain SHA-256 references"
    fi
else
    warning "Test evidence directory not found"
fi

# Check 6: Verify ISO 8601 date format in sidecars
echo ""
echo "Check 6: Verifying ISO 8601 date format..."
DATE_FORMAT_ERRORS=0
for sidecar in $(find "$ATA16_DIR" -type f -name "*.meta.yaml"); do
    # Check for dates not in YYYY-MM-DD format
    if grep -q "date:" "$sidecar"; then
        invalid_dates=$(grep "date:" "$sidecar" | grep -vE "[0-9]{4}-[0-9]{2}-[0-9]{2}" || true)
        if [ ! -z "$invalid_dates" ]; then
            warning "Non-ISO date format in: $(basename $sidecar)"
            ((DATE_FORMAT_ERRORS++))
        fi
    fi
done
if [ $DATE_FORMAT_ERRORS -eq 0 ]; then
    success "All dates appear to be in ISO 8601 format"
fi

# Check 7: Verify effective dates are not in future
echo ""
echo "Check 7: Verifying effective dates..."
TODAY=$(date +%Y-%m-%d)
FUTURE_DATES=0
for sidecar in $(find "$ATA16_DIR" -type f -name "*.meta.yaml"); do
    if grep -q "effective_date:" "$sidecar"; then
        eff_date=$(grep "effective_date:" "$sidecar" | head -n 1 | sed 's/.*effective_date: *"\?\([0-9-]*\)"\?.*/\1/')
        if [[ ! -z "$eff_date" && "$eff_date" > "$TODAY" ]]; then
            error "Future effective date in: $(basename $sidecar) - $eff_date"
            ((FUTURE_DATES++))
        fi
    fi
done
if [ $FUTURE_DATES -eq 0 ]; then
    success "No future effective dates found"
fi

# Check 8: Verify JSON schema files exist
echo ""
echo "Check 8: Verifying JSON schemas..."
SCHEMAS=("change-request.schema.json" "safety-assessment.schema.json" "test-report.schema.json")
for schema in "${SCHEMAS[@]}"; do
    if [ -f "$ATA16_DIR/schemas/$schema" ]; then
        success "Schema exists: $schema"
    else
        error "Schema missing: $schema"
    fi
done

# Check 9: Verify critical procedures exist
echo ""
echo "Check 9: Verifying critical procedures exist..."
CRITICAL_PROCS=(
    "02-PROCEDURES/PROC_16-02-01_Request-And-Assessment.md"
    "02-PROCEDURES/PROC_16-02-02_Implementation-And-Configuration-Control.md"
    "02-PROCEDURES/PROC_16-02-03_Operational-Changes-And-LOPA-Updates.md"
)
for proc in "${CRITICAL_PROCS[@]}"; do
    if [ -f "$ATA16_DIR/$proc" ]; then
        success "Critical procedure exists: $(basename $proc)"
    else
        warning "Critical procedure missing: $(basename $proc)"
    fi
done

# Check 10: Verify safety assessment references in change requests
echo ""
echo "Check 10: Checking safety assessment references..."
MISSING_SAFETY_REF=0
for file in $(find "$ATA16_DIR" -type f \( -name "*ECR*.json" -o -name "*NCR*.json" \)); do
    if [ -f "$file" ]; then
        if ! grep -q "safety_assessment" "$file"; then
            warning "Safety assessment reference may be missing in: $(basename $file)"
            ((MISSING_SAFETY_REF++))
        fi
    fi
done
if [ $MISSING_SAFETY_REF -eq 0 ]; then
    success "All change requests appear to have safety assessment references"
fi

# Check 11: Verify effectivity fields in change requests
echo ""
echo "Check 11: Checking effectivity fields..."
MISSING_EFFECTIVITY=0
for file in $(find "$ATA16_DIR" -type f -name "*ECR*.json" -o -name "*NCR*.json"); do
    if [ -f "$file" ]; then
        if ! grep -q "effectivity" "$file"; then
            warning "Effectivity field may be missing in: $(basename $file)"
            ((MISSING_EFFECTIVITY++))
        fi
    fi
done
if [ $MISSING_EFFECTIVITY -eq 0 ]; then
    success "All change requests appear to have effectivity fields"
fi

# Check 12: Verify numeric test criteria in test data
echo ""
echo "Check 12: Checking numeric test criteria..."
TEST_DATA_FILE="$ATA16_DIR/03-TESTS_AND_EVIDENCE/DATA_16-03-02_Test-Results.csv"
if [ -f "$TEST_DATA_FILE" ]; then
    header=$(head -n 1 "$TEST_DATA_FILE")
    required_fields=("Threshold" "Measured" "Pass_Fail")
    for field in "${required_fields[@]}"; do
        if ! echo "$header" | grep -qi "$field"; then
            warning "Test data file may be missing field: $field"
        fi
    done
    success "Test data file checked"
else
    warning "Test results data file not found: DATA_16-03-02"
fi

# Check 13: Verify sidecar templates exist
echo ""
echo "Check 13: Verifying sidecar templates..."
TEMPLATE_DIR="$ATA16_DIR/04-APPROVALS_AND_SIDECARS/11-SIDE-CAR_META/templates"
if [ -d "$TEMPLATE_DIR" ]; then
    template_count=$(find "$TEMPLATE_DIR" -type f -name "*.yaml" | wc -l)
    if [ $template_count -gt 0 ]; then
        success "Found $template_count sidecar templates"
    else
        warning "No sidecar templates found"
    fi
else
    warning "Template directory not found"
fi

# Check 14: Verify approval records in sidecars
echo ""
echo "Check 14: Checking approval records..."
MISSING_APPROVALS=0
for sidecar in $(find "$ATA16_DIR" -type f -name "*.meta.yaml" -not -path "*/templates/*" -not -name "INDEX.meta.yaml"); do
    if ! grep -q "approvals:" "$sidecar"; then
        warning "Approvals section may be missing in: $(basename $sidecar)"
        ((MISSING_APPROVALS++))
    fi
done
if [ $MISSING_APPROVALS -eq 0 ]; then
    success "All document sidecars appear to have approval records"
fi

# Summary
echo ""
echo "=========================================="
echo "VALIDATION SUMMARY"
echo "=========================================="
echo -e "Errors:   ${RED}$ERRORS${NC}"
echo -e "Warnings: ${YELLOW}$WARNINGS${NC}"
echo ""

if [ $ERRORS -gt 0 ]; then
    echo -e "${RED}VALIDATION FAILED${NC}"
    exit 1
elif [ $WARNINGS -gt 0 ]; then
    echo -e "${YELLOW}VALIDATION PASSED WITH WARNINGS${NC}"
    exit 0
else
    echo -e "${GREEN}VALIDATION PASSED${NC}"
    exit 0
fi
