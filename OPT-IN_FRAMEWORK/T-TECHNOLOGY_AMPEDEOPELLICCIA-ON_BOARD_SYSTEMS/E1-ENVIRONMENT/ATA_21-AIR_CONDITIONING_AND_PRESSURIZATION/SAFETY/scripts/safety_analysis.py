#!/usr/bin/env python3
"""
ATA-21 Safety Analysis Tool
Performs safety analysis calculations and reporting

Author: AMPEL360 Systems Engineering
Version: 1.0.0
Date: 2025-10-31
"""

import math
from dataclasses import dataclass
from enum import Enum
from typing import List, Dict, Optional


class FailureConditionClass(Enum):
    """FAR 25.1309 Failure Condition Classifications"""
    CATASTROPHIC = ("Catastrophic", 1e-9)
    HAZARDOUS = ("Hazardous", 1e-7)
    MAJOR = ("Major", 1e-5)
    MINOR = ("Minor", 1e-3)
    NO_SAFETY_EFFECT = ("No Safety Effect", None)
    
    def __init__(self, description: str, max_probability: Optional[float]):
        self.description = description
        self.max_probability = max_probability


@dataclass
class SafetyObjective:
    """Represents a safety objective for a failure condition"""
    id: str
    description: str
    failure_condition_class: FailureConditionClass
    quantitative_objective: Optional[float]
    qualitative_requirements: List[str]


class SafetyAnalyzer:
    """Performs safety analysis calculations"""
    
    def __init__(self, system_name: str = "ATA-21"):
        self.system_name = system_name
        self.objectives: List[SafetyObjective] = []
    
    def add_safety_objective(self, objective: SafetyObjective):
        """Add a safety objective"""
        self.objectives.append(objective)
    
    @staticmethod
    def calculate_series_reliability(component_reliabilities: List[float]) -> float:
        """Calculate system reliability for series configuration"""
        reliability = 1.0
        for r in component_reliabilities:
            reliability *= r
        return reliability
    
    @staticmethod
    def calculate_parallel_reliability(component_reliabilities: List[float]) -> float:
        """Calculate system reliability for parallel (redundant) configuration"""
        unreliability = 1.0
        for r in component_reliabilities:
            unreliability *= (1 - r)
        return 1 - unreliability
    
    @staticmethod
    def calculate_mtbf_from_failure_rate(failure_rate: float) -> float:
        """Calculate Mean Time Between Failures from failure rate
        
        Args:
            failure_rate: Failures per hour
            
        Returns:
            MTBF in hours
        """
        if failure_rate <= 0:
            return float('inf')
        return 1.0 / failure_rate
    
    @staticmethod
    def calculate_failure_rate_from_mtbf(mtbf: float) -> float:
        """Calculate failure rate from MTBF
        
        Args:
            mtbf: Mean time between failures in hours
            
        Returns:
            Failure rate (failures per hour)
        """
        if mtbf <= 0:
            return float('inf')
        return 1.0 / mtbf
    
    @staticmethod
    def calculate_probability_per_flight_hour(annual_probability: float, 
                                                flight_hours_per_year: float = 3000) -> float:
        """Convert annual probability to per-flight-hour probability
        
        Args:
            annual_probability: Probability per year
            flight_hours_per_year: Average flight hours per year (default 3000)
            
        Returns:
            Probability per flight hour
        """
        return annual_probability / flight_hours_per_year
    
    @staticmethod
    def calculate_common_cause_factor(beta: float, lambda_total: float) -> float:
        """Calculate common cause failure contribution
        
        Args:
            beta: Common cause factor (0 to 1)
            lambda_total: Total failure rate
            
        Returns:
            Common cause failure rate
        """
        return beta * lambda_total
    
    def generate_safety_report(self) -> Dict:
        """Generate safety analysis report"""
        report = {
            "system": self.system_name,
            "analysis_date": "2025-10-31",
            "safety_objectives": [],
            "summary": {
                "total_objectives": len(self.objectives),
                "catastrophic": 0,
                "hazardous": 0,
                "major": 0,
                "minor": 0
            }
        }
        
        for obj in self.objectives:
            obj_data = {
                "id": obj.id,
                "description": obj.description,
                "classification": obj.failure_condition_class.description,
                "quantitative_objective": obj.quantitative_objective,
                "qualitative_requirements": obj.qualitative_requirements
            }
            report["safety_objectives"].append(obj_data)
            
            # Update summary counts
            if obj.failure_condition_class == FailureConditionClass.CATASTROPHIC:
                report["summary"]["catastrophic"] += 1
            elif obj.failure_condition_class == FailureConditionClass.HAZARDOUS:
                report["summary"]["hazardous"] += 1
            elif obj.failure_condition_class == FailureConditionClass.MAJOR:
                report["summary"]["major"] += 1
            elif obj.failure_condition_class == FailureConditionClass.MINOR:
                report["summary"]["minor"] += 1
        
        return report
    
    def print_summary(self):
        """Print safety analysis summary"""
        report = self.generate_safety_report()
        
        print("=" * 80)
        print(f"Safety Analysis Summary - {self.system_name}")
        print("=" * 80)
        print(f"Total Safety Objectives: {report['summary']['total_objectives']}")
        print(f"Catastrophic: {report['summary']['catastrophic']}")
        print(f"Hazardous: {report['summary']['hazardous']}")
        print(f"Major: {report['summary']['major']}")
        print(f"Minor: {report['summary']['minor']}")
        print("=" * 80)


def example_safety_analysis():
    """Example safety analysis for ATA-21"""
    
    analyzer = SafetyAnalyzer("ATA-21 Air Conditioning and Pressurization")
    
    # Example objective 1: Loss of cabin pressurization
    obj1 = SafetyObjective(
        id="SO-21-001",
        description="Complete loss of cabin pressurization at cruise altitude",
        failure_condition_class=FailureConditionClass.HAZARDOUS,
        quantitative_objective=1e-7,  # Per flight hour
        qualitative_requirements=[
            "Dual outflow valves",
            "Redundant controllers",
            "Pressure relief valves",
            "Cabin altitude warning system",
            "Oxygen mask deployment"
        ]
    )
    analyzer.add_safety_objective(obj1)
    
    # Example objective 2: Smoke/fumes in cabin
    obj2 = SafetyObjective(
        id="SO-21-002",
        description="Hazardous smoke or fumes entering cabin",
        failure_condition_class=FailureConditionClass.HAZARDOUS,
        quantitative_objective=1e-7,
        qualitative_requirements=[
            "Pack isolation capability",
            "Smoke detection",
            "Crew procedures",
            "Emergency ventilation"
        ]
    )
    analyzer.add_safety_objective(obj2)
    
    # Example objective 3: Both packs fail
    obj3 = SafetyObjective(
        id="SO-21-003",
        description="Loss of both air conditioning packs",
        failure_condition_class=FailureConditionClass.MAJOR,
        quantitative_objective=1e-5,
        qualitative_requirements=[
            "Independent packs",
            "Independent power supplies",
            "Independent air sources",
            "Common cause analysis"
        ]
    )
    analyzer.add_safety_objective(obj3)
    
    # Example objective 4: Single pack failure
    obj4 = SafetyObjective(
        id="SO-21-004",
        description="Single pack failure with continued operation",
        failure_condition_class=FailureConditionClass.MINOR,
        quantitative_objective=1e-3,
        qualitative_requirements=[
            "Automatic pack trip",
            "Crew notification",
            "Single pack operation capability"
        ]
    )
    analyzer.add_safety_objective(obj4)
    
    # Print summary
    analyzer.print_summary()
    
    # Example calculations
    print("\nExample Reliability Calculations:")
    print("-" * 80)
    
    # Series reliability (both components must work)
    outflow_valve_reliability = 0.999999  # 99.9999%
    controller_reliability = 0.99999      # 99.999%
    series_rel = analyzer.calculate_series_reliability([outflow_valve_reliability, controller_reliability])
    print(f"Series Configuration Reliability: {series_rel:.6f}")
    
    # Parallel reliability (redundancy)
    parallel_rel = analyzer.calculate_parallel_reliability([controller_reliability, controller_reliability])
    print(f"Dual Redundant Controller Reliability: {parallel_rel:.8f}")
    
    # MTBF calculations
    failure_rate = 1e-5  # failures per hour
    mtbf = analyzer.calculate_mtbf_from_failure_rate(failure_rate)
    print(f"\nFor failure rate {failure_rate:.2e} /hr:")
    print(f"MTBF: {mtbf:,.0f} hours ({mtbf/8760:.1f} years)")
    
    print("-" * 80)


if __name__ == "__main__":
    example_safety_analysis()
