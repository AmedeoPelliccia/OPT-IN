# PROC_31-04-01 — DPP Entry and Archival

**Document ID:** PROC_31-04-01  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Chapter:** ATA 31 - Indicating & Recording Systems (Recording Function)

## 1.0 Purpose

This procedure defines the process for creating Digital Product Passport (DPP) entries for FDR/CVR downloads, linking recording evidence to aircraft lifecycle data, and ensuring long-term archival with traceability.

## 2.0 DPP Integration Overview

Every FDR/CVR download creates a DPP entry that includes:
- Aircraft and recording unit identification
- Download metadata and manifest
- SHA-256 hashes for all files (evidence integrity)
- Chain-of-custody log
- Regulatory compliance status
- Links to related events (incidents, maintenance)

DPP serves as the single source of truth for recording system data provenance.

## 3.0 DPP Entry Creation

### 3.1 Triggering Events

Create DPP entry for:
- All FDR downloads (routine, incident, accident, maintenance)
- All CVR downloads (routine test, incident, accident)
- Recording unit installation/removal
- Recording unit software updates
- Environmental qualification tests
- Acoustic tests (CVR)

### 3.2 DPP Entry Structure

Each DPP entry contains:

```json
{
  "dpp_id": "DPP-REC-[TYPE]-YYYYMMDD-XXX",
  "dpp_type": "recording_download",
  "aircraft": {
    "msn": "AMPEL360-XXX",
    "registration": "N-XXXXX"
  },
  "recording_unit": {
    "type": "FDR|CVR",
    "pn": "[part number]",
    "sn": "[serial number]",
    "sw_version": "[X.Y.Z]",
    "sw_hash": "sha256:..."
  },
  "event": {
    "download_id": "[unique download ID]",
    "event_type": "routine|incident|accident|maintenance",
    "datetime": "[ISO 8601]",
    "location": "[airport code]",
    "operator": "[technician name]"
  },
  "artifacts": [
    {
      "artifact_type": "raw_data|manifest|custody_log|report",
      "filename": "[filename]",
      "sha256": "sha256:...",
      "size_bytes": 12345,
      "storage_location": "[URI or path]",
      "access_level": "public|restricted|confidential|investigator_only"
    }
  ],
  "chain_of_custody": [
    {
      "timestamp": "[ISO 8601]",
      "actor": "[name]",
      "action": "extracted|transferred|sealed|archived|accessed",
      "location": "[location]",
      "seal_number": "[if applicable]"
    }
  ],
  "regulatory_status": {
    "compliance_verified": true|false,
    "applicable_regulations": ["ICAO Annex 6", "FAA 14 CFR 121.343", ...],
    "certification_status": "compliant|under_review|non_compliant",
    "investigator_access": "granted|restricted|pending"
  },
  "related_entries": [
    "DPP-EVENT-XXX",
    "DPP-MAINT-XXX"
  ],
  "metadata": {
    "created_by": "[system/person]",
    "created_at": "[ISO 8601]",
    "last_updated": "[ISO 8601]",
    "retention_policy": "5_years|10_years|permanent",
    "archive_location": "[facility]"
  }
}
```

### 3.3 DPP Entry Workflow

1. **Download Completion:**
   - Download tool generates manifest with SHA-256 hashes
   - Manifest saved to temporary location

2. **DPP Entry Creation:**
   - Automated script reads manifest
   - Creates DPP entry JSON
   - Assigns unique DPP ID
   - Populates all required fields

3. **Artifact Upload:**
   - Manifest uploaded to DPP repository
   - SHA-256 hashes recorded (raw data NOT uploaded, only metadata)
   - Storage location URIs recorded

4. **Verification:**
   - DPP system verifies all required fields present
   - Validates SHA-256 hash format
   - Checks regulatory compliance status
   - Confirms chain-of-custody entries

5. **Publication:**
   - DPP entry published to DPP database
   - Entry linked to aircraft MSN
   - Related entries cross-referenced
   - Access controls applied

## 4.0 Data Retention Policy

### 4.1 Retention Periods

| Data Type | Retention Period | Storage Location | Access Level |
|-----------|------------------|------------------|--------------|
| FDR raw data (routine) | 5 years minimum | Long-term archive | Restricted |
| FDR raw data (incident) | 10 years minimum | Long-term archive | Investigator + authorized |
| FDR raw data (accident) | Permanent | Permanent archive | Investigator only |
| CVR audio (routine test) | Deleted after verification | N/A | N/A |
| CVR audio (incident) | 10 years minimum | Secure archive | Investigator + authorized |
| CVR audio (accident) | Permanent | Permanent archive | Investigator only |
| Download manifests | Permanent | DPP repository | Restricted |
| Chain-of-custody logs | Permanent | DPP repository | Restricted |
| DPP entries | Permanent | DPP database | Public metadata only |

### 4.2 Retention Enforcement

DPP system automatically:
- Tags entries with retention policy
- Monitors retention expiration dates
- Alerts before expiration (90 days notice)
- Requires approval before deletion
- Logs all deletions with justification

## 5.0 Access Control

### 5.1 Access Levels

**Level 1 - Public (DPP metadata only):**
- Aircraft MSN
- Download date
- Recording unit PN/SN
- Compliance status
- No raw data or audio

**Level 2 - Restricted (Engineering and Operations):**
- Level 1 + Download manifests
- SHA-256 hashes
- Chain-of-custody logs
- Quality verification reports
- No FDR raw data, no CVR audio

**Level 3 - Confidential (Safety and Management):**
- Level 2 + FDR raw data (routine downloads only)
- Analysis reports
- Incident summaries (de-identified)
- No CVR audio

**Level 4 - Investigator Only:**
- All data including CVR audio
- Incident/accident data
- Requires investigator credentials
- All access logged and audited

### 5.2 Access Request Process

1. Requestor submits access request form with:
   - DPP entry ID
   - Justification for access
   - Intended use
   - Duration of access needed

2. Approval authority reviews:
   - Safety Director (Level 2-3)
   - Legal Department (Level 4)
   - Investigator authority (Level 4 for accident data)

3. Access granted with:
   - Time-limited access token
   - Audit logging enabled
   - Non-disclosure agreement signed (Level 3-4)

## 6.0 Archival Procedure

### 6.1 Short-term Storage (0-30 days)

After download:
- Store sealed media in secure cabinet at download location
- Maintain environmental conditions (15-25°C, 30-60% RH)
- Daily access log review

### 6.2 Long-term Archive Transfer (30-90 days)

1. **Transfer Preparation:**
   - Verify seal integrity
   - Create transfer manifest
   - Arrange transport (courier or hand-carry)

2. **Transfer Execution:**
   - Two-person custody during transfer
   - Tamper-evident packaging
   - Climate-controlled transport
   - GPS tracking if possible

3. **Archive Intake:**
   - Archive facility verifies seal integrity
   - Re-computes SHA-256 checksums
   - Confirms match with manifest
   - Issues archive reference number
   - Updates DPP entry with archive location

### 6.3 Permanent Archive (Accident Data)

For accident data:
- Transfer to national aviation authority archive
- Coordinate with investigator
- Provide investigator with archive reference
- Update DPP with investigator access information
- Permanent retention (no expiration)

## 7.0 DPP Query and Reporting

### 7.1 Query Capabilities

DPP system supports queries:
- By aircraft MSN
- By download date range
- By event type (routine, incident, accident)
- By recording unit serial number
- By operator/technician name
- By compliance status

### 7.2 Automated Reports

Monthly reports generated:
- All downloads performed
- Retention policy compliance
- Access log summary
- Expiring retention periods (90-day alert)
- Archive integrity verification status

## 8.0 Integrity Verification

### 8.1 Annual Verification

Once per year, for a sample of archived data:
1. Retrieve archived media
2. Re-compute SHA-256 checksums
3. Compare with DPP entry hashes
4. Status: VERIFIED or MISMATCH
5. Document verification in DPP entry
6. Investigate any mismatches immediately

### 8.2 Continuous Monitoring

DPP system monitors:
- Archive environmental conditions (temperature, humidity)
- Media degradation indicators
- Access log anomalies
- Unauthorized access attempts

## 9.0 Nonconformance and Corrective Action

If DPP entry errors or data integrity issues found:
1. Document nonconformance
2. Initiate NCR (see PROC_31-06-01)
3. Quarantine affected data
4. Investigate root cause
5. Implement corrective actions
6. Re-verify data integrity
7. Update DPP entry with resolution

## 10.0 Example DPP Entry

See EXAMPLE_31-08-01 and EXAMPLE_31-08-02 for complete examples with DPP linkage.

---

**Approval History:**

| Authority | Status | Date | Signature |
|-----------|--------|------|-----------|
| Data Systems Engineering | Released | 2025-10-30 | [Digital Signature] |
| Data Governance | Approved | 2025-10-30 | [Digital Signature] |
| IT Security | Reviewed | 2025-10-30 | [Digital Signature] |

---

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
