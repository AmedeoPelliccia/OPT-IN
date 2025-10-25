# Subject Folder Renaming Summary

## Overview
This document summarizes the renaming of subject folders within `ATA_02-OPERATIONS_INFORMATION` to follow the standardized naming pattern: `NN-<UPPER_SNAKE_CASE_NAME>`.

## Naming Convention
All subject folders now follow the pattern: `^\d{2}-[A-Z0-9_]+$`
- `NN`: Two-digit sequential number (starting at `01` per section)
- `UPPER_SNAKE_CASE_NAME`: Folder name in uppercase with underscores replacing hyphens
  - Original hyphens in names (e.g., `NON-NORMAL_PROCEDURES`) are converted to underscores
  - The prefix uses a hyphen separator: `NN-NAME`

## Total Changes
- **7 folders renamed** across 4 sections
- **0 files lost** (all content preserved)
- **All `.meta.yaml` sidecars preserved**

## Affected Sections

### 01-FCOM-Flight_Crew_Operating_Manual (3 renames)
1. `LIMITATIONS` → `01-LIMITATIONS`
2. `NON-NORMAL_PROCEDURES` → `03-NON_NORMAL_PROCEDURES`
3. `SYSTEM_DESCRIPTIONS` → `04-SYSTEM_DESCRIPTIONS`

*Note: Number `02` reserved for future `NORMAL_PROCEDURES` folder*

### 02-QRH-Quick_Reference_Handbook (1 rename)
1. `source_data` → `01-SOURCE_DATA`

### 03-FPERF-Performance (1 rename)
1. `data_packages` → `01-DATA_PACKAGES`

### 04-WBM-Weight_and_Balance (1 rename)
1. `data` → `01-DATA`

### 06-GROUND_OPS-Ground_Operations_Manual (1 rename)
1. `01-Refueling_and_Offload` → `01-REFUELING_AND_OFFLOAD`

## Documentation Updates
- ✓ `00_README.md` - All hyperlinks updated to reflect new folder names
- ✓ Section headings updated with numeric prefixes

## Deliverables
1. **RENAME_TABLE.md** - Markdown table of old→new paths per section
2. **RENAME_OPERATIONS.json** - JSON array of rename operations
3. **This file** (RENAME_SUMMARY.md) - Human-readable summary

## Validation Results
- ✓ All 7 directories match required pattern `^\d{2}-[A-Z0-9_]+$`
- ✓ 42 valid hyperlinks in `00_README.md`
- ✓ 1 pre-existing broken link (NORMAL_PROCEDURES - not created by this change)
- ✓ Directory count unchanged (7 subject folders before and after)

## Git Commit Details
- All renames detected as 100% similarity renames by Git
- No file content modified
- Only path changes and documentation updates

---
*Generated as part of the OPT-IN Framework standardization effort*
