//
//  ViewController.swift
//  Array App
//
//  Created by Aaron Caines on 17/09/2018.
//  Copyright © 2018 Aaron Caines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var fruits = ["Apple", "Banana", "Melon", "Pear"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func entry1(_ sender: Any) {
        
        label.text = fruits[0]
    }
    
    @IBAction func entry2(_ sender: Any) {
        
        label.text = fruits[1]
    }
    
    @IBAction func entry3(_ sender: Any) {
        
        label.text = fruits[2]
    }
    
    @IBAction func entry4(_ sender: Any) {
        
        label.text = fruits[3]
    }
    

}

