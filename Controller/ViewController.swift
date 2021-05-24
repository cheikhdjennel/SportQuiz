//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var TrueButton: UIButton!
    @IBOutlet weak var FalseButton: UIButton!
    @IBOutlet weak var ProgressBar: UIProgressView!
    var Quiz = QuizContainer()
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionNumber = Quiz.actualQuestion
        QuestionLabel.text = Quiz.quiz[0].text
        QuestionLabel.layer.borderColor = UIColor.init(red: 0/255, green: 121/255, blue: 255/255, alpha: 1).cgColor
        QuestionLabel.layer.borderWidth = 1
        QuestionLabel.layer.cornerRadius = 2
    }
    
    @IBAction func AnswerChoosed(_ sender: UIButton) {
        var answer = sender.currentTitle!
        if Quiz.checkAnswer(answer) {
            sender.backgroundColor = UIColor.green
            
        }else{
            sender.backgroundColor = UIColor.red
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.UpdateUI()
            
        }
        
    }
    
    func UpdateUI()  {
        Quiz.nextQuestion()
        if Quiz.isLastQuestion {
            
            self.present(Quiz.Score(),animated: true , completion: nil)
            Quiz.score = 0
        }
        Quiz.isLastQuestion = false
        questionNumber = Quiz.actualQuestion
        QuestionLabel.text = Quiz.quiz[questionNumber].text
        TrueButton.backgroundColor = UIColor.clear
        FalseButton.backgroundColor = UIColor.clear
        ProgressBar.progress = Float(questionNumber)/Float(Quiz.quiz.count)
        
    }
    
    
    
}

