//
//  Checklists.swift
//  SJA
//
//  Created by Julia Di Monte on 2016-02-06.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import Foundation
import UIKit

class ChecklistTableViewController :
UITableViewController {
    
    let kitsDataSet =
    ["'Grab-N-Go' Kit for Home", "Vehicle Kit for Your Car", "Survival Kit for Work", "Camping Kit"]
    
    //number of sections of cells in the table
    override func numberOfSectionsInTableView
        (tableView: UITableView) -> Int {
            return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kitsDataSet.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Basic")!
        
        cell.textLabel?.text = kitsDataSet[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "ListContentsSegue"){
            let selectedRow = tableView.indexPathForSelectedRow?.row
            if let dest = segue.destinationViewController as?
                ListContentsTableViewController{
                    dest.title = kitsDataSet[selectedRow!]
                    dest.listNumber = selectedRow! + 1
                
            }
            
        }
    }
}
