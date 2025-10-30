# 09-SIDE-CAR_META

← [ATA_42 Core OS](../README.md) | [🏠 Repository Root](../../../../../README.md) | [📋 Navigation](../NAVIGATION.md)

---

## Overview

Metadata sidecar templates, schema definitions, and validation tools for document management and traceability in ATA 42 Core OS documentation.

## Purpose

Ensures all documents have proper metadata sidecars for:
- **Traceability** to requirements, tests, and related documents
- **Version Control** and revision history
- **Approval Tracking** with role-based signatures
- **Checksum Verification** (SHA-256) for integrity
- **Effectivity Tracking** for configuration management

## Structure

### 📁 templates/
Document metadata templates
- [`document.meta.yaml`](./templates/document.meta.yaml) - Standard document sidecar template with all required fields

### 📁 validators/
Metadata validation scripts
- [`validate-meta-consistency.py`](./validators/validate-meta-consistency.py) - Sidecar consistency checker

## Using Sidecars

### Creating a New Sidecar

1. Copy the template:
   ```bash
   cp 09-SIDE-CAR_META/templates/document.meta.yaml path/to/your-document.meta.yaml
   ```

2. Fill in required fields:
   - `document.title`, `document.id`, `document.type`
   - `document.url` (relative path from ATA_42 root)
   - `owner.role`, `owner.name`
   - `effectivity.msn`, `effectivity.scope`
   - `safety.criticality`, `safety.hazards`
   - `traceability` links with URLs
   - `integrity.checksum.algorithm: "sha256"`

3. Generate checksum:
   ```bash
   sha256sum your-document.ext
   ```
   Add the hash to `integrity.checksum.value`

4. Validate:
   ```bash
   ./09-SIDE-CAR_META/validators/validate-meta-consistency.py
   ```

### Field Requirements

#### Mandatory Fields
- `document` - Document metadata
- `owner` - Owner information
- `effectivity` - Applicability scope
- `safety` - Safety criticality and hazards
- `traceability` - Links to requirements, tests, procedures
- `integrity` - Checksum for verification
- `approvals` - Approval workflow

#### Traceability URLs
All traceability items should include:
- `req_id/doc_id/proc_id/test_id` - Unique identifier
- `url` - Relative path to referenced document
- `title` - Human-readable title

Example:
```yaml
traceability:
  requirements:
    - req_id: "REQ-ATA42-001"
      url: "./02-ARCHITECTURE_AND_SERVICES/REQUIREMENTS/DATA_SR-System-Requirements.csv#L42"
      title: "Partition isolation enforcement"
```

## Validation

Run the validator to check all sidecars:

```bash
# Validate all sidecars in ATA_42
./09-SIDE-CAR_META/validators/validate-meta-consistency.py

# Validate specific directory
./09-SIDE-CAR_META/validators/validate-meta-consistency.py ./02-ARCHITECTURE_AND_SERVICES
```

### Validation Checks

The validator performs:
- ✓ Required field presence
- ✓ Effective date not in future
- ✓ Checksum algorithm is SHA-256
- ✓ Safety criticality is valid DAL level
- ✓ Traceability items have URLs
- ✓ YAML syntax correctness

## Best Practices

1. **Create sidecars for all documents** - DESC, PROC, DATA, CALC, DIAGRAM files
2. **Keep URLs relative** - Use paths relative to ATA_42 root for portability
3. **Update checksums** - Regenerate when document changes
4. **Track approvals** - Update approval status and dates
5. **Link traceability** - Ensure all requirements, tests traced
6. **Validate before commit** - Run validator before pushing changes

## Document Types

- **DESC** - Descriptive documents (markdown)
- **PROC** - Procedures (markdown)
- **DATA** - Data files (CSV, JSON)
- **CALC** - Calculations (XLSX)
- **DIAGRAM** - Diagrams (SVG, PNG)

## Integration with CI

The sidecar validator is integrated into CI pipeline:
- Runs on every commit
- Fails build if errors found
- Warns on missing fields

---

## Navigation

- **Previous**: [← 08-NONCONFORMANCE_AND_DEVIATION](../08-NONCONFORMANCE_AND_DEVIATION/README.md)
- **Next**: [10-EXAMPLES_AND_RECORDS →](../10-EXAMPLES_AND_RECORDS/README.md)
- **Parent**: [← ATA_42 Core OS](../README.md)
- [🔝 Back to Top](#09-side-car-meta)

---

*Last Updated: 2025-10-30*  
*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
