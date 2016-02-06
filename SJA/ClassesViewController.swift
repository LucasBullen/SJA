//
//  ClassesViewController.swift
//  SJA
//
//  Created by Lucas Bullen on 2016-02-03.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import UIKit

class ClassesViewController: UIViewController {
    
    var courses = ["EMRG A", "STANDARD A", "STANDARD C"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var scrollDates: UIScrollView!
    @IBOutlet weak var infoLabel: UILabel!
    
    func buttonPressed(sender: UIButton!) {
        //let parameters = ["class":"the class","user":"the user"]
        //SJAApi().Request("goToEvent", parameter: JSON(parameters), onCompletion: complete)
        
        UIApplication.sharedApplication().openURL(NSURL(string: "https://portal.sja.ca/eRegistrationSearch/")!)
        
        scrollDates.subviews.forEach({ $0.removeFromSuperview() })
    }
    
    func CreateObjects(date : NSArray, _ buttonClicked : String) {
        var spacer: CGFloat
        spacer = 50
        for comments in date {
            var label = UILabel(frame: CGRectMake(0, 0, 300, 50))
            label.numberOfLines = 2
            label.center = CGPointMake(200, 0 + spacer)
            label.text = comments as! String
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
    
    @IBAction func EmrgA(sender: AnyObject) {
        scrollDates.subviews.forEach({ $0.removeFromSuperview() })
        var buttonClicked = "ERMG A"
        var date = accessPlist().get_class("EMRG A")
        CreateObjects(date!, buttonClicked)

    }
    
    @IBAction func StandardA(sender: AnyObject) {
        scrollDates.subviews.forEach({ $0.removeFromSuperview() })
        var buttonClicked = "STANDARD A"
        var date = accessPlist().get_class("STANDARD A")
        CreateObjects(date!, buttonClicked)
    }
    
    
    @IBAction func StandardC(sender: AnyObject) {
        scrollDates.subviews.forEach({ $0.removeFromSuperview() })
        
        var buttonClicked = "STANDARD C"
        var date = accessPlist().get_class("STANDARD C")
        CreateObjects(date!, buttonClicked)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
