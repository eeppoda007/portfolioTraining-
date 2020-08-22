//
//  ViewController.swift
//  Interface Builder
//
//  Created by Todd Perkins on 12/10/18.
//  Copyright © 2018 Todd Perkins. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var textField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonWasPressed(_ sender: Any) {
        label.stringValue = "Hello \(textField.stringValue)!"
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

