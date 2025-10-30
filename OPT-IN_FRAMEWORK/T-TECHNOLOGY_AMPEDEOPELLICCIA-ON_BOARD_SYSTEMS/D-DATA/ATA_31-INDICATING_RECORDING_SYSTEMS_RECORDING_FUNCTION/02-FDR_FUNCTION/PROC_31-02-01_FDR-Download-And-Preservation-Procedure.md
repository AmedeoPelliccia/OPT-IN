# PROC_31-02-01 — FDR Download and Evidence Preservation

**Document ID:** PROC_31-02-01  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Chapter:** ATA 31 - Indicating & Recording Systems (Recording Function)

**Related Documents:** [DESC_31-02-01](DESC_31-02-01_FDR-System-Description.md) • [DATA_31-02-02](DATA_31-02-02_Mandatory-FDR-Parameters.csv) • [PROC_31-04-01](../04-DATA_MANAGEMENT_AND_DPP/PROC_31-04-01_DPP-Entry-And-Archival.md) • [EXAMPLE_31-08-01](../08-EXAMPLES_AND_RECORDS/EXAMPLE_31-08-01_FDR-Download-Record.json)

## 1.0 Purpose

This procedure establishes the safe, auditable process for downloading and preserving Flight Data Recorder (FDR) data following operational events, incidents, accidents, or routine maintenance activities. It ensures data integrity, chain-of-custody documentation, and compliance with regulatory requirements for accident investigation evidence.

## 2.0 Safety & Governance

### 2.1 Personnel Requirements

- **Qualification:** Personnel must be trained and certified in FDR download procedures
- **Authorization:** Download authorization required from Chief Pilot or Director of Maintenance
- **Incident/Accident:** Follow investigator authority directions; do not proceed without clearance

### 2.2 Safety Precautions

1. **Electrical Safety:** Apply Lock-Out/Tag-Out (LOTO) procedures if aircraft power must be removed (see [ATA 20](../../../A-AIRFRAME/ATA_20-STANDARD_PRACTICES-AIRFRAME_INCL_WIRING_DIAGRAM_STANDARDS/))
2. **Evidence Preservation:** Do not alter, modify, or delete any recorded data
3. **ESD Protection:** Use proper ESD grounding when handling FDR unit or memory modules
4. **Physical Security:** Maintain visual custody of FDR unit and extracted data at all times

### 2.3 Regulatory Compliance

For accident/incident scenarios:
- Contact appropriate authority ([NTSB](https://www.ntsb.gov/), [FAA](https://www.faa.gov/), [EASA](https://www.easa.europa.eu/), etc.) immediately
- Follow investigator instructions precisely
- Do not download without investigator approval
- Preserve original data in aircraft until released by investigator

## 3.0 Pre-Download Checks

### 3.1 System Metadata Capture

Before initiating download, record the following system metadata:

1. **Aircraft Information:**
   - Aircraft MSN
   - Registration
   - Flight date/number (if applicable)
   - Location (airport code or coordinates)
   - Event type (routine, incident, accident, maintenance)

2. **FDR Unit Information:**
   - System ID
   - Part Number (PN)
   - Serial Number (SN)
   - Software baseline version
   - Software baseline SHA-256 hash
   - Installation date
   - Last maintenance date

3. **System Status:**
   - BIT status (pass/fail)
   - Power status
   - Time synchronization status (GPS/GNSS locked?)
   - Recording status (active/stopped)
   - Last recorded timestamp

4. **Photographic Documentation:**
   - Photograph FDR unit in situ
   - Photograph unit serial plate (clear, readable)
   - Photograph connector condition
   - Photograph any visible damage

### 3.2 Tool Preparation

1. **Download Tool Verification:**
   - Tool name: FDR-Extract
   - Tool version: 2.0.1 or later
   - Tool executable SHA-256 hash: [record hash]
   - Tool qualification status: TQL-5 per DO-178C
   - Tool calibration date (if applicable)

2. **Storage Media Preparation:**
   - Use write-once media (DVD-R, WORM drive, or write-protected USB)
   - Verify media is blank and error-free
   - Label media with:
     - Aircraft MSN
     - Date/time of download
     - Operator name
     - Unique media identifier

3. **Network Isolation:**
   - Disconnect download laptop from all networks
   - Disable Wi-Fi and Bluetooth
   - Use standalone (air-gapped) configuration

## 4.0 Download Procedure

### 4.1 Connection

1. Connect download tool to FDR unit via USB or Ethernet interface
2. Verify connection LED indicators (green = good, red = fault)
3. Launch FDR-Extract tool in isolated mode (no network access)

### 4.2 Data Extraction

1. **Initiate Extraction:**
   ```
   FDR-Extract --mode=full --output=/media/write-once --hash=sha256
   ```

2. **Monitor Progress:**
   - Extraction progress displayed in real-time
   - Typical duration: 5-15 minutes for 25-hour recording
   - Do not interrupt or disconnect during extraction

3. **Automatic Operations:**
   - Tool extracts raw binary data files
   - Tool computes SHA-256 hash for each file during extraction
   - Tool generates download manifest JSON with metadata

### 4.3 Verification

1. **Checksum Verification:**
   - Tool automatically verifies checksums after extraction
   - Compare computed hashes with manifest
   - Status: PASS or FAIL displayed

2. **Completeness Check:**
   - Verify all expected files extracted
   - Check file sizes (non-zero, reasonable)
   - Verify timestamp range covers expected recording period

3. **Manifest Review:**
   - Review download manifest JSON
   - Verify all metadata fields populated
   - Check for extraction errors or warnings

### 4.4 Download Manifest Structure

Example manifest content (see EXAMPLE_31-08-01 for full template):

```json
{
  "download_id": "FDR-DL-YYYYMMDD-XXX",
  "msn": "AMPEL360-XXX",
  "unit": {
    "id": "FDR-XXX",
    "pn": "FDR-PN-100",
    "sn": "SNXXXXX",
    "sw": {
      "version": "1.2.3",
      "hash": "sha256:aaaaaaa..."
    }
  },
  "extraction_tool": {
    "name": "FDR-Extract",
    "version": "2.0.1",
    "hash": "sha256:bbbbbbb..."
  },
  "files": [
    {
      "filename": "fdr_raw_YYYYMMDD.bin",
      "sha256": "sha256:ccccccc...",
      "size_bytes": 12345678
    }
  ],
  "operator": "[technician.name]",
  "datetime": "YYYY-MM-DDTHH:MM:SSZ",
  "custody": [...]
}
```

## 5.0 Chain-of-Custody

### 5.1 Initial Custody Entry

Upon completion of download, create first custody entry:

1. **Custody Log Entry:**
   - By: [Technician name]
   - Action: "extracted"
   - Date/time: [ISO 8601 timestamp]
   - Location: [Airport code / facility]
   - Signature: [Digital or handwritten]

2. **Media Sealing:**
   - Place write-once media in tamper-evident envelope
   - Apply security seal with unique seal number
   - Record seal number in custody log
   - Sign across seal

3. **Custody Documentation:**
   - Complete chain-of-custody form
   - Attach form to sealed envelope
   - Photograph sealed envelope with seal number visible

### 5.2 Transfer of Custody

For any custody transfer:

1. Document transfer with:
   - Transferring party name and signature
   - Receiving party name and signature
   - Date/time of transfer (ISO 8601)
   - Transfer location
   - Transfer reason (e.g., "to archive", "to investigator")

2. Inspect seal integrity before and after transfer
3. Record seal condition (intact / broken / replaced)
4. If seal broken, record reason and replace with new seal

### 5.3 Storage and Archival

1. **Immediate Storage:**
   - Store sealed media in secure, access-controlled location
   - Environmental conditions: temperature 15-25°C, RH 30-60%
   - Keep away from magnetic fields and radiation sources

2. **DPP Upload:**
   - Upload manifest and hashes (not raw data) to DPP system
   - Link to aircraft MSN and event reference
   - Record DPP entry ID in custody log

3. **Long-term Archive:**
   - Transfer to long-term archive facility within 30 days
   - Archive retention: minimum 5 years (routine), indefinite (accident)
   - Record archive location and reference ID

## 6.0 Post-Download Actions

### 6.1 Aircraft System

1. **Do NOT erase FDR data** without proper authorization
2. For routine downloads: Data may be overwritten by subsequent flights (circular buffer)
3. For incident/accident: Preserve data per investigator instructions (may require FDR removal)

### 6.2 Verification on Archive

Within 48 hours of archival:

1. Retrieve archived media
2. Compute SHA-256 checksums of archived files
3. Compare with original manifest
4. Status: VERIFIED or MISMATCH
5. Document verification in archive log

### 6.3 Reporting

1. **Routine Downloads:**
   - Document download in aircraft logbook
   - Update maintenance tracking system
   - Report BIT faults or anomalies to engineering

2. **Incident/Accident Downloads:**
   - Notify Safety Department immediately
   - Submit download manifest to investigators
   - Provide custody documentation
   - Maintain confidentiality per investigator guidance

## 7.0 Example Records

### 7.1 Download Manifest

See `EXAMPLE_31-08-01_FDR-Download-Record.json` for complete example with:
- All required metadata fields
- SHA-256 hashes for each file
- Chain-of-custody entries
- Approval records

### 7.2 DPP Entry

After upload to DPP, update manifest with:
```json
"dpp_entry": {
  "dpp_id": "DPP-FDR-YYYYMMDD-XXX",
  "dpp_url": "https://dpp.ampel360.com/fdr/[id]"
}
```

## 8.0 Nonconformance Handling

If any step fails or produces unexpected results:

1. **STOP the procedure immediately**
2. Do NOT proceed to next step
3. Document the nonconformance
4. Contact Data Systems Engineering
5. Initiate NCR per PROC_31-06-01
6. Await engineering disposition before proceeding

Examples of nonconformances:
- Checksum verification failure
- Incomplete file extraction
- Tool malfunction or error messages
- Missing metadata
- Seal tampering or damage
- Custody documentation gaps

## 9.0 Training and Qualification

Personnel performing FDR downloads must:

1. Complete FDR download training course (8 hours classroom + 4 hours hands-on)
2. Demonstrate proficiency under supervision (minimum 3 downloads)
3. Receive certification from Data Systems Engineering
4. Recurrent training: every 24 months
5. Maintain download log (minimum 2 downloads per year to remain current)

## 10.0 Records Retention

- Download manifests: Permanent retention
- Custody logs: Permanent retention
- Raw FDR data: Minimum 5 years (routine), indefinite (accident)
- Verification reports: Minimum 5 years
- Training records: Duration of employment + 7 years

---

**Approval History:**

| Authority | Status | Date | Signature |
|-----------|--------|------|-----------|
| Data Systems Engineering | Released | 2025-10-30 | [Digital Signature] |
| Flight Operations | Approved | 2025-10-30 | [Digital Signature] |
| Safety Engineering | Approved | 2025-10-30 | [Digital Signature] |

---

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
