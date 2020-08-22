//
//  ViewController.swift
//  Lecture6_PassingData_Forward
//
//  Created by Joshua Shroyer on 10/28/15.
//  Copyright (c) 2015 Full Sail University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var nounPluralTextField: UITextField!
  @IBOutlet weak var occupationTextField: UITextField!
  @IBOutlet weak var animalTextField: UITextField!
  @IBOutlet weak var placeTextField: UITextField!
  @IBOutlet weak var verbTextField: UITextField!
  @IBOutlet weak var nounTextField: UITextField!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
 //Time to get ready for the segue to  happen! We know it's going to happen, so get your data and functionality ready!
     override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        //force downcast to secondViewController
        let secondViewControler: SecondViewController = segue.destination as! SecondViewController
        if let nounPlural = nounPluralTextField.text, let occupation = occupationTextField.text, let animal = animalTextField.text, let place = placeTextField.text, let verb = verbTextField.text, let noun = nounTextField.text
        {
            secondViewControler.wordsToUse = (nounPlural,occupation,animal,place,verb,noun)
        }
    }
    //Removes the keyboard when a click is registered on the  current viewController
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           view.endEditing(true)
           super.touchesBegan(touches, with: event)
    }
}

