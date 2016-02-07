//
//  ProfileViewController.swift
//  SJA
//
//  Created on 2016-02-03.
//  Copyright © 2016 . All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var report: UILabel!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var addressField: UITextField!
    
    @IBOutlet weak var phoneField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var safetyGrade: UILabel!
    @IBOutlet weak var safetyPrompt: UILabel!
    
    @IBOutlet weak var regScore: UILabel!
    @IBOutlet weak var quizScore: UILabel!
    @IBOutlet weak var infoScore: UILabel!
    
    
    func loadInfo(){
        
        // Setting up label titles
        self.report.text = "St. John Ambulance: Report Card"
        
        // Load user info from the dictionary
        self.nameField.text = accessPlist().get_userInfo("username")!
        self.addressField.text = accessPlist().get_userInfo("address")!
        self.phoneField.text = accessPlist().get_userInfo("phone")!
        self.emailField.text = accessPlist().get_userInfo("email")!
        
        // Sets the current date from user's device
        let currentDate = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        let date = dateFormatter.stringFromDate(currentDate)
        self.date.text = date
        
        checkRegScore()
        
        // Individual scorings within each category
        self.regScore.text = (accessPlist().get_userInfo("regScore")! + "/"
            + accessPlist().get_userInfo("regScoreMax")!)
        self.quizScore.text = (accessPlist().get_userInfo("quizScore")! + "/"
            + accessPlist().get_userInfo("quizScoreMax")!)
        self.infoScore.text = (accessPlist().get_userInfo("infoScore")! + "/"
            + accessPlist().get_userInfo("infoScoreMax")!)
        
        // Calculate the total safety score
        let totalScore = Double(accessPlist().get_userInfo("regScore")!)!
            + Double(accessPlist().get_userInfo("quizScore")!)!
            + Double(accessPlist().get_userInfo("infoScore")!)!
        
        let totalScoreMax = Double(accessPlist().get_userInfo("regScoreMax")!)!
            + Double(accessPlist().get_userInfo("quizScoreMax")!)!
            + Double(accessPlist().get_userInfo("infoScoreMax")!)!
        
        // Setting up final Grade, Flavour Text, Titles.
        var grade: String = ""
        var flavour: String = ""
        if ((totalScore/totalScoreMax) < 0.1){
            grade = "D"
            flavour = "Fill in your user info, or look at some safety information!"
            accessPlist().set_userInfo("title", value:"Safety Recruit")
            
        }
        else if ((totalScore/totalScoreMax) < 0.3){
            grade = "C"
            flavour = "Nice start. Look at some safety information, and do some quizzes to test your knowledge!"
            accessPlist().set_userInfo("title", value:"Risk-Aware")
            
        }
        else if ((totalScore/totalScoreMax) < 0.65){
            grade = "B"
            flavour = "Great work! More safety information and quizzes are sure to help!"
            accessPlist().set_userInfo("title", value:"Safety Responder")
            
        }
        else if ((totalScore/totalScoreMax) < 0.87){
            grade = "A"
            flavour = "Awesome! Time to complete some more quizzes."
            accessPlist().set_userInfo("title", value:"Secure Warrior")
            
        }
        else if ((totalScore/totalScoreMax) < 0.99){
            grade = "A+"
            flavour = "Stellar work!"
            accessPlist().set_userInfo("title", value:"Fastiduous Leader")
        }
        else {
            grade = "S"
            flavour = "Wow, 100% Completion!"
            accessPlist().set_userInfo("title", value:"Safety Champion")
        }
        // Setting new grades and flavour text
        self.name.text = accessPlist().get_userInfo("title")!
        self.safetyGrade.text = grade
        self.safetyPrompt.text = flavour
    }
    
    func checkRegScore(){
        var reggaeScore = 0;
        
        if ((self.nameField.text?.utf16.count) > 1){
            reggaeScore++
        }
        if ((self.addressField.text?.utf16.count) > 6){
            reggaeScore++
        }
        if ((self.phoneField.text?.utf16.count) > 6){
            reggaeScore++
        }
        if ((self.emailField.text?.utf16.count) > 5){
            reggaeScore++
        }
        accessPlist().set_userInfo("regScore", value: "\(reggaeScore)")
    }
    
    @IBAction func updateField(sender: AnyObject){
        //When one of the four text objects are updated
        
        accessPlist().set_userInfo("username", value: "\(self.nameField?.text)")
        accessPlist().set_userInfo("address", value: "\(self.addressField?.text)")
        accessPlist().set_userInfo("phone", value: "\(self.phoneField?.text)")
        accessPlist().set_userInfo("email", value: "\(self.emailField?.text)")
        
        checkRegScore()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadInfo()
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
