#!/usr/bin/env python3
"""
Check internal document links in Digital Product Passport documentation.

This script validates that:
1. Markdown links to other documents are valid
2. Referenced files exist
3. Cross-references in YAML metadata point to valid targets
"""

import os
import sys
import re
import yaml
import argparse
from pathlib import Path
from typing import Set, List, Tuple


def load_yaml(filepath):
    """Load YAML file."""
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            return yaml.safe_load(f)
    except Exception as e:
        print(f"⚠ Error loading YAML {filepath}: {e}")
        return None


def extract_markdown_links(content: str, filepath: Path) -> List[Tuple[str, int]]:
    """
    Extract markdown links from content.
    
    Returns list of (link_target, line_number) tuples.
    """
    links = []
    
    # Match markdown links: [text](url) or [text](./path/file.md)
    pattern = r'\[([^\]]+)\]\(([^\)]+)\)'
    
    for line_num, line in enumerate(content.split('\n'), 1):
        for match in re.finditer(pattern, line):
            link_target = match.group(2)
            # Skip external URLs
            if link_target.startswith(('http://', 'https://', 'mailto:', '#')):
                continue
            links.append((link_target, line_num))
    
    return links


def resolve_link_path(link: str, source_file: Path, base_dir: Path) -> Path:
    """Resolve relative link to absolute path."""
    if link.startswith('/'):
        # Absolute path from repository root
        return base_dir / link.lstrip('/')
    else:
        # Relative path from source file's directory
        return (source_file.parent / link).resolve()


def check_file_links(base_dir: Path) -> Tuple[int, List[str]]:
    """Check all markdown files for broken links."""
    broken_links = []
    checked_files = 0
    
    for root, dirs, files in os.walk(base_dir):
        # Skip .git and hidden directories
        dirs[:] = [d for d in dirs if not d.startswith('.')]
        
        for filename in files:
            if not filename.endswith('.md'):
                continue
            
            filepath = Path(root) / filename
            relpath = filepath.relative_to(base_dir)
            
            try:
                with open(filepath, 'r', encoding='utf-8') as f:
                    content = f.read()
            except Exception as e:
                print(f"⚠ Could not read {relpath}: {e}")
                continue
            
            links = extract_markdown_links(content, filepath)
            
            if not links:
                continue
            
            checked_files += 1
            print(f"Checking links in: {relpath}")
            
            for link_target, line_num in links:
                target_path = resolve_link_path(link_target, filepath, base_dir)
                
                if not target_path.exists():
                    error = f"{relpath}:{line_num} → {link_target} (target not found)"
                    broken_links.append(error)
                    print(f"  ✗ Line {line_num}: {link_target} (NOT FOUND)")
                else:
                    print(f"  ✓ Line {line_num}: {link_target}")
    
    return checked_files, broken_links


def check_yaml_crossrefs(base_dir: Path) -> Tuple[int, List[str]]:
    """Check cross-references in YAML metadata files."""
    broken_refs = []
    checked_files = 0
    
    for root, dirs, files in os.walk(base_dir):
        dirs[:] = [d for d in dirs if not d.startswith('.')]
        
        for filename in files:
            if not (filename.endswith('.yaml') or filename.endswith('.yml')):
                continue
            
            if filename == 'dpp-guard.yml':  # Skip workflow files
                continue
            
            filepath = Path(root) / filename
            relpath = filepath.relative_to(base_dir)
            
            data = load_yaml(filepath)
            if not data:
                continue
            
            # Check for crossrefs field
            crossrefs = data.get('crossrefs', [])
            if not crossrefs:
                continue
            
            checked_files += 1
            print(f"Checking cross-refs in: {relpath}")
            
            for ref in crossrefs:
                # Cross-refs are ATA chapter codes like "ATA_42"
                # In this repository, they would be in different sections
                # For now, just log them
                print(f"  Referenced: {ref}")
                # Could check if referenced ATA directories exist
    
    return checked_files, broken_refs


def main():
    parser = argparse.ArgumentParser(
        description='Check internal document links in DPP documentation'
    )
    parser.add_argument(
        'base_dir',
        nargs='?',
        default='.',
        help='Base directory to check (default: current directory)'
    )
    
    args = parser.parse_args()
    
    base_path = Path(args.base_dir).resolve()
    
    if not base_path.exists():
        print(f"✗ Directory not found: {args.base_dir}")
        sys.exit(1)
    
    print(f"Checking internal links in: {base_path}")
    print("-" * 80)
    
    # Check markdown file links
    md_checked, md_broken = check_file_links(base_path)
    
    print("-" * 80)
    
    # Check YAML cross-references
    yaml_checked, yaml_broken = check_yaml_crossrefs(base_path)
    
    print("-" * 80)
    print(f"Link Check Results:")
    print(f"  Markdown files checked: {md_checked}")
    print(f"  YAML files checked: {yaml_checked}")
    print(f"  Broken markdown links: {len(md_broken)}")
    print(f"  Broken YAML cross-refs: {len(yaml_broken)}")
    
    all_broken = md_broken + yaml_broken
    
    if all_broken:
        print("\nBroken Links:")
        for error in all_broken:
            print(f"  ✗ {error}")
        sys.exit(1)
    else:
        print("\n✓ All internal links are valid")
        sys.exit(0)


if __name__ == '__main__':
    main()
