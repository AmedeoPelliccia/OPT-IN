# N-NEURAL_NETWORKS_USERS_TRACEABILITY

Authoritative hub for Digital Product Passport (DPP), AI/ML analytics, user interactions, and lifecycle traceability.

## Contents
- [ATA_95-DIGITAL_PRODUCT_PASSPORT](ATA_95-DIGITAL_PRODUCT_PASSPORT/)
  - Governance & schemas (JSON Schema, data dictionary)
  - Identity & access (RBAC, certificates)
  - Passport Data Lake (by aircraft MSN, by part SN)
  - Event Ledger (append-only, signed)
  - Analytics & models (RUL, health monitoring)
  - APIs & integrations (OpenAPI)
  - Audit & compliance reports

## Scope
- **DPP:** Single source of truth for configuration, maintenance, software, and utilization.
- **Traceability:** End-to-end links from raw material to in-service performance.
- **AI/ML:** Models and features used for health monitoring and planning.
- **Users:** Access control, roles, and accountability for data changes.

## Conventions
- **Naming:** `<DOC>_<SUBJECT>_rev<SEMVER>_<YYYYMMDD>.<ext>`
- **Sidecars:** Every file has `<file>.meta.yaml` with `{id, type, title, revision, effective_date, integrity.checksum}`
- **Data classes:** `PUBLIC | INTERNAL | REGULATED | PII-SENSITIVE`
- **Integrity:** SHA-256 checksums; detached signatures (ed25519 or RSA-4096) for passports and ledger entries
- **Ledger:** Append-only, chained via `prev_event_hash`; Merkle root per batch

## Minimum RBAC
- Roles: `REGULATOR, OPERATOR, MRO, LESSOR, OEM, AUDITOR`
- Ops: `read_passport, append_event, read_piidata, read_models`
- PII stored in encrypted namespace; keys in HSM

## Cross-References
- ATA 42 (IMA), ATA 45 (OMS), ATA 02 (Ops Info), ATA 03 (GSE), ATA 115–116 (Simulators)

## CI Checks (required)
- Sidecar schema validation
- JSON Schema validation for passports and events
- Ledger chain/Merkle verification
- Link integrity in indexes
- Signature verification for `Data_Lake` and `Event_Ledger`

> Note: If ATA 95 is still provisional, title it `ATA_95 (Prov) – DIGITAL_PRODUCT_PASSPORT` and set `status: DRAFT` in all `.meta.yaml`. Otherwise, drop “(Prov)” and set `status: RELEASED/RATIFIED`.

