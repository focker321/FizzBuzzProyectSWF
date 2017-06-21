//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Santiago Apaza on 6/16/17.
//  Copyright © 2017 ibm. All rights reserved.
//

import UIKit

class FizzBuzzViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var number: UIView!
    @IBOutlet weak var fizz: UIView!
    @IBOutlet weak var buzz: UIView!
    @IBOutlet weak var fizzBuzz: UIView!
    
    
    var brain = Brain()
    
    func setupGestures() {
        let gesture1 = UITapGestureRecognizer(target: self, action: #selector(tapEventgameNumber))
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(tapEventgameFizz))
        let gesture3 = UITapGestureRecognizer(target: self, action: #selector(tapEventgameFizz))
        let gesture4 = UITapGestureRecognizer(target: self, action: #selector(tapEventgameFizz))
        number.addGestureRecognizer(gesture1)
        fizz.addGestureRecognizer(gesture2)
        buzz.addGestureRecognizer(gesture3)
        fizzBuzz.addGestureRecognizer(gesture4)
    }
    
    func tapEventgameNumber(sender: Any) {
        //print(sender)
        if !brain.nextNumberIsDivisible(by: 3) {
            brain.incrementBy1()
            counterLabel.text = "\(brain.counter)"
        }
        
    }
    
    func tapEventgameFizz(sender: Any) {
        //print(sender)
        brain.incrementBy1()
        counterLabel.text = "\(brain.counter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGestures()
        
    }
    
}

