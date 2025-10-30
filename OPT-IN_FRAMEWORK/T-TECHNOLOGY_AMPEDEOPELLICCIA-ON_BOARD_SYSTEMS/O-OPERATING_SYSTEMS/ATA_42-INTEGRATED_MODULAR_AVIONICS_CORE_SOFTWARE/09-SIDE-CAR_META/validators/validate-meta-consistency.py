#!/usr/bin/env python3
"""
ATA 42 Core OS Sidecar Metadata Consistency Validator
Validates document.meta.yaml sidecars for consistency and completeness
"""
import sys
import yaml
from pathlib import Path
from datetime import datetime

def validate_sidecar(sidecar_path):
    """Validate a single sidecar file"""
    errors = []
    warnings = []
    
    try:
        with open(sidecar_path, 'r') as f:
            meta = yaml.safe_load(f)
    except Exception as e:
        return [f"Failed to parse YAML: {e}"], []
    
    # Check required fields
    required_fields = ['document', 'owner', 'effectivity', 'safety', 'traceability', 'integrity', 'approvals']
    for field in required_fields:
        if field not in meta:
            errors.append(f"Missing required field: {field}")
    
    # Validate document section
    if 'document' in meta:
        doc = meta['document']
        if 'effective_date' in doc:
            try:
                eff_date = datetime.fromisoformat(doc['effective_date'])
                if eff_date > datetime.now():
                    warnings.append(f"Effective date {doc['effective_date']} is in the future")
            except:
                errors.append("Invalid effective_date format (use YYYY-MM-DD)")
        
        if 'url' not in doc:
            warnings.append("Missing 'url' field in document section")
    
    # Validate integrity section
    if 'integrity' in meta:
        integ = meta['integrity']
        if 'checksum' in integ:
            if integ['checksum'].get('algorithm') != 'sha256':
                errors.append("Checksum algorithm must be 'sha256'")
            if not integ['checksum'].get('value'):
                warnings.append("Checksum value is empty")
    
    # Validate safety criticality
    if 'safety' in meta:
        crit = meta['safety'].get('criticality', '')
        valid_dal = ['DAL A', 'DAL B', 'DAL C', 'DAL D', 'DAL E', 'Non-safety']
        if crit and crit not in valid_dal:
            errors.append(f"Invalid criticality '{crit}', must be one of: {valid_dal}")
    
    # Validate traceability URLs
    if 'traceability' in meta:
        trace = meta['traceability']
        for key in ['requirements', 'source_documents', 'related_procedures', 'test_cases']:
            if key in trace:
                for item in trace[key]:
                    if isinstance(item, dict) and 'url' not in item:
                        warnings.append(f"Missing 'url' in traceability.{key} item")
    
    return errors, warnings

def scan_directory(base_path):
    """Scan directory for .meta.yaml files and validate them"""
    base = Path(base_path)
    sidecar_files = list(base.rglob('*.meta.yaml'))
    
    print(f"=== Sidecar Metadata Validation ===")
    print(f"Base path: {base}")
    print(f"Found {len(sidecar_files)} sidecar files\n")
    
    total_errors = 0
    total_warnings = 0
    
    for sidecar in sorted(sidecar_files):
        errors, warnings = validate_sidecar(sidecar)
        
        if errors or warnings:
            rel_path = sidecar.relative_to(base)
            print(f"\n📄 {rel_path}")
            
            if errors:
                print(f"  ❌ Errors ({len(errors)}):")
                for err in errors:
                    print(f"    - {err}")
                total_errors += len(errors)
            
            if warnings:
                print(f"  ⚠️  Warnings ({len(warnings)}):")
                for warn in warnings:
                    print(f"    - {warn}")
                total_warnings += len(warnings)
    
    print(f"\n=== Summary ===")
    print(f"Total files checked: {len(sidecar_files)}")
    print(f"Total errors: {total_errors}")
    print(f"Total warnings: {total_warnings}")
    
    if total_errors > 0:
        print("\n❌ Validation FAILED - fix errors before committing")
        return 1
    elif total_warnings > 0:
        print("\n⚠️  Validation passed with warnings - review recommended")
        return 0
    else:
        print("\n✓ Validation PASSED - all sidecars are valid")
        return 0

def main():
    if len(sys.argv) > 1:
        base_path = sys.argv[1]
    else:
        base_path = Path(__file__).parent.parent
    
    sys.exit(scan_directory(base_path))

if __name__ == '__main__':
    main()
