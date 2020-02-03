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
    @IBAction func showNextQuestion (_sender:UIButton){
        os_log("showing next question")
    }
    @IBAction func showNextAnswer(_sender:UIButton){
        os_log("showing next answer")
    }
    override func viewDidLoad() {
    super.viewDidLoad()
        os_log("I just Loaded")
  
}
}

