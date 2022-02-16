//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Santhosh Kumar on 01/12/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain{
    var bmi: BMI?
       
    
    mutating func calculateBMI(height: Float,weight: Float){
        let bmiValue = weight/(height*height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:UIColor.blue)
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color:UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", color:UIColor.red)
        }
    }
    func getBMIValue()-> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice()-> String{
        return bmi?.advice ?? "Incorrect bmi Value"
        
    }
    func getColor()-> UIColor{
        return bmi?.color ?? UIColor.black
    }
}
 
