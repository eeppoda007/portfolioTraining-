//
//  ViewController.swift
//  Editing Code
//
//  Created by Todd Perkins on 12/5/18.
//  Copyright © 2018 Todd Perkins. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /**
     Adds two numbers together and returns the sum.
     - parameters:
     - num1: The first number
     - num2: The second number
     - returns: The sum of num1 and num2.
     */
    func addNumbers(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

