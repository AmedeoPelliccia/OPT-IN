# 06-CONFIGURATION_AND_SOFTWARE

This directory contains version-controlled software binaries, release notes, and Software Bills of Materials (SBOMs) for the AMPEL360 Full Flight Simulator.

## Subdirectories

- **01-HOST_SIMULATOR_SW**: Host simulator software including:
  - Real-time flight model execution software
  - System simulation software
  - Instructor Operating Station (IOS) software
  - Data recording and playback software
  - Software version manifests and release notes
  - SBOMs (Software Bill of Materials)

- **02-IMAGE_GENERATOR_SW**: Visual system and image generation software including:
  - Image generator software
  - Visual database renderer
  - Shader and graphics engine
  - Display calibration software
  - Software version manifests and release notes
  - SBOMs

## Purpose

This section maintains strict version control over all simulator software, ensuring configuration management, traceability, and the ability to restore or upgrade software as needed for qualification maintenance.

## Version Control Requirements

- All software versions must be tracked and documented
- Release notes must accompany each software version
- SBOMs required for cybersecurity and dependency management
- Software changes require impact assessment on qualification status
- Rollback capability must be maintained

## Software Update Process

1. Impact assessment against current qualification
2. Authority notification if required
3. Installation and verification
4. Affected QTG tests re-execution
5. Documentation update
6. Version registry update

## Related Sections

- **01-QUALIFICATION_AND_CERTIFICATION**: Software versions referenced in QTG documentation
- **02-AIRCRAFT_DATA_PACKAGE_OEM**: Software must correctly implement aircraft data
- **03-SIMULATOR_SYSTEMS_ARCHITECTURE**: Software architecture specifications
- **07-REGISTRY_AND_LOGS**: Current software versions tracked in status.json

---

*Note: Actual software binaries stored in secure version control system. This directory contains manifests, checksums, and configuration files.*
