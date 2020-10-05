//
//  CalculateBrain.swift
//  BMI
//
//  Created by Maria Kramer on 04.10.2020.
//  Copyright © 2020 Maria Kramer. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    }
    
    mutating func calculateBMI(height : Float, weight : Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Perfect fit!", color: #colorLiteral(red: 0.6716172855, green: 1, blue: 0.6877255118, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 1, green: 0.4521363712, blue: 0.4921469501, alpha: 1))
        }
    }
}
