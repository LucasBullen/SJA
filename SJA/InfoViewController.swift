//
//  SecondViewController.swift
//  SJA
//
//  Created by Lucas Bullen on 2016-02-02.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var mission : UIButton!
    @IBOutlet weak var vision : UIButton!
    @IBOutlet weak var values : UIButton!
    @IBOutlet weak var why : UIButton!
    @IBOutlet weak var outputText : UITextView!
    @IBOutlet weak var faq1 : UIButton!
    @IBOutlet weak var faq2 : UIButton!
    @IBOutlet weak var faq3 : UIButton!
    @IBOutlet weak var faq4 : UIButton!
    @IBOutlet weak var faq5 : UIButton!
    
    @IBAction func missionStatement (sender: AnyObject){
        outputText.text = "To enable Canadians to improve their health," +
        "safety and quality of life by providing training and community service." +
        "We carry out our mission through community service, first aid, and CPR training" + //the words CPR training should bring user to Sean's page (courses offered)
        "Instructors and volunteers will provide you with high quality first aid training and products" +
        "and St. John Ambulance is the national leader, setting the standard for training in first aid," +
        "CPR and other lifesaving skills."
        
    }
    
    @IBAction func visionStatement (sender : AnyObject){
        outputText.text = "We strive to be the leading first aid training and community service" +
        "organization in Canada."
        
    }
    
    @IBAction func valuesStatement (sender : AnyObject){
        outputText.text = "We accomplish our mission and fulfill our vision using the following values:" +
        "Teamwork" +
        "Fairness" +
        "Equity" +
        "Integrity" +
        "Consructiveness" +
        "Respect" +
        "Loyalty" +
        "Tolerance" +
        "Quality and balance of life"
    }
    
    @IBAction func whyStatement (sender : AnyObject){
        outputText.text = "St. John Ambulance is Canada's leader in first aid and" +
        "has programs tailored to fit your needs. Our courses provide complete and" +
        "comprehensive information and skills that can help in an emergency situation" +
        "at work, home and at play. By training with St. John Ambulance programs," +
        "you are supporting a humanitarian organization and investing in your community." +
        "All profits from first aid courses and the sale of supplies are re-invested to" +
        "fund our work in the community. Through research, development and delivery of" +
        "first aid training and community service programs, we are able to meet our mission" +
        "of enabling Canadians to improve their health, safety and quality of life."
    }
    
    @IBAction func q1 (sender : AnyObject){
        outputText.text = "Our first aid courses are designed to meet the local" +
        "provincial/territorial requirements – as such, your employer may or may not" +
        "accept an out-of-province certificate"
    }
    
    @IBAction func q2 (sender : AnyObject){
        outputText.text = "While we can recommend the courses that are most commonly required" +
        "or advise as to the provincial/territorial requirements for workplaces, your school" +
        "or workplace may have special requirements, or go above the minimums set by legislation." +
        "We always recommend checking with your work/school to ensure you take the course you need."
    }
    
    @IBAction func q3 (sender : AnyObject){
        let linkAttribute = [NSLinkAttributeName: "http://www.sja.ca/English/How-You-Can-Help/Pages/Volunteer/Volunteer-Landing.aspx"]
        let theString = NSMutableAttributedString(string: "this link", attributes:linkAttribute)
        outputText.text = "Visit"; theString; "to learn more about becoming a volunteer with SJA!"
    }
    
    @IBAction func q4 (sender : AnyObject){
        let linkAttribute = [NSLinkAttributeName: "http://www.sja.ca/English/Community-Services/Pages/First%20Aid%20Response%20Services/First-Aid-Response-Services-Home.aspx"]
        let theString = NSMutableAttributedString(string: "Click here to learn more about coverage and how to request coverage for your event.", attributes:linkAttribute)
        outputText.attributedText = theString
    }
    
    @IBAction func q5 (sender : AnyObject){
        let linkAttribute = [NSLinkAttributeName: "http://www.sja.ca/English/Community-Services/Pages/Therapy%20Dog%20Services/default.aspx"]
        let theString = NSMutableAttributedString(string: "Please click here to learn more about becoming a therapy dog volunteer", attributes: linkAttribute)
        outputText.attributedText = theString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

