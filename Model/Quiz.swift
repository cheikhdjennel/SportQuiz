//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Djennelbaroud Hadj Cheikh on 24/04/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct QuizContainer {
    
    let quiz = [Question(q: "  is Real Madrid the best club ? " , a:"True"),
                Question(q: "  did Maroc got the African cup in 2019 ? ", a: "False"),
                Question(q: "  Germany got the world cup in 2018 ", a: "True"),
                Question(q: "  is Riyad Mehrez the player who scored against Nigeria  in semi finals ? ", a: "True")]
    var actualQuestion = 0
    var score = 0
    var isLastQuestion = false
    
    mutating func checkAnswer(_ userAnswer:String ) -> Bool {
        if userAnswer == quiz[actualQuestion].answer {
            score += 1
            
            return true
        }else {
            
            return false
        }
    }
    
    mutating func nextQuestion(){
        if actualQuestion+1 < quiz.count {
            actualQuestion += 1
            
        }else{
            isLastQuestion = true
            actualQuestion = 0
        
        }
    }
    
    func Score () -> UIAlertController{
        let alert = UIAlertController(title: "  SCORE SHEET : ", message: "Your score is :  \(score)",         preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: " REPLAY ",
                                      style: UIAlertAction.Style.destructive,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        
        return alert
    }
    
    
}
