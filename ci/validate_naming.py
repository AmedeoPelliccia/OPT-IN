#!/usr/bin/env python3
"""
Validate GSE document filenames against naming conventions.

Naming convention: <DOC>_<GSE-ID>_<Subject>_rev<SEMVER>_<YYYYMMDD>.<ext>

Examples:
  - ICD_AP360-S001_LH2-Coupling_rev3.0.0_20280901.md
  - GOM_AP360-S001_LH2-Refueler_rev2.0.0_20281101.md
  - ATP_AP360-T003_Functional-Test_rev1.0.0_20280101.md
"""

import os
import re
import sys
from pathlib import Path

# Define naming patterns for different document types
PATTERNS = {
    'ICD': re.compile(r'^ICD_[A-Z0-9-]+_[\w-]+_rev\d+\.\d+\.\d+_\d{8}\.(md|pdf|dxf)$'),
    'GOM': re.compile(r'^GOM_[A-Z0-9-]+_[\w-]+_rev\d+\.\d+\.\d+_\d{8}\.(md|xml|pdf)$'),
    'ATP': re.compile(r'^ATP_[A-Z0-9-]+_[\w-]+_rev\d+\.\d+\.\d+_\d{8}\.(md|csv|pdf)$'),
    'IPC': re.compile(r'^IPC_[A-Z0-9-]+_[\w-]+_rev\d+\.\d+\.\d+_\d{8}\.(xml|json)$'),
    'SDS': re.compile(r'^SDS_[A-Z0-9-]+_[\w-]+_rev\d+\.\d+\.\d+_\d{8}\.(md|pdf)$'),
    'FW': re.compile(r'^FW_[A-Z0-9-]+_v\d+\.\d+\.\d+\.(bin|hex|elf|sig)$'),
    'SW': re.compile(r'^SW_[A-Z0-9-]+_v\d+\.\d+\.\d+\.(zip|tar\.gz|sig)$'),
    'TRAIN': re.compile(r'^TRAIN_[A-Z0-9-]+_[\w-]+_rev\d+\.\d+\.\d+_\d{8}\.(md|pdf)$'),
    'MAINT': re.compile(r'^MAINT_[A-Z0-9-]+_[\w-]+_rev\d+\.\d+\.\d+_\d{8}\.(md|pdf)$'),
    'CAL': re.compile(r'^CAL_[A-Z0-9-]+_\d{8}\.(md|pdf)$'),
}

# Exclude patterns
EXCLUDE_PATTERNS = [
    re.compile(r'INDEX\.meta\.yaml$'),
    re.compile(r'00_README\.md$'),
    re.compile(r'SHA256SUMS\.txt$'),
    re.compile(r'\.meta\.yaml$'),
    re.compile(r'training_records\.csv$'),
    re.compile(r'schedule\.csv$'),
    re.compile(r'defects\.csv$'),
    re.compile(r'status\.json$'),
    re.compile(r'meta_v\d+_\d+\.json$'),
]


def should_exclude(filename):
    """Check if filename should be excluded from validation."""
    for pattern in EXCLUDE_PATTERNS:
        if pattern.search(filename):
            return True
    return False


def validate_filename(filepath):
    """Validate a single filename against conventions."""
    filename = os.path.basename(filepath)
    
    if should_exclude(filename):
        return True, None
    
    # Check if it's a directory
    if os.path.isdir(filepath):
        return True, None
    
    # Extract document type prefix
    doc_type = filename.split('_')[0] if '_' in filename else None
    
    if doc_type and doc_type in PATTERNS:
        pattern = PATTERNS[doc_type]
        if pattern.match(filename):
            return True, None
        else:
            return False, f"Filename does not match {doc_type} convention: {filename}"
    
    # If no pattern matched, it might be a valid exception or error
    return True, f"Warning: No validation pattern for: {filename}"


def main():
    if len(sys.argv) < 2:
        print("Usage: python validate_naming.py <directory>")
        sys.exit(1)
    
    base_dir = sys.argv[1]
    
    if not os.path.exists(base_dir):
        print(f"Error: Directory not found: {base_dir}")
        sys.exit(1)
    
    print(f"Validating filenames in: {base_dir}")
    print("-" * 80)
    
    errors = []
    warnings = []
    validated = 0
    
    for root, dirs, files in os.walk(base_dir):
        for filename in files:
            filepath = os.path.join(root, filename)
            relpath = os.path.relpath(filepath, base_dir)
            
            valid, message = validate_filename(filepath)
            
            if valid:
                if message:  # It's a warning
                    warnings.append(message)
                validated += 1
            else:
                errors.append(message)
    
    print(f"\nValidation Results:")
    print(f"  Files validated: {validated}")
    print(f"  Warnings: {len(warnings)}")
    print(f"  Errors: {len(errors)}")
    
    if warnings:
        print("\nWarnings:")
        for warning in warnings:
            print(f"  ⚠ {warning}")
    
    if errors:
        print("\nErrors:")
        for error in errors:
            print(f"  ✗ {error}")
        sys.exit(1)
    else:
        print("\n✓ All filenames conform to naming conventions")
        sys.exit(0)


if __name__ == '__main__':
    main()
