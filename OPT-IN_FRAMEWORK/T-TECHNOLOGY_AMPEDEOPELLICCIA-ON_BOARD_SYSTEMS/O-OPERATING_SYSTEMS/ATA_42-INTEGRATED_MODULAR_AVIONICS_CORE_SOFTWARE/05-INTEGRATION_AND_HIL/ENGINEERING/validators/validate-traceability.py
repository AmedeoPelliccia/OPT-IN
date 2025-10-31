#!/usr/bin/env python3
"""
Traceability Validator
Validates requirement traceability from requirements to tests
"""
import argparse
import csv
import json
import sys
from pathlib import Path


def validate_traceability(eng_dir):
    """
    Validate requirement traceability
    Checks that all requirements are covered by tests
    """
    eng_path = Path(eng_dir)
    errors = []
    warnings = []
    
    print("=== Traceability Validation ===")
    print(f"Directory: {eng_path}")
    print()
    
    # Load requirements from META.json
    meta_json = eng_path / "META.json"
    requirements = []
    
    if meta_json.exists():
        try:
            with open(meta_json, 'r') as f:
                meta = json.load(f)
            
            if 'traceability' in meta and 'requirements' in meta['traceability']:
                requirements = meta['traceability']['requirements']
                print(f"Found {len(requirements)} requirements in META.json:")
                for req in requirements:
                    print(f"  - {req}")
            else:
                warnings.append("No requirements found in META.json traceability section")
                
        except Exception as e:
            errors.append(f"Failed to load META.json: {e}")
    else:
        errors.append("META.json not found")
    
    print()
    
    # Load test matrix
    test_matrix_file = eng_path / "DATA_42-05-02_HIL-Test-Matrix.csv"
    tests = []
    
    if test_matrix_file.exists():
        try:
            with open(test_matrix_file, 'r') as f:
                reader = csv.DictReader(f)
                tests = list(reader)
            print(f"Found {len(tests)} tests in test matrix:")
            for test in tests:
                print(f"  - {test.get('Test_ID')}: {test.get('Test_Name')}")
        except Exception as e:
            errors.append(f"Failed to load test matrix: {e}")
    else:
        errors.append("Test matrix not found")
    
    print()
    
    # Analyze coverage
    print("=== Traceability Analysis ===")
    
    # Simple heuristic: check if we have tests for major requirement categories
    requirement_categories = {
        'REQ-OS-001': ['HIL-001'],  # Boot test
        'REQ-OS-002': ['HIL-002', 'HIL-006', 'HIL-007'],  # Partition tests
        'REQ-OS-003': ['HIL-005'],  # Security test
        'REQ-OS-004': ['HIL-003', 'HIL-004'],  # IPC tests
    }
    
    test_ids = [t.get('Test_ID') for t in tests]
    
    for req, expected_tests in requirement_categories.items():
        covered_tests = [t for t in expected_tests if t in test_ids]
        if covered_tests:
            print(f"✓ {req}: Covered by {', '.join(covered_tests)}")
        else:
            missing = [t for t in expected_tests if t not in test_ids]
            errors.append(f"{req}: Missing tests {', '.join(missing)}")
            print(f"✗ {req}: Not covered (expected: {', '.join(expected_tests)})")
    
    print()
    
    # Check for orphaned tests (tests not linked to requirements)
    all_linked_tests = set()
    for tests_list in requirement_categories.values():
        all_linked_tests.update(tests_list)
    
    orphaned_tests = [t for t in test_ids if t not in all_linked_tests]
    if orphaned_tests:
        warnings.append(f"Found {len(orphaned_tests)} tests without requirement links")
        print(f"⚠ Tests without explicit requirement links: {', '.join(orphaned_tests)}")
    
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
    
    # Calculate coverage
    total_reqs = len(requirement_categories)
    covered_reqs = sum(1 for req, tests in requirement_categories.items() 
                      if any(t in test_ids for t in tests))
    coverage = (covered_reqs / total_reqs * 100) if total_reqs > 0 else 0
    
    print()
    print(f"Requirement Coverage: {covered_reqs}/{total_reqs} ({coverage:.1f}%)")
    
    return 0 if not errors else 1


def main():
    parser = argparse.ArgumentParser(
        description='Validate requirement traceability'
    )
    parser.add_argument(
        '--dir',
        default='.',
        help='Engineering directory to validate (default: current directory)'
    )
    
    args = parser.parse_args()
    
    exit_code = validate_traceability(args.dir)
    sys.exit(exit_code)


if __name__ == '__main__':
    main()
