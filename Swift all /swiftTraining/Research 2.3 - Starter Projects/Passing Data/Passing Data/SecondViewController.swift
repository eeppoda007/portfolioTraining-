//
//  SecondViewController.swift
//  Passing Data
//
//  Created by Full Sail University.
//  Copyright © 2017 Full Sail University. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
    @IBOutlet weak var textView: UITextView!
    // Optional Tuple
    //This variable exist to capture the data that we pass forward from rthe firsr viewController
    var wordsToUse: (pluralNoun: String, occupation: String, animal: String, place: String, verb: String, noun: String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let words = wordsToUse
        {
            textView.text = " In the book of the\(words.pluralNoun), the main character is an anonymous\(words.animal) in \(words.place).  Needless to say, havoc reigns as the \(words.animal) continue to \(words.verb) everything in sight, until they are killed by the common \(words.noun)"
            
        }
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
