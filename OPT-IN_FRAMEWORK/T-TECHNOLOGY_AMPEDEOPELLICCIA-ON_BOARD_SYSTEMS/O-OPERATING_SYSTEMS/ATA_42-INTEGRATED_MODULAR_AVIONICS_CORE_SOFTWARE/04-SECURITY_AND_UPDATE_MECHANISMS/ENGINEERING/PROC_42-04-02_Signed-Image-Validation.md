# PROC_42-04-02: Signed Image Validation Procedure

## Purpose
Define procedures for validating signed software images during boot and update.

## Validation Steps
1. Extract signature from image header
2. Compute SHA-256 hash of image payload
3. Verify signature using public key from root certificate
4. Check certificate validity and chain-of-trust
5. Verify version anti-rollback counter
6. Load image only if all checks pass

## Failure Actions
- Invalid signature: Refuse to load, log error
- Expired certificate: Refuse to load, alert maintenance
- Version rollback: Refuse to load, security event
- Hash mismatch: Refuse to load, possible tampering

## Responsibilities
- Secure Boot Module: Signature verification
- Health Monitor: Log security events
- Maintenance System: Alert on validation failures

## Revision
Version 1.0.0, 2025-10-30
