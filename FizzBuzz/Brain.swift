//
//  Brain.swift
//  FizzBuzz
//
//  Created by Santiago Apaza on 6/16/17.
//  Copyright © 2017 ibm. All rights reserved.
//

import Foundation
import UIKit



class Brain {
    var counter: Int
    
    init() {
        counter = 0
    }
    
    // let comodin: Bool = brain.nextNumberIsDivisible(by: 6)
    func nextNumberIsDivisible(by number: Int) -> Bool {
        let tmpCounter = counter + 1
        
        if tmpCounter % number == 0 {
            counter = tmpCounter
            return true
        } else {
            return false
        }
    }
    
    func incrementBy1() {
        counter += 1
    }
    
    
}
