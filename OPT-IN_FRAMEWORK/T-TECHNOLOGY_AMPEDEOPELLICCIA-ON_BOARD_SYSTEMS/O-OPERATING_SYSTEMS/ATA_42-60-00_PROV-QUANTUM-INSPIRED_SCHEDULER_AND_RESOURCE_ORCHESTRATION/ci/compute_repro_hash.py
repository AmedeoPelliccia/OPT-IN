#!/usr/bin/env python3
"""
compute_repro_hash.py
Compute reproducibility hash for ATA 42-60-00 artifacts

This script ensures build and test reproducibility by computing
a cryptographic hash of all relevant input files and configurations.
"""

import hashlib
import json
import sys
from pathlib import Path
from typing import List, Dict, Any


def compute_file_hash(filepath: Path) -> str:
    """Compute SHA-256 hash of a file."""
    sha256 = hashlib.sha256()
    
    try:
        with open(filepath, 'rb') as f:
            for chunk in iter(lambda: f.read(4096), b''):
                sha256.update(chunk)
        return sha256.hexdigest()
    except Exception as e:
        print(f"Warning: Could not hash {filepath}: {e}", file=sys.stderr)
        return ""


def collect_relevant_files(root_dir: Path) -> List[Path]:
    """Collect all files relevant for reproducibility hash."""
    patterns = [
        "**/*.py",
        "**/*.sh",
        "**/*.json",
        "**/*.yaml",
        "**/*.md",
        "**/*.csv",
        "**/*.svg",
    ]
    
    exclude_dirs = {
        "10-ARTIFACTS_AND_LOGS",
        "__pycache__",
        ".git",
        "venv",
        ".venv",
    }
    
    files = []
    for pattern in patterns:
        for file_path in root_dir.glob(pattern):
            # Skip if in excluded directory
            if any(excl in file_path.parts for excl in exclude_dirs):
                continue
            
            if file_path.is_file():
                files.append(file_path)
    
    return sorted(files)  # Sort for deterministic order


def compute_reproducibility_hash(root_dir: Path) -> Dict[str, Any]:
    """Compute overall reproducibility hash."""
    files = collect_relevant_files(root_dir)
    
    file_hashes = {}
    for filepath in files:
        rel_path = filepath.relative_to(root_dir)
        file_hash = compute_file_hash(filepath)
        if file_hash:
            file_hashes[str(rel_path)] = file_hash
    
    # Compute combined hash
    combined = hashlib.sha256()
    for rel_path in sorted(file_hashes.keys()):
        combined.update(rel_path.encode('utf-8'))
        combined.update(file_hashes[rel_path].encode('utf-8'))
    
    result = {
        "reproducibility_hash": combined.hexdigest(),
        "file_count": len(file_hashes),
        "file_hashes": file_hashes,
        "timestamp": None,  # Intentionally excluded for reproducibility
    }
    
    return result


def main():
    """Main entry point."""
    script_dir = Path(__file__).parent
    root_dir = script_dir.parent
    
    print(f"Computing reproducibility hash for: {root_dir}")
    
    result = compute_reproducibility_hash(root_dir)
    
    # Save to artifacts
    artifacts_dir = root_dir / "10-ARTIFACTS_AND_LOGS" / "artifacts"
    artifacts_dir.mkdir(parents=True, exist_ok=True)
    
    output_file = artifacts_dir / "reproducibility_hash.json"
    with open(output_file, 'w') as f:
        json.dump(result, f, indent=2, sort_keys=True)
    
    print(f"✓ Reproducibility hash: {result['reproducibility_hash']}")
    print(f"✓ Files processed: {result['file_count']}")
    print(f"✓ Output saved to: {output_file}")
    
    return 0


if __name__ == "__main__":
    sys.exit(main())
