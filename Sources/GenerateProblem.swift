//
//  GenerateProblem.swift
//  RandomArithmetics
//
//  Created by Yonny Hao on 16/8/6.
//  Copyright © 2016年 example. All rights reserved.
//

import Foundation

func randomNaturalNum(under: UInt32) -> UInt32{
    return arc4random_uniform(under - 1) + 1
}

public func nextAddition() -> ArithmeticProblem{
    return ArithmeticProblem(leftOperand: randomNaturalNum(20), op: .Add, rightOperand: randomNaturalNum(20))
}

public func nextSubtraction() -> ArithmeticProblem{
    return ArithmeticProblem(leftOperand: randomNaturalNum(20), op: .Minus, rightOperand: randomNaturalNum(20))
}

public func nextMultiplication() -> ArithmeticProblem{
    return ArithmeticProblem(leftOperand: randomNaturalNum(10), op: .Multiply, rightOperand: randomNaturalNum(10))
}