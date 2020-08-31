//
//  ViewController.swift
//  LoginScreen
//
//  Created by Aaron Caines on 17/09/2018.
//  Copyright © 2018 Aaron Caines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var user = "Aaron"
    var pass = "Caines"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func enter(_ sender: Any) {
        
        if username.text == user && password.text == pass {
            
            label.text = "Welcome \(user) \(pass)"
            
        } else if username.text != user && password.text != pass {
            
            label.text = "username and password incorrect"
            
        } else if username.text == user {
            
            label.text = "password incorrect"
            
        } else if password.text == pass {
            
            label.text = "username incorrect"
            
        }
        
    }
    
    


}

