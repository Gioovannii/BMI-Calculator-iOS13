//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by mac on 2020/3/26.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() {
        
    }
    
    func getColor() {
        
    }
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmivalue = weight / pow(height, 2)
      
        switch bmivalue {
        case 0.0..<18.5:
            print("You're under weight")
            bmi = BMI(value: bmivalue, advice: "Eat more crêpes!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5..<24.9:
            print("Normal weight")
            bmi = BMI(value: bmivalue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        case 24.9..<235.0:
            print("Over weight")
            bmi = BMI(value: bmivalue, advice: "Eat less crêpes!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        default:
            print("Default")
            bmi = BMI(value: bmivalue, advice: "Please make it right!", color: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        }
    }
}
