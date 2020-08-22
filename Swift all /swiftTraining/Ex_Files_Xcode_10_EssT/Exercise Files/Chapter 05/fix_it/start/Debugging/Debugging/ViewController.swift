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
        var isTrue = true
        if isTrue {
            print("it's true!")
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

