//
//  ViewController.swift
//  Quiz
//
//  Created by Chandupatla, Sai Sathvik Kumar on 1/30/20.
//  Copyright © 2020 Chandupatla, Sai Sathvik Kumar. All rights reserved.
//

import UIKit
import os

class ViewController: UIViewController {
    @IBOutlet var questionLabel:UILabel!
    @IBOutlet var answerLabel:UILabel!
    let questions: [String] = [
         "What is 11+24 ?",
         "What is Capital of Connecticut ?",
         "Who is C.E.O of Apple ?"
]
    let answers:[String] = [
        "35",
        "Hartford",
        "Tim Cook"
    ]
    var currentQuestionIndex:Int = 0
    @IBAction func showNextQuestion (_sender:UIButton){
        os_log("showing next question")
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        let question: String =
            questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "?????????"
    }
    @IBAction func showNextAnswer(_sender:UIButton){
        os_log("showing next answer")
        let answer: String =
                answers[currentQuestionIndex]
            answerLabel.text = answer
            
    }
    override func viewDidLoad() {
    super.viewDidLoad()
        os_log("I just Loaded")
        questionLabel.text =
        questions[currentQuestionIndex]
}
}

