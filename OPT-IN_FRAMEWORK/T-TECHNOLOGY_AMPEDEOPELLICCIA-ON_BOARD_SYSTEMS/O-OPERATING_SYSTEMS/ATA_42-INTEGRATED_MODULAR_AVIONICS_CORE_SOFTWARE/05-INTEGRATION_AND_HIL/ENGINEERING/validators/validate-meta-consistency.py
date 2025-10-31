#!/usr/bin/env python3
"""
Metadata Consistency Validator
Validates consistency of metadata files across the engineering directory
"""
import argparse
import json
import sys
from pathlib import Path


def validate_meta_consistency(eng_dir):
    """
    Validate metadata consistency
    Checks META.json and .meta.yaml files for consistency
    """
    eng_path = Path(eng_dir)
    errors = []
    warnings = []
    
    print("=== Metadata Consistency Validation ===")
    print(f"Directory: {eng_path}")
    print()
    
    # Check META.json
    meta_json = eng_path / "META.json"
    if not meta_json.exists():
        errors.append("META.json not found")
    else:
        try:
            with open(meta_json, 'r') as f:
                meta = json.load(f)
            print("✓ META.json found and valid")
            
            # Check required fields
            required_fields = ['ata_chapter', 'sub_section', 'title', 'version', 'date']
            for field in required_fields:
                if field not in meta:
                    errors.append(f"META.json missing required field: {field}")
                else:
                    print(f"  ✓ {field}: {meta[field]}")
                    
        except json.JSONDecodeError as e:
            errors.append(f"META.json is not valid JSON: {e}")
    
    print()
    
    # Check for .meta.yaml files
    meta_yaml_files = list(eng_path.glob("*.meta.yaml"))
    print(f"Found {len(meta_yaml_files)} .meta.yaml files")
    
    for yaml_file in meta_yaml_files:
        try:
            # Check if PyYAML is available
            try:
                import yaml
                with open(yaml_file, 'r') as f:
                    yaml_data = yaml.safe_load(f)
                print(f"✓ {yaml_file.name} is valid")
                
                # Check for required fields
                if 'document_id' not in yaml_data:
                    warnings.append(f"{yaml_file.name} missing document_id")
                    
            except ImportError:
                warnings.append("PyYAML not installed, skipping YAML validation")
                print(f"⚠ {yaml_file.name} (not validated - PyYAML not installed)")
                
        except Exception as e:
            errors.append(f"{yaml_file.name} validation failed: {e}")
    
    print()
    
    # Check test matrix
    test_matrix = eng_path / "DATA_42-05-02_HIL-Test-Matrix.csv"
    if not test_matrix.exists():
        errors.append("Test matrix not found: DATA_42-05-02_HIL-Test-Matrix.csv")
    else:
        print("✓ Test matrix found")
    
    # Check test scripts inventory
    test_scripts_csv = eng_path / "DATA_Test-Scripts.csv"
    if not test_scripts_csv.exists():
        warnings.append("Test scripts inventory not found: DATA_Test-Scripts.csv")
    else:
        print("✓ Test scripts inventory found")
    
    print()
    print("=== Validation Results ===")
    
    if errors:
        print(f"✗ Errors: {len(errors)}")
        for error in errors:
            print(f"  - {error}")
    else:
        print("✓ No errors found")
    
    if warnings:
        print(f"⚠ Warnings: {len(warnings)}")
        for warning in warnings:
            print(f"  - {warning}")
    
    return 0 if not errors else 1


def main():
    parser = argparse.ArgumentParser(
        description='Validate metadata consistency'
    )
    parser.add_argument(
        '--dir',
        default='.',
        help='Engineering directory to validate (default: current directory)'
    )
    
    args = parser.parse_args()
    
    exit_code = validate_meta_consistency(args.dir)
    sys.exit(exit_code)


if __name__ == '__main__':
    main()
