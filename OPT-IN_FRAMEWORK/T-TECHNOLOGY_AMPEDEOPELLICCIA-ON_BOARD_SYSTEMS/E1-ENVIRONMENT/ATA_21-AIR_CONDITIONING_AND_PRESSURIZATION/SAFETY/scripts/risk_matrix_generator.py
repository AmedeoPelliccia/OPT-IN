#!/usr/bin/env python3
"""
ATA-21 Risk Matrix Generator
Generates risk assessment matrices and visualizations

Author: AMPEL360 Systems Engineering
Version: 1.0.0
Date: 2025-10-31
"""

import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np
from typing import List, Tuple, Dict
import json


class RiskMatrixGenerator:
    """Generate risk assessment matrices for ATA-21 safety analysis"""
    
    # Risk matrix configuration
    SEVERITY_LEVELS = {
        1: "Negligible",
        2: "Minor", 
        3: "Major",
        4: "Hazardous",
        5: "Catastrophic"
    }
    
    LIKELIHOOD_LEVELS = {
        1: "Remote",
        2: "Improbable",
        3: "Occasional",
        4: "Probable",
        5: "Frequent"
    }
    
    # Risk levels (severity × likelihood)
    RISK_COLORS = {
        "LOW": "#90EE90",      # Light green
        "MEDIUM": "#FFFF00",   # Yellow
        "HIGH": "#FFA500",     # Orange
        "CRITICAL": "#FF0000"  # Red
    }
    
    def __init__(self):
        self.risks: List[Dict] = []
    
    def add_risk(self, risk_id: str, description: str, severity: int, 
                 likelihood: int, mitigation: str = ""):
        """Add a risk to the matrix
        
        Args:
            risk_id: Unique risk identifier
            description: Risk description
            severity: Severity level (1-5)
            likelihood: Likelihood level (1-5)
            mitigation: Mitigation measures
        """
        risk_score = severity * likelihood
        
        # Determine risk level
        if risk_score >= 15:
            risk_level = "CRITICAL"
        elif risk_score >= 10:
            risk_level = "HIGH"
        elif risk_score >= 5:
            risk_level = "MEDIUM"
        else:
            risk_level = "LOW"
        
        self.risks.append({
            "id": risk_id,
            "description": description,
            "severity": severity,
            "severity_label": self.SEVERITY_LEVELS[severity],
            "likelihood": likelihood,
            "likelihood_label": self.LIKELIHOOD_LEVELS[likelihood],
            "risk_score": risk_score,
            "risk_level": risk_level,
            "mitigation": mitigation
        })
    
    def generate_matrix(self, output_file: str = "risk_matrix.png"):
        """Generate visual risk matrix
        
        Args:
            output_file: Output filename for the matrix image
        """
        fig, ax = plt.subplots(figsize=(10, 8))
        
        # Create 5x5 grid
        matrix = np.zeros((5, 5))
        
        # Define risk levels for each cell
        risk_level_matrix = [
            [1, 2, 3, 4, 5],   # Negligible severity
            [2, 4, 6, 8, 10],  # Minor severity
            [3, 6, 9, 12, 15], # Major severity
            [4, 8, 12, 16, 20],# Hazardous severity
            [5, 10, 15, 20, 25]# Catastrophic severity
        ]
        
        # Plot colored cells
        for i in range(5):
            for j in range(5):
                score = risk_level_matrix[i][j]
                
                # Determine color based on score
                if score >= 15:
                    color = self.RISK_COLORS["CRITICAL"]
                elif score >= 10:
                    color = self.RISK_COLORS["HIGH"]
                elif score >= 5:
                    color = self.RISK_COLORS["MEDIUM"]
                else:
                    color = self.RISK_COLORS["LOW"]
                
                rect = mpatches.Rectangle((j, 4-i), 1, 1, 
                                         linewidth=1, 
                                         edgecolor='black',
                                         facecolor=color)
                ax.add_patch(rect)
                
                # Add risk score text
                ax.text(j + 0.5, 4-i + 0.5, str(score),
                       ha='center', va='center', fontsize=10, fontweight='bold')
        
        # Plot actual risks as markers
        for risk in self.risks:
            x = risk['likelihood'] - 0.5
            y = 5 - risk['severity'] + 0.5
            ax.plot(x, y, 'ko', markersize=10)
            ax.text(x + 0.15, y + 0.15, risk['id'], fontsize=8, fontweight='bold')
        
        # Set axis properties
        ax.set_xlim(0, 5)
        ax.set_ylim(0, 5)
        ax.set_aspect('equal')
        
        # Set labels
        ax.set_xlabel('Likelihood', fontsize=12, fontweight='bold')
        ax.set_ylabel('Severity', fontsize=12, fontweight='bold')
        ax.set_title('ATA-21 Risk Assessment Matrix', fontsize=14, fontweight='bold')
        
        # Set tick labels
        ax.set_xticks([0.5, 1.5, 2.5, 3.5, 4.5])
        ax.set_xticklabels(['Remote\n(1)', 'Improbable\n(2)', 'Occasional\n(3)', 
                           'Probable\n(4)', 'Frequent\n(5)'])
        
        ax.set_yticks([0.5, 1.5, 2.5, 3.5, 4.5])
        ax.set_yticklabels(['Catastrophic\n(5)', 'Hazardous\n(4)', 'Major\n(3)', 
                           'Minor\n(2)', 'Negligible\n(1)'])
        
        # Add legend
        legend_elements = [
            mpatches.Patch(facecolor=self.RISK_COLORS["LOW"], 
                          edgecolor='black', label='Low Risk (1-4)'),
            mpatches.Patch(facecolor=self.RISK_COLORS["MEDIUM"], 
                          edgecolor='black', label='Medium Risk (5-9)'),
            mpatches.Patch(facecolor=self.RISK_COLORS["HIGH"], 
                          edgecolor='black', label='High Risk (10-14)'),
            mpatches.Patch(facecolor=self.RISK_COLORS["CRITICAL"], 
                          edgecolor='black', label='Critical Risk (15-25)')
        ]
        ax.legend(handles=legend_elements, loc='upper left', bbox_to_anchor=(1.05, 1))
        
        plt.tight_layout()
        plt.savefig(output_file, dpi=300, bbox_inches='tight')
        print(f"Risk matrix saved to: {output_file}")
        plt.close()
    
    def generate_report(self, output_file: str = "risk_register.json"):
        """Generate risk register in JSON format
        
        Args:
            output_file: Output filename for the risk register
        """
        report = {
            "system": "ATA-21 Air Conditioning and Pressurization",
            "date": "2025-10-31",
            "total_risks": len(self.risks),
            "summary": {
                "CRITICAL": len([r for r in self.risks if r['risk_level'] == 'CRITICAL']),
                "HIGH": len([r for r in self.risks if r['risk_level'] == 'HIGH']),
                "MEDIUM": len([r for r in self.risks if r['risk_level'] == 'MEDIUM']),
                "LOW": len([r for r in self.risks if r['risk_level'] == 'LOW'])
            },
            "risks": self.risks
        }
        
        with open(output_file, 'w') as f:
            json.dump(report, f, indent=2)
        
        print(f"Risk register saved to: {output_file}")
        return report
    
    def print_summary(self):
        """Print risk summary to console"""
        print("=" * 80)
        print("ATA-21 Risk Assessment Summary")
        print("=" * 80)
        print(f"Total Risks Identified: {len(self.risks)}")
        print()
        
        for level in ["CRITICAL", "HIGH", "MEDIUM", "LOW"]:
            count = len([r for r in self.risks if r['risk_level'] == level])
            print(f"{level:10s}: {count}")
        
        print("=" * 80)
        print()
        print("Risk Details:")
        print("-" * 80)
        
        for risk in sorted(self.risks, key=lambda x: x['risk_score'], reverse=True):
            print(f"ID: {risk['id']}")
            print(f"Description: {risk['description']}")
            print(f"Severity: {risk['severity_label']} ({risk['severity']})")
            print(f"Likelihood: {risk['likelihood_label']} ({risk['likelihood']})")
            print(f"Risk Score: {risk['risk_score']}")
            print(f"Risk Level: {risk['risk_level']}")
            if risk['mitigation']:
                print(f"Mitigation: {risk['mitigation']}")
            print("-" * 80)


def example_risk_assessment():
    """Example risk assessment for ATA-21"""
    
    generator = RiskMatrixGenerator()
    
    # Add example risks
    generator.add_risk(
        "R-001",
        "Complete loss of cabin pressurization at cruise",
        severity=4,  # Hazardous
        likelihood=2,  # Improbable
        mitigation="Dual outflow valves, redundant controllers, oxygen masks"
    )
    
    generator.add_risk(
        "R-002",
        "Both air conditioning packs fail",
        severity=3,  # Major
        likelihood=2,  # Improbable
        mitigation="Independent packs, single-pack operation capability"
    )
    
    generator.add_risk(
        "R-003",
        "Smoke/fumes contamination of cabin air",
        severity=4,  # Hazardous
        likelihood=1,  # Remote
        mitigation="Pack isolation, smoke detection, crew procedures"
    )
    
    generator.add_risk(
        "R-004",
        "Single pack overheats and trips offline",
        severity=2,  # Minor
        likelihood=3,  # Occasional
        mitigation="Temperature monitoring, automatic trip, dual pack design"
    )
    
    generator.add_risk(
        "R-005",
        "Temperature control system fails (one zone)",
        severity=1,  # Negligible
        likelihood=3,  # Occasional
        mitigation="Independent zone controllers, passenger tolerance"
    )
    
    generator.add_risk(
        "R-006",
        "Recirculation fan failure",
        severity=2,  # Minor
        likelihood=3,  # Occasional
        mitigation="Dual fans, continued operation on one fan"
    )
    
    # Generate outputs
    generator.print_summary()
    generator.generate_matrix("ata21_risk_matrix.png")
    generator.generate_report("ata21_risk_register.json")


if __name__ == "__main__":
    example_risk_assessment()
