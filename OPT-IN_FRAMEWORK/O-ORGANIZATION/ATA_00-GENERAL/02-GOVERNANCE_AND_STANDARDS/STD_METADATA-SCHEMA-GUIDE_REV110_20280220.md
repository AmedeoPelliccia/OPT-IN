# Metadata Schema Guide

**Revision:** 1.1.0  
**Effective Date:** 2025-10-27  
**Document ID:** STD_Metadata-Schema-Guide

---

## 1.0 Purpose

This document defines the rules for `.meta.yaml` composition and validation within the AMPEL360 OPT-IN framework. It ensures consistent metadata across all technical artifacts.

---

## 2.0 Schema Version

**Current Version:** 1.1

All metadata files must declare the schema version:

```yaml
schema_version: "1.1"
```

---

## 3.0 Required Fields

### 3.1 Document Identification

```yaml
id: "<unique-document-id>"
document:
  type: "<document-type>"
  title: "<document-title>"
  revision: "<MAJOR.MINOR.PATCH>"
  effective_date: "<YYYY-MM-DD>"
  subject: "<brief-description>"
  ata_chapter: "<ATA-chapter>"
  category: "<document-category>"
```

**Field Descriptions:**

| Field | Type | Description | Example |
| :--- | :--- | :--- | :--- |
| `id` | string | Unique identifier, matches filename prefix | `DOC_Fuel-Cell-Architecture` |
| `type` | string | Document type prefix | `DOC`, `GOV`, `STD`, `POLICY` |
| `title` | string | Full document title | `Fuel Cell Architecture Specification` |
| `revision` | string | Semantic version | `2.1.0` |
| `effective_date` | string | ISO 8601 date | `2025-10-27` |
| `subject` | string | Brief description | `Hydrogen fuel cell system design` |
| `ata_chapter` | string | ATA chapter number | `28` |
| `category` | string | Subdirectory or category | `Fuel Systems` |

### 3.2 Effectivity

```yaml
effectivity:
  scope: "<scope-description>"
  aircraft_types:
    - "<type-1>"
    - "<type-2>"
  aircraft_msn:
    from: "<MSN-start>"
    to: "<MSN-end>"
  applicability:
    - "<role-1>"
    - "<role-2>"
```

**Field Descriptions:**

| Field | Type | Description | Example |
| :--- | :--- | :--- | :--- |
| `scope` | string | Effectivity scope | `Program-Wide`, `MSN Range` |
| `aircraft_types` | array | Applicable aircraft types | `["AMPEL360 BWB"]` |
| `aircraft_msn` | object | MSN range (optional) | `{from: "AMP360-001", to: "AMP360-050"}` |
| `applicability` | array | Target audience/roles | `["Flight Crew", "Maintenance"]` |

### 3.3 Approvals

```yaml
approvals:
  - authority: "<approving-authority>"
    status: "<status>"
    date: "<YYYY-MM-DD>"
  - authority: "<second-authority>"
    status: "<status>"
    date: "<YYYY-MM-DD>"
```

**Status Values:**
- `Draft` - Under development
- `Review` - Submitted for review
- `Approved` - Approved but not released
- `Released` - Active and effective
- `Superseded` - Replaced by newer version
- `Obsolete` - No longer applicable

### 3.4 Integrity

```yaml
integrity:
  checksum:
    algorithm: "sha256"
    value: "<sha256-hash-value>"
```

**Checksum Calculation:**
```bash
sha256sum <filename> | awk '{print $1}'
```

### 3.5 Revision History

```yaml
revision_history:
  - version: "<version>"
    date: "<YYYY-MM-DD>"
    changes: "<description>"
    author: "<author-name>"
  - version: "<previous-version>"
    date: "<YYYY-MM-DD>"
    changes: "<description>"
    author: "<author-name>"
```

---

## 4.0 Optional Fields

### 4.1 References

```yaml
references:
  standards:
    - "<standard-1>"
    - "<standard-2>"
  related_documents:
    - "<document-1>"
    - "<document-2>"
  external_references:
    - name: "<reference-name>"
      url: "<reference-url>"
```

### 4.2 Dependencies

```yaml
dependencies:
  parent: "<parent-chapter>"
  related_chapters:
    - "<chapter-1>"
    - "<chapter-2>"
  requires:
    - "<dependency-1>"
    - "<dependency-2>"
```

### 4.3 Traceability

```yaml
traceability:
  requirement_id: "<requirement-id>"
  design_artifact: "<design-document>"
  verification_method: "<verification-document>"
  validation_evidence: "<validation-document>"
```

### 4.4 Security Classification

```yaml
security:
  classification: "<classification-level>"
  handling: "<handling-instructions>"
  export_control: "<export-control-status>"
```

**Classification Levels:**
- `Public` - No restrictions
- `Internal` - Company internal only
- `Confidential` - Limited distribution
- `Restricted` - Highly restricted

---

## 5.0 Complete Example

```yaml
schema_version: "1.1"
id: "DOC_Fuel-Cell-Architecture"
document:
  type: "DOC"
  title: "Hydrogen Fuel Cell Architecture Specification"
  revision: "2.1.0"
  effective_date: "2025-10-27"
  subject: "Hydrogen fuel cell system design and integration"
  ata_chapter: "28"
  category: "Fuel Systems"
effectivity:
  scope: "Program-Wide"
  aircraft_types:
    - "AMPEL360 BWB"
  applicability:
    - "Engineering"
    - "Certification"
    - "Maintenance"
approvals:
  - authority: "Chief Engineer - Propulsion"
    status: "Released"
    date: "2025-10-27"
  - authority: "Airworthiness Authority"
    status: "Approved"
    date: "2025-10-27"
integrity:
  checksum:
    algorithm: "sha256"
    value: "a3f5b8c9d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8"
revision_history:
  - version: "2.1.0"
    date: "2025-10-27"
    changes: "Updated thermal management requirements"
    author: "J. Smith - Propulsion Engineering"
  - version: "2.0.0"
    date: "2025-10-27"
    changes: "Major revision for increased power output"
    author: "J. Smith - Propulsion Engineering"
  - version: "1.0.0"
    date: "2025-10-27"
    changes: "Initial release"
    author: "J. Smith - Propulsion Engineering"
references:
  standards:
    - "SAE J2719 - Hydrogen Fuel Quality"
    - "ISO 14687 - Hydrogen Fuel Specification"
  related_documents:
    - "ICD_LH2-Coupling_rev3.0.0_20280901.md"
    - "DOC_Thermal-Management-System_rev1.5.0_20280201.md"
dependencies:
  parent: "ATA-28"
  related_chapters:
    - "ATA-21"
    - "ATA-24"
    - "ATA-73"
traceability:
  requirement_id: "REQ-FUEL-001"
  design_artifact: "DES_Fuel-Cell-System_rev2.0.0_20280101.md"
  verification_method: "ATP_Fuel-Cell-Test_rev1.0.0_20280215.md"
  validation_evidence: "TEST_Fuel-Cell-Results_rev1.0.0_20280301.md"
security:
  classification: "Internal"
  handling: "Company Proprietary"
  export_control: "EAR99"
```

---

## 6.0 Validation Rules

### 6.1 Required Field Validation

**Must be present:**
- `schema_version`
- `id`
- `document.type`
- `document.title`
- `document.revision`
- `document.effective_date`
- `effectivity.scope`
- `approvals` (at least one)
- `integrity.checksum`
- `revision_history` (at least one entry)

### 6.2 Format Validation

**Date Format:**
```
YYYY-MM-DD
```

**Version Format:**
```
MAJOR.MINOR.PATCH
```
or for pre-release:
```
MAJOR.MINOR.PATCH-<identifier>
```

**ID Format:**
Must match filename prefix (without version and date):
```
<TYPE>_<Subject>
```

### 6.3 Checksum Validation

The checksum must match the SHA-256 hash of the associated document file.

**Validation Command:**
```bash
sha256sum -c <(echo "<checksum> <filename>")
```

### 6.4 Cross-Reference Validation

All referenced documents must exist in the repository.

**Validation:**
- Check `references.related_documents`
- Verify file paths are correct
- Ensure referenced files have valid metadata

---

## 7.0 Schema Evolution

### 7.1 Backward Compatibility

When updating the schema:
- Maintain backward compatibility when possible
- Increment `schema_version` for breaking changes
- Document migration path for existing metadata
- Provide migration tools when necessary

### 7.2 Deprecation Process

**Steps:**
1. Announce deprecated fields in schema documentation
2. Provide migration guidance
3. Set deprecation timeline (minimum 6 months)
4. Update validation tools to warn on deprecated fields
5. Remove deprecated fields in next major schema version

---

## 8.0 Automated Validation

### 8.1 CI/CD Integration

Metadata validation is integrated into the CI/CD pipeline:

**Validation Script:**
```bash
python ci/validate_meta.py <directory> --schema <schema-file>
```

**Validation Steps:**
1. Find all `.meta.yaml` files
2. Load JSON schema
3. Validate each metadata file against schema
4. Calculate and verify checksums
5. Check cross-references
6. Report errors and warnings

### 8.2 Pre-commit Hooks

Recommended pre-commit hook:
```bash
#!/bin/bash
# Validate metadata before commit
python ci/validate_meta.py . --schema ci/meta_v1_1.json
```

---

## 9.0 Best Practices

### 9.1 Metadata Maintenance

- Update metadata whenever document is modified
- Recalculate checksum after any change
- Update revision history for all revisions
- Keep approvals current
- Maintain accurate cross-references

### 9.2 Quality Guidelines

- Use descriptive titles and subjects
- Provide complete revision history
- Document all approvals with dates
- Reference all applicable standards
- Maintain complete traceability chains

### 9.3 Security Considerations

- Set appropriate classification levels
- Include handling instructions when needed
- Document export control status
- Review security metadata regularly

---

## 10.0 References

- YAML 1.2 Specification
- JSON Schema Draft 7
- ISO 8601 - Date and Time Format
- Semantic Versioning Specification (semver.org)

---

**Document Control:**
- **Owner:** Documentation Architecture Team
- **Approver:** Chief Engineering Office
- **Next Review:** 2025-10-27

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[← Back to ATA 00](../README.md)
