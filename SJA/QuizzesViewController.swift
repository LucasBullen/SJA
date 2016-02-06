//
//  FirstViewController.swift
//  SJA
//
//  Created by Lucas Bullen on 2016-02-02.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import UIKit

class QuizzesViewController: UIViewController {
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answerOne: UILabel!
    @IBOutlet weak var answerTwo: UILabel!
    @IBOutlet weak var answerThree: UILabel!
    @IBOutlet weak var answerFour: UILabel!
    
    @IBOutlet weak var answerButtonOne: UIButton!
    @IBOutlet weak var answerButtonTwo: UIButton!
    @IBOutlet weak var answerButtonThree: UIButton!
    @IBOutlet weak var answerButtonFour: UIButton!
    
    
    @IBOutlet weak var response: UILabel!
    @IBOutlet weak var next: UIButton!
    
    var progress: Int = 0
    override func viewDidLoad() {
        loadQ()
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadQ(){
        progress = accessPlist().get_quiz_progress()!
        let questionInfo: NSDictionary = accessPlist().get_quiz_question(progress)!
        question.text = questionInfo.objectForKey("question")! as? String
        answerOne.text = questionInfo.objectForKey("answers")![0] as? String
        answerTwo.text = questionInfo.objectForKey("answers")![1] as? String
        answerThree.text = questionInfo.objectForKey("answers")![2] as? String
        answerFour.text = questionInfo.objectForKey("answers")![3] as? String
    }
    
    @IBAction func checkAnswer(sender: AnyObject) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

