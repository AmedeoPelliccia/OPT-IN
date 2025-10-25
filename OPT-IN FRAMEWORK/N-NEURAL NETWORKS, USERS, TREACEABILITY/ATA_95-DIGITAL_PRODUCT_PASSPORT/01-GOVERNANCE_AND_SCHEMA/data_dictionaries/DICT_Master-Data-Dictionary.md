# Master Data Dictionary
**Document ID:** DICT_Master-Data-Dictionary  
**Version:** 1.0.0  
**Last Updated:** 2028-12-10  
**Owner:** Data Governance Board

## Purpose

This data dictionary provides standardized definitions for all data elements used in the AMPEL360 Digital Product Passport system. It ensures consistent interpretation and usage of data across all lifecycle phases and stakeholder interactions.

---

## 1. Core Identifiers

### 1.1 URN (Uniform Resource Name) Scheme

All entities in the DPP system use URNs following the pattern:
```
urn:ampel360:<domain>:<identifier>
```

| Domain | Description | Example |
|:-------|:------------|:--------|
| `msn` | Manufacturer Serial Number (Aircraft) | `urn:ampel360:msn:001` |
| `part` | Part/Component Serial Number | `urn:ampel360:part:SN-ENG-L-12345` |
| `ledger` | Event Ledger Reference | `urn:ampel360:ledger:msn:001` |
| `event` | Individual Event | `urn:ampel360:event:MRO-1234-WO-5678` |

### 1.2 Aircraft Identifiers

| Field | Type | Description | Example |
|:------|:-----|:------------|:--------|
| **MSN** | String | Manufacturer Serial Number, unique per aircraft | `AMP360-001` |
| **Registration** | String | Civil aviation registration (tail number) | `D-AMPL` |
| **Model** | String | Aircraft model designation | `AMPEL360-200` |
| **Variant** | String | Configuration variant | `LH2-Extended` |

### 1.3 Part Identifiers

| Field | Type | Description | Example |
|:------|:-----|:------------|:--------|
| **Serial Number** | String | Unique serial number assigned by manufacturer | `SN-ENG-L-12345` |
| **Part Number** | String | Manufacturer part number | `AMPL-72-001-A` |
| **ATA Chapter** | String (2 digits) | ATA chapter classification | `72` |

---

## 2. Temporal Data Elements

All dates and times use **ISO 8601 format in UTC**.

| Field | Format | Description | Example |
|:------|:-------|:------------|:--------|
| **Date** | `YYYY-MM-DD` | Calendar date | `2029-04-15` |
| **DateTime** | `YYYY-MM-DDTHH:MM:SSZ` | Timestamp with timezone | `2029-04-15T18:00:00Z` |
| **Duration** | ISO 8601 Duration | Time span | `P1Y6M` (1 year, 6 months) |

---

## 3. Airworthiness and Compliance

### 3.1 Airworthiness Status

| Value | Description | Operational State |
|:------|:------------|:------------------|
| **AIRWORTHY** | Aircraft meets all regulatory requirements | Cleared for flight operations |
| **GROUNDED** | Aircraft temporarily not airworthy | Not authorized for flight |
| **MAINTENANCE** | Undergoing scheduled or unscheduled maintenance | Not available for operations |
| **DECOMMISSIONED** | Permanently retired | End of operational life |

### 3.2 Certificate References

| Field | Description | Example |
|:------|:------------|:--------|
| **Certificate of Airworthiness ID** | Unique identifier issued by authority | `EASA.AW.12345` |
| **Issuing Authority** | Regulatory body | `EASA`, `FAA`, `TCCA` |
| **Effective Date** | Date certificate becomes valid | `2028-01-15` |
| **Expiry Date** | Date certificate expires | `2029-01-15` |

---

## 4. Utilization Metrics

| Metric | Unit | Description |
|:-------|:-----|:------------|
| **Flight Hours** | Hours (decimal) | Total accumulated flight hours |
| **Flight Cycles** | Integer | Total takeoff-landing pairs |
| **Calendar Age** | Days | Days since manufacture date |
| **Time Since New (TSN)** | Hours | Operating time since manufacture |
| **Cycles Since New (CSN)** | Integer | Operating cycles since manufacture |
| **Time Since Overhaul (TSO)** | Hours | Operating time since last overhaul |
| **Cycles Since Overhaul (CSO)** | Integer | Operating cycles since last overhaul |

---

## 5. Event Types

Events recorded in the Event Ledger use standardized action types:

| Event Type | Description | Typical Actor |
|:-----------|:------------|:--------------|
| **MANUFACTURE** | Part or aircraft manufactured | OEM |
| **INSTALLATION** | Part installed on aircraft | MRO, OEM |
| **REMOVAL** | Part removed from aircraft | MRO |
| **REPLACEMENT** | Part replaced (combined removal + installation) | MRO |
| **INSPECTION** | Scheduled or unscheduled inspection performed | MRO, OPERATOR |
| **REPAIR** | Component repair | MRO |
| **MODIFICATION** | Design change or modification | OEM, MRO |
| **TRANSFER** | Change of ownership or operator | LESSOR, OPERATOR |
| **DECOMMISSION** | End of service life | OPERATOR |

---

## 6. Actor Types

| Actor Type | Description | Typical Permissions |
|:-----------|:------------|:-------------------|
| **OEM** | Original Equipment Manufacturer (AMPEL) | Read passports, limited event append |
| **MRO** | Maintenance, Repair, Overhaul organization | Read passports, append maintenance events |
| **OPERATOR** | Airline operating the aircraft | Read passports, append operational events |
| **LESSOR** | Aircraft owner/lessor | Read passports |
| **REGULATOR** | Airworthiness authority (EASA, FAA) | Read passports, read PII (with authorization) |
| **AUDITOR** | Third-party auditor | Read passports |

---

## 7. Data Classification Levels

| Classification | Access Control | Encryption | Examples |
|:---------------|:---------------|:-----------|:---------|
| **PUBLIC** | Open | No | Model designations, public certifications |
| **INTERNAL** | Role-based | Optional | Flight schedules, maintenance planning |
| **REGULATED** | Strict RBAC + audit | Recommended | Airworthiness data, maintenance logs |
| **PII-SENSITIVE** | Minimal access + consent | Mandatory | Crew records, passenger data |

---

## 8. Cryptographic Elements

### 8.1 Hash Values

| Field | Algorithm | Format | Description |
|:------|:----------|:-------|:------------|
| **prev_event_hash** | SHA-256 | 64 hex chars | Links event to previous event in chain |
| **merkle_root** | SHA-256 | 64 hex chars | Root of Merkle tree for batch verification |

### 8.2 Digital Signatures

| Field | Algorithm | Description |
|:------|:----------|:------------|
| **signature.algorithm** | `ed25519`, `ecdsa` | Signature algorithm used |
| **signature.signer_key_id** | String | Identifier of signing key |
| **signature.value** | Base64 | Signature bytes encoded |
| **log_sig** | Base64 | Transparency log anchor signature |

---

## 9. Configuration References

| Field | Description | Example |
|:------|:------------|:--------|
| **as_built_ref** | Event ID of initial build completion | `event_OEM-001-BuildComplete` |
| **as_maintained_ref** | Event ID of most recent maintenance | `event_MRO-1234-WorkOrder-5678` |
| **software_configuration** | Key-value pairs of software versions | `{"ima_os_version": "4.2.1"}` |

---

## 10. Provenance and Traceability

| Field | Description |
|:------|:------------|
| **event_ledger_ref** | URN pointing to complete event history |
| **previous_operators** | Array of past operators with date ranges |
| **previous_installations** | Array of past installation records for parts |

---

## 11. Maintenance Planning

| Field | Description |
|:------|:------------|
| **next_scheduled_maintenance** | Date of next planned maintenance |
| **maintenance_program_ref** | Reference to applicable maintenance program document |
| **last_inspection_date** | Date of most recent inspection |

---

## 12. Attachment Types

| Type | Description | Typical Use |
|:-----|:------------|:------------|
| **PHOTO** | Photographic evidence | Visual inspection, damage documentation |
| **DOCUMENT** | Supporting documentation | Work orders, certificates |
| **CERTIFICATE** | Regulatory certificates | Material certificates, conformity statements |
| **MEASUREMENT** | Measurement data files | Sensor readings, test results |

---

## Document Control

- **Version History:**
  - v1.0.0 (2028-12-10): Initial release
- **Next Review Date:** 2029-06-10
- **Related Documents:**
  - `GOV_Data-Governance-Policy_rev2.0.0_20281210.md`
  - Schema files in `/01-GOVERNANCE_AND_SCHEMA/schemas/`
