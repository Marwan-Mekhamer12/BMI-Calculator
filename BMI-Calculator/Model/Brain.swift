//
//  Brain.swift
//  BMI-Calculator
//
//  Created by Marwan Mekhamer on 24/03/2025.
//

import Foundation
struct Brain {
    
    func getHeight(_ height : Float) -> String {
        return "\(String(format: "%.1f", height))cm"
    }
    
    func getWeight(_ weight : Float) -> String {
        return "\(String(format: "%.0f", weight))kg"
    }
    
    func getBMIResult(_ height : Float, _ weight: Float) -> Float {
        return weight / (height * height)
    }
}
