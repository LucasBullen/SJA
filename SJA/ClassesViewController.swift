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
    
    @IBOutlet weak var course1: UIButton!
    @IBOutlet weak var course2: UIButton!
    @IBOutlet weak var course3: UIButton!
    @IBOutlet weak var scollview: UIScrollView!
    
    @IBAction func course1Select(sender: UIButton) {
    //    var date = accessPlist().get_class("EMRG A")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
