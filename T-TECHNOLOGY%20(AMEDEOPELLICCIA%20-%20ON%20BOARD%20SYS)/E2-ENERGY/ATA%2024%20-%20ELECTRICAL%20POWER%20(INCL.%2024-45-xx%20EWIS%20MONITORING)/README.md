# ATA 24: Electrical Power
**Revision:** 1.0.0  
**Effective Date:** 2029-01-10  

---

## 1.0 Scope and Architecture
This chapter defines the architecture, operation, and maintenance of the **AMPEL360 Electrical Power System**, a hybrid-electric, high-voltage DC (HVDC) network that serves both traditional aircraft loads and propulsion subsystems.

The AMPEL360’s electrical system functions as a distributed **energy grid**, integrating generation, storage, distribution, and orchestration subsystems. Its design prioritizes redundancy, scalability, and energy efficiency while ensuring airworthiness under HVDC operation.

**System Architecture Overview:**
1. **Generation** — Power produced by engine-driven generators and **Hydrogen Fuel Cell Stacks (FCS)**.  
2. **Storage** — **Solid-CO₂ batteries** provide rapid-response energy storage for propulsion assist, taxi operations, and backup power.  
3. **Distribution** — Redundant HVDC bus architecture (±800 VDC nominal) distributes power to propulsion assist modules and converts to LVDC for avionics, cabin, and mission systems.  
4. **Control & Orchestration** — The **Powertrain/Energy Orchestration Framework (ATA 42-55)** dynamically balances generation, load, and recharge flow.

---

## 2.0 Key Subsystems and Cross-References

| ATA Section | Subsystem | Description | Cross-References |
| :--- | :--- | :--- | :--- |
| **24-20-xx** | **AC/DC Generation** | Engine-driven starter-generators, transformer-rectifier units. | ATA 72 (Engines), ATA 80 (Starting) |
| **24-33-xx** | **Solid-CO₂ Batteries** | `(Prov)` Solid-state batteries providing peak assist and silent taxi capability. | ATA 21 (Cooling), ATA 26 (Fire Protection), ATA 92 (Model-Based Maintenance) |
| **24-34-xx** | **Endocircular Recharge Loops** | `(Prov)` Autonomous in-flight recharge converters and logic controllers. | ATA 42-55 (Orchestration Framework) |
| **24-40-xx** | **Power Distribution** | HVDC busbars, LV converters, protection, and load management. | — |
| **24-45-xx** | **EWIS Monitoring** | Arc-fault, insulation degradation, and connector-health monitoring. | ATA 45 (CMS/OMS) |
| **24-50-xx** | **Power Control & Conversion** | Inverters and converters for propulsion-assist and avionics power. | ATA 21 (Cooling) |
| **24-60-xx** | **Fuel Cell Stacks & DC Output** | Converts cryogenic H₂ into HVDC energy for main bus supply. | ATA 28 (Fuel/H₂), ATA 26 (Safety) |

---

## 3.0 Safety Requirements

### 3.1 High-Voltage (HV) Safety
- HVDC nominal: **800 VDC**  
- All maintenance requires de-energization and lock-out/tag-out (LOTO).  
- Verify zero-energy state using insulated test probes before work.  
- Use Class 0 rated gloves, face shield, and insulated tools per ATA 05.

### 3.2 Battery Safety
- Managed by an autonomous **Battery Management System (BMS)**.  
- Continuous cell-level monitoring for voltage, temperature, and internal resistance.  
- Handle Solid-CO₂ modules per ATA 26-30 Fire Protection procedures.  

### 3.3 Hydrogen System Interfaces
- Fuel Cell Stacks (ATA 24-60) are co-located with cryogenic H₂ systems (ATA 28-60).  
- Hydrogen safety zoning per ATA 26-40.  
- Maintenance in designated **Hazardous Electrical Zones** requires gas monitoring activation.

---

## 4.0 Maintenance Philosophy

- **Condition-Based Maintenance (CBM):** All power components report health data to ATA 45 (CMS).  
- **Prognostics (PHM):** Models defined in ATA 92 calculate Remaining Useful Life (RUL) for batteries and fuel cells.  
- **EWIS Integrity:** Continuous monitoring replaces most periodic visual inspections, except where CMS deems data insufficient.  
- **Software-Driven Configuration Control:** Power control firmware versions are cryptographically signed and traceable through ATA 95 (DPP).

---

## 5.0 Documentation and Data Governance

| Artifact Type | File Naming Convention | Example |
| :--- | :--- | :--- |
| Architecture | `ARCH_<Subject>_revX.Y.Z_YYYYMMDD.md` | `ARCH_Electrical-System-Overview_rev1.0.0_20290101.md` |
| Maintenance Task | `TASK_<ATA>-<ID>_<Subject>.md` | `TASK_24-45-01_EWIS-Visual-Inspection.md` |
| Procedure | `PROC_<Action>_<System>.md` | `PROC_Power-Shutdown-LOTO.md` |
| Safety Standard | `STD_<Topic>.md` | `STD_HV-Safety.md` |

---

## 6.0 Compliance and Standards
- **EASA CS-25 Subpart H** — Electrical Systems  
- **RTCA DO-160G** — Environmental Conditions and Test Procedures  
- **AC 25.1701-1 / SAE AS50881** — EWIS Requirements  
- **IEC 60664 / ISO 6469-3** — HV System Safety and Insulation Coordination  

---

## 7.0 References
- ATA 42-55 — *Powertrain/Energy Orchestration Framework*  
- ATA 92 — *Model-Based Maintenance*  
- ATA 95 — *Digital Product Passport*  
- ATA 03 — *Ground Support Equipment*  
- ATA 26 — *Fire and H₂ Safety*  

---

### **Metadata Sidecar Example (`README.md.meta.yaml`)**
```yaml
schema_version: "1.1"
id: "ATA24_README"
document:
  type: "README"
  title: "ATA 24 — Electrical Power (incl. EWIS Monitoring)"
  revision: "1.0.0"
  effective_date: "2029-01-10"
traceability:
  crossrefs: ["ATA 21", "ATA 26", "ATA 42-55", "ATA 45", "ATA 92", "ATA 95"]
approvals:
  - authority: "Chief Power Systems Engineering"
    status: "Released"
    date: "2029-01-08"
integrity:
  checksum: { algorithm: "sha256", value: "<sha256>" }
