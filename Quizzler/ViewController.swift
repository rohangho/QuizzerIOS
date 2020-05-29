//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.text = allQuestion.questionList[0].questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if(sender.tag == 1){
            pickedAnswer = true
        }
        else
        {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        questionLabel.text = allQuestion.questionList[questionNumber].questionText
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        let correctAns = allQuestion.questionList[0].answer
        if(correctAns == pickedAnswer)
        {
            print("correct")
            
        }
        else
        {
            print ("wrong")
            
        }
    }
    
    
    func startOver() {
       
    }
    

    
}