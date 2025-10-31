# ATA-24 ELECTRICAL POWER SOFTWARE
# DO-178C CONSOLIDATED CERTIFICATION PLAN

**Document ID:** ATA-24-00-00-PLAN-001  
**Version:** 1.0.0  
**Date:** 2025-10-31  
**Status:** Under Review

---

## 1. EXECUTIVE SUMMARY

This document provides the consolidated DO-178C certification plan for all software components 
within the ATA-24 Electrical Power system for the AMPEL360 aircraft.

### 1.1 Scope

Total Software Components: **38**

| DAL Level | Component Count | Percentage |
|-----------|----------------|------------|
| DAL-A     | 19              | 50.0%        |
| DAL-B     | 6              | 15.8%        |
| DAL-C     | 5              | 13.2%        |
| Non-Cert  | 8              | 21.1%        |

---

## 2. CERTIFICATION APPROACH

### 2.1 DO-178C Compliance Strategy

All certifiable software components shall comply with RTCA DO-178C "Software Considerations 
in Airborne Systems and Equipment Certification" at their designated Design Assurance Level.

### 2.2 Software Lifecycle

```
Requirements → Design → Implementation → Integration → Verification → Certification
     ↓            ↓           ↓              ↓              ↓              ↓
   Review      Review      Review+Test    Review+Test    Full Test    Authority Review
```

---

## 3. SOFTWARE COMPONENT BREAKDOWN

### 3.1 ATA-24-00: General Power Management (6 components)

| Component ID | Title | DAL | Status |
|--------------|-------|-----|--------|
| 2400010 | Energy Management System (EMS) Software | A | Planned |
| 2400011 | Power Conversion Firmware | A | Planned |
| 2400012 | Battery Management System (BMS) Software | A | Planned |
| 2400013 | Protections & Relay Logic Software | A | Planned |
| 2400014 | Power Quality Monitoring Software | C | Planned |
| 2400015 | Ground/Service Tools & SW | N/A | Non-Certifiable |


### 3.2 ATA-24-60: Fuel Cell Stacks

| Component ID | Title | DAL | Status |
|--------------|-------|-----|--------|
| 2460009 | Fuel-Cell Stack Control Software | A | Planned |
| 2460010 | Fuel-Cell Power Conditioning SW | A | Planned |
| 2460011 | BOP Diagnostics & Predictive Maintenance SW | B | Planned |
| 2460012 | H₂ Safety Management Software | A | Planned |
| 2460013 | Fuel-Cell HIL / Simulator SW | N/A | Non-Certifiable |
| 2460014 | Fuel-Cell Data Logger & Telemetry SW | C | Planned |


### 3.3 ATA-24-33: Solid-CO₂ Battery

| Component ID | Title | DAL | Status |
|--------------|-------|-----|--------|
| 2433009 | Solid-CO₂ Module Control SW | A | Planned |
| 2433010 | Sorbent Health & Life Management SW | B | Planned |
| 2433011 | CO₂ Storage & Compression Control SW | A | Planned |
| 2433012 | CO₂ Safety & Venting Controller SW | A | Planned |
| 2433013 | CO₂ Lab Simulator / HIL SW | N/A | Non-Certifiable |
| 2433014 | CO₂ Reporting & DPP Integration SW | C | Planned |


### 3.4 ATA-24-34: Endocircular Recharge Loops

| Component ID | Title | DAL | Status |
|--------------|-------|-----|--------|
| 2434008 | Endocircular Loop Controller SW | A | Planned |
| 2434009 | Thermal Energy Scheduler SW | B | Planned |
| 2434010 | Recharge Interface Protocol Stack | B | Planned |
| 2434011 | Loop Fault Detection & Isolation SW | A | Planned |
| 2434012 | Loop HIL & Bench Automation SW | N/A | Non-Certifiable |
| 2434013 | Loop Data Logger & Maintenance SW | C | Planned |
| 2434014 | Recharge→EMS Integration SW | A | Planned |


### 3.5 ATA-24-45: EWIS Monitoring

| Component ID | Title | DAL | Status |
|--------------|-------|-----|--------|
| 2445010 | EWIS Monitoring ECU Software | A | Planned |
| 2445011 | EWIS Sensor Node Firmware | B | Planned |
| 2445012 | EWIS Gateway Protocol Stack | A | Planned |
| 2445013 | EWIS Analytics & Trending Platform | C | Planned |
| 2445014 | EWIS Maintenance & Test Tools SW | N/A | Non-Certifiable |
| 2445015 | EWIS Fault Injection & HIL Tools | N/A | Non-Certifiable |
| 2445016 | EWIS Cybersecurity & Secure Boot Module | A | Planned |
| 2445017 | EWIS Update & Patch Manager | A | Planned |


### 3.6 ATA-24-99: Cross-Cutting Software

| Component ID | Title | DAL | Status |
|--------------|-------|-----|--------|
| 2499008 | System Health & Prognostics SW | B | Planned |
| 2499009 | Cybersecurity & Key Management SW | A | Planned |
| 2499010 | HIL Orchestrator / Test Automation SW | N/A | Non-Certifiable |
| 2499011 | Compliance & Traceability Tooling | N/A | Non-Certifiable |
| 2499012 | Integration Middleware | A | Planned |


---

## 4. CERTIFICATION OBJECTIVES

### 4.1 DAL-A Objectives (19 components)

All objectives from Table A-1 through A-10 of DO-178C must be satisfied with independence.

**Key Objectives:**
- [ ] Software Planning Process (Complete)
- [ ] Software Development Process (Complete with traceability)
- [ ] Software Verification Process (Complete with independence)
- [ ] Software Configuration Management Process (Complete)
- [ ] Software Quality Assurance Process (Complete with independence)
- [ ] Certification Liaison Process (Complete)

**Additional Requirements:**
- Structural Coverage Analysis: 100% MC/DC
- Tool Qualification: DO-330 for all development tools
- Independence: Required for verification activities

### 4.2 DAL-B Objectives (6 components)

Modified subset of DAL-A objectives per DO-178C Table A-1.

**Key Objectives:**
- [ ] Software Planning Process (Complete)
- [ ] Software Development Process (Complete with traceability)
- [ ] Software Verification Process (Complete)
- [ ] Software Configuration Management Process (Complete)
- [ ] Software Quality Assurance Process (Complete)

**Requirements:**
- Structural Coverage Analysis: 100% Decision Coverage
- Tool Qualification: DO-330 for TQL-1 tools
- Independence: Recommended for verification

### 4.3 DAL-C Objectives (5 components)

Reduced set of objectives per DO-178C Table A-1.

**Key Objectives:**
- [ ] Software Planning Process (Tailored)
- [ ] Software Development Process (With traceability)
- [ ] Software Verification Process (Review + Test)
- [ ] Software Configuration Management Process (Complete)
- [ ] Software Quality Assurance Process (Tailored)

**Requirements:**
- Structural Coverage Analysis: 100% Statement Coverage
- Tool Qualification: Not required for most tools

---

## 5. VERIFICATION STRATEGY

### 5.1 Requirements-Based Testing

All software requirements shall be verified through:
- Requirements review
- Design review
- Code review
- Requirements-based testing

### 5.2 Structural Coverage Analysis

| DAL Level | Coverage Criteria | Analysis Method |
|-----------|-------------------|-----------------|
| A         | MC/DC            | Static analyzer + Dynamic test |
| B         | Decision         | Static analyzer + Dynamic test |
| C         | Statement        | Dynamic test |

### 5.3 Test Environment

- **Unit Testing:** Host-based with stub framework
- **Integration Testing:** Target hardware or HIL simulator
- **System Testing:** Full aircraft integration test bench

---

## 6. TOOL QUALIFICATION

### 6.1 Development Tools

| Tool | Version | TQL | DO-330 Status |
|------|---------|-----|---------------|
| GCC Compiler | 11.x | TQL-1 | Qualified |
| LLVM/Clang | 14.x | TQL-1 | Qualified |
| Python Interpreter | 3.10 | TQL-5 | Not Required |
| Static Analyzer (MISRA) | Latest | TQL-1 | Qualified |
| Coverage Analyzer | Latest | TQL-1 | Qualified |
| Requirements Manager | Latest | TQL-5 | Not Required |

### 6.2 Verification Tools

| Tool | Purpose | Qualification Needed |
|------|---------|---------------------|
| Unit Test Framework | Automated testing | No (TQL-5) |
| HIL Simulator | Integration test | Yes (TQL-1) |
| Code Review Tool | Static analysis | No (TQL-5) |

---

## 7. CONFIGURATION MANAGEMENT

### 7.1 Version Control

- **System:** Git with GitHub
- **Branching Strategy:** GitFlow
- **Tagging:** Semantic versioning (MAJOR.MINOR.PATCH)

### 7.2 Baseline Management

- Requirements Baseline
- Design Baseline
- Code Baseline
- Test Baseline
- Certification Baseline

### 7.3 Change Control

All changes shall be:
1. Documented with Change Request (CR)
2. Reviewed by Software Configuration Control Board (SCCB)
3. Impact-analyzed for safety and certification
4. Regression-tested
5. Documented in change log

---

## 8. QUALITY ASSURANCE

### 8.1 Reviews and Audits

| Review Type | Frequency | Participants |
|-------------|-----------|--------------|
| Requirements Review | Each baseline | Engineering + QA + Certification |
| Design Review | Each baseline | Engineering + QA |
| Code Review | Continuous | Peer engineers |
| Process Audit | Monthly | QA Team |
| Certification Audit | Pre-delivery | Authority Representative |

### 8.2 Metrics Collection

- Requirements traceability completeness
- Test coverage percentage
- Defect detection rate
- Review effectiveness
- Schedule adherence

---

## 9. CERTIFICATION SCHEDULE

### 9.1 Timeline (Estimated)

| Phase | Duration | Deliverables |
|-------|----------|--------------|
| Planning | Month 1-2 | All plans complete |
| Requirements | Month 3-4 | SRS complete, reviewed |
| Design | Month 5-7 | SDD complete, reviewed |
| Implementation | Month 8-12 | Code complete, reviewed |
| Verification | Month 13-16 | All tests complete, coverage met |
| Certification Prep | Month 17-18 | Compliance matrix, evidence package |
| Authority Review | Month 19-20 | FAA/EASA review and approval |

### 9.2 Milestones

- [ ] Software Plans Approval
- [ ] Requirements Baseline Approval
- [ ] Design Baseline Approval
- [ ] Code Baseline Freeze
- [ ] Verification Complete
- [ ] Compliance Review Complete
- [ ] Type Certificate Amendment Issued

---

## 10. COMPLIANCE MATRIX

Detailed mapping of DO-178C objectives to project artifacts:

| DO-178C Objective | Applicable To | Evidence Location | Status |
|-------------------|---------------|-------------------|--------|
| A-1: Plans | All DAL-A/B/C | This document | Draft |
| A-2: Requirements | All DAL-A/B/C | SWDOC-*_REQUIREMENTS.md | Planned |
| A-3: Design | All DAL-A/B/C | SWDOC-*_DESIGN_DESCRIPTION.md | Planned |
| A-4: Code | All DAL-A/B/C | SW-*.c, SW-*.py | In Progress |
| A-5: Integration | All DAL-A/B/C | SWTEST-* | Planned |
| A-6: Verification | All DAL-A/B/C | Test Reports | Planned |
| A-7: CM | All DAL-A/B/C | Git repository | Active |
| A-8: QA | All DAL-A/B/C | QA Records | Active |

---

## 11. REFERENCES

### 11.1 Regulatory Standards

- RTCA DO-178C - Software Considerations in Airborne Systems
- RTCA DO-330 - Software Tool Qualification Considerations
- RTCA DO-254 - Design Assurance Guidance for Airborne Electronic Hardware
- FAA AC 20-115D - Airborne Software Assurance
- EASA CS-25 - Certification Specifications for Large Aeroplanes

### 11.2 Internal Documents

- AMPEL360 System Requirements Specification
- ATA-24 System Safety Assessment
- AMPEL360 Software Development Standards
- AMPEL360 Software Verification Standards

---

## 12. DOCUMENT APPROVALS

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Software Manager | Amedeo Pelliccia | _____________ | 2025-10-31 |
| Chief Engineer | [TBD] | _____________ | ________ |
| Quality Assurance | [TBD] | _____________ | ________ |
| Certification Manager | [TBD] | _____________ | ________ |

---

**End of Document**

*This document is controlled and maintained in the AMPEL360 Configuration Management System.*
