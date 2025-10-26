#!/usr/bin/env python3
"""
Check CSV file headers for compliance with expected schema.

This script validates that CSV files contain the expected headers
and that all required columns are present.
"""

import os
import sys
import csv
import argparse
from pathlib import Path


def check_csv_headers(filepath, expected_headers=None):
    """
    Check if CSV file has the expected headers.
    
    Args:
        filepath: Path to CSV file
        expected_headers: List of expected header names (optional)
    
    Returns:
        Tuple of (success: bool, errors: list)
    """
    errors = []
    
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            reader = csv.reader(f)
            try:
                headers = next(reader)
            except StopIteration:
                return False, ["CSV file is empty"]
            
            # Strip whitespace from headers
            headers = [h.strip() for h in headers]
            
            # Check for empty headers
            if any(not h for h in headers):
                errors.append("CSV contains empty header columns")
            
            # Check for duplicate headers
            if len(headers) != len(set(headers)):
                duplicates = [h for h in headers if headers.count(h) > 1]
                errors.append(f"CSV contains duplicate headers: {', '.join(set(duplicates))}")
            
            # Check against expected headers if provided
            if expected_headers:
                missing = set(expected_headers) - set(headers)
                if missing:
                    errors.append(f"CSV missing required headers: {', '.join(missing)}")
                
                extra = set(headers) - set(expected_headers)
                if extra:
                    # Extra headers are just a warning, not an error
                    print(f"  ⓘ CSV has additional headers: {', '.join(extra)}")
            
            # Count rows
            row_count = sum(1 for _ in reader)
            
            if row_count == 0:
                errors.append("CSV has headers but no data rows")
            
            return len(errors) == 0, errors
            
    except FileNotFoundError:
        return False, [f"File not found: {filepath}"]
    except csv.Error as e:
        return False, [f"CSV parsing error: {e}"]
    except Exception as e:
        return False, [f"Unexpected error: {e}"]


def get_expected_headers_for_file(filename):
    """
    Return expected headers based on file name/type.
    """
    # Define expected headers for known CSV files
    known_schemas = {
        "TRACE_Matrix-ALS-To-Certification-Basis.csv": [
            "ALS_Document_ID",
            "Document_Title",
            "Document_Type",
            "Certification_Basis",
            "Source_Reports",
            "Approving_Authority",
            "Approval_Date",
            "Approval_Reference",
            "Related_ATA_Chapters",
            "AMM_Tasks",
            "Status"
        ],
        "schedule.csv": [
            "Tool_ID",
            "Description",
            "Calibration_Interval",
            "Last_Calibration",
            "Next_Due",
            "Status"
        ],
        "DATA_Part-Number-Cross-Reference-Table.csv": [
            "Primary_PN",
            "Alternate_PN",
            "Manufacturer",
            "Description",
            "Notes"
        ]
    }
    
    # Match by filename
    for pattern, headers in known_schemas.items():
        if pattern in filename:
            return headers
    
    return None


def main():
    parser = argparse.ArgumentParser(
        description='Check CSV file headers for compliance'
    )
    parser.add_argument(
        'csv_files',
        nargs='+',
        help='CSV file(s) to check'
    )
    parser.add_argument(
        '--headers',
        nargs='+',
        help='Expected header names (optional)'
    )
    
    args = parser.parse_args()
    
    all_errors = []
    checked_files = 0
    
    print("Checking CSV file headers...")
    print("-" * 80)
    
    for csv_file in args.csv_files:
        filepath = Path(csv_file)
        
        if not filepath.exists():
            print(f"\n✗ File not found: {csv_file}")
            all_errors.append(f"{csv_file}: File not found")
            continue
        
        if not filepath.is_file():
            print(f"\n✗ Not a file: {csv_file}")
            all_errors.append(f"{csv_file}: Not a file")
            continue
        
        # Get expected headers for this file
        expected_headers = args.headers or get_expected_headers_for_file(filepath.name)
        
        print(f"\nChecking: {filepath.name}")
        if expected_headers:
            print(f"  Expected headers: {len(expected_headers)}")
        
        success, errors = check_csv_headers(filepath, expected_headers)
        
        if success:
            print(f"  ✓ CSV headers valid")
            checked_files += 1
        else:
            print(f"  ✗ CSV header validation failed:")
            for error in errors:
                print(f"    - {error}")
            all_errors.extend([f"{filepath.name}: {e}" for e in errors])
    
    print("\n" + "=" * 80)
    print(f"\nValidation Results:")
    print(f"  Files checked: {len(args.csv_files)}")
    print(f"  Files valid: {checked_files}")
    print(f"  Files with errors: {len(args.csv_files) - checked_files}")
    
    if all_errors:
        print("\nErrors:")
        for error in all_errors:
            print(f"  ✗ {error}")
        print("\n✗ CSV header validation failed")
        sys.exit(1)
    else:
        print("\n✓ All CSV files have valid headers")
        sys.exit(0)


if __name__ == '__main__':
    main()
