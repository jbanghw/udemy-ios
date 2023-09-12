//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by James Bang on 2023-09-11.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice for you."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.purple
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        let colors = (underweight: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), healthy: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), overweight: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: colors.underweight)
            print("underweight")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: colors.healthy)
            print("healthy")
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", color: colors.overweight)
            print("overweight")
        }
    }
    
}
