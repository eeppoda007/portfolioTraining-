//
//  SecondViewController.swift
//  Preventing Segues and AlertController
//
//  Created by Full Sail University.
//  Copyright © 2019 Full Sail University. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()

    // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }


    @IBAction func goBack(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
  
  
  /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  // Get the new view controller using segue.destinationViewController.
  // Pass the selected object to the new view controller.
  }
  */
  
}
