# 05-DATABASES

This directory contains visual and navigation databases used by the AMPEL360 Full Flight Simulator.

## Subdirectories

- **01-VISUAL_DATABASES**: Visual scene databases including:
  - Airport terrain and texture databases
  - Runway and taxiway models
  - Buildings and landmarks
  - Environmental features (vegetation, water bodies)
  - Special visual effects (weather, lighting)
  - AIRAC cycle-aligned airport layouts

- **02-NAVIGATION_DATABASES**: Navigation data including:
  - AIRAC navigation database (waypoints, airways, procedures)
  - Airport charts and approach plates
  - Terrain and obstacle databases
  - Database version control and AIRAC cycle management

## Purpose

These databases provide the visual and navigational environment for realistic flight simulation, enabling training in various geographical locations and operational scenarios.

## Database Management

- **Update Frequency**: AIRAC 28-day cycle for navigation data
- **Version Control**: All databases version-controlled and traceable to source
- **Validation**: Visual databases validated against current airport surveys
- **Quality Assurance**: Regular audits to ensure database accuracy

## Related Sections

- **01-QUALIFICATION_AND_CERTIFICATION**: Database accuracy validated during QTG testing
- **02-AIRCRAFT_DATA_PACKAGE_OEM**: Performance data must align with terrain/environment
- **06-CONFIGURATION_AND_SOFTWARE**: Database loader software and configuration

---

*Note: Actual database files stored separately due to size. This directory contains database manifests, version information, and configuration files.*
