#!/usr/bin/env python3
"""
Validate JSON files against JSON Schema for Digital Product Passport.

This script validates passport and event JSON files against their respective
schemas to ensure data integrity and compliance.
"""

import os
import sys
import json
import argparse
from pathlib import Path
from jsonschema import validate, ValidationError, Draft202012Validator


def load_json(filepath):
    """Load JSON file."""
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            return json.load(f)
    except json.JSONDecodeError as e:
        print(f"✗ JSON decode error in {filepath}: {e}")
        return None
    except Exception as e:
        print(f"✗ Error loading file {filepath}: {e}")
        return None


def load_schema(schema_path, schema_name):
    """Load JSON schema from schema directory."""
    schema_file = Path(schema_path) / schema_name
    if not schema_file.exists():
        print(f"✗ Schema file not found: {schema_file}")
        return None
    
    return load_json(schema_file)


def validate_json_against_schema(data, schema, filepath):
    """Validate JSON data against schema."""
    try:
        validator = Draft202012Validator(schema)
        validator.validate(data)
        return True, None
    except ValidationError as e:
        error_path = ".".join(str(p) for p in e.absolute_path) if e.absolute_path else "root"
        return False, f"{error_path}: {e.message}"


def determine_schema_name(data):
    """Determine which schema to use based on data type."""
    data_type = data.get('type')
    
    if data_type == 'AircraftPassport':
        return 'SCHEMA_AircraftPassport-v2.json'
    elif data_type == 'PartPassport':
        return 'SCHEMA_PartPassport-v2.json'
    elif 'event_id' in data:  # EventLedger
        return 'SCHEMA_EventLedger-v2.json'
    else:
        return None


def validate_directory(directory, schema_path):
    """Recursively validate all JSON files in directory."""
    errors = []
    validated = 0
    skipped = 0
    
    for root, dirs, files in os.walk(directory):
        for filename in files:
            if not filename.endswith('.json'):
                continue
            
            filepath = Path(root) / filename
            relpath = filepath.relative_to(directory)
            
            # Load JSON data
            data = load_json(filepath)
            if data is None:
                errors.append(f"{relpath}: Failed to load JSON")
                continue
            
            # Determine schema
            schema_name = determine_schema_name(data)
            if schema_name is None:
                print(f"⚠ {relpath}: Could not determine schema type, skipping")
                skipped += 1
                continue
            
            # Load schema
            schema = load_schema(schema_path, schema_name)
            if schema is None:
                errors.append(f"{relpath}: Failed to load schema {schema_name}")
                continue
            
            # Validate
            valid, error_msg = validate_json_against_schema(data, schema, filepath)
            if valid:
                print(f"✓ {relpath}: Valid {data.get('type', 'event')}")
                validated += 1
            else:
                print(f"✗ {relpath}: Validation failed")
                print(f"  Error: {error_msg}")
                errors.append(f"{relpath}: {error_msg}")
    
    return validated, skipped, errors


def main():
    parser = argparse.ArgumentParser(
        description='Validate DPP JSON files against schemas'
    )
    parser.add_argument(
        '--schema',
        required=True,
        help='Path to schema directory'
    )
    parser.add_argument(
        'directory',
        help='Directory to validate (will recurse)'
    )
    
    args = parser.parse_args()
    
    if not os.path.exists(args.directory):
        print(f"✗ Directory not found: {args.directory}")
        sys.exit(1)
    
    if not os.path.exists(args.schema):
        print(f"✗ Schema directory not found: {args.schema}")
        sys.exit(1)
    
    print(f"Validating JSON files in: {args.directory}")
    print(f"Using schemas from: {args.schema}")
    print("-" * 80)
    
    validated, skipped, errors = validate_directory(args.directory, args.schema)
    
    print("-" * 80)
    print(f"Validation Results:")
    print(f"  Files validated: {validated}")
    print(f"  Files skipped: {skipped}")
    print(f"  Errors: {len(errors)}")
    
    if errors:
        print("\nValidation Errors:")
        for error in errors:
            print(f"  {error}")
        sys.exit(1)
    else:
        print("\n✓ All JSON files are valid")
        sys.exit(0)


if __name__ == '__main__':
    main()
