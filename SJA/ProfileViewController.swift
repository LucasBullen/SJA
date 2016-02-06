//
//  ProfileViewController.swift
//  SJA
//
//  Created on 2016-02-03.
//  Copyright © 2016 . All rights reserved.
//

import UIKit

var safetyScore:Double = Double()
var user:ProfileViewController?

class ProfileViewController: UIViewController {
    /*
    Pseudo Nonsence
    Create the main page, setting the background colour to a nice pale
    Pull the username, the date, and the score
    
    */
    
    @IBOutlet weak var report: UILabel!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var addressField: UITextField!
    
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var phoneField: UITextField!
    
    @IBOutlet weak var email: UILabel!
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
        self.name.text = accessPlist().get_userInfo("title")
        self.address.text = "Address: "
        self.phone.text = "Phone: "
        self.email.text = "Email: "
        
        // Load user info from the dictionary
        self.nameField.text = accessPlist().get_userInfo("username")
        self.addressField.text = accessPlist().get_userInfo("address")
        self.phoneField.text = accessPlist().get_userInfo("phone")
        self.emailField.text = accessPlist().get_userInfo("email")
        
        // Sets the current date from user's device
        let currentDate = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        let date = dateFormatter.stringFromDate(currentDate)
        self.date.text = date
        
        // Individual scorings within each category
        self.regScore.text = ("Registration Score: " + accessPlist().get_userInfo("regScore")!)
        self.regScore.text = ("Quiz Score: " + accessPlist().get_userInfo("quizScore")!)
        self.regScore.text = ("Info Score: " + accessPlist().get_userInfo("infoScore")!)
        
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
        else if (totalScore < 0.65){
            grade = "B"
            flavour = "Great work! More safety information and quizzes are sure to help!"
            accessPlist().set_userInfo("title", value:"Safety Responder")
            
        }
        else if (totalScore < 0.87){
            grade = "A"
            flavour = "Awesome! Time to complete some more quizzes."
            accessPlist().set_userInfo("title", value:"Secure Warrior")
            
        }
        else if (totalScore < 0.99){
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
        self.safetyGrade.text = grade
        self.safetyPrompt.text = flavour
        
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
