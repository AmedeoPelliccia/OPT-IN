# Procedure: 51-00-02 - Nonconformance and Disposition Workflow
**Revision:** 1.0.0

## 1. Purpose and Scope
This procedure defines the mandatory workflow when damage or defects exceed the limits for standard repair procedures. It ensures that all out-of-limits conditions receive proper engineering evaluation and approval before repair or continued operation.

## 2. Trigger Conditions
A Nonconformance Report (NCR) shall be raised when:
- Damage classification is "Requires Disposition" per `DATA_51-01-01`
- Multiple damages in close proximity exceed cumulative limits
- Repair materials or processes deviate from approved specifications
- Post-repair inspection reveals non-conforming results

## 3. Workflow Steps

### 3.1 Initiation
- **Responsible:** Structural Repair Technician or Inspector
- **Action:** Create NCR in the maintenance tracking system
- **Required Data:**
  - Damage location, dimensions, and classification
  - Photos and inspection reports
  - MSN and component part number
  - Initial assessment and proposed disposition

### 3.2 Engineering Review
- **Responsible:** Structural Engineering (OEM or Approved Design Organization)
- **Timeframe:** Within 5 business days for AOG situations, 15 days otherwise
- **Actions:**
  - Review damage documentation
  - Perform stress analysis if required
  - Determine one of the following dispositions:
    1. **Use-As-Is:** Damage is acceptable without repair
    2. **Repair:** Issue Engineering Order (EO) with specific repair instructions
    3. **Rework:** Remove existing repair and re-apply per new instructions
    4. **Scrap:** Component must be replaced

### 3.3 Disposition Documentation
- **Engineering Order (EO) shall include:**
  - Unique EO number
  - Detailed repair instructions or reference to applicable SRM procedure
  - Material specifications and process parameters
  - Acceptance criteria and required inspections
  - Effectivity (MSN range if applicable)
  - Approval signatures from authorized engineers

### 3.4 Execution
- **Responsible:** Certified Structural Repair Technician (Level appropriate to repair complexity)
- **Requirements:**
  - Follow EO instructions exactly; no field deviations permitted
  - Document all steps in repair record
  - Perform all required inspections and tests

### 3.5 Closure
- **Responsible:** Quality Assurance Inspector
- **Actions:**
  - Verify repair conforms to EO
  - Review all documentation for completeness
  - Update aircraft records and Digital Product Passport (ATA 95)
  - Close NCR in tracking system

## 4. Escalation Matrix

| Situation | Escalate To | Timeframe |
|-----------|-------------|-----------|
| AOG (Aircraft on Ground) | Chief Engineer + Program Manager | Immediate |
| Safety-Critical Structure | Airworthiness Authority (via DER) | 24 hours |
| Recurring Issue (>3 occurrences) | Reliability Engineering | Next review cycle |

## 5. Records Retention
- NCR records: Permanent (life of aircraft)
- Engineering Orders: Permanent
- Supporting analysis: Minimum 10 years after aircraft retirement

## 6. Cross-References
- `DATA_51-01-01`: Damage Classification Limits
- `STD_51-00-03`: Personnel Training and Certification
- ATA 04: Airworthiness Limitations
- ATA 95: Digital Product Passport

---
**Document Control:**
- **Owner:** Structural Repair Engineering
- **Approved By:** Chief Engineer, Airworthiness
- **Effective Date:** 2028-01-01
- **Next Review:** 2030-01-01
