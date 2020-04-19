//
//  CalcBrain.swift
//  BMI Calculator
//
//  Created by Jeff Cho on 4/19/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalcBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / pow(height, 2)
        var advice = ""
        var color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        if bmiValue < 18.5 {
            advice = "Pleace eat more"
            color = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        } else if bmiValue < 24.9 {
            advice = "You are fit as a fiddle!!"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            advice = "Probably should eat less and control your diet"
            color = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
        
    }
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
