# Release Notes: Image Generator Software v6.2.0

**Release Date:** 2029-01-15  
**Software Version:** 6.2.0  
**Applicable Simulator:** FFS-001 (AMPEL360)  
**Vendor:** Advanced Visual Systems Inc.

---

## 1. Overview

This release provides enhanced visual fidelity and performance optimizations specifically for the AMPEL360 Blended Wing Body simulator. Major updates include improved wing flex animation, open-fan propulsor rendering, and optimized latency for Level D qualification.

---

## 2. New Features

### 2.1 AMPEL360-Specific Enhancements
- **Wing Flex Animation:** Real-time wing bending visualization based on structural load data (ATA 57)
  - Dynamic vertex deformation based on aircraft state (airspeed, G-load, turbulence)
  - Smooth interpolation for realistic wing motion
- **Open-Fan Propulsor Rendering:** High-detail 3D model of open-fan propulsors
  - Rotating fan blades with correct blade-pass frequency
  - Exhaust heat distortion (shimmer effect)
  - Dynamic lighting on propulsor nacelles
- **BWB Ground Effect Visuals:** Enhanced ground proximity cues for Blended Wing Body configuration
  - Increased terrain detail at low altitude
  - Ground texture streaming optimization

### 2.2 Performance Improvements
- **Latency Reduction:** Image generator processing latency reduced from 35ms to 28ms (average)
  - Optimized rendering pipeline for 60 Hz frame rate
  - GPU command buffer optimization
- **Memory Optimization:** Reduced VRAM usage by 15% through texture compression improvements
- **Network Performance:** Reduced jitter on ARINC 610C interface

### 2.3 Visual Database Updates
- **LFPG (Paris Charles de Gaulle):** Updated to 2029 airport layout
  - New Terminal 4 (under construction)
  - Updated taxiway signage
- **Worldwide Database:** 25 additional high-detail airports (Level 4)

---

## 3. Bug Fixes

### 3.1 Critical
- **BUG-001:** Fixed visual artifact (z-fighting) on runway markings at certain viewing angles
- **BUG-002:** Corrected color space conversion for HDR display output (was causing slight color shift)

### 3.2 Major
- **BUG-010:** Fixed occasional frame drop during weather transitions (rain to clear)
- **BUG-011:** Corrected night lighting intensity for PAPI lights (was 10% too dim)

### 3.3 Minor
- **BUG-020:** Fixed texture streaming issue causing brief low-resolution textures at high speed
- **BUG-021:** Corrected shadow clipping on distant terrain

---

## 4. Known Issues

- **ISSUE-001:** Minor visual artifact on wing leading edge at extreme roll angles (>60°) - low priority, non-training impacting
- **ISSUE-002:** Occasional flicker in rain effect at very high frame rates (>70 Hz) - monitoring, may fix in v6.2.1

---

## 5. Installation Instructions

### 5.1 Prerequisites
- FFS-001 Host Computer running Linux 5.15+ kernel
- NVIDIA RTX A6000 GPU or equivalent (minimum 48GB VRAM)
- 100GB free disk space for software and visual database

### 5.2 Installation Procedure
1. **Backup Current Software:**
   ```bash
   cd /opt/simulator/image-generator
   tar -czf backup_v6.1.5_$(date +%Y%m%d).tar.gz *
   ```

2. **Install New Software:**
   ```bash
   cd /home/runner/work/OPT-IN/OPT-IN/"OPT-IN FRAMEWORK/I-INFRASTRUCTURES/ATA_116-FLIGHT_SIMULATOR_CUING_SYSTEM/04-SOFTWARE_AND_MODELS/01-IMAGE_GENERATOR_SW/v6.2.0"
   sudo ./install_IG_AMPEL360_v6.2.0.sh
   ```

3. **Verify Installation:**
   ```bash
   /opt/simulator/image-generator/ig_ampel360 --version
   # Expected output: IG_AMPEL360 v6.2.0 (build 20290115)
   ```

4. **Run Self-Test:**
   ```bash
   /opt/simulator/image-generator/ig_ampel360 --self-test
   # Verify all tests PASS
   ```

5. **Verify Signature (Security):**
   ```bash
   sha256sum IG_AMPEL360_v6.2.0.bin
   # Compare to value in IG_AMPEL360_v6.2.0.sig
   ```

### 5.3 Configuration
- Update IOS configuration to load AMPEL360 aircraft model v2.3
- Verify visual database path: `/opt/simulator/visual-db/ampel360/`
- Test visual system startup and verify no errors in log

---

## 6. Verification & Qualification

### 6.1 Post-Installation Tests
1. **Startup Test:** Verify image generator starts without errors
2. **Rendering Test:** Display test pattern (grid, runway) and verify no artifacts
3. **Latency Test:** Run QTG-TEST_4.A.1a to verify latency <40ms
4. **Fidelity Test:** Run QTG-TEST_4.C.2b to verify visual scene fidelity

### 6.2 Regression Testing
- Verify all previous qualification tests (QTG) still pass with new software
- If any test fails, rollback to previous software version and investigate

---

## 7. Rollback Procedure

If issues arise after installation:

1. **Stop Image Generator:**
   ```bash
   sudo systemctl stop ig-ampel360
   ```

2. **Restore Backup:**
   ```bash
   cd /opt/simulator/image-generator
   rm -rf *
   tar -xzf backup_v6.1.5_[date].tar.gz
   ```

3. **Restart System:**
   ```bash
   sudo systemctl start ig-ampel360
   ```

4. **Verify Rollback:**
   ```bash
   /opt/simulator/image-generator/ig_ampel360 --version
   # Should show v6.1.5 (previous version)
   ```

---

## 8. Support & Contact

**Vendor:** Advanced Visual Systems Inc.  
**Support Email:** support@avs-simulation.com  
**Support Phone:** +1-555-VISUAL-1  
**Documentation:** https://docs.avs-simulation.com/ig/v6.2.0

**On-Site Support:** Contact simulator engineering team  
**Defect Reporting:** Log in `/06-REGISTRY_AND_LOGS/defects.csv`

---

## 9. Change History

| Version | Date | Summary |
|---------|------|---------|
| v6.2.0 | 2029-01-15 | AMPEL360 BWB-specific features, latency reduction |
| v6.1.5 | 2028-10-01 | Performance optimization, bug fixes |
| v6.1.0 | 2028-06-15 | Initial AMPEL360 support, hybrid propulsion visuals |
| v6.0.0 | 2028-01-01 | Major release, new rendering engine |

---

## 10. Approval

**Release Manager:** A. Johnson, Advanced Visual Systems Inc.  
**Simulator Engineering Approval:** Chief Simulator Engineer, FFS-001  
**Approval Date:** 2029-01-15  

**Signature:** ______________________

---

*Refs: ATA 115, ATA 116, SPEC_Image-Generator-System.md*
