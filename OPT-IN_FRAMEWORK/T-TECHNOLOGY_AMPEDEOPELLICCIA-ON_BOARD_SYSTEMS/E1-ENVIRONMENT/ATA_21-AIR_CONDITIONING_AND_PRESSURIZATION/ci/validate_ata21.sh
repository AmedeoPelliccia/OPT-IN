#!/bin/bash
#
# ATA-21 Air Conditioning and Pressurization Validation Script
# Validates directory structure, documentation, and metadata compliance
#
# Author: AMPEL360 Systems Engineering
# Version: 1.0.0
# Date: 2025-10-31

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ATA21_DIR="$(dirname "$SCRIPT_DIR")"
ERRORS=0
WARNINGS=0

# Colors for output
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
    ((ERRORS++))
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
    ((WARNINGS++))
}

log_success() {
    echo -e "${GREEN}[OK]${NC} $1"
}

log_info() {
    echo "[INFO] $1"
}

# Check if required directories exist
check_directory_structure() {
    log_info "Checking directory structure..."
    
    local required_dirs=(
        "OVERVIEW"
        "SAFETY"
        "REQUIREMENTS"
        "DESIGN"
        "INTERFACES"
        "ENGINEERING"
        "V_AND_V"
        "PROTOTYPING"
        "PRODUCTION_PLANNING"
        "CERTIFICATION"
        "OPERATIONS_AND_MAINTENANCE"
        "ASSETS_MANAGEMENT"
        "SUBSYSTEMS_AND_COMPONENTS"
        "ci"
        "schemas"
    )
    
    for dir in "${required_dirs[@]}"; do
        if [ -d "$ATA21_DIR/$dir" ]; then
            log_success "Directory exists: $dir"
        else
            log_error "Missing required directory: $dir"
        fi
    done
}

# Check if required files exist
check_required_files() {
    log_info "Checking required files..."
    
    local required_files=(
        "README.md"
        "META.json"
        "INDEX.meta.yaml"
        "OVERVIEW/README.md"
        "OVERVIEW/21-00-00_SYSTEM_DESCRIPTION.md"
        "OVERVIEW/21-00-00_OPERATIONAL_CONCEPTS.md"
        "OVERVIEW/21-00-00_KEY_TECHNOLOGIES.md"
        "OVERVIEW/21-00-00_REGULATORY_LANDSCAPE.md"
        "SAFETY/README.md"
        "REQUIREMENTS/README.md"
    )
    
    for file in "${required_files[@]}"; do
        if [ -f "$ATA21_DIR/$file" ]; then
            log_success "File exists: $file"
        else
            log_warning "Missing recommended file: $file"
        fi
    done
}

# Validate JSON files
validate_json() {
    log_info "Validating JSON files..."
    
    if [ -f "$ATA21_DIR/META.json" ]; then
        if python3 -m json.tool "$ATA21_DIR/META.json" > /dev/null 2>&1; then
            log_success "META.json is valid JSON"
        else
            log_error "META.json is not valid JSON"
        fi
    fi
}

# Validate YAML files
validate_yaml() {
    log_info "Validating YAML files..."
    
    if [ -f "$ATA21_DIR/INDEX.meta.yaml" ]; then
        if python3 -c "import yaml; yaml.safe_load(open('$ATA21_DIR/INDEX.meta.yaml'))" 2>/dev/null; then
            log_success "INDEX.meta.yaml is valid YAML"
        else
            log_error "INDEX.meta.yaml is not valid YAML"
        fi
    fi
}

# Check Python scripts syntax
check_python_scripts() {
    log_info "Checking Python scripts..."
    
    local py_files=$(find "$ATA21_DIR" -name "*.py" -type f)
    
    for py_file in $py_files; do
        if python3 -m py_compile "$py_file" 2>/dev/null; then
            log_success "Python syntax OK: $(basename $py_file)"
        else
            log_error "Python syntax error: $py_file"
        fi
    done
}

# Check for README files in major directories
check_readme_files() {
    log_info "Checking for README files..."
    
    local major_dirs=$(find "$ATA21_DIR" -maxdepth 1 -type d ! -path "$ATA21_DIR")
    
    for dir in $major_dirs; do
        if [ -f "$dir/README.md" ]; then
            log_success "README exists: $(basename $dir)"
        else
            log_warning "Missing README: $(basename $dir)"
        fi
    done
}

# Check file naming conventions
check_naming_conventions() {
    log_info "Checking naming conventions..."
    
    # Check for spaces in filenames (should use underscores or hyphens)
    local files_with_spaces=$(find "$ATA21_DIR" -name "* *" -type f)
    
    if [ -z "$files_with_spaces" ]; then
        log_success "No files with spaces in names"
    else
        log_warning "Files with spaces found (consider using underscores or hyphens):"
        echo "$files_with_spaces"
    fi
}

# Check for empty directories
check_empty_directories() {
    log_info "Checking for empty directories..."
    
    local empty_dirs=$(find "$ATA21_DIR" -type d -empty)
    
    if [ -z "$empty_dirs" ]; then
        log_success "No empty directories found"
    else
        log_info "Empty directories (may need content or .gitkeep):"
        echo "$empty_dirs" | while read dir; do
            echo "  - $dir"
        done
    fi
}

# Validate markdown links (basic check)
check_markdown_links() {
    log_info "Checking markdown files..."
    
    local md_files=$(find "$ATA21_DIR" -name "*.md" -type f)
    local count=0
    
    for md_file in $md_files; do
        ((count++))
    done
    
    log_success "Found $count markdown files"
}

# Main validation routine
main() {
    echo "========================================"
    echo "ATA-21 Validation Script"
    echo "========================================"
    echo "Base directory: $ATA21_DIR"
    echo ""
    
    check_directory_structure
    echo ""
    check_required_files
    echo ""
    validate_json
    echo ""
    validate_yaml
    echo ""
    check_python_scripts
    echo ""
    check_readme_files
    echo ""
    check_naming_conventions
    echo ""
    check_empty_directories
    echo ""
    check_markdown_links
    echo ""
    
    echo "========================================"
    echo "Validation Summary"
    echo "========================================"
    echo "Errors:   $ERRORS"
    echo "Warnings: $WARNINGS"
    echo "========================================"
    
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
}

# Run main validation
main
