//
//  Brain.swift
//  FizzBuzz
//
//  Created by Santiago Apaza on 6/16/17.
//  Copyright © 2017 ibm. All rights reserved.
//

import Foundation
import UIKit

enum GameOperation: Int {
    case fizz = 2
    case buzz = 3
    case fizzbuzz = 4
    case number = 1
    case error = -1
    
    static func getOperation(_ rawValue: Int) -> GameOperation {
        
        switch rawValue {
        case 1:
            return .number
        case 2:
            return .fizz
        case 3:
            return .buzz
        case 4:
            return .fizzbuzz
        default:
            return .error
        }
    }
}


class Brain {
    var counter: Int
    
    init() {
        counter = 0
    }
    
    // let comodin: Bool = brain.nextNumberIsDivisible(by: 6)
    func nextNumberIsDivisible(by number: Int) -> Bool {
        
        let tmpCounter = counter + 1
        
        if tmpCounter % number == 0 {
            //counter = tmpCounter
            return true
        } else {
            return false
        }
    }
    
    private func incrementBy1() {
        counter += 1
    }
    
    func executeOperation(_ kind: GameOperation) -> Bool {
        
        var response = false
        
        // ToDo
        
        // counter = 2
        // kind = .fizz
        switch kind {
        case GameOperation.fizz:
            if nextNumberIsDivisible(by: 3) && !nextNumberIsDivisible(by: 5) {
               response = true
                incrementBy1()
            }
            break
        case GameOperation.buzz:
            if nextNumberIsDivisible(by: 5) && !nextNumberIsDivisible(by: 3) {
                response = true
                incrementBy1()
            }
            break
        case GameOperation.fizzbuzz:
            if nextNumberIsDivisible(by: 15) {
                response = true
                incrementBy1()
            }
            break
        case GameOperation.number:

            if !nextNumberIsDivisible(by: 3) && !nextNumberIsDivisible(by: 5) {
                response = true
                incrementBy1()
            }
        case GameOperation.error:
            break
        }
        
        return response
    }
    
}
