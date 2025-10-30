# BASELINES

← [ATA_42 Core OS](../README.md) | [🏠 Repository Root](../../../../../README.md) | [📋 Navigation](../NAVIGATION.md)

---

## Overview

Configuration baselines, release records, and version control information for ATA 42 Core OS releases.

## Purpose

Manages configuration baselines to:
- **Track major releases** and configuration states
- **Document changes** between baselines
- **Support certification** with traceable configurations
- **Enable rollback** to known-good configurations
- **Audit compliance** with baseline verification

## Baseline Structure

Each baseline contains:
- **Baseline ID** - Unique identifier (e.g., BL-ATA42-01.00.00)
- **Release Date** - When baseline was established
- **Configuration Items** - Complete list of included artifacts
- **Change Log** - Changes from previous baseline
- **Verification Records** - Test and validation results
- **Approval Records** - Airworthiness and certification approvals

## Baseline Lifecycle

### 1. Baseline Creation
- Collect all configuration items
- Generate artifact inventory
- Calculate checksums for all files
- Create baseline documentation
- Submit for review

### 2. Baseline Review
- Technical review by engineering
- Safety review by safety engineering
- Compliance review by certification
- Airworthiness authority approval

### 3. Baseline Release
- Finalize baseline documentation
- Tag in version control system
- Archive baseline package
- Distribute to stakeholders
- Update INDEX.meta.yaml

### 4. Baseline Maintenance
- Track deviations and waivers
- Document emergency changes
- Maintain traceability
- Plan next baseline

## Baseline Types

### Development Baselines
- Internal development milestones
- Not released to production
- Used for testing and validation

### Release Baselines
- Formal releases for deployment
- Full certification evidence
- Airworthiness approval required
- Tagged and archived

### Certification Baselines
- Submitted to authorities
- Complete evidence package
- Frozen configuration
- Long-term archival

## Baseline Contents

Each baseline directory contains:
- `BASELINE_MANIFEST.yaml` - Complete artifact list with checksums
- `CHANGE_LOG.md` - Changes from previous baseline
- `VERIFICATION_REPORT.md` - Test and validation summary
- `APPROVAL_RECORDS.yaml` - Approval signatures and dates
- `CONFIGURATION_ITEMS.csv` - Detailed CI list
- `TRACEABILITY_MATRIX.csv` - Requirements-to-test traceability

## Version Numbering

Baseline versions follow semantic versioning:
- **MAJOR** - Significant architecture changes, re-certification required
- **MINOR** - New features, minor design changes
- **PATCH** - Bug fixes, documentation updates

Example: BL-ATA42-01.02.03
- Major: 01 (Initial release)
- Minor: 02 (Added new partition service)
- Patch: 03 (Fixed scheduling bug)

## Baseline Verification

Before releasing a baseline:
1. ✓ All artifacts have current sidecars
2. ✓ All checksums calculated and verified
3. ✓ All tests passed
4. ✓ DO-178C objectives met (for DAL A)
5. ✓ Traceability complete
6. ✓ Configuration management records updated
7. ✓ Required approvals obtained

## Accessing Baselines

### Latest Baseline
The current development state is tracked in the main branch. For the latest released baseline:

```bash
# List all baselines
ls -la BASELINES/

# View specific baseline
cat BASELINES/BL-ATA42-01.00.00/BASELINE_MANIFEST.yaml
```

### Historical Baselines
Historical baselines are tagged in git:

```bash
# List baseline tags
git tag -l "baseline/ata42/*"

# Checkout specific baseline
git checkout tags/baseline/ata42/01.00.00
```

## Related Processes

- [Configuration Management](../02-ARCHITECTURE_AND_SERVICES/PRODUCTION_PLANNING/DESC_Configuration-Management.md)
- [Release Process](../02-ARCHITECTURE_AND_SERVICES/PRODUCTION_PLANNING/PROC_Build-And-Release-Process.md)
- [Version Control Strategy](../02-ARCHITECTURE_AND_SERVICES/ASSETS_MANAGEMENT/DESC_Version-Control-Strategy.md)

## Baseline Naming Convention

- Development: `DEV-YYMMDD-NNN` (e.g., DEV-251030-001)
- Release: `BL-ATA42-MM.mm.pp` (e.g., BL-ATA42-01.00.00)
- Certification: `CERT-ATA42-MM.mm.pp-AUTH` (e.g., CERT-ATA42-01.00.00-FAA)

---

## Navigation

- **Previous**: [← 10-EXAMPLES_AND_RECORDS](../10-EXAMPLES_AND_RECORDS/README.md)
- **Parent**: [← ATA_42 Core OS](../README.md)
- **Root**: [🏠 Repository Root](../../../../../README.md)
- [🔝 Back to Top](#baselines)

---

*Last Updated: 2025-10-30*  
*Part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
