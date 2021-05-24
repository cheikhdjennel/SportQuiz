//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Djennelbaroud Hadj Cheikh on 22/04/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text : String
    var answer:String
    
    init(q:String,a:String) {
        text = q
        answer = a
    }
    
    
}
