//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    //Create a variable to play sound
    var player: AVAudioPlayer?
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    // button pressed registerd
    @IBAction func cKeyPressed(_ sender: UIButton)
    {
        //call the sound function to play sound that was clicked on
        playSound(sound: sender.currentTitle!, soundType: "wav")
        sender.alpha = 0.5
        do{
            sleep(UInt32(0.02))
            sender.alpha = 1
        }
        
    } //dims the button after
    
    func playSound(sound: String , soundType: String)
   {
        let url = Bundle.main.url(forResource: sound , withExtension: soundType)
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
       
    }
}

