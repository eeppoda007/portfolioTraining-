//
//  ViewController.swift
//  Strings
//
//  Created by Aaron Caines on 17/09/2018.
//  Copyright © 2018 Aaron Caines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var name = "Aaron"
    var food = "Burgers"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.text = "\(name) likes to eat \(food)"
        
    }


}

