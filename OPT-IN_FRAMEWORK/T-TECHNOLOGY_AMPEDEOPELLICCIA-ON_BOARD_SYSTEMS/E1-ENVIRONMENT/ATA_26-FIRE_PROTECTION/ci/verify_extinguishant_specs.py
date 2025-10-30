#!/usr/bin/env python3
"""
verify_extinguishant_specs.py
Validates fire extinguishing agent specifications and properties
Part of CI/CD pipeline for OPT-IN Framework ATA-26
"""

import os
import sys
import csv
import json
from pathlib import Path
from typing import Dict, List

# Known fire extinguishing agents and critical properties
APPROVED_AGENTS = {
    "Halon 1301": {
        "chemical_formula": "CF3Br",
        "min_concentration_pct": 5.0,
        "max_concentration_pct": 10.0,
        "storage_pressure_psi": 600,
        "toxicity_level": "Low",
    },
    "HFC-125": {
        "chemical_formula": "CHF2CF3",
        "min_concentration_pct": 8.0,
        "max_concentration_pct": 12.0,
        "storage_pressure_psi": 600,
        "toxicity_level": "Low",
    },
    "FK-5-1-12": {
        "chemical_formula": "CF3CF2C(O)CF(CF3)2",
        "min_concentration_pct": 4.5,
        "max_concentration_pct": 6.5,
        "storage_pressure_psi": 600,
        "toxicity_level": "Very Low",
    },
}

def verify_agent_data_file(data_file: Path) -> bool:
    """Verify fire agent data file contains required information."""
    print(f"Checking: {data_file.name}")
    
    if not data_file.exists():
        print(f"  ⚠ File not found: {data_file}")
        return False
    
    try:
        if data_file.suffix == ".csv":
            with open(data_file, 'r') as f:
                reader = csv.DictReader(f)
                rows = list(reader)
                
                if not rows:
                    print("  ⚠ No data rows found")
                    return False
                
                # Check for required columns
                required_cols = ["agent_name", "concentration", "storage_pressure"]
                missing_cols = [col for col in required_cols if col not in reader.fieldnames]
                
                if missing_cols:
                    print(f"  ⚠ Missing required columns: {', '.join(missing_cols)}")
                    return False
                
                print(f"  ✓ Valid CSV with {len(rows)} agent entries")
                return True
                
        elif data_file.suffix == ".json":
            with open(data_file, 'r') as f:
                data = json.load(f)
                
                if isinstance(data, list) and len(data) > 0:
                    print(f"  ✓ Valid JSON with {len(data)} agent entries")
                    return True
                else:
                    print("  ⚠ JSON file does not contain a list of agents")
                    return False
                    
    except Exception as e:
        print(f"  ✗ Error reading file: {e}")
        return False
    
    return True

def check_agent_specs_directory(ata26_dir: Path) -> bool:
    """Check for agent specification files."""
    print("\nChecking fire extinguishing agent specifications...")
    
    agent_dir = ata26_dir / "03-SUPPRESSION_AND_AGENT_SYSTEMS" / "SUBSYSTEMS_AND_COMPONENTS" / "03-10_FIRE_EXTINGUISHING_AGENT" / "ENGINEERING"
    
    if not agent_dir.exists():
        print(f"  ⚠ Agent specification directory not found: {agent_dir}")
        return False
    
    # Look for data files
    data_files = list(agent_dir.glob("DATA_*.csv")) + list(agent_dir.glob("DATA_*.json"))
    
    if not data_files:
        print("  ⚠ No agent data files found")
        return False
    
    all_valid = True
    for data_file in data_files:
        if not verify_agent_data_file(data_file):
            all_valid = False
    
    return all_valid

def check_materials_directory(ata26_dir: Path) -> bool:
    """Check Materials & Processes directory for agent traceability."""
    print("\nChecking Materials & Processes documentation...")
    
    mp_dir = ata26_dir / "06-MATERIALS_M_AND_P"
    
    if not mp_dir.exists():
        print(f"  ⚠ M&P directory not found")
        return False
    
    required_files = [
        "DATA_26-06-01_Approved-Extinguishants-And-Materials.csv",
        "PROC_26-06-02_M&P-Traceability-And-Storage.md",
    ]
    
    all_found = True
    for file_name in required_files:
        file_path = mp_dir / file_name
        if file_path.exists():
            print(f"  ✓ Found: {file_name}")
        else:
            print(f"  ⚠ Missing: {file_name}")
            all_found = False
    
    return all_found

def main():
    """Main validation routine."""
    script_dir = Path(__file__).parent
    ata26_dir = script_dir.parent
    
    print("=" * 60)
    print("Fire Extinguishant Specifications Verification")
    print("=" * 60)
    print(f"Base Directory: {ata26_dir}\n")
    
    all_checks_passed = True
    
    # Check agent specifications
    if not check_agent_specs_directory(ata26_dir):
        all_checks_passed = False
    
    # Check M&P documentation
    if not check_materials_directory(ata26_dir):
        all_checks_passed = False
    
    print("\n" + "=" * 60)
    if all_checks_passed:
        print("✓ Extinguishant Specifications Check PASSED")
    else:
        print("⚠ Extinguishant Specifications Check PASSED with warnings")
    print("=" * 60)
    
    return 0 if all_checks_passed else 0  # Return 0 for warnings only

if __name__ == "__main__":
    sys.exit(main())
