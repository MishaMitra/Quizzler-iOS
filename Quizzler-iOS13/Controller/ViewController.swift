//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var scoreLable: UILabel!
    var quizzBrain = QuizzBrain()
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!  //1 2 3
        
        let userGotItRight = quizzBrain.chekAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizzBrain.nextQuestion()
        
       
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (Timer) in
            self.updateUI()
                 
             }
        
        
    }
    func updateUI()  {
        
        let answerChoises = quizzBrain.getAnswer()
    
        questionLable.text = quizzBrain.getQuestionText()
        progressBar.progress = quizzBrain.getProgress()
        
        firstButton.setTitle(answerChoises[0], for: .normal)
        secondButton.setTitle(answerChoises[1], for: .normal)
        thirdButton.setTitle(answerChoises[2], for: .normal)
        
        
        scoreLable.text = "Score \(quizzBrain.getScore())"
        firstButton.backgroundColor = UIColor.clear
        secondButton.backgroundColor = UIColor.clear
        thirdButton.backgroundColor = UIColor.clear
        
        
    }
    
    
    
}

