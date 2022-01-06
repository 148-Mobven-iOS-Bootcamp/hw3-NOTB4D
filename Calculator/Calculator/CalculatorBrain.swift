//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Semih Emre ÜNLÜ on 26.12.2021.
//

import Foundation

class CalculatorBrain {
    //istenen işlemler + - * / bonus C CE =
    //standford university ios 9 > youtube video 1 ya da 2
    private var accumulator: Double = 0

    var result: Double {
        get {
            return accumulator
        }
    }

    func performOperation(_ operation: String) {
        if let constant = operations[operation] {
            switch constant{
            case .Constant(let constantValue): accumulator = constantValue
            case .UnaryOperation(let function): accumulator = function(accumulator)
            case .BinaryOperation: break
            case .Equals: break
            }
            
        }
    }

    func setOperand(_ value: Double) {
        accumulator = value
    }
    
    var operations : Dictionary<String,Operation> = [
        "√" : Operation.UnaryOperation(sqrt),
        
    ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation
        case Equals
    }
}
