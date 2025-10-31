# 09-SIDE-CAR_META - Metadata and Validation

**Parent Chapter:** ATA 26 - Fire Protection  
**Section:** Metadata Templates, Schemas, and Validators

## Purpose

This section provides metadata templates (YAML sidecar files), JSON schemas, and validation scripts for ensuring document traceability, integrity, and compliance.

## Directory Structure

```
09-SIDE-CAR_META/
├── templates/          # Metadata templates for document sidecars
│   ├── document.meta.yaml
│   ├── procedure.meta.yaml
│   ├── data-file.meta.yaml
│   └── diagram.meta.yaml
├── schemas/            # JSON schema definitions (see ../schemas/)
│   └── (referenced from ../schemas/)
└── validators/         # Validation scripts
    ├── validate-meta-consistency.py
    ├── validate-traceability.py
    ├── validate-naming-conventions.py
    └── validate-required-fields.py
```

## Sidecar Metadata Files

Every document in ATA-26 must have an accompanying `.meta.yaml` sidecar file containing:

### Required Fields
- `document_id` - Unique document identifier
- `title` - Document title
- `ata_chapter` - ATA chapter reference (e.g., "26-02-01")
- `document_type` - Type (DESC, PROC, DATA, DIAG, CALC, etc.)
- `revision` - Document revision (semantic versioning)
- `effective_date` - Date when document becomes effective
- `status` - Document status (Draft, In Review, Released, Superseded)

### Traceability Fields
- `author` - Document author(s)
- `owner_role` - Responsible engineering discipline
- `review_board` - Required reviewers
- `approvals` - Approval signatures and dates
- `supersedes` - Previous document version
- `related_documents` - Cross-references to related docs
- `regulatory_basis` - Applicable regulations

### Integrity Fields
- `checksum` - SHA-256 checksum of document
- `algorithm` - Checksum algorithm (sha256)
- `last_modified` - Timestamp of last modification

## Validation Scripts

### validate-meta-consistency.py
Validates that:
- All documents have sidecars
- Required fields are present
- Effective dates are valid (≤ today)
- Revision numbers follow semantic versioning
- Cross-references point to existing documents

### validate-traceability.py
Validates that:
- All documents link to requirements
- Regulatory basis is documented
- Approval chain is complete
- Change history is maintained

### validate-naming-conventions.py
Validates that:
- Document names follow the standard pattern
- File extensions match document type
- Versioning in filenames matches sidecar
- No duplicate document IDs

### validate-required-fields.py
Validates that:
- All mandatory sidecar fields are present
- Field values meet format requirements
- Enumerated fields use valid values
- Dates are in ISO 8601 format

## Usage

### Creating a Sidecar File

```bash
cp 09-SIDE-CAR_META/templates/procedure.meta.yaml \
   PROC_26-XX-XX_My-Procedure.md.meta.yaml
# Edit the sidecar file with document-specific information
```

### Running Validation

```bash
# Validate all sidecars
./ci/validate_ata26.sh

# Validate specific aspects
python3 09-SIDE-CAR_META/validators/validate-meta-consistency.py
python3 09-SIDE-CAR_META/validators/validate-traceability.py
```

## Sidecar Template Examples

See template files in `templates/` directory:
- `document.meta.yaml` - Generic document template
- `procedure.meta.yaml` - Maintenance/test procedure template
- `data-file.meta.yaml` - CSV/JSON data file template
- `diagram.meta.yaml` - Drawing/diagram template

## Standards

- **ISO 8601** - Date and time format
- **Semantic Versioning 2.0.0** - Version numbering
- **YAML 1.2** - Sidecar file format
- **SHA-256** - Cryptographic hash function

## Navigation

[↑ ATA 26 Fire Protection](../00_README.md) | [INDEX](../INDEX.meta.yaml)
