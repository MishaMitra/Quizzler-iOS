//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Михаил Кузнецов on 28.05.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text:String
    let answers:[String]
    let correctAnswer:String
    
    init(q: String, a: [String],correctAnswer:String) {
        
        self.text = q
        self.answers = a
        self.correctAnswer = correctAnswer
    }
}
