//
//  OuestionBank.swift
//  Quizzler
//
//  Created by Rohan Ghosh on 29/05/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation
class QuestionBank{
    var questionList = [QustionModel]()
    init() {
        let item = QustionModel(text: "Valentine\'s day is banned in Saudi Arabia.", answer: true)
        
        // Add the Question to the list of questions
        questionList.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        questionList.append(QustionModel(text: "A slug\'s blood is green.", answer: true))
        
        questionList.append(QustionModel(text: "Approximately one quarter of human bones are in the feet.", answer: true))
        
        questionList.append(QustionModel(text: "The total surface area of two human lungs is approximately 70 square metres.", answer: true))
        
        questionList.append(QustionModel(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: true))
        
        questionList.append(QustionModel(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: false))
        
        questionList.append(QustionModel(text: "It is illegal to pee in the Ocean in Portugal.", answer: true))
        
        questionList.append(QustionModel(text: "You can lead a cow down stairs but not up stairs.", answer: false))
        
        questionList.append(QustionModel(text: "Google was originally called \"Backrub\".", answer: true))
        
        questionList.append(QustionModel(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", answer: true))
        
        questionList.append(QustionModel(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: false))
        
        questionList.append(QustionModel(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: false))
        
        questionList.append(QustionModel(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", answer: true))
    }
}
