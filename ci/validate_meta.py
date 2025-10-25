#!/usr/bin/env python3
"""
Validate GSE metadata sidecar files against JSON schema.

This script validates all .meta.yaml files against the meta_v1_1.json schema
to ensure compliance with metadata requirements.
"""

import os
import sys
import json
import yaml
import argparse
from pathlib import Path
from jsonschema import validate, ValidationError, Draft7Validator


def load_yaml(filepath):
    """Load YAML file."""
    try:
        with open(filepath, 'r') as f:
            return yaml.safe_load(f)
    except Exception as e:
        print(f"Error loading YAML file {filepath}: {e}")
        return None


def load_json_schema(filepath):
    """Load JSON schema file."""
    try:
        with open(filepath, 'r') as f:
            return json.load(f)
    except Exception as e:
        print(f"Error loading JSON schema {filepath}: {e}")
        return None


def validate_metadata(metadata, schema):
    """Validate metadata against schema."""
    try:
        validate(instance=metadata, schema=schema)
        return True, None
    except ValidationError as e:
        return False, str(e)


def main():
    parser = argparse.ArgumentParser(
        description='Validate GSE metadata sidecars against JSON schema'
    )
    parser.add_argument(
        'directory',
        help='Directory to search for .meta.yaml files'
    )
    parser.add_argument(
        '--schema',
        required=True,
        help='Path to JSON schema file (meta_v1_1.json)'
    )
    
    args = parser.parse_args()
    
    if not os.path.exists(args.directory):
        print(f"Error: Directory not found: {args.directory}")
        sys.exit(1)
    
    if not os.path.exists(args.schema):
        print(f"Error: Schema file not found: {args.schema}")
        sys.exit(1)
    
    print(f"Validating metadata files in: {args.directory}")
    print(f"Using schema: {args.schema}")
    print("-" * 80)
    
    # Load schema
    schema = load_json_schema(args.schema)
    if not schema:
        sys.exit(1)
    
    errors = []
    warnings = []
    validated = 0
    
    # Find all .meta.yaml files
    for root, dirs, files in os.walk(args.directory):
        for filename in files:
            if filename.endswith('.meta.yaml'):
                filepath = os.path.join(root, filename)
                relpath = os.path.relpath(filepath, args.directory)
                
                print(f"\nValidating: {relpath}")
                
                metadata = load_yaml(filepath)
                if metadata is None:
                    errors.append(f"Failed to load: {relpath}")
                    continue
                
                # Skip INDEX.meta.yaml files as they have different structure
                if filename == 'INDEX.meta.yaml':
                    print(f"  ⓘ Skipping INDEX.meta.yaml (different schema)")
                    validated += 1
                    continue
                
                valid, error_msg = validate_metadata(metadata, schema)
                
                if valid:
                    print(f"  ✓ Valid metadata")
                    validated += 1
                else:
                    print(f"  ✗ Validation error: {error_msg}")
                    errors.append(f"{relpath}: {error_msg}")
    
    print("\n" + "=" * 80)
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
        print("\n✗ Metadata validation failed")
        sys.exit(1)
    else:
        print("\n✓ All metadata files are valid")
        sys.exit(0)


if __name__ == '__main__':
    main()
