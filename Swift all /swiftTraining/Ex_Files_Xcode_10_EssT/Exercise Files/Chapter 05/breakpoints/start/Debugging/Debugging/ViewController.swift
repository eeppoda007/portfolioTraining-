//
//  ViewController.swift
//  Debugging
//
//  Created by Todd Perkins on 12/12/18.
//  Copyright © 2018 Todd Perkins. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var num = 0
        num = getSum(num1: 5, num2: 10)
        print("num is \(num)")
    }
    
    func getSum(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

