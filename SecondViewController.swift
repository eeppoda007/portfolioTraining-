//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Courtney Hay on 9/3/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // create a variable to be accessed by first Vc
    var bmiValue = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        
        //create a label
        let label = UILabel()
        // insert input in the label
        label.text = String(format: "%.1F", bmiValue)
        // create the dementions and position on the vc
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        // embed in a uiview
        view.addSubview(label)
        //let view = UIView()
        
        
        
        
    }
}
