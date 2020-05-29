//
//  Question.swift
//  Quizzler
//
//  Created by Rohan Ghosh on 29/05/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class QustionModel
{
    let questionText : String
    let answer : Bool
    
    init(text : String, answer : Bool)
    {
        self.questionText=text
        self.answer=answer
    }
    
    
}
