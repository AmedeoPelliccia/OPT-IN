# Role-Based Access Control (RBAC) Policy
**Revision:** 1.0.0

## 1. Defined Roles
- `REGULATOR`: Airworthiness authority (e.g., EASA, FAA).
- `OPERATOR`: The airline operating the aircraft.
- `MRO`: Maintenance, Repair, and Overhaul organization.
- `LESSOR`: Aircraft owner/lessor.
- `OEM`: Original Equipment Manufacturer (AMPEL).
- `AUDITOR`: Authorized third-party auditor.

## 2. Data Classifications
- `PUBLIC`: Non-sensitive information.
- `INTERNAL`: Internal operational data.
- `REGULATED`: Airworthiness and maintenance data.
- `PII-SENSITIVE`: Personally Identifiable Information (crew, passengers), managed in an encrypted namespace with restricted access.

## 3. Permissions Matrix

| Role | `read_passport` | `append_event` | `read_piidata` |
|:---|:---:|:---:|:---:|
| `REGULATOR` | ✅ | ❌ | ✅ |
| `OPERATOR` | ✅ | ✅ | ✅ |
| `MRO` | ✅ | ✅ | ❌ |
| `LESSOR` | ✅ | ❌ | ❌ |
| `OEM` | ✅ | ❌ | ❌ |
| `AUDITOR` | ✅ | ❌ | ❌ |
