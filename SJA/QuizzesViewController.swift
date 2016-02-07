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
    var progress: NSString = accessPlist().get_quiz_progress()!
    var questionInfo =  NSDictionary()
    override func viewDidLoad() {
        loadQ()
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadQ(){
        if (Int(progress as String) > 10){
            progress = "1"
        }
        questionInfo = accessPlist().get_quiz_question("\(progress)")!
        print("prog:\(questionInfo)")
        question.text = questionInfo.objectForKey("question")! as? String
        answerOne.text = questionInfo.objectForKey("answers")![0] as? String
        answerTwo.text = questionInfo.objectForKey("answers")![1] as? String
        answerThree.text = questionInfo.objectForKey("answers")![2] as? String
        answerFour.text = questionInfo.objectForKey("answers")![3] as? String
        answerButtonOne.enabled = true
        answerButtonTwo.enabled = true
        answerButtonThree.enabled = true
        answerButtonFour.enabled = true
    }
    
    @IBAction func next(sender: AnyObject) {
        loadQ()
    }
    
    @IBAction func checkAnswer(sender: AnyObject) {
        if (Int(progress as String) > 10){
            progress = "1"
        }
        accessPlist().set_quiz_progress("\(Int(progress as String)! + 1)")
        print("tag\(sender.tag) and:\(questionInfo) progress: \(progress)")
        if ("\(sender.tag)" == questionInfo.objectForKey("right") as! String){
            response.text = "You did it!!! :D"
        }else{
            response.text = "You fail."
        }
        answerButtonOne.enabled = false
        answerButtonTwo.enabled = false
        answerButtonThree.enabled = false
        answerButtonFour.enabled = false
        progress = accessPlist().get_quiz_progress()!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

