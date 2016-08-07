//
//  ArithmeticProblem.swift
//  RandomArithmetics
//
//  Created by Yonny Hao on 16/8/6.
//  Copyright © 2016年 example. All rights reserved.
//

import Foundation

public enum Operator:String, CustomStringConvertible{
    case Add = "+"
    case Minus = "-"
    case Multiply = "*"
    
    public var description: String{
        get{
            return rawValue
        }
    }
}

public struct ArithmeticProblem: CustomStringConvertible{
    let leftOperand: UInt32
    let op: Operator
    let rightOperand: UInt32
    
    public func answer(with:UInt32) -> Bool{
        switch op {
        case .Add:
            return leftOperand + rightOperand == with
        case .Minus:
            return leftOperand - rightOperand == with
        case .Multiply:
            return leftOperand * rightOperand == with
        }
    }
    
    public var description: String{
        get{
            return "\(leftOperand) \(op) \(rightOperand) = ?"
        }
    }
}