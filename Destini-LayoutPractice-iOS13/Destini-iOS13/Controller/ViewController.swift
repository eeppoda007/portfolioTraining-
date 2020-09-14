//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyTextLbl: UILabel!
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
  
    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        // create an array of stories
  
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {

     storyBrain.nextStory(userChoice: sender.currentTitle!)
                
                updateUI()
             
            }
            
            func updateUI() {
                storyTextLbl.text = storyBrain.getStoryTitle()
                choice1Btn.setTitle(storyBrain.getChoice1(), for: .normal)
                choice2Btn.setTitle(storyBrain.getChoice2(), for: .normal)
            }
}
