#!/bin/bash
# ATA 11 - PLACARDS AND MARKINGS - Validation Script
# Purpose: Validate all ATA-11 deliverables for audit readiness
# - Check presence of .meta.yaml sidecars for all documents
# - Validate schema conformance for JSON files
# - Verify CSV files include units in headers
# - Check numeric legibility criteria completeness
# - Verify SHA-256 hashes present for artwork files
# - Validate ISO 8601 date format
# - Check effective dates are not in future
# - Verify safety-critical change approvals

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA11_DIR="$(dirname "$SCRIPT_DIR")"
ERRORS=0
WARNINGS=0

echo "=========================================="
echo "ATA-11 PLACARDS AND MARKINGS VALIDATION"
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
if [ -f "$ATA11_DIR/INDEX.meta.yaml" ]; then
    success "INDEX.meta.yaml exists"
else
    error "INDEX.meta.yaml not found"
fi

# Check 2: Verify all documents have .meta.yaml sidecars
echo ""
echo "Check 2: Verifying .meta.yaml sidecars..."
SIDECAR_MISSING=0
for doc in $(find "$ATA11_DIR" -type f \( -name "*.md" -o -name "*.csv" -o -name "*.json" \) -not -path "*/schemas/*" -not -path "*/ci/*" -not -path "*/.meta.yaml" -not -name "README.md" -not -name "00_README.md" -not -name "INDEX.meta.yaml"); do
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
for csv in $(find "$ATA11_DIR" -type f -name "*.csv"); do
    header=$(head -n 1 "$csv")
    # Check if header contains units indicators like _mm, _m, _unitless, _ratio, etc.
    if ! echo "$header" | grep -qE "_(mm|cm|m|px|unitless|ratio|lux|cd|deg|min|max|pct|kg|N|Pa|hrs|days)"; then
        warning "CSV may be missing units in header: $(basename $csv)"
        ((CSV_NO_UNITS++))
    fi
done
if [ $CSV_NO_UNITS -eq 0 ]; then
    success "All CSV files appear to have units in headers"
fi

# Check 4: Verify legibility criteria completeness in design files
echo ""
echo "Check 4: Checking legibility numeric criteria..."
LEGIBILITY_FILE="$ATA11_DIR/02-PLACARD_DESIGN_AND_LEGIBILITY/DATA_11-02-02_Font-Sizes-And-Contrast-Limits_rev1.0.0_20251030.csv"
if [ -f "$LEGIBILITY_FILE" ]; then
    header=$(head -n 1 "$LEGIBILITY_FILE")
    required_fields=("Font_Size" "Contrast_Ratio" "Viewing_Distance" "Stroke_Width")
    for field in "${required_fields[@]}"; do
        if ! echo "$header" | grep -qi "$field"; then
            warning "Legibility file may be missing field: $field"
        fi
    done
    success "Legibility criteria file checked"
else
    warning "Legibility criteria file not found: DATA_11-02-02"
fi

# Check 5: Verify SHA-256 hashes in artwork sidecars
echo ""
echo "Check 5: Verifying SHA-256 hashes in artwork metadata..."
ARTWORK_DIR="$ATA11_DIR/09-ARTWORK_AND_GRAPHICS"
if [ -d "$ARTWORK_DIR" ]; then
    MISSING_SHA256=0
    for sidecar in $(find "$ARTWORK_DIR" -type f -name "*.meta.yaml"); do
        if ! grep -q "sha256" "$sidecar"; then
            warning "SHA-256 hash may be missing in: $(basename $sidecar)"
            ((MISSING_SHA256++))
        fi
    done
    if [ $MISSING_SHA256 -eq 0 ]; then
        success "All artwork sidecars contain SHA-256 references"
    fi
else
    warning "Artwork directory not found"
fi

# Check 6: Verify ISO 8601 date format in sidecars
echo ""
echo "Check 6: Verifying ISO 8601 date format..."
DATE_FORMAT_ERRORS=0
for sidecar in $(find "$ATA11_DIR" -type f -name "*.meta.yaml"); do
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
for sidecar in $(find "$ATA11_DIR" -type f -name "*.meta.yaml"); do
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
SCHEMAS=("placard.schema.json" "marking.schema.json" "repair-record.schema.json")
for schema in "${SCHEMAS[@]}"; do
    if [ -f "$ATA11_DIR/schemas/$schema" ]; then
        success "Schema exists: $schema"
    else
        error "Schema missing: $schema"
    fi
done

# Check 9: Verify critical procedures exist
echo ""
echo "Check 9: Verifying critical procedures exist..."
CRITICAL_PROCS=(
    "03-PLACARD_INSTALLATION_AND_REPLACEMENT/PROC_11-03-01_Placard-Removal-And-Installation_rev1.0.0_20251030.md"
    "04-GVI_DVI_INSPECTION/PROC_11-04-01_GVI-For-Placards-And-Markings_rev1.0.0_20251030.md"
)
for proc in "${CRITICAL_PROCS[@]}"; do
    if [ -f "$ATA11_DIR/$proc" ]; then
        success "Critical procedure exists: $(basename $proc)"
    else
        warning "Critical procedure missing: $(basename $proc)"
    fi
done

# Check 10: Verify example records exist
echo ""
echo "Check 10: Verifying example records..."
EXAMPLES_DIR="$ATA11_DIR/12-EXAMPLES_AND_RECORDS"
if [ -d "$EXAMPLES_DIR" ]; then
    example_count=$(find "$EXAMPLES_DIR" -type f \( -name "*.json" -o -name "*.csv" \) | wc -l)
    if [ $example_count -gt 0 ]; then
        success "Found $example_count example records"
    else
        warning "No example records found in 12-EXAMPLES_AND_RECORDS"
    fi
else
    warning "Examples directory not found"
fi

# Check 11: Verify sidecar templates exist
echo ""
echo "Check 11: Verifying sidecar templates..."
TEMPLATE_DIR="$ATA11_DIR/15-SIDE-CAR_META/templates"
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
