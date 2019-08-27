//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by DeEp KapaDia on 22/07/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {

    private var number : Double?
    
    private var intermidiateCalculation: (n1 : Double, calcMethod : String)?
    
    mutating func setNumber(_ number :Double){
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number{
        
            switch symbol {
            case "+/-":
                return n * -1
            case "AC" :
                return 0
            case "%":
                return n * 0.01
            case "=":
                return performTwoNumbersCalculation(n2: n)
            default:
                intermidiateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumbersCalculation(n2: Double) -> Double? {
        
        if let n1 = intermidiateCalculation?.n1 , let operation = intermidiateCalculation?.calcMethod{
            
            switch operation{
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "×":
                return n1 * n2
            case "÷":
                return n1 + n2
            default:
                fatalError("errororoororororjkkjsdk fksjdf")
                
            }
            
        }
        return nil
    }
    
}
