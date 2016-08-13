//
//  Tests.swift
//  Tests
//
//  Created by Yonny Hao on 16/8/6.
//  Copyright © 2016年 example. All rights reserved.
//

import XCTest
import Nimble
@testable import RandomArithmetics

class Tests: XCTestCase {
    
    #if os(iOS) || os(OSX)
    func testNextAddtion() {
        let additionProblem = nextAddition()
        additionProblem
        expect(additionProblem.leftOperand).to(beLessThanOrEqualTo(20))
        expect(additionProblem.leftOperand).to(beGreaterThan(0))
        expect(additionProblem.rightOperand).to(beLessThanOrEqualTo(20))
        expect(additionProblem.rightOperand).to(beGreaterThan(0))
        expect(additionProblem.op).to(equal(Operator.Add))
    }
    #endif
    
    #if os(iOS) || os(watchOS)
    func testNextMultiplication() {
        let multiplicationProblem = nextMultiplication()
        multiplicationProblem
        expect(multiplicationProblem.leftOperand).to(beLessThanOrEqualTo(9))
        expect(multiplicationProblem.leftOperand).to(beGreaterThan(0))
        expect(multiplicationProblem.rightOperand).to(beLessThanOrEqualTo(9))
        expect(multiplicationProblem.leftOperand).to(beGreaterThan(0))
        expect(multiplicationProblem.op).to(equal(Operator.Multiply))
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    func testNextSubtraction() {
        let minusProblem = nextSubtraction()
        minusProblem
        expect(minusProblem.leftOperand).to(beLessThanOrEqualTo(20))
        expect(minusProblem.leftOperand).to(beGreaterThan(0))
        expect(minusProblem.rightOperand).to(beLessThanOrEqualTo(20))
        expect(minusProblem.rightOperand).to(beGreaterThan(0))
        expect(minusProblem.op).to(equal(Operator.Minus))
    }
    #endif
}
