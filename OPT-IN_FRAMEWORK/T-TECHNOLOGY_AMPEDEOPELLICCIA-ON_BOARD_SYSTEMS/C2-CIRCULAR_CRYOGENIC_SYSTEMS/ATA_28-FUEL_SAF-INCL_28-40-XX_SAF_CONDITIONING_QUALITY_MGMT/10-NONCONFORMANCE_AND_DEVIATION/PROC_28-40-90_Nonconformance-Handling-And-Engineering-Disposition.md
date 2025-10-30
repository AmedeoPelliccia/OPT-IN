# PROC_28-40-90 — Nonconformance Handling and Engineering Disposition

Revision: 1.0.0
Effective date: 2025-10-30
Owner: Cryogenic Systems Engineering

## Purpose

Defines process for identifying, documenting, and dispositioning nonconformances in cryogenic system components and processes.

## Nonconformance Categories

**Category 1 - Critical:**
Affects flight safety, primary containment, or structural integrity
- Requires immediate grounding until resolved
- Airworthiness approval mandatory for disposition

**Category 2 - Major:**
Affects system performance or reliability but not immediate safety
- Operations may continue with restrictions
- Engineering approval required for disposition

**Category 3 - Minor:**
Affects appearance, documentation, or non-critical function
- Operations continue normally
- Quality approval sufficient for disposition

## Nonconformance Reporting (NCR)

**Initiation:**
Any person may initiate NCR upon discovering nonconformance:
1. Complete NCR form per DATA_28-40-91
2. Tag or segregate nonconforming item (if hardware)
3. Notify supervisor and Quality
4. Assign unique NCR number

**Investigation:**
Quality and Engineering investigate:
- Root cause analysis
- Impact assessment
- Affected serial numbers/lot numbers
- Safety implications

## Disposition Options

**Use-As-Is:**
- Material/component meets intent of design despite nonconformance
- Safety assessment confirms no adverse impact
- Document rationale and approval

**Rework:**
- Return to conforming condition per original specifications
- No design change required
- Verify conformance after rework

**Repair:**
- Restore to serviceable condition using approved repair procedure
- May differ from original design
- Requires engineering analysis and approval
- Airworthiness approval if flight-critical

**Scrap:**
- Uneconomical or unsafe to repair
- Properly dispose and document
- Update DPP status

**Return to Supplier:**
- Supplier responsible for resolution
- Obtain replacement or credit

## Approval Authority

**Use-As-Is or Repair (Flight-Critical):**
- Cryogenic Systems Engineering Manager
- Airworthiness Authority
- Safety review (if structural or containment affected)

**Rework (restore to original design):**
- Quality Engineer

**Scrap:**
- Any supervisor or above

## Documentation

NCR documentation must include:
- NCR number and date
- Component identification (PN, SN, heat/lot)
- Description of nonconformance
- Category (1, 2, or 3)
- Root cause
- Disposition and rationale
- Approvals (signatures and dates)
- Verification of disposition implementation
- SHA-256 hash of NCR package
- DPP entry reference

## Corrective Action

For Category 1 and 2 NCRs:
- Implement corrective action to prevent recurrence
- Update procedures if process nonconformance
- Train personnel if human error
- Track effectiveness

## References

- [DATA_28-40-91: NCR Template](DATA_28-40-91_NCR-Template.csv)
- [DESC_28-40-01: Scope and Governance](../01-GENERAL/DESC_28-40-01_Scope-Governance-And-Effectivity.md)
- [PROC_28-40-80: DPP Entry and Record](../09-TRACEABILITY_AND_DPP/PROC_28-40-80_DPP-Entry-And-Record.md)

---

*All nonconformances must be documented and dispositioned before hardware use.*
