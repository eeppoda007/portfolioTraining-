//
//  ViewController.swift
//  Bools
//
//  Created by Aaron Caines on 17/09/2018.
//  Copyright © 2018 Aaron Caines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var state = true
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if state == true {
            
            label.text = "Hello"
            
        }
        
        button.isEnabled = state
        
        
    }


}

