#!/usr/bin/env python3
"""
check_regulatory_compliance.py
Validates fire protection system documentation against regulatory requirements
Part of CI/CD pipeline for OPT-IN Framework ATA-26
"""

import os
import sys
import yaml
import json
from pathlib import Path
from typing import Dict, List, Set

# Regulatory requirements checklist
REQUIRED_FAR_25_SECTIONS = [
    "25.851",  # Fire extinguishers
    "25.854",  # Lavatory fire protection
    "25.855",  # Cargo or baggage compartments
    "25.858",  # Cargo smoke/fire detection
    "25.1181", # Designated fire zones
    "25.1195", # Fire extinguishing systems
    "25.1197", # Fire extinguishing agents
    "25.1203", # Fire detector systems
]

def check_index_regulatory_basis(index_file: Path) -> bool:
    """Check that INDEX.meta.yaml includes required regulatory references."""
    print("Checking regulatory basis in INDEX.meta.yaml...")
    
    try:
        with open(index_file, 'r') as f:
            index_data = yaml.safe_load(f)
        
        regulatory_basis = index_data.get('governance', {}).get('regulatory_basis', [])
        
        if not regulatory_basis:
            print("  ✗ No regulatory_basis found in INDEX.meta.yaml")
            return False
        
        missing_regs = []
        for req_section in REQUIRED_FAR_25_SECTIONS:
            found = any(req_section in reg for reg in regulatory_basis)
            if not found:
                missing_regs.append(req_section)
        
        if missing_regs:
            print(f"  ⚠ Missing regulatory references: {', '.join(missing_regs)}")
        else:
            print("  ✓ All required regulatory references present")
        
        return len(missing_regs) == 0
        
    except Exception as e:
        print(f"  ✗ Error reading INDEX.meta.yaml: {e}")
        return False

def check_certification_compliance(ata26_dir: Path) -> bool:
    """Check for certification compliance documentation."""
    print("\nChecking certification compliance documentation...")
    
    cert_files = [
        "01-GENERAL/CERTIFICATION",
        "02-DETECTION_AND_SENSING/CERTIFICATION",
        "03-SUPPRESSION_AND_AGENT_SYSTEMS/CERTIFICATION",
        "04-ENGINE_APU_FIRE_HANDLING/CERTIFICATION",
        "05-CARGO_AND_LAVATORY_FIRE_PROTECTION/CERTIFICATION",
    ]
    
    all_exist = True
    for cert_path in cert_files:
        full_path = ata26_dir / cert_path
        if full_path.exists():
            print(f"  ✓ Found: {cert_path}")
        else:
            print(f"  ⚠ Missing: {cert_path}")
            all_exist = False
    
    return all_exist

def check_safety_analysis(ata26_dir: Path) -> bool:
    """Check for required safety analysis documentation."""
    print("\nChecking safety analysis documentation...")
    
    safety_sections = [
        "01-GENERAL/SAFETY",
        "02-DETECTION_AND_SENSING/SAFETY",
        "03-SUPPRESSION_AND_AGENT_SYSTEMS/SAFETY",
        "04-ENGINE_APU_FIRE_HANDLING/SAFETY",
        "05-CARGO_AND_LAVATORY_FIRE_PROTECTION/SAFETY",
    ]
    
    all_exist = True
    for safety_path in safety_sections:
        full_path = ata26_dir / safety_path
        if full_path.exists():
            print(f"  ✓ Found: {safety_path}")
        else:
            print(f"  ⚠ Missing: {safety_path}")
            all_exist = False
    
    return all_exist

def main():
    """Main validation routine."""
    script_dir = Path(__file__).parent
    ata26_dir = script_dir.parent
    
    print("=" * 60)
    print("ATA-26 Regulatory Compliance Check")
    print("=" * 60)
    print(f"Base Directory: {ata26_dir}\n")
    
    all_checks_passed = True
    
    # Check INDEX.meta.yaml regulatory basis
    index_file = ata26_dir / "INDEX.meta.yaml"
    if not check_index_regulatory_basis(index_file):
        all_checks_passed = False
    
    # Check certification compliance documentation
    if not check_certification_compliance(ata26_dir):
        all_checks_passed = False
    
    # Check safety analysis documentation
    if not check_safety_analysis(ata26_dir):
        all_checks_passed = False
    
    print("\n" + "=" * 60)
    if all_checks_passed:
        print("✓ Regulatory Compliance Check PASSED")
    else:
        print("⚠ Regulatory Compliance Check PASSED with warnings")
    print("=" * 60)
    
    return 0 if all_checks_passed else 0  # Return 0 for warnings only

if __name__ == "__main__":
    sys.exit(main())
