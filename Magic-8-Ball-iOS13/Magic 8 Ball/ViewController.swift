//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //Created the variable for the imageview
    @IBOutlet weak var eightImageView: UIImageView!
    // constant array of 8 ball images
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]


    @IBAction func askBtnClick(_sender: UIButton)
    {
       
        print(ballArray[3])
        // Pull a random image from the array on each click 
        eightImageView.image =  ballArray.randomElement()
       
    }

}

