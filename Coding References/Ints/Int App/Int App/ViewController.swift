//
//  ViewController.swift
//  Int App
//
//  Created by Aaron Caines on 17/09/2018.
//  Copyright © 2018 Aaron Caines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var score = 200
    var checkpoints = 50
    var bonus = 100
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let finalScore = score + checkpoints - bonus
        
        label.text = "Final Score: \(finalScore)"
        
        
    }


}

