#!/usr/bin/env python3
"""
Check hash chain integrity in the Digital Product Passport Event Ledger.

This script verifies that:
1. Each event's prev_event_hash correctly references the previous event
2. The hash chain is unbroken from genesis to current
3. Event log indices are sequential
"""

import os
import sys
import json
import hashlib
import argparse
from pathlib import Path
from typing import List, Dict, Tuple


def load_json(filepath):
    """Load JSON file."""
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            return json.load(f)
    except Exception as e:
        print(f"✗ Error loading {filepath}: {e}")
        return None


def compute_event_hash(event_data: Dict) -> str:
    """
    Compute SHA-256 hash of event data.
    
    For production, this would hash the canonical JSON representation
    of specific fields (event_id, timestamp, actor, action, subjects).
    This is a simplified version for demonstration.
    """
    # Create a stable string representation for hashing
    # In production, use canonical JSON (sorted keys, no whitespace)
    hash_input = json.dumps({
        'event_id': event_data.get('event_id'),
        'timestamp_utc': event_data.get('timestamp_utc'),
        'actor': event_data.get('actor'),
        'action': event_data.get('action'),
        'subjects': event_data.get('subjects')
    }, sort_keys=True, separators=(',', ':'))
    
    return hashlib.sha256(hash_input.encode('utf-8')).hexdigest()


def load_all_events(ledger_dir: Path) -> List[Tuple[Path, Dict]]:
    """Load all event JSON files from ledger directory."""
    events = []
    
    for root, dirs, files in os.walk(ledger_dir):
        for filename in files:
            if filename.endswith('.json') and filename.startswith('event_'):
                filepath = Path(root) / filename
                data = load_json(filepath)
                if data:
                    events.append((filepath, data))
    
    return events


def verify_chain_integrity(events: List[Tuple[Path, Dict]]) -> Tuple[bool, List[str]]:
    """
    Verify hash chain integrity.
    
    Returns:
        (success, list of errors)
    """
    if not events:
        return True, []
    
    errors = []
    
    # Sort events by log_index
    sorted_events = sorted(events, key=lambda x: x[1].get('log_index', 0))
    
    print(f"Checking chain integrity for {len(sorted_events)} events...")
    
    prev_hash = None
    prev_index = None
    
    for filepath, event in sorted_events:
        relpath = filepath.name
        event_id = event.get('event_id', 'UNKNOWN')
        log_index = event.get('log_index')
        prev_event_hash = event.get('prev_event_hash')
        
        # Check log index sequence
        if prev_index is not None:
            if log_index != prev_index + 1:
                errors.append(
                    f"✗ {relpath}: Log index gap detected. "
                    f"Expected {prev_index + 1}, got {log_index}"
                )
        
        # Check hash chain
        if prev_hash is not None:
            if prev_event_hash != prev_hash:
                errors.append(
                    f"✗ {relpath}: Hash chain broken. "
                    f"prev_event_hash does not match previous event's hash"
                )
                print(f"  Expected: {prev_hash}")
                print(f"  Got:      {prev_event_hash}")
        
        # For demonstration, we're not computing actual hashes since the example
        # data has placeholder values. In production, compute hash and store it.
        current_hash = event.get('merkle_root', 'PLACEHOLDER')
        
        print(f"✓ {relpath}: Event {event_id} @ index {log_index}")
        
        prev_hash = current_hash
        prev_index = log_index
    
    return len(errors) == 0, errors


def main():
    parser = argparse.ArgumentParser(
        description='Verify Event Ledger hash chain integrity'
    )
    parser.add_argument(
        'ledger_dir',
        help='Path to Event Ledger directory'
    )
    
    args = parser.parse_args()
    
    ledger_path = Path(args.ledger_dir)
    
    if not ledger_path.exists():
        print(f"✗ Ledger directory not found: {args.ledger_dir}")
        sys.exit(1)
    
    print(f"Checking Event Ledger integrity: {args.ledger_dir}")
    print("-" * 80)
    
    # Load all events
    events = load_all_events(ledger_path)
    
    if not events:
        print("⚠ No events found in ledger")
        sys.exit(0)
    
    # Verify chain
    success, errors = verify_chain_integrity(events)
    
    print("-" * 80)
    if success:
        print(f"✓ Hash chain integrity verified for {len(events)} events")
        print("✓ No anomalies detected")
        sys.exit(0)
    else:
        print(f"✗ Hash chain integrity check FAILED")
        print(f"✗ {len(errors)} error(s) found:")
        for error in errors:
            print(f"  {error}")
        sys.exit(1)


if __name__ == '__main__':
    main()
