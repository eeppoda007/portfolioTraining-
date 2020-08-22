//
//  ViewController.swift
//  Preventing Segues and AlertController
//
//  Created by Full Sail University
//  Copyright © 2019 Full Sail University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var textField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let text = textField.text{
            if text.isEmpty {
                ///so if the text field is empty do not perform segue
                return false
               }
            }
        /// if any thing else unmentioned
        return true
        }
        
    }



