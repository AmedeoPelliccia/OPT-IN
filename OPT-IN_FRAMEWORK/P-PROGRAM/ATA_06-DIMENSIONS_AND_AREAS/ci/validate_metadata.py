#!/usr/bin/env python3
"""
Metadata Validation Script for ATA 06
Validates YAML metadata files against required schema fields.
"""

import sys
import yaml
from pathlib import Path


def validate_metadata_file(meta_file_path):
    """
    Validate a single metadata YAML file.
    
    Args:
        meta_file_path: Path to the metadata file
        
    Returns:
        tuple: (success: bool, error_message: str)
    """
    filename = Path(meta_file_path).name
    
    try:
        # Load and parse YAML file
        with open(meta_file_path, 'r') as f:
            data = yaml.safe_load(f)
        
        # Different validation for INDEX.meta.yaml vs document sidecars
        if filename == 'INDEX.meta.yaml':
            # INDEX file has different required fields
            required = ['schema_version', 'id', 'program', 'chapter']
        else:
            # Document sidecars require these fields
            required = ['schema_version', 'id', 'document', 'effectivity', 
                       'traceability', 'integrity']
        
        # Check for required fields
        for field in required:
            if field not in data:
                return False, f"Missing required field: {field}"
        
        return True, "Valid"
        
    except yaml.YAMLError as e:
        return False, f"YAML parsing error: {e}"
    except Exception as e:
        return False, f"Error: {e}"


def main():
    """Main entry point for the validation script."""
    if len(sys.argv) != 2:
        print("Usage: validate_metadata.py <path_to_metadata_file>", file=sys.stderr)
        sys.exit(1)
    
    meta_file = sys.argv[1]
    
    if not Path(meta_file).exists():
        print(f"Error: File not found: {meta_file}", file=sys.stderr)
        sys.exit(1)
    
    success, message = validate_metadata_file(meta_file)
    
    if success:
        print(f"  ✓ {message}")
        sys.exit(0)
    else:
        print(f"  ✗ {message}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
