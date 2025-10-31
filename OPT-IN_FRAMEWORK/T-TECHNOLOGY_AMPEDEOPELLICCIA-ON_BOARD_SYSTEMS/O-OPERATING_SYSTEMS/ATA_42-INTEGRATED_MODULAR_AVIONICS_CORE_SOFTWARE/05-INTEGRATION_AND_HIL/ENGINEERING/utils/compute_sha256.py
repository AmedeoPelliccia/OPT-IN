#!/usr/bin/env python3
"""
SHA-256 Checksum Utility
Computes SHA-256 checksums for all files in a directory
"""
import argparse
import hashlib
import os
import sys
from pathlib import Path


def compute_sha256(file_path):
    """Compute SHA-256 hash of a file"""
    sha256_hash = hashlib.sha256()
    
    try:
        with open(file_path, "rb") as f:
            # Read file in chunks to handle large files
            for byte_block in iter(lambda: f.read(4096), b""):
                sha256_hash.update(byte_block)
        return sha256_hash.hexdigest()
    except Exception as e:
        print(f"Error computing hash for {file_path}: {e}", file=sys.stderr)
        return None


def process_directory(directory):
    """Process all files in directory and compute checksums"""
    dir_path = Path(directory)
    
    if not dir_path.exists():
        print(f"Error: Directory not found: {directory}", file=sys.stderr)
        return 1
    
    files_processed = 0
    
    # Walk through directory
    for root, dirs, files in os.walk(dir_path):
        # Skip hidden directories
        dirs[:] = [d for d in dirs if not d.startswith('.')]
        
        for file in sorted(files):
            # Skip checksums file itself and hidden files
            if file.startswith('.') or file == 'checksums.txt':
                continue
            
            file_path = Path(root) / file
            rel_path = file_path.relative_to(dir_path)
            
            checksum = compute_sha256(file_path)
            if checksum:
                print(f"{checksum}  {rel_path}")
                files_processed += 1
    
    print(f"# Total files processed: {files_processed}", file=sys.stderr)
    return 0


def main():
    parser = argparse.ArgumentParser(
        description='Compute SHA-256 checksums for files in a directory'
    )
    parser.add_argument(
        'directory',
        help='Directory to process'
    )
    parser.add_argument(
        '--verify',
        help='Verify checksums against a checksum file',
        action='store_true'
    )
    
    args = parser.parse_args()
    
    if args.verify:
        print("Verification mode not yet implemented", file=sys.stderr)
        return 1
    
    return process_directory(args.directory)


if __name__ == '__main__':
    sys.exit(main())
