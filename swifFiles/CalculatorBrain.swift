//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Courtney Hay on 9/4/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    
    var bmiValue: BMI?
  

     mutating func calculateBMI(height: Float, weight: Float){
        let valueBMI = weight / (height * height)
       // bmiValue = BMI(value: valueBMI, advice: <#T##String#>, color: <#T##UIColor#>)
        
        switch valueBMI {
        case ..<18.5:
            print("Underweight")
            bmiValue = BMI(value: valueBMI, advice: "Eat more pies", color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        case 18.5...24.9:
            print("Normal")
             bmiValue = BMI(value: valueBMI, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1))
        case 24.9...:
            print("Overweight")
             bmiValue = BMI(value: valueBMI, advice: "Eat less pies", color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        default:
            print("No class exists for this one")
        }
    }
    
   func getBMIValue()-> String {
    //use of the nil coalesint operator bmiValue ?? 0.00
    let bmiValueToDecimal = String(format: "%.1f", bmiValue?.value ?? 0.0)
        
        return bmiValueToDecimal
    }
    
    func getColor() -> UIColor {
       
        return bmiValue?.color ?? #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    }
    func getAdvice() -> String {
        return  bmiValue?.advice ?? "No advice was present"
    }
}
