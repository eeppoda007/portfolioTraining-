//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    //quiz array
    var quizBrain = QuizBrain()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton)
    {
        // check for the users answer
        let userAnswer = sender.currentTitle!
        // quizBrain.checkAnswer(userAnswer)
        let actualAnswer =  quizBrain.checkAnswer(userAnswer)
        //conditional to check if the users response is correct
        if  actualAnswer
        {
            sender.backgroundColor = UIColor.green
        }
        else
        {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        updateUI()
    }
    // outputs the question
    func updateUI()
    {
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(clearButtonColor), userInfo: nil, repeats: false)
        questionLabel.text! = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score:\(quizBrain.getScore())"
    }
    
    @objc func clearButtonColor()
    {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}
