//
//  ClassesViewController.swift
//  SJA
//
//  Created by Lucas Bullen on 2016-02-03.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import UIKit

class ClassesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var scrollDates: UIScrollView!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    func buttonPressed(sender: UIButton!) {
        //let parameters = ["class":"the class","user":"the user"]
        //SJAApi().Request("goToEvent", parameter: JSON(parameters), onCompletion: complete)
        
        UIApplication.sharedApplication().openURL(NSURL(string: "https://portal.sja.ca/eRegistrationSearch/")!)
    }
    
    func CreateObjects(date : NSArray, _ buttonClicked : String) {
        var spacer: CGFloat
        spacer = 50
        for courseDate in date {
            let label = UILabel(frame: CGRectMake(0, 0, 300, 50))
            label.numberOfLines = 2
            label.center = CGPointMake(200, 0 + spacer)
            label.text = courseDate as? String
            spacer = spacer + 50
            
            let button = UIButton();
            button.setTitle("Click", forState: .Normal)
            button.setTitleColor(UIColor.blueColor(), forState: .Normal)
            button.frame = CGRectMake(50, 0, 200, 50)
            
            switch (buttonClicked) {
            case "EMRG A":
                button.center = CGPointMake(225, -50 + spacer)
            case "STANDARD A":
                button.center = CGPointMake(270, -50 + spacer)
            case "STANDARD C":
                button.center = CGPointMake(270, -50 + spacer)
            default:
                button.center = CGPointMake(200, -50 + spacer)
            }
            
            button.addTarget(self, action: "buttonPressed:", forControlEvents: UIControlEvents.TouchUpInside)

            self.scrollDates.addSubview(button)
            self.scrollDates.addSubview(label)
            scrollDates.contentSize.height = spacer
            
        }
    }
    
    func changeInfo(name : NSString, _ cost : NSString, _ time : NSString) {
        infoLabel.frame = CGRectMake(0, 0, 300, 50)
        costLabel.frame = CGRectMake(0, 0, 300, 50)
        timeLabel.frame = CGRectMake(0, 0, 300, 50)
        
        infoLabel.text = name as String
        costLabel.text = cost as String
        timeLabel.text = time as String
        
    }
    
    @IBAction func EmrgA(sender: AnyObject) {
        scrollDates.subviews.forEach({ $0.removeFromSuperview() })
        let buttonClicked = "ERMG A"
        let date = accessPlist().get_class("EMRG A")
        
        let coursename = accessPlist().get_class_info("EMRG A", value: "name")
        let coursecost = accessPlist().get_class_info("EMRG A", value: "cost")
        let coursetime = accessPlist().get_class_info("EMRG A", value: "time")
        
        CreateObjects(date!, buttonClicked)
        changeInfo(coursename!, coursecost!, coursetime!)

    }
    
    @IBAction func StandardA(sender: AnyObject) {
        scrollDates.subviews.forEach({ $0.removeFromSuperview() })
        let buttonClicked = "STANDARD A"
        let date = accessPlist().get_class("STANDARD A")
        
        let coursename = accessPlist().get_class_info("STANDARD A", value: "name")
        let coursecost = accessPlist().get_class_info("STANDARD A", value: "cost")
        let coursetime = accessPlist().get_class_info("STANDARD A", value: "time")
        CreateObjects(date!, buttonClicked)
        changeInfo(coursename!, coursecost!, coursetime!)
    }
    
    
    @IBAction func StandardC(sender: AnyObject) {
        scrollDates.subviews.forEach({ $0.removeFromSuperview() })
        
        let buttonClicked = "STANDARD C"
        let date = accessPlist().get_class("STANDARD C")
        
        let coursename = accessPlist().get_class_info("STANDARD C", value: "name")
        let coursecost = accessPlist().get_class_info("STANDARD C", value: "cost")
        let coursetime = accessPlist().get_class_info("STANDARD C", value: "time")
        CreateObjects(date!, buttonClicked)
        changeInfo(coursename!, coursecost!, coursetime!)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
