# Numbering and Naming Conventions

**Revision:** 1.1.0  
**Effective Date:** 2025-10-27  
**Document ID:** STD_Numbering-And-Naming-Conventions

---

## 1.0 Purpose

This document establishes the standardized numbering and naming conventions for all technical artifacts within the AMPEL360 OPT-IN framework.

---

## 2.0 File Naming Convention

### 2.1 General Format

All documents must follow the standardized naming pattern:

```
<TYPE>_<Subject>_rev<MAJOR.MINOR.PATCH>_<YYYYMMDD>.<ext>
```

**Components:**

| Component | Description | Rules |
| :--- | :--- | :--- |
| `<TYPE>` | Document type prefix | Uppercase, alphanumeric, see Section 2.2 |
| `<Subject>` | Descriptive subject | Hyphens instead of spaces, alphanumeric |
| `<MAJOR.MINOR.PATCH>` | Semantic version | Three integers separated by dots |
| `<YYYYMMDD>` | Effective date | ISO 8601 date format |
| `<ext>` | File extension | Lowercase, standard extensions |

**Examples:**
- `DOC_Fuel-Cell-Architecture_rev2.1.0_20280315.md`
- `ICD_LH2-Coupling_rev3.0.0_20280901.pdf`
- `POLICY_System-Safety-Program-Plan_rev1.0.0_20280301.md`

### 2.2 Document Type Prefixes

| Prefix | Type | Description |
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
| **REQ** | Requirement | System requirements |
| **DES** | Design | Design documents |
| **TEST** | Test | Test reports and results |
| **FW** | Firmware | Firmware packages |
| **SW** | Software | Software packages |

### 2.3 Subject Naming Rules

**Valid Characters:**
- Alphanumeric characters (A-Z, a-z, 0-9)
- Hyphens (-) to separate words
- Numbers to indicate versions or variants

**Invalid Characters:**
- Spaces (use hyphens instead)
- Special characters (!, @, #, $, %, etc.)
- Underscores (reserved for field separation)

**Best Practices:**
- Use descriptive, meaningful names
- Be concise but clear
- Use title case for major words
- Include key identifying information

**Examples:**
- Good: `LH2-Storage-Tank-Design`
- Good: `Flight-Control-System-Architecture`
- Bad: `document1` (not descriptive)
- Bad: `FCS Design & Implementation` (contains spaces and &)

### 2.4 Version Number Rules

Follow Semantic Versioning (semver.org):

**Format:** `MAJOR.MINOR.PATCH`

- **MAJOR**: Incompatible changes
- **MINOR**: Backwards-compatible functionality
- **PATCH**: Backwards-compatible bug fixes

**Pre-release versions:**
```
MAJOR.MINOR.PATCH-<identifier>
```

Identifiers: `alpha`, `beta`, `rc`, `draft`

### 2.5 Date Format

**Required Format:** `YYYYMMDD`

**Examples:**
- `20280101` - October 27, 2025
- `20281231` - October 27, 2025

**Rules:**
- Always use 4-digit year
- Always use 2-digit month (01-12)
- Always use 2-digit day (01-31)
- No separators (no dashes or slashes)

### 2.6 File Extensions

| Extension | File Type | Usage |
| :--- | :--- | :--- |
| `.md` | Markdown | Primary documentation format |
| `.yaml` or `.yml` | YAML | Metadata sidecars, configuration |
| `.json` | JSON | Structured data, schemas |
| `.xml` | XML | S1000D data modules |
| `.pdf` | PDF | Compiled/published documents |
| `.dxf` | DXF | CAD drawings |
| `.csv` | CSV | Tabular data |
| `.bin`, `.hex`, `.elf` | Binary | Firmware files |
| `.zip`, `.tar.gz` | Archive | Software packages |
| `.sig` | Signature | Digital signatures |

---

## 3.0 Directory Naming Convention

### 3.1 General Format

```
<ORDER>-<NAME>
```

or for ATA chapters:

```
ATA_<CHAPTER>-<NAME>
```

**Components:**
- `<ORDER>`: Two-digit numeric prefix for ordering (01, 02, etc.)
- `<NAME>`: Descriptive name in UPPERCASE with hyphens
- `<CHAPTER>`: Two-digit ATA chapter number

**Examples:**
- `01-INTRODUCTION_AND_PHILOSOPHY`
- `02-GOVERNANCE_AND_STANDARDS`
- `ATA_00-GENERAL`
- `ATA_115-FLIGHT_SIMULATOR_SYSTEMS`

### 3.2 Directory Structure Rules

**Hierarchy Levels:**
1. Top level: OPT-IN branches (O, P, T, I, N)
2. Second level: ATA chapters
3. Third level: Functional subdivisions
4. Fourth level: Document types or subsystems

**Naming Rules:**
- Use UPPERCASE for directory names
- Use underscores or hyphens for word separation
- Be consistent within each level
- Use numeric prefixes when ordering is important

---

## 4.0 ATA Chapter Numbering

### 4.1 Standard ATA Chapters

ATA chapters use a two-digit numeric system:

```
ATA-<XX>
```

Where `<XX>` is a two-digit number from 00 to 99.

**Major Groups:**
- **00-18**: General, organization, and program
- **20-49**: Airframe and systems
- **50-59**: Structures
- **70-80**: Propulsion
- **90-99**: Support and documentation

### 4.2 Provisional Codes

For new technologies not covered by standard ATA:

```
ATA-<XX>-<YY>-<ZZ>_<Technology>_PROV
```

**Example:**
- `ATA-21-80-00_CO2-Capture-Processing_PROV`
- `ATA-44-10-00_Quantum-Scheduler_PROV`

**Rules:**
- Must be approved by Configuration Management
- Must have path to standard code adoption
- Must be reviewed annually

---

## 5.0 Metadata File Naming

### 5.1 Sidecar Metadata Files

**Format:**
```
<document-filename>.meta.yaml
```

**Example:**
- Document: `DOC_Fuel-Cell-Architecture_rev2.1.0_20280315.md`
- Metadata: `DOC_Fuel-Cell-Architecture_rev2.1.0_20280315.md.meta.yaml`

### 5.2 Index Files

**Format:**
```
INDEX.meta.yaml
```

Used at directory level to describe chapter or subsection metadata.

### 5.3 Schema Files

**Format:**
```
<schema-name>_v<MAJOR>_<MINOR>.json
```

**Example:**
- `meta_v1_1.json`
- `ata_schema_v2_0.json`

---

## 6.0 Identifier Conventions

### 6.1 Document IDs

**Format:**
```
<TYPE>_<Subject>
```

**Rules:**
- Matches filename prefix (before version and date)
- Used consistently in metadata
- Unique within repository

### 6.2 Requirement IDs

**Format:**
```
REQ-<SYSTEM>-<NUMBER>
```

**Example:**
- `REQ-FCS-001` - Flight Control System requirement 1
- `REQ-FUEL-042` - Fuel System requirement 42

### 6.3 Component IDs

**Format for GSE:**
```
AP360-<TYPE><NUMBER>
```

**Example:**
- `AP360-S001` - Service equipment 001
- `AP360-T003` - Test equipment 003

**Format for Aircraft Systems:**
```
AMP360-<MSN>
```

**Example:**
- `AMP360-001` - First aircraft
- `AMP360-050` - Fiftieth aircraft

---

## 7.0 Cross-Reference Format

### 7.1 Internal References

**Format:**
```
[Description](relative/path/to/file.md)
```

**Example:**
```markdown
See [Configuration Management Plan](02-GOVERNANCE_AND_STANDARDS/GOV_Configuration-Management-Plan_rev1.2.0_20280215.md)
```

### 7.2 ATA Chapter References

**Format:**
```
ATA <XX> - <Name>
```

**Example:**
- `ATA 00 - GENERAL`
- `ATA 28 - Fuel System`

### 7.3 External References

**Format:**
```
[Standard Name] - [Description]
```

**Example:**
- `FAA Part 25 - Airworthiness Standards`
- `DO-178C - Software Considerations`

---

## 8.0 Special File Names

### 8.1 Standard Files (Exempt from Naming Convention)

| Filename | Purpose | Location |
| :--- | :--- | :--- |
| `README.md` | Directory overview | Every directory |
| `INDEX.meta.yaml` | Chapter metadata | Chapter root |
| `SHA256SUMS.txt` | Checksum list | Archive directories |
| `.gitignore` | Git exclusions | Repository root and subdirectories |
| `LICENSE` | License information | Repository root |

### 8.2 Data Files

**Formats:**
- `<descriptive-name>.csv` - Tabular data
- `<descriptive-name>.json` - Structured data
- `<descriptive-name>.xml` - XML data

**Example:**
- `training_records.csv`
- `status.json`
- `configuration.xml`

---

## 9.0 Validation

### 9.1 Automated Validation

All filenames are validated using CI/CD pipeline:

```bash
python ci/validate_naming.py <directory>
```

### 9.2 Manual Review Checklist

- [ ] Correct document type prefix
- [ ] Descriptive subject with hyphens
- [ ] Valid semantic version
- [ ] Correct date format (YYYYMMDD)
- [ ] Appropriate file extension
- [ ] Metadata sidecar present
- [ ] Unique document ID

---

## 10.0 Migration Guidelines

### 10.1 Renaming Existing Files

When renaming files to comply with conventions:

1. Update filename according to convention
2. Update metadata sidecar filename
3. Update document ID in metadata
4. Update all cross-references
5. Update INDEX files
6. Recalculate checksums
7. Submit via pull request

### 10.2 Grandfathering

**Legacy files** created before convention adoption:
- Mark with `LEGACY-` prefix
- Document in migration plan
- Schedule for conversion
- Maintain for minimum retention period

---

## 11.0 Exceptions

### 11.1 Exception Request Process

To request an exception to naming conventions:

1. Submit written justification
2. Identify specific rule requiring exception
3. Propose alternative naming
4. Obtain Configuration Manager approval
5. Document in exception log

### 11.2 Approved Exception Categories

- Third-party delivered documents
- Regulatory submission formats
- Customer-specified naming
- Legacy system integrations

---

## 12.0 References

- Semantic Versioning Specification (semver.org)
- ATA iSpec 2200 - Information Standards
- ISO 8601 - Date and Time Format
- Configuration Management Plan
- Metadata Schema Guide

---

**Document Control:**
- **Owner:** Configuration Management Team
- **Approver:** Chief Engineering Office
- **Next Review:** 2025-10-27

---

*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*

[← Back to ATA 00](../README.md)
