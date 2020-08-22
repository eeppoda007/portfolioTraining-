//
//  ViewController.swift
//  Receiving Data
//
//  Created by Full Sail University.
//  Copyright © 2019 Full Sail University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var textView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    // clear the placeholder text
    textView.text = ""
  }
    // send the second viewController back to the first
    // used to send data back
    @IBAction func returnToFirst(segue: UIStoryboardSegue)
    {
        let secondViewController: LifeGoalViewController = segue.source as! LifeGoalViewController
        
        if let text = secondViewController.textField.text
        {
            textView.text = textView.text + "\n" + text
        }
    }
}

