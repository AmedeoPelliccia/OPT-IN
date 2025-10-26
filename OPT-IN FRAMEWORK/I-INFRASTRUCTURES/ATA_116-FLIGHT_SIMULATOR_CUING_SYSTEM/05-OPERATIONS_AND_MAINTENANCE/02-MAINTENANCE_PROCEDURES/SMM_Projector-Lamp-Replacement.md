# SMM: Projector Lamp Replacement Procedure

**Document ID:** SMM-ATA116-05-01  
**Revision:** 1.1.0  
**Effective Date:** 2029-01-01  
**Simulator ID:** FFS-001

---

## 1. Purpose

This procedure describes the steps to safely replace a projector lamp (laser module) in the FFS-001 visual system when brightness has degraded below acceptable levels.

**Note:** FFS-001 uses laser phosphor projectors. "Lamp" refers to the laser light source module, which has a typical lifespan of 20,000 hours.

---

## 2. When to Replace

Replace projector lamp when:
- **Brightness <80% of nominal** (measured during visual calibration)
- **Lamp hours >18,000 hours** (preventive replacement)
- **Projector fault** (lamp failure indicated)
- **Color shift** not correctable by calibration (lamp aging)

---

## 3. Safety Precautions

### 3.1 Electrical Safety
- **DANGER:** Projector contains high voltage (up to 400V). De-energize before opening.
- Turn off projector and disconnect AC power
- Wait 10 minutes for capacitors to discharge before opening projector cover
- Use lockout/tagout (LOTO) on circuit breaker

### 3.2 Laser Safety
- Lamp module contains Class 1 laser (IEC 60825-1)
- Do not attempt to disassemble lamp module (internal laser hazard)
- Wear laser safety goggles if viewing laser source directly (not required for this procedure)

### 3.3 Thermal Safety
- Lamp operates at high temperature (>200°C)
- Allow projector to cool for 30 minutes after shutdown before opening
- Do not touch lamp module until fully cooled

### 3.4 Personal Protective Equipment (PPE)
- Safety glasses
- Insulated gloves (when handling lamp module)
- Anti-static wrist strap (to prevent ESD damage)

---

## 4. Tools & Materials Required

| Item | Part Number | Quantity |
|------|-------------|----------|
| **Replacement Lamp Module** | AVS-LAMP-LPH-001 | 1 |
| **Phillips Screwdriver** | - | 1 |
| **Hex Key Set (2-6mm)** | - | 1 set |
| **Anti-Static Wrist Strap** | - | 1 |
| **Microfiber Cleaning Cloth** | - | 1 |
| **Isopropyl Alcohol (IPA)** | 99% purity | 50 mL |

---

## 5. Procedure

### 5.1 Preparation (15 minutes)

#### Step 1: Identify Projector to Service
1. Determine which projector requires lamp replacement (Left, Center, or Right)
2. Verify replacement lamp module is available and correct part number

#### Step 2: Shutdown and Lockout
1. From IOS, send shutdown command to projector
2. Wait for projector cooling fans to stop (~5 minutes)
3. Turn off projector power switch (rear panel)
4. Disconnect AC power cord from projector
5. Apply LOTO tag to circuit breaker (label: "PROJECTOR MAINTENANCE - DO NOT ENERGIZE")

#### Step 3: Access Projector
1. Use ladder or lift to access projector (mounted above screen, ~3m height)
2. Ensure work area is clear and stable
3. Wait 30 minutes for projector to cool to safe temperature (<50°C)

---

### 5.2 Lamp Module Removal (10 minutes)

#### Step 4: Open Projector Cover
1. Locate side access panel (left side of projector, marked "LAMP ACCESS")
2. Remove 4× Phillips screws securing access panel
3. Carefully remove access panel (store screws in safe location)

#### Step 5: Disconnect Lamp Module
1. Locate lamp module (large metallic box, center of projector)
2. Disconnect power connector (white 6-pin connector, press tab and pull gently)
3. Note: Connector may be tight; do not force. Wiggle gently if stuck.

#### Step 6: Remove Lamp Module Mounting
1. Locate 2× hex screws (4mm hex key) securing lamp module
2. Loosen screws (counterclockwise) but do not fully remove (captive screws)
3. Grasp lamp module handle and slide lamp module out (slides on rails, ~20 cm travel)
4. Carefully lower lamp module and place on anti-static mat

**CAUTION:** Lamp module weighs ~2 kg. Use both hands.

---

### 5.3 Lamp Module Installation (10 minutes)

#### Step 7: Inspect Lamp Bay
1. With lamp module removed, inspect lamp bay interior:
   - Check for dust or debris (clean with microfiber cloth if needed)
   - Inspect electrical connector for damage (bent pins, corrosion)
   - Verify no loose screws or foreign objects

#### Step 8: Install New Lamp Module
1. Remove new lamp module from packaging (handle by edges only, avoid touching optical surfaces)
2. Align lamp module with rails in lamp bay
3. Slide lamp module into position (should slide smoothly, ~20 cm)
4. Verify lamp module is fully seated (flush with mounting plate)

#### Step 9: Secure Lamp Module
1. Tighten 2× hex screws (4mm hex key) to secure lamp module
   - **Torque:** 2 Nm (hand-tight, firm but do not over-torque)
2. Reconnect power connector (white 6-pin connector)
   - Press firmly until you hear/feel a click (connector fully seated)

---

### 5.4 Verification and Closeup (15 minutes)

#### Step 10: Optical Surface Cleaning
1. Inspect front optical window of lamp module
2. If dusty or smudged, clean with microfiber cloth and IPA
   - Spray IPA on cloth (not directly on optical surface)
   - Wipe gently in circular motion
   - Allow to air dry (30 seconds)

#### Step 11: Replace Access Panel
1. Align access panel with projector body
2. Install 4× Phillips screws (hand-tight, do not over-torque)
3. Verify panel is flush and secure

#### Step 12: Re-Energize Projector
1. Reconnect AC power cord to projector
2. Remove LOTO tag from circuit breaker
3. Turn on projector power switch (rear panel)
4. Projector will perform self-test (~2 minutes)
5. Verify projector displays image (may be dim initially, will brighten after warm-up)

---

### 5.5 Post-Replacement Testing (20 minutes)

#### Step 13: Lamp Break-In
1. Run projector at full brightness for 30 minutes (lamp break-in period)
2. Monitor for any abnormal behavior (flickering, color shift, errors)

#### Step 14: Visual Calibration
1. After 30-minute break-in, perform full visual calibration (see `/03-CALIBRATION_AND_ALIGNMENT/PROC_Visual-Color-And-Geometry-Calibration.md`)
2. This is critical to ensure proper color balance and brightness uniformity with new lamp

#### Step 15: Brightness Verification
1. Measure white level brightness at Design Eye Point
   - **Expected:** 80-100 cd/m² (should be at high end with new lamp)
2. If brightness is outside expected range, troubleshoot (verify lamp module is correct part number, re-seat lamp module)

---

## 6. Documentation

### 6.1 Record Keeping
1. Log lamp replacement in `/06-REGISTRY_AND_LOGS/calibration_log.csv`:
   - Date, projector ID (Left/Center/Right)
   - Old lamp hours, new lamp part number
   - Technician name
2. Update projector maintenance record (lamp replacement count)
3. Reset lamp hour counter on projector (refer to projector service manual)

### 6.2 Dispose of Old Lamp
1. Old lamp module must be disposed of properly (contains hazardous materials)
2. Return old lamp to vendor for recycling (if applicable)
3. Follow local environmental regulations for electronic waste

---

## 7. Troubleshooting

| Symptom | Possible Cause | Corrective Action |
|---------|----------------|-------------------|
| **Projector won't power on** | Power connector not fully seated | Re-seat power connector, ensure click |
| **Lamp fault error** | Incorrect lamp module part number | Verify part number AVS-LAMP-LPH-001 |
| **Brightness still low** | Lamp not fully broken in | Run projector for additional 1 hour |
| **Color shift** | Calibration needed | Perform full visual calibration |
| **Flickering** | Loose power connector | Re-seat power connector, tighten screws |

---

## 8. Approval

**Author:** Visual Systems Technician  
**Reviewed by:** Chief Simulator Engineer  
**Approved by:** Simulator Engineering Authority  
**Approval Date:** 2028-12-15  

**Signature:** ______________________

---

*Refs: ATA 116, SPEC_Projector-And-Display-System.md, Projector Service Manual*
