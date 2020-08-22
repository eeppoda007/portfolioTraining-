//
//  ViewController.swift
//  Debugging
//
//  Created by Todd Perkins on 12/12/18.
//  Copyright © 2018 Todd Perkins. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var betterName = "test"

    fileprivate func extractedMethod() {
        // Do any additional setup after loading the view.
        let isTrue: Bool? = true
        if let t = isTrue, t {
            print("it's true!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        betterName = "something"
        extractedMethod()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

