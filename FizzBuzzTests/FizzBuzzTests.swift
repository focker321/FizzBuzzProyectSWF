//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Santiago Apaza on 6/16/17.
//  Copyright © 2017 ibm. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
    
    /**
     func -> fizz, buzz, fizzbuzz, number -> bool
     func -> incremento
     
     (1)->Number
     (2)->Fizz -> % 3 == 0
     (3)->Buzz -> % 5 == 0
     (4)->FizzBuzz -> % 15 == 0
     
 */
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testIsDivisibleBy3() {
        let brain  = Brain() // counter
        brain.counter = 2
        let result = brain.nextNumberIsDivisible(by: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleBy3() {
        let brain  = Brain() // counter
        brain.counter = 3
        let result = brain.nextNumberIsDivisible(by: 3)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleBy5() {
        let brain  = Brain() // counter
        brain.counter = 4
        let result = brain.nextNumberIsDivisible(by: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleBy5() {
        let brain  = Brain() // counter
        brain.counter = 5
        let result = brain.nextNumberIsDivisible(by: 5)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleBy15() {
        let brain  = Brain() // counter
        brain.counter = 29
        let result = brain.nextNumberIsDivisible(by: 15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleBy15() {
        let brain  = Brain() // counter
        brain.counter = 30
        let result = brain.nextNumberIsDivisible(by: 15)
        XCTAssertEqual(result, false)
    }
    
    func testNextMovementIsFizzCorrect() {
        let brain = Brain()
        brain.counter = 2
        let result =  brain.executeOperation(.fizz)
        // counter ++
        // return true
        // func executeOperation ( enum) -> Bool
        XCTAssertEqual(result, true)
    }
    
    func testNextMovementIsFizzInCorrect() {
        let brain = Brain()
        brain.counter = 3
        let result =  brain.executeOperation(.fizz)
        // counter ++
        // return true
        // func executeOperation ( enum) -> Bool
        XCTAssertEqual(result, false)
    }
    
    func testNextMovementIsBuzzCorrect() {
        let brain = Brain()
        brain.counter = 4
        let result =  brain.executeOperation(.buzz)
        // counter ++
        // return true
        // func executeOperation ( enum) -> Bool
        XCTAssertEqual(result, true)
    }
    
    func testNextMovementIsBuzzInCorrect() {
        let brain = Brain()
        brain.counter = 14
        let result =  brain.executeOperation(.buzz)
        // counter ++
        // return true
        // func executeOperation ( enum) -> Bool
        XCTAssertEqual(result, false)
    }
}
