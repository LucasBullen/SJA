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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

