//
//  StoreViewController.swift
//  SJA
//
//  Created by Lucas Bullen on 2016-02-03.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController {
    
    @IBOutlet weak var survival : UIButton!
    @IBOutlet weak var room : UIButton!
    @IBOutlet weak var fluid : UIButton!
    @IBOutlet weak var home : UIButton!
    @IBOutlet weak var car : UIButton!
    @IBOutlet weak var family : UIButton!
    @IBOutlet weak var buySurvival : UIButton!
    @IBOutlet weak var buyRoom : UIButton!
    @IBOutlet weak var buyFluid : UIButton!
    @IBOutlet weak var buyHome : UIButton!
    @IBOutlet weak var buyCar : UIButton!
    @IBOutlet weak var buyFamily : UIButton!
    @IBOutlet weak var about : UITextView!
    
    @IBAction func survivalAbout (sender: AnyObject){
        about.text = "It's such a relief in an emergency situation to have everything in one place." +
        "Whether you're at home waiting out a bad snowstorm, or making a rapid evacuation during flood" +
        "or tornado, having the food, water and equipment to survive for 72 hours is vital. This kit" +
        "boasts food and water provisions, a multi-functional tool, first aid kit, batteries, flashlight," +
        "and so much more – all in a sturdy backpack in case you need to be on the move. Customize your" +
        "emergency preparedness gear to support your entire family."
    }
    
    @IBAction func survivalPurchase (sender: AnyObject){
        
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