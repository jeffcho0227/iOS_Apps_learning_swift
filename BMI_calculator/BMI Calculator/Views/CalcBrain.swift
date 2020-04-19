//
//  CalcBrain.swift
//  BMI Calculator
//
//  Created by Jeff Cho on 4/19/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalcBrain {
    
    var bmi: Float = 0.0
    
    mutating func calculateBMI(weight: Float, height: Float) {
        bmi = weight / pow(height, 2)
        
    }
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi)
        return bmiToOneDecimalPlace
    }
}
