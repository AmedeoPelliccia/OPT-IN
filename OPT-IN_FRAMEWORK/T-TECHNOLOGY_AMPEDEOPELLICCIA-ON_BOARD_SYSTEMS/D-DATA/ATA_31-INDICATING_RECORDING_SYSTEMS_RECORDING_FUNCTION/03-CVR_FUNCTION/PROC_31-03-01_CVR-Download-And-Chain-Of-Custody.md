# PROC_31-03-01 — CVR Download and Chain-of-Custody

**Document ID:** PROC_31-03-01  
**Revision:** 1.0.0  
**Effective Date:** 2025-10-30  
**Chapter:** ATA 31 - Indicating & Recording Systems (Recording Function)

## 1.0 Purpose

This procedure establishes the process for downloading and preserving Cockpit Voice Recorder (CVR) audio recordings with strict chain-of-custody controls to protect sensitive pilot communications while ensuring evidence integrity for accident investigation.

## 2.0 Regulatory and Privacy Requirements

### 2.1 Access Restrictions

CVR audio contains sensitive pilot communications protected by:
- **FAA 14 CFR 135.609:** CVR recordings protection
- **ICAO Annex 13:** Protection of accident investigation information
- **EU Regulation 996/2010:** CVR confidentiality requirements

**WARNING:** Unauthorized disclosure of CVR audio may violate criminal statutes.

### 2.2 Authorized Personnel

CVR downloads may only be performed by:
- Certified CVR download technicians
- Authorized investigation personnel (NTSB, FAA, EASA, BEA, etc.)
- With written authorization from Chief Pilot or Safety Director

### 2.3 Use Limitations

CVR audio may be used ONLY for:
- Accident/incident investigation
- Safety analysis (de-identified)
- Technical troubleshooting (audio quality verification)

**NEVER** for:
- Disciplinary actions
- Performance evaluation
- Training (without explicit crew consent)
- Public disclosure

## 3.0 Pre-Download Authorization

### 3.1 Routine Download (Annual Test)

1. Obtain authorization from Chief Pilot or Director of Maintenance
2. Document authorization reference number
3. Verify no incident/accident occurred on last flight
4. Coordinate with flight crew (inform of download for testing)

### 3.2 Incident/Accident Download

1. **STOP** — Do not proceed without investigator approval
2. Contact appropriate authority immediately:
   - NTSB (US accidents): +1-202-314-6290
   - FAA (US incidents): Regional Flight Standards District Office
   - EASA (EU): National Aviation Authority
3. Preserve CVR in aircraft until released by investigator
4. Follow investigator instructions precisely
5. Document all contacts with investigators

## 4.0 Pre-Download Procedure

### 4.1 System Status Capture

Same as FDR procedure (see PROC_31-02-01 Section 3.1), plus:

**CVR-Specific Items:**
- Erase inhibit status (enabled/disabled)
- Last erase date/time
- Recording duration available
- Audio channel status (all 4 channels recording?)
- Microphone status (BIT pass/fail)

### 4.2 Tool Preparation

- Tool: CVR-Extract (integrated with FDR-Extract)
- Version: 2.0.1 or later
- Qualification: TQL-5 per DO-178C
- Storage: Write-once media (labeled "CVR AUDIO - RESTRICTED ACCESS")

### 4.3 Physical Security

Before download:
1. Clear cockpit area of unauthorized personnel
2. Post security notice: "CVR DOWNLOAD IN PROGRESS - AUTHORIZED PERSONNEL ONLY"
3. Ensure download area is private (no unauthorized observation)
4. Brief security personnel: No access during download

## 5.0 Download Procedure

### 5.1 Connection and Extraction

1. Connect download tool to CVR unit
2. Launch CVR-Extract with secure mode enabled
3. Authenticate operator credentials
4. Initiate extraction:
   ```
   CVR-Extract --mode=cvr --output=/media/cvr-restricted --hash=sha256 --encrypt=AES256
   ```

### 5.2 Audio File Extraction

Tool extracts:
- 4 audio channels as separate WAV files (16-bit PCM, 16 kHz)
- Metadata file with timestamps, channel assignments
- Manifest file with SHA-256 hashes

Typical files:
- cvr_ch1_capt_YYYYMMDD.wav
- cvr_ch2_fo_YYYYMMDD.wav
- cvr_ch3_area1_YYYYMMDD.wav
- cvr_ch4_area2_YYYYMMDD.wav
- cvr_metadata_YYYYMMDD.json
- cvr_manifest_YYYYMMDD.json

### 5.3 Encryption (Incident/Accident Only)

For incident/accident downloads:
- Tool automatically encrypts audio files with AES-256
- Encryption key provided only to authorized investigators
- Operator receives encrypted files + manifest (unencrypted)

For routine/test downloads:
- Encryption optional
- Audio files may be unencrypted for quality verification

## 6.0 Chain-of-Custody (Enhanced)

### 6.1 Initial Custody

CVR custody documentation is MORE RESTRICTIVE than FDR:

1. **Custody Log Entry:**
   - By: [Technician name + employee ID]
   - Action: "CVR audio extracted"
   - Date/time: [ISO 8601 timestamp]
   - Location: [Airport code / facility]
   - Authorization: [Reference number]
   - Signature: [Digital or handwritten]
   - Witness: [Second person signature REQUIRED]

2. **Media Sealing:**
   - Place write-once media in RED tamper-evident envelope
   - Apply TWO security seals (redundant)
   - Record both seal numbers
   - Sign across both seals
   - Witness signs seals

3. **Labeling:**
   - RED label: "CVR AUDIO - RESTRICTED ACCESS - PROTECTED UNDER 14 CFR 135.609"
   - Include: Aircraft MSN, download date, operator name, seal numbers

### 6.2 Storage Security

Immediate storage requirements:
- Locked safe or security cabinet (CVR-specific)
- Access log maintained (all access recorded)
- Environmental monitoring (temperature/humidity)
- Separate from FDR data storage

### 6.3 Transfer to Investigators

For incident/accident:
1. Investigators must provide written authorization
2. Verify investigator credentials (official ID)
3. Document transfer with:
   - Investigator name, agency, badge number
   - Transfer date/time
   - Seal condition verification
   - Signature of both parties + witness
4. Retain copy of investigator's authorization
5. Photograph transfer (if permitted by investigator)

## 7.0 Audio Quality Verification (Routine Downloads Only)

For routine/test downloads, verify audio quality:

### 7.1 Playback Test

1. Use secure playback environment (private room, headphones)
2. Play 30-second sample from each channel
3. Verify:
   - Audio present and clear
   - No excessive noise or distortion
   - Intelligible speech
   - Appropriate levels (not clipped or too quiet)

4. Document results:
   - Channel 1 (Capt): Pass / Fail
   - Channel 2 (FO): Pass / Fail
   - Channel 3 (Area 1): Pass / Fail
   - Channel 4 (Area 2): Pass / Fail

### 7.2 Spectral Analysis (Annual Test)

Use audio analysis tool to verify:
- Frequency response: 300 Hz to 8 kHz coverage
- SNR: >40 dB for boom mics
- THD: <1%
- No unexpected tones or artifacts

Document results in DATA_31-03-02.

## 8.0 Secure Deletion (Routine Downloads Only)

After successful quality verification:

1. Securely erase audio files from download laptop:
   ```
   shred -vfz -n 7 cvr_*.wav
   ```

2. Retain only:
   - Manifest file (with hashes)
   - Quality verification report
   - Metadata (no audio content)

3. Destroy write-once media (if used for test):
   - Physical destruction (shredder or incineration)
   - Document destruction in log

**NEVER** delete CVR audio for incident/accident downloads.

## 9.0 Records and Reporting

### 9.1 Documentation

Maintain permanent records:
- Download manifest (with SHA-256 hashes)
- Chain-of-custody log
- Authorization documentation
- Quality verification report (routine)
- Investigator transfer documentation (incident/accident)
- Secure deletion certificate (routine)

### 9.2 Reporting

- **Routine downloads:** Entry in aircraft logbook
- **Audio quality issues:** Notify Data Systems Engineering immediately
- **Incident/Accident:** Submit report to Safety Department + investigator

## 10.0 Privacy Protection

### 10.1 Access Logging

ALL access to CVR audio (playback, analysis, transfer) must be logged:
- Date/time
- Person accessing
- Reason for access
- Authorization reference
- Duration of access
- Actions performed

### 10.2 Audit Trail

Annual audit of CVR access logs by Safety Director:
- Verify all access was authorized
- Identify any unauthorized access attempts
- Review compliance with privacy regulations

### 10.3 Breach Response

If unauthorized access or disclosure occurs:
1. Immediately notify Chief Pilot, Safety Director, Legal Department
2. Document circumstances
3. Implement corrective actions
4. Report to regulatory authority if required
5. Notify affected crew members

## 11.0 Training and Certification

CVR download personnel must complete:
- FDR download training (see PROC_31-02-01)
- CVR-specific privacy and security training (4 hours)
- Signed non-disclosure agreement
- Security clearance verification
- Annual refresher training

## 12.0 Example Records

See EXAMPLE_31-08-02 for CVR download record example.

---

**Approval History:**

| Authority | Status | Date | Signature |
|-----------|--------|------|-----------|
| Data Systems Engineering | Released | 2025-10-30 | [Digital Signature] |
| Flight Operations | Approved | 2025-10-30 | [Digital Signature] |
| Safety Engineering | Approved | 2025-10-30 | [Digital Signature] |
| Legal Department | Reviewed | 2025-10-30 | [Digital Signature] |

---

*This document is part of the AMPEL360 ATA Chapter Mapping - OPT-IN Framework*
