# Procedure: Shelf Life Control
**Revision:** 2.2.0

---

## 1.0 Purpose

To establish a formal program for the control and management of shelf-life-limited consumables and materials used in AMPEL360 maintenance operations.

---

## 2.0 Scope

This procedure applies to all shelf-life-limited materials including:
- Adhesives and sealants
- Lubricants and greases
- Hydraulic fluids
- Paints and primers
- Chemical compounds
- Rubber products (seals, O-rings)
- Filters (with time limits)
- Batteries

---

## 3.0 Definitions

**Shelf Life:** The period of time during which a material may be stored and remain suitable for use.

**Manufacture Date:** The date the product was manufactured by the supplier (typically printed on container).

**Expiration Date:** The date after which the material should not be used.

**Opened Shelf Life:** The period of time after opening that a material remains usable.

**FIFO:** First-In, First-Out inventory rotation method.

---

## 4.0 Responsibilities

### 4.1 Stores/Inventory Manager
- Maintain shelf-life database
- Issue materials based on FIFO
- Monitor expiration dates
- Remove expired materials from inventory
- Order replacement materials
- Conduct monthly shelf-life audits

### 4.2 Receiving Inspector
- Verify manufacture date on all incoming shelf-life materials
- Reject materials with insufficient remaining shelf life
- Label materials with received date
- Enter materials into shelf-life tracking system
- Route materials to proper storage

### 4.3 Technician/Mechanic
- Verify expiration date before use
- Document date opened on container
- Calculate and mark opened shelf life expiration
- Store opened materials properly
- Report expired materials to supervisor
- Do not use expired materials

### 4.4 Quality Assurance
- Audit shelf-life program compliance
- Review shelf-life logs
- Investigate use of expired materials
- Verify proper storage conditions

---

## 5.0 Receiving and Acceptance

### 5.1 Incoming Inspection
1. **Verify manufacturer's batch code and manufacture date** on container
2. **Calculate remaining shelf life:**
   - Remaining shelf life = Total shelf life – Age at receipt
   - Minimum acceptable: 75% of total shelf life remaining
3. **Example:**
   - Material: Adhesive with 12-month shelf life
   - Manufacture date: 3 months ago
   - Remaining: 9 months (75% of 12 months)
   - **Accept** if ≥9 months remaining

### 5.2 Labeling
1. **Affix shelf-life label** to container with:
   - Material name and part number
   - Manufacture date
   - Received date
   - Expiration date
   - Storage requirements
2. **Color coding** (optional):
   - Green: >6 months remaining
   - Yellow: 3-6 months remaining
   - Red: <3 months remaining

### 5.3 Database Entry
1. **Enter material** into shelf-life tracking system:
   - Material ID and nomenclature
   - Batch/Lot number
   - Quantity received
   - Manufacture date
   - Expiration date
   - Storage location
2. **Set automatic alerts:**
   - 60 days before expiration: Warning alert
   - 30 days before expiration: Critical alert
   - Expiration date: Auto-quarantine

---

## 6.0 Storage Requirements

### 6.1 Storage Conditions

| Material Type | Temperature | Humidity | Light | Storage Life |
| :------------ | :---------- | :------- | :---- | :----------- |
| Adhesive Films (Epoxy) | -18°C (0°F) | N/A | Dark | 12 months |
| Adhesive Paste (Epoxy) | 15-25°C (60-80°F) | <60% RH | Dark | 24 months |
| Sealants (Polysulfide) | 15-25°C (60-80°F) | <60% RH | Dark | 6-9 months |
| Sealants (RTV Silicone) | 15-25°C (60-80°F) | <60% RH | Dark | 12 months |
| Greases | 10-30°C (50-90°F) | <60% RH | Any | 5 years |
| Hydraulic Fluids | 10-30°C (50-90°F) | <60% RH | Dark | 5 years |
| Paints/Primers | 15-25°C (60-80°F) | <60% RH | Dark | 12-24 months |
| Solvents | 15-25°C (60-80°F) | <60% RH | Any | Unlimited |
| O-Rings/Seals (Rubber) | 15-25°C (60-80°F) | <60% RH | Dark | 5-10 years |

### 6.2 Storage Location
- Dedicated climate-controlled storage room
- Separate storage for flammable materials (approved cabinet)
- Freezer storage for epoxy films
- Segregation by material type
- Clear access for FIFO rotation

### 6.3 Storage Monitoring
- Daily temperature log for critical storage areas
- Weekly humidity check
- Monthly verification of storage conditions

---

## 7.0 Issue Procedures

### 7.1 Material Issue (FIFO)
1. **Technician requests** material by part number and quantity
2. **Stores clerk verifies** material availability in system
3. **Select oldest stock** with valid shelf life (FIFO)
4. **Verify expiration date** is >30 days in future (minimum)
5. **Issue material** and update inventory system
6. **Document:**
   - Date issued
   - Quantity issued
   - Work order number
   - Technician name
   - Batch/lot number

### 7.2 Partial Container Issue
1. **Verify expiration** date of opened container
2. **Check opened date** label on container
3. **Calculate opened shelf life** remaining
4. **If valid:** Issue material and update opened date if needed
5. **If expired:** Quarantine container and issue from new stock

---

## 8.0 Opened Shelf Life Management

### 8.1 Opening New Container
1. **Record date opened** on container label
2. **Calculate opened expiration** date:
   - Opened expiration = Date opened + Opened shelf life
3. **Mark opened expiration** date prominently on container
4. **Enter into system** as opened container

### 8.2 Opened Shelf Life Standards

| Material Type | Unopened Shelf Life | Opened Shelf Life |
| :------------ | :------------------ | :---------------- |
| Epoxy Film Adhesive | 12 months @ -18°C | 30 days @ RT (after thawing) |
| Epoxy Paste (2-part) | 24 months | 3 months (unmixed) |
| Polysulfide Sealant | 6-9 months | 30 days |
| RTV Silicone Sealant | 12 months | 3 months |
| Grease | 5 years | Unlimited (if contamination-free) |
| Hydraulic Fluid | 5 years | 6 months (if sealed) |
| Paint/Primer | 12-24 months | 6 months |
| Solvents | Unlimited | Unlimited (if sealed, contaminant-free) |

### 8.3 Opened Container Storage
- Reseal container tightly after each use
- Store per unopened requirements
- Keep opened containers segregated
- Use opened containers before opening new stock

---

## 9.0 Expiration Management

### 9.1 Approaching Expiration (60 days)
1. **System generates warning** alert
2. **Stores reviews** current usage rate
3. **Evaluate options:**
   - Use material for upcoming work orders
   - Transfer to higher-usage location
   - Plan to order replacement
   - Allow to expire if low usage

### 9.2 Critical Expiration (30 days)
1. **System generates critical** alert
2. **Stores manager reviews**
3. **Priority use** of material for appropriate work
4. **Do not reorder** until current stock used or expired
5. **Notify supervision** of pending expiration

### 9.3 Expired Material
1. **System auto-flags** material as expired
2. **Remove from active storage** immediately
3. **Quarantine** in designated expired material area
4. **Tag:** "EXPIRED – DO NOT USE"
5. **Document** in expired material log
6. **Dispose per environmental regulations**

---

## 10.0 Extension and Re-Certification

### 10.1 Shelf Life Extension Request
1. **Materials approaching expiration** may be submitted for testing
2. **Supplier may authorize** extension based on test results
3. **Required documentation:**
   - Original material certificate
   - Storage history (temperature logs)
   - Current condition assessment
   - Supplier test results
4. **If approved:** Update expiration date in system and on container label
5. **If rejected:** Dispose of material

### 10.2 Re-Certification
- Some materials may be re-certified by testing
- Send sample to qualified laboratory
- Test per original specification
- Document results and approval
- Update expiration date if approved

**Note:** Re-certification is generally NOT allowed for aerospace adhesives and sealants due to safety requirements.

---

## 11.0 Special Cases

### 11.1 Frozen Materials (Epoxy Films)
1. **Thawing procedure:**
   - Remove from freezer in original sealed packaging
   - Allow to warm to room temperature (4-8 hours)
   - Do not open until at room temperature
2. **Opened shelf life** begins after thawing
3. **Do not re-freeze** after thawing

### 11.2 Refrigerated Materials
1. **Allow to warm** to room temperature before use
2. **Check for condensation** and dry if necessary
3. **Opened shelf life** begins after opening

### 11.3 Materials with Multiple Expiration Dates
- Some 2-part materials have different expiration dates for each component
- **Use the earliest** expiration date for the assembly
- Track both components separately

---

## 12.0 Audit and Compliance

### 12.1 Monthly Shelf Life Audit
1. **Physical inventory** of all shelf-life materials
2. **Verify database** matches physical stock
3. **Check storage conditions** (temperature, humidity)
4. **Verify proper labeling**
5. **Identify expired materials**
6. **Review FIFO compliance**
7. **Document findings** and corrective actions

### 12.2 Annual Comprehensive Audit
1. **Complete physical inventory**
2. **Verify all materials** in database
3. **Review storage facilities** and equipment
4. **Assess program effectiveness**
5. **Review expired material disposal records**
6. **Update procedures** as needed

### 12.3 Non-Conformance
- Use of expired material is a **serious non-conformance**
- Immediate investigation required
- Affected aircraft/components must be evaluated
- Corrective action to prevent recurrence
- Training for involved personnel

---

## 13.0 Documentation and Records

### 13.1 Required Records
- Shelf-life database (electronic)
- Material receiving records
- Issue records
- Temperature/humidity logs
- Audit reports
- Expired material disposal records
- Extension/re-certification approvals

### 13.2 Record Retention
- Active material records: Maintain while in inventory
- Issue records: 3 years
- Audit reports: 5 years
- Expired material records: 3 years
- Extension approvals: Permanent (for materials used on aircraft)

---

## 14.0 Training

### 14.1 Required Training
- All personnel handling shelf-life materials
- Initial and annual recurrent training
- Topics:
  - Shelf life concepts
  - Storage requirements
  - FIFO procedures
  - Opened shelf life management
  - Expired material identification and handling

### 14.2 Documentation
- Training records for each employee
- Sign-off after training completion

---

## 15.0 References

- ATA 20 (Standard Practices - Airframe)
- CAT_Adhesives-And-Sealants.md
- CAT_Lubricants-Greases-And-Oils.md
- CAT_Cleaning-Agents-And-Solvents.md
- Manufacturer Material Data Sheets

---

*Revision History:*
- 2.2.0 (2025-10-27): Added opened shelf life management and frozen materials procedures
- 2.1.0 (2025-10-27): Updated storage requirements and extension procedures
- 2.0.0 (2025-10-27): Initial AMPEL360 procedure release
