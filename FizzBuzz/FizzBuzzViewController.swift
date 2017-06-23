//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Santiago Apaza on 6/16/17.
//  Copyright © 2017 ibm. All rights reserved.
//

import UIKit
import Alamofire

class FizzBuzzViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var number: UIView!
    @IBOutlet weak var fizz: UIView!
    @IBOutlet weak var buzz: UIView!
    @IBOutlet weak var fizzBuzz: UIView!
    
    
    var brain = Brain()
    
    func setupGestures() {
        let gesture1 = UITapGestureRecognizer(target: self, action: #selector(tapEventgame))
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(tapEventgame))
        let gesture3 = UITapGestureRecognizer(target: self, action: #selector(tapEventgame))
        let gesture4 = UITapGestureRecognizer(target: self, action: #selector(tapEventgame))
        number.addGestureRecognizer(gesture1)
        fizz.addGestureRecognizer(gesture2)
        buzz.addGestureRecognizer(gesture3)
        fizzBuzz.addGestureRecognizer(gesture4)
    }
    
    func tapEventgame(sender: UITapGestureRecognizer) {
        
        if let v = sender.view {
            print("---> \(v.tag)")
            if brain.executeOperation(GameOperation.getOperation(v.tag)) {
                counterLabel.text = "\(brain.counter)"
            }
            
/*            switch v.tag {
            case 1:
                brain.executeOperation(.number)
                break
            case 2:
                brain.executeOperation(.fizz)
                break
            case 3:
                brain.executeOperation(.buzz)
                break
            case 4:
                brain.executeOperation(.fizzbuzz)
                break
            default:
                break
            }*/
            
            
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGestures()
        testAlamofire()
    }
    
    private func testAlamofire() {
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }
    
}

