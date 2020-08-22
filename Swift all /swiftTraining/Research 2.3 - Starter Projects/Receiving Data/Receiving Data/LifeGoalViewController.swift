//
//  LifeGoalViewController.swift
//  Receiving Data
//
//  Created by Full Sail University
//  Copyright © 2019 Full Sail University. All rights reserved.
//

import UIKit

class LifeGoalViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let text = textField.text{
            if text.isEmpty{
                textField.text = "Makes lots of money!"
            }
        }
    }
}
