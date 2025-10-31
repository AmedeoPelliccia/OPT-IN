#!/usr/bin/env python3
"""
ATA-21 FMEA Calculator
Calculates Risk Priority Numbers (RPN) for Failure Modes and Effects Analysis

RPN = Severity × Occurrence × Detection

Author: AMPEL360 Systems Engineering
Version: 1.0.0
Date: 2025-10-31
"""

from dataclasses import dataclass
from enum import Enum
from typing import List, Optional
import json


class Severity(Enum):
    """Failure severity ratings"""
    CATASTROPHIC = 10  # Loss of aircraft or fatalities
    HAZARDOUS = 9      # Serious injuries, major damage
    MAJOR = 7          # Significant impact on safety/mission
    MINOR = 4          # Noticeable degradation
    NEGLIGIBLE = 1     # Minimal impact


class Occurrence(Enum):
    """Failure occurrence probability ratings"""
    VERY_HIGH = 10     # > 1 in 100
    HIGH = 8           # 1 in 1,000
    MODERATE = 5       # 1 in 10,000
    LOW = 3            # 1 in 100,000
    REMOTE = 1         # < 1 in 1,000,000


class Detection(Enum):
    """Failure detection capability ratings"""
    NONE = 10          # No detection method
    VERY_LOW = 8       # Difficult to detect
    LOW = 6            # Detection uncertain
    MODERATE = 4       # Likely to detect
    HIGH = 2           # Will detect in time
    CERTAIN = 1        # Automatic detection


@dataclass
class FailureMode:
    """Represents a single failure mode"""
    id: str
    component: str
    function: str
    failure_mode: str
    effects_local: str
    effects_system: str
    effects_aircraft: str
    severity: Severity
    causes: List[str]
    occurrence: Occurrence
    current_controls: List[str]
    detection: Detection
    recommended_actions: Optional[List[str]] = None
    
    @property
    def rpn(self) -> int:
        """Calculate Risk Priority Number"""
        return self.severity.value * self.occurrence.value * self.detection.value
    
    @property
    def risk_level(self) -> str:
        """Determine risk level based on RPN"""
        if self.rpn >= 200:
            return "CRITICAL"
        elif self.rpn >= 100:
            return "HIGH"
        elif self.rpn >= 40:
            return "MEDIUM"
        else:
            return "LOW"


class FMEACalculator:
    """FMEA analysis calculator and reporter"""
    
    def __init__(self):
        self.failure_modes: List[FailureMode] = []
    
    def add_failure_mode(self, fm: FailureMode):
        """Add a failure mode to the analysis"""
        self.failure_modes.append(fm)
    
    def calculate_all_rpns(self) -> List[tuple]:
        """Calculate RPNs for all failure modes"""
        results = []
        for fm in self.failure_modes:
            results.append((
                fm.id,
                fm.component,
                fm.failure_mode,
                fm.severity.value,
                fm.occurrence.value,
                fm.detection.value,
                fm.rpn,
                fm.risk_level
            ))
        return results
    
    def get_critical_failure_modes(self, threshold: int = 100) -> List[FailureMode]:
        """Get failure modes with RPN above threshold"""
        return [fm for fm in self.failure_modes if fm.rpn >= threshold]
    
    def generate_report(self, output_file: str = "fmea_report.json"):
        """Generate FMEA report in JSON format"""
        report = {
            "analysis_date": "2025-10-31",
            "system": "ATA-21 Air Conditioning and Pressurization",
            "total_failure_modes": len(self.failure_modes),
            "failure_modes": []
        }
        
        for fm in self.failure_modes:
            fm_data = {
                "id": fm.id,
                "component": fm.component,
                "function": fm.function,
                "failure_mode": fm.failure_mode,
                "effects": {
                    "local": fm.effects_local,
                    "system": fm.effects_system,
                    "aircraft": fm.effects_aircraft
                },
                "severity": {
                    "rating": fm.severity.name,
                    "value": fm.severity.value
                },
                "causes": fm.causes,
                "occurrence": {
                    "rating": fm.occurrence.name,
                    "value": fm.occurrence.value
                },
                "current_controls": fm.current_controls,
                "detection": {
                    "rating": fm.detection.name,
                    "value": fm.detection.value
                },
                "rpn": fm.rpn,
                "risk_level": fm.risk_level,
                "recommended_actions": fm.recommended_actions or []
            }
            report["failure_modes"].append(fm_data)
        
        with open(output_file, 'w') as f:
            json.dump(report, f, indent=2)
        
        return report
    
    def print_summary(self):
        """Print summary statistics"""
        total = len(self.failure_modes)
        critical = len([fm for fm in self.failure_modes if fm.risk_level == "CRITICAL"])
        high = len([fm for fm in self.failure_modes if fm.risk_level == "HIGH"])
        medium = len([fm for fm in self.failure_modes if fm.risk_level == "MEDIUM"])
        low = len([fm for fm in self.failure_modes if fm.risk_level == "LOW"])
        
        print("=" * 60)
        print("FMEA Analysis Summary - ATA-21")
        print("=" * 60)
        print(f"Total Failure Modes: {total}")
        print(f"Critical Risk (RPN ≥ 200): {critical}")
        print(f"High Risk (RPN 100-199): {high}")
        print(f"Medium Risk (RPN 40-99): {medium}")
        print(f"Low Risk (RPN < 40): {low}")
        print("=" * 60)


def example_analysis():
    """Example FMEA analysis for ATA-21 components"""
    
    calc = FMEACalculator()
    
    # Example 1: Outflow valve stuck closed
    fm1 = FailureMode(
        id="FM-21-001",
        component="Outflow Valve",
        function="Control cabin pressure",
        failure_mode="Valve stuck closed",
        effects_local="No cabin pressure relief",
        effects_system="Cabin overpressure",
        effects_aircraft="Structural damage, rapid decompression if relief valve activates",
        severity=Severity.HAZARDOUS,
        causes=[
            "Mechanical jam",
            "Ice formation",
            "Actuator failure",
            "Foreign object"
        ],
        occurrence=Occurrence.LOW,
        current_controls=[
            "Redundant outflow valves",
            "Pressure relief valves",
            "Regular inspection",
            "Position feedback monitoring"
        ],
        detection=Detection.HIGH,
        recommended_actions=[
            "Enhance BITE monitoring",
            "Add temperature monitoring for ice detection"
        ]
    )
    calc.add_failure_mode(fm1)
    
    # Example 2: Pack overheat
    fm2 = FailureMode(
        id="FM-21-002",
        component="Air Conditioning Pack",
        function="Condition air for cabin",
        failure_mode="Pack overheat",
        effects_local="Pack trips offline",
        effects_system="Reduced cooling capacity",
        effects_aircraft="Single pack operation, possible mission impact",
        severity=Severity.MAJOR,
        causes=[
            "Ram air door failure",
            "Turbine bearing failure",
            "Compressor surge",
            "Heat exchanger blockage"
        ],
        occurrence=Occurrence.MODERATE,
        current_controls=[
            "Temperature sensors",
            "Automatic pack trip",
            "Dual pack design"
        ],
        detection=Detection.CERTAIN,
        recommended_actions=[
            "Predictive maintenance algorithms",
            "Enhanced filtering for heat exchanger"
        ]
    )
    calc.add_failure_mode(fm2)
    
    # Example 3: Cabin pressure controller failure
    fm3 = FailureMode(
        id="FM-21-003",
        component="Cabin Pressure Controller",
        function="Regulate cabin pressure",
        failure_mode="Controller failure (no output)",
        effects_local="Loss of automatic pressure control",
        effects_system="Manual control required",
        effects_aircraft="Increased crew workload, possible altitude restriction",
        severity=Severity.MAJOR,
        causes=[
            "Electronic component failure",
            "Software fault",
            "Power supply loss",
            "Sensor failure"
        ],
        occurrence=Occurrence.LOW,
        current_controls=[
            "Redundant controller",
            "Manual backup control",
            "BITE monitoring",
            "Dual power supply"
        ],
        detection=Detection.HIGH,
        recommended_actions=[
            "DO-178C Level C software development",
            "Comprehensive BIT coverage"
        ]
    )
    calc.add_failure_mode(fm3)
    
    # Calculate and display results
    calc.print_summary()
    
    print("\nDetailed Results:")
    print("-" * 120)
    print(f"{'ID':<12} {'Component':<25} {'Failure Mode':<30} {'S':>3} {'O':>3} {'D':>3} {'RPN':>4} {'Risk':<10}")
    print("-" * 120)
    
    results = calc.calculate_all_rpns()
    for result in results:
        print(f"{result[0]:<12} {result[1]:<25} {result[2]:<30} {result[3]:>3} {result[4]:>3} {result[5]:>3} {result[6]:>4} {result[7]:<10}")
    
    # Generate JSON report
    calc.generate_report("ata21_fmea_report.json")
    print("\nDetailed report saved to: ata21_fmea_report.json")


if __name__ == "__main__":
    example_analysis()
