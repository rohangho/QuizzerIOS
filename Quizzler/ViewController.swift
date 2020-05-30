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
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.text = allQuestion.questionList[questionNumber].questionText
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
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score :\(score)"
        progressLabel.text = "\(questionNumber+1)/13"
        progressBar.frame.size.width = view.frame.size.width
    }
    

    func nextQuestion() {
        if(allQuestion.questionList.count>questionNumber)
        {
            questionLabel.text = allQuestion.questionList[questionNumber].questionText
        }
        else{
            sendAlert();
        }

    }
    
    func sendAlert(){
        let alert = UIAlertController(title: "Game Over", message: "Do you want to continue", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
           action in
            self.startOver()
        }))

        self.present(alert, animated: true)
    }
    
    func checkAnswer() {
        var correctAns : Bool = false
        if(allQuestion.questionList.count>questionNumber)
        {
            correctAns = allQuestion.questionList[questionNumber].answer
            
            
        }
        if(correctAns == pickedAnswer)
        {
           
            score += 1
            updateUI()
            
        }
        else
        {
            print ("wrong")
            updateUI()
            
        }
    }
    
    
    func startOver() {
        score = 0
       questionNumber = 0
        viewDidLoad()
    }
    

    
}
