#!/usr/bin/env python3
"""
Manifest Helper Utilities
Functions for creating and validating manifest files
"""
import json
import yaml
from datetime import datetime
from pathlib import Path
from typing import Dict, List


class ManifestHelper:
    """Helper class for manifest operations"""
    
    @staticmethod
    def create_manifest(
        test_run_id: str,
        baseline: str,
        results: List[Dict],
        artifacts_dir: str,
        additional_metadata: Dict = None
    ) -> Dict:
        """
        Create a test run manifest
        
        Args:
            test_run_id: Unique test run identifier
            baseline: Software baseline/commit ID
            results: List of test results
            artifacts_dir: Path to artifacts directory
            additional_metadata: Additional metadata to include
            
        Returns:
            Dictionary containing manifest data
        """
        manifest = {
            'test_run_id': test_run_id,
            'baseline': baseline,
            'timestamp': datetime.now().isoformat(),
            'total_tests': len(results),
            'passed': sum(1 for r in results if r.get('status') == 'PASS'),
            'failed': sum(1 for r in results if r.get('status') == 'FAIL'),
            'results': results,
            'artifacts_dir': artifacts_dir,
            'metadata': additional_metadata or {}
        }
        
        return manifest
    
    @staticmethod
    def save_manifest(manifest: Dict, output_path: Path, format: str = 'json'):
        """
        Save manifest to file
        
        Args:
            manifest: Manifest dictionary
            output_path: Output file path
            format: Output format ('json' or 'yaml')
        """
        output_path.parent.mkdir(parents=True, exist_ok=True)
        
        if format == 'json':
            with open(output_path, 'w') as f:
                json.dump(manifest, f, indent=2)
        elif format == 'yaml':
            with open(output_path, 'w') as f:
                yaml.dump(manifest, f, default_flow_style=False)
        else:
            raise ValueError(f"Unsupported format: {format}")
    
    @staticmethod
    def load_manifest(manifest_path: Path) -> Dict:
        """
        Load manifest from file
        
        Args:
            manifest_path: Path to manifest file
            
        Returns:
            Manifest dictionary
        """
        if not manifest_path.exists():
            raise FileNotFoundError(f"Manifest not found: {manifest_path}")
        
        suffix = manifest_path.suffix.lower()
        
        if suffix == '.json':
            with open(manifest_path, 'r') as f:
                return json.load(f)
        elif suffix in ['.yaml', '.yml']:
            with open(manifest_path, 'r') as f:
                return yaml.safe_load(f)
        else:
            raise ValueError(f"Unsupported manifest format: {suffix}")
    
    @staticmethod
    def validate_manifest(manifest: Dict) -> bool:
        """
        Validate manifest structure
        
        Args:
            manifest: Manifest dictionary
            
        Returns:
            True if valid, False otherwise
        """
        required_fields = [
            'test_run_id',
            'baseline',
            'timestamp',
            'total_tests',
            'results'
        ]
        
        for field in required_fields:
            if field not in manifest:
                print(f"Missing required field: {field}")
                return False
        
        # Validate results structure
        for result in manifest.get('results', []):
            if 'test_id' not in result or 'status' not in result:
                print(f"Invalid result structure: {result}")
                return False
        
        return True
    
    @staticmethod
    def merge_manifests(manifests: List[Dict]) -> Dict:
        """
        Merge multiple manifests into one
        
        Args:
            manifests: List of manifest dictionaries
            
        Returns:
            Merged manifest
        """
        if not manifests:
            return {}
        
        merged = {
            'merged_run_id': f"merged-{datetime.now().strftime('%Y%m%d-%H%M%S')}",
            'timestamp': datetime.now().isoformat(),
            'source_manifests': [m.get('test_run_id', 'unknown') for m in manifests],
            'total_tests': sum(m.get('total_tests', 0) for m in manifests),
            'passed': sum(m.get('passed', 0) for m in manifests),
            'failed': sum(m.get('failed', 0) for m in manifests),
            'results': []
        }
        
        for manifest in manifests:
            merged['results'].extend(manifest.get('results', []))
        
        return merged


def main():
    """Example usage"""
    import sys
    
    if len(sys.argv) < 2:
        print("Usage: python manifest_helpers.py <manifest_file>")
        print("  Validates a manifest file")
        sys.exit(1)
    
    manifest_path = Path(sys.argv[1])
    
    try:
        helper = ManifestHelper()
        manifest = helper.load_manifest(manifest_path)
        
        print(f"Loaded manifest: {manifest_path}")
        print(f"  Test Run ID: {manifest.get('test_run_id')}")
        print(f"  Baseline: {manifest.get('baseline')}")
        print(f"  Total Tests: {manifest.get('total_tests')}")
        print(f"  Passed: {manifest.get('passed')}")
        print(f"  Failed: {manifest.get('failed')}")
        
        if helper.validate_manifest(manifest):
            print("✓ Manifest is valid")
            sys.exit(0)
        else:
            print("✗ Manifest validation failed")
            sys.exit(1)
            
    except Exception as e:
        print(f"Error: {e}")
        sys.exit(1)


if __name__ == '__main__':
    main()
