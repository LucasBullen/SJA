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
        let url = NSURL(string: "http://on.shopsafetyproducts.ca/description.php?sid=1&cid=4&id=260")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func roomAbout (sender: AnyObject){
        about.text = "Cool Blaze is a natural aloe base burn care product that is clear, odorless, effective and gentle. The kit:" +
        "Contains practical first aid items to treat minor wounds, cuts, scrapes and burns" +
        "It cools, soothes and moisturizes skin" +
        "Provides immediate first aid relief for minor burns and cuts" +
        "Wall mountable for easy access and visibility" +
        "Easy to transport from home or office to vehicle" +
        "Packaged in a durable, hard cover case"
    }
    
    @IBAction func roomPurchase (sender: AnyObject){
        let url = NSURL(string: "http://on.shopsafetyproducts.ca/description.php?sid=1&cid=4&id=264")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func fluidAbout (sender: AnyObject){
        about.text = "This kit contains the essential supplies required to safely clean up and dispose of small" +
        "hazardous spills. Absorbent powder and personal protective gear ensures the safety of emergency" +
        "responders while preventing cross contamination."
    }
    
    @IBAction func fluidPurchase (sender: AnyObject){
        let url = NSURL(string: "http://on.shopsafetyproducts.ca/description.php?sid=1&cid=4&id=265")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func homeAbout (sender: AnyObject){
        about.text = "This Home/Play First Aid kit is perfect for your active life, whether at home, out on the road," + "or at the cottage. This kit has a ballistic nylon type tough exterior, with a shoulder carrying strap,"
        + "for lightweight portability and durability. It's strengthened zipper system, and compartment design," + "allows for the addition of extra items as well."
    }
    
    @IBAction func homePurchase (sender: AnyObject){
        let url = NSURL(string: "http://on.shopsafetyproducts.ca/description.php?sid=1&cid=4&id=263")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func carAbout (sender: AnyObject){
        about.text = "No matter what has happened – car accident, stranded by weather, engine failure –" +
        "you'll be so glad to have this kit handy. This kit contains provisions that can help you in an" +
        "emergency until help arrives."
    }
    
    @IBAction func carPurchase (sender: AnyObject){
        let url = NSURL(string: "http://on.shopsafetyproducts.ca/description.php?sid=1&cid=4&id=259")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func familyAbout (sender: AnyObject){
        about.text = "Keeping the St. John Ambulance Family Kit close at hand ensures that you will be ready for" +
        "small, medium and large wounds as well as for burns. Packaged in an easily transportable carrying case," +
        "this kit is a popular and excellent choice for home and cottage. Contents are arranged to provide quick" +
        "access for immediate first aid."
    }
    
    @IBAction func familyPurchase (sender: AnyObject){
        let url = NSURL(string: "http://on.shopsafetyproducts.ca/description.php?sid=1&cid=4&id=142")!
        UIApplication.sharedApplication().openURL(url)

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