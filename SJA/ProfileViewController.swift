//
//  ProfileViewController.swift
//  SJA
//
//  Created by Lucas Bullen on 2016-02-03.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import UIKit

var safetyScore:Double = Double()
var user:ProfileViewController?

class ProfileViewController: UIViewController {
    /*
    Pseudo Nonsence
    Create the main page, setting the background colour to a nice pale
    Pull the username, the date, and the score
    Pull the
    
    */
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var safetyGrade: UILabel!
    @IBOutlet weak var regScore: UILabel!
    @IBOutlet weak var quizScore: UILabel!
    @IBOutlet weak var infoScore: UILabel!

    
    func loadInfo(){
//        Sets the current date from user's device
        let currentDate = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        let date = dateFormatter.stringFromDate(currentDate)
        self.date.text = date
//        var name = plist.get() //Key userName
//        var grade
//        var regScore
//        var quizScore
//        var infoScore
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadInfo()
                self.view.backgroundColor = UIColor.grayColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
