//
//  ViewController.swift
//  FunctionsApp
//
//  Created by Aaron Caines on 17/09/2018.
//  Copyright © 2018 Aaron Caines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pressMe(_ sender: Any) {
        
        trigger()
        
    }
    
    func trigger() {
        
        label.text = "i got triggered"
        
    }
    
    
    
    
}

