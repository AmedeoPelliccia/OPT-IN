# Configuration Management Plan

**Revision:** 1.2.0  
**Effective Date:** 2025-10-27  
**Document ID:** GOV_Configuration-Management-Plan

---

## 1.0 Document Identification

### 1.1 File Naming Convention

All documents must follow the standardized naming convention:

```
<TYPE>_<Subject>_rev<MAJOR.MINOR.PATCH>_<YYYYMMDD>.<ext>
```

**Components:**
- `<TYPE>`: Document type prefix (DOC, GOV, STD, POLICY, ICD, etc.)
- `<Subject>`: Descriptive subject with hyphens instead of spaces
- `<MAJOR.MINOR.PATCH>`: Semantic version number
- `<YYYYMMDD>`: Effective date in ISO 8601 format
- `<ext>`: File extension (md, yaml, json, xml, pdf, etc.)

**Examples:**
- `DOC_Fuel-Cell-Architecture_rev2.1.0_20280315.md`
- `ICD_LH2-Coupling_rev3.0.0_20280901.md`
- `POLICY_System-Safety-Program-Plan_rev1.0.0_20280301.md`
- `STD_Metadata-Schema-Guide_rev1.1.0_20280220.md`

### 1.2 Document Type Prefixes

| Prefix | Type | Purpose |
| :--- | :--- | :--- |
| **DOC** | Document | General technical documentation |
| **GOV** | Governance | Policies, procedures, and governance documents |
| **STD** | Standard | Standards and specifications |
| **POLICY** | Policy | Corporate and program policies |
| **ICD** | Interface Control Document | System interface specifications |
| **IPC** | Illustrated Parts Catalog | Parts and components catalog |
| **GOM** | Ground Operations Manual | Ground handling procedures |
| **ATP** | Acceptance Test Procedure | Test procedures and protocols |
| **SDS** | Safety Data Sheet | Safety information |
| **TRAIN** | Training | Training materials and curricula |
| **MAINT** | Maintenance | Maintenance procedures |
| **CAL** | Calibration | Calibration records |
| **SPEC** | Specification | Technical specifications |
| **GLOSSARY** | Glossary | Terminology and definitions |
| **DICT** | Dictionary | Data dictionaries |

---

## 2.0 Semantic Versioning

All artifacts use Semantic Versioning (MAJOR.MINOR.PATCH).

### 2.1 Version Number Format

```
MAJOR.MINOR.PATCH
```

### 2.2 Version Increment Rules

**MAJOR version** increment when:
- Incompatible changes that break backward compatibility
- Major system redesign or architectural changes
- Changes that require updates to dependent systems
- Significant regulatory or certification changes

**MINOR version** increment when:
- Backwards-compatible functional changes
- New features or capabilities added
- Enhanced functionality that doesn't break existing interfaces
- Updates to procedures that don't affect compatibility

**PATCH version** increment when:
- Backwards-compatible bug fixes
- Typographical corrections
- Clarifications without functional changes
- Minor formatting or style updates

### 2.3 Pre-release Versions

For documents under development:

```
MAJOR.MINOR.PATCH-<identifier>
```

**Identifiers:**
- `alpha`: Early development, unstable
- `beta`: Feature complete, under testing
- `rc`: Release candidate, final testing
- `draft`: Draft for review

**Examples:**
- `1.0.0-alpha`
- `2.1.0-beta`
- `1.0.0-rc.1`
- `3.0.0-draft`

---

## 3.0 Effectivity and Applicability

### 3.1 Effectivity

Defines which aircraft or systems are affected by the document.

**Defined in `.meta.yaml`:**
```yaml
effectivity:
  scope: "MSN Range"
  aircraft_msn:
    from: "AMP360-001"
    to: "AMP360-050"
  aircraft_types:
    - "AMPEL360 BWB"
```

**Scope Options:**
- `Program-Wide`: Applies to entire program
- `MSN Range`: Applies to specific aircraft serial numbers
- `System-Specific`: Applies to specific systems or configurations
- `Site-Specific`: Applies to specific locations or facilities

### 3.2 Applicability

Defines the target audience or user roles.

**Examples:**
- Flight Crew
- Base Maintenance
- Line Maintenance
- Engineering
- Quality Assurance
- Regulator
- Training Personnel
- Ground Operations

**Defined in `.meta.yaml`:**
```yaml
effectivity:
  applicability:
    - "Flight Crew"
    - "Base Maintenance"
    - "Engineering"
```

---

## 4.0 Metadata Requirements

### 4.1 Metadata Sidecar Files

Every document must have an accompanying `.meta.yaml` sidecar file.

**Naming Convention:**
```
<document_filename>.meta.yaml
```

**Example:**
- Document: `DOC_Fuel-Cell-Architecture_rev2.1.0_20280315.md`
- Metadata: `DOC_Fuel-Cell-Architecture_rev2.1.0_20280315.md.meta.yaml`

### 4.2 Required Metadata Fields

```yaml
schema_version: "1.1"
id: "<unique-document-id>"
document:
  type: "<document-type>"
  title: "<document-title>"
  revision: "<MAJOR.MINOR.PATCH>"
  effective_date: "<YYYY-MM-DD>"
  subject: "<brief-description>"
  ata_chapter: "<ATA-chapter>"
effectivity:
  scope: "<scope>"
approvals:
  - authority: "<approving-authority>"
    status: "<approval-status>"
    date: "<YYYY-MM-DD>"
integrity:
  checksum:
    algorithm: "sha256"
    value: "<sha256-hash>"
revision_history:
  - version: "<version>"
    date: "<YYYY-MM-DD>"
    changes: "<description-of-changes>"
    author: "<author-name>"
```

### 4.3 Checksum Calculation

All documents must include a SHA-256 checksum in their metadata.

**Calculation:**
```bash
sha256sum <document_filename> | awk '{print $1}'
```

**Purpose:**
- Verify document integrity
- Detect unauthorized modifications
- Support audit and compliance requirements

---

## 5.0 Change Control

### 5.1 Change Proposal Process

All changes must be proposed via a pull request.

**Steps:**
1. Create a feature branch from main
2. Make changes to documents and update metadata
3. Update revision number according to semantic versioning rules
4. Recalculate checksums
5. Submit pull request with clear description
6. Request review from designated owners

### 5.2 Review Requirements

**Mandatory Requirements:**
- At least one peer review from designated folder `owners`
- All automated CI checks must pass
- No conflicts with main branch
- Updated metadata with new revision information

**Review Checklist:**
- [ ] Naming convention followed
- [ ] Semantic version updated correctly
- [ ] Metadata sidecar present and valid
- [ ] Checksum calculated and recorded
- [ ] Cross-references updated
- [ ] Effectivity and applicability defined
- [ ] Revision history updated

### 5.3 CI/CD Validation

**Automated Checks:**
- Filename lint (naming convention validation)
- Metadata schema validation
- Checksum verification
- Link integrity scan
- Markdown lint
- YAML syntax validation

**Required Pass Criteria:**
- All CI checks must pass before merge
- No blocking issues or errors
- Warnings reviewed and addressed

### 5.4 Merge and Release

**Merge Process:**
1. All reviews approved
2. All CI checks passed
3. Merge to main branch
4. Automatic tagging with version number
5. Update change log
6. Notify stakeholders

---

## 6.0 Document Lifecycle

### 6.1 Document States

| State | Description | Actions |
| :--- | :--- | :--- |
| **Draft** | Under initial development | Can be modified freely |
| **Review** | Submitted for review | Awaiting approval |
| **Released** | Approved and active | Controlled changes only |
| **Superseded** | Replaced by newer version | Read-only, archived |
| **Obsolete** | No longer applicable | Archived, not used |

### 6.2 Retention Policy

**Minimum Retention:**
- Active documents: Maintained in main branch
- Superseded documents: Minimum 10 years
- Obsolete documents: Per regulatory requirements

**Archive Location:**
- Version control system maintains complete history
- Tagged releases for major versions
- Backup systems for disaster recovery

### 6.3 Document Retirement

**Criteria for Retirement:**
- System no longer in service
- Replaced by updated procedures
- Regulatory changes make document obsolete
- Program termination

**Retirement Process:**
1. Identify documents for retirement
2. Update metadata status to "Obsolete"
3. Move to archive directory
4. Update cross-references
5. Notify stakeholders

---

## 7.0 Directory Structure

### 7.1 Standard Directory Layout

```
/O-ORGANIZATION
└── /ATA_00-GENERAL
    ├── README.md
    ├── INDEX.meta.yaml
    ├── /01-INTRODUCTION_AND_PHILOSOPHY
    │   └── DOC_OPT-IN-Framework-Philosophy_rev1.0.0_20280101.md
    ├── /02-GOVERNANCE_AND_STANDARDS
    │   ├── GOV_Configuration-Management-Plan_rev1.2.0_20280215.md
    │   ├── STD_Numbering-And-Naming-Conventions_rev1.1.0_20280220.md
    │   └── STD_Metadata-Schema-Guide_rev1.1.0_20280220.md
    ├── /03-DEFINITIONS_AND_TERMINOLOGY
    │   ├── GLOSSARY_Abbreviations-And-Acronyms_rev2.5.0_20290110.md
    │   └── DICT_Master-Terminology_rev2.1.0_20290110.md
    ├── /04-SAFETY_AND_AIRWORTHINESS
    │   └── POLICY_System-Safety-Program-Plan_rev1.0.0_20280301.md
    └── /05-TOOLCHAIN_AND_METHODS
        └── SPEC_Required-Toolchain_rev1.3.0_20280405.md
```

### 7.2 Directory Naming

- Use descriptive names with hyphens
- Start with numeric prefix for ordering
- Use uppercase for ATA chapter references
- Maintain consistency across all branches

---

## 8.0 Compliance and Audit

### 8.1 Audit Readiness

**Requirements:**
- Every document must be reproducible from version control
- No manual edits outside version control
- Complete revision history maintained
- All approvals documented in metadata

### 8.2 Traceability

**Traceability Matrix:**
- Requirements to design documents
- Design documents to implementation
- Implementation to verification
- Verification to validation

**Implementation:**
```yaml
traceability:
  requirement_id: "REQ-FCS-001"
  design_artifact: "DES_Flight-Control-System_rev2.0.0_20280201.md"
  verification_method: "ATP_FCS-Functional-Test_rev1.0.0_20280301.md"
  validation_evidence: "TEST_FCS-Results_rev1.0.0_20280315.md"
```

### 8.3 Regulatory Compliance

**Applicable Regulations:**
- FAA Part 25 (Airworthiness Standards)
- EASA CS-25 (Certification Specifications)
- ISO 9001 (Quality Management)
- AS9100 (Aerospace Quality Management)

**Compliance Evidence:**
- Document control procedures
- Change management records
- Approval and review records
- Configuration baseline documentation

---

## 9.0 Roles and Responsibilities

### 9.1 Document Owners

**Responsibilities:**
- Ensure document accuracy and currency
- Review and approve changes
- Maintain document compliance
- Coordinate with stakeholders

### 9.2 Configuration Manager

**Responsibilities:**
- Oversee configuration management process
- Enforce naming and versioning standards
- Maintain configuration baseline
- Generate compliance reports

### 9.3 Quality Assurance

**Responsibilities:**
- Audit document compliance
- Verify CI/CD validation
- Review change control processes
- Report non-conformances

---

## 10.0 References

- ATA iSpec 2200 - Information Standards for Aviation Maintenance
- S1000D - International specification for technical publications
- Semantic Versioning Specification (semver.org)
- ISO 9001:2015 - Quality Management Systems
- AS9100D - Aerospace Quality Management Systems

---

**Document Control:**
- **Owner:** Configuration Management Team
- **Approver:** Chief Engineering Office
- **Next Review:** 2025-10-27

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[← Back to ATA 00](../README.md)
