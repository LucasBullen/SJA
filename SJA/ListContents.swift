//
//  72HourKit.swift
//  SJA
//
//  Created by Julia Di Monte on 2016-02-06.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import Foundation
import UIKit

class ListContentsTableViewController :
UITableViewController {
    
    var checked = NSMutableArray()
    var listNumber = -1
    

    let GrabNGoDataSet = accessPlist().get_lists_set("GrabNGoDataSet")
    var gngChecked = accessPlist().get_lists_set ("GrabNGoDataState")
    
    let VehicleDataSet = accessPlist().get_lists_set("VehicleDataSet")
    var vehicleChecked = accessPlist().get_lists_set ("VehicleDataState")
    
    let WorkDataSet = accessPlist().get_lists_set("WorkDataSet")
    var workChecked = accessPlist().get_lists_set ("WorkDataState")
    
    let CampingDataSet = accessPlist().get_lists_set("CampingDataSet")
    var campChecked = accessPlist().get_lists_set ("CampingDataState")
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        print("GrabNGoDataSet:\(GrabNGoDataSet)")
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType == .Checkmark
            {
                //cell.accessoryType = .None
                //checked[indexPath.row] = false
            }
            else
            {
                cell.accessoryType = .Checkmark
                if listNumber == 1{
                    gngChecked![indexPath.row] = true
                    accessPlist().set_list_state("GrabNGoDataState", value: gngChecked!)
                    //Score.update ("info",value : 1)
                }
                if listNumber == 2{
                    vehicleChecked![indexPath.row] = true
                    accessPlist().set_list_state("VehicleDataState", value: vehicleChecked!)
                    //Score.update ("info",value : 1)
                }
                if listNumber == 3{
                    workChecked![indexPath.row] = true
                    accessPlist().set_list_state("WorkDataState", value: workChecked!)
                    //Score.update ("info",value : 1)
                }
                if listNumber == 4{
                    campChecked![indexPath.row] = true
                    accessPlist().set_list_state("CampingDataStructure", value: campChecked!)
                    //Score.update ("info",value : 1)
                }
                
            }
        }
    }
    
    override func numberOfSectionsInTableView
        (tableView: UITableView) -> Int {
            return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if listNumber == 1{
                return GrabNGoDataSet!.count
            }
            if listNumber == 2{
                return VehicleDataSet!.count
            }
            if listNumber == 3{
                return WorkDataSet!.count
            }
            if listNumber == 4{
                return CampingDataSet!.count
            }
        return VehicleDataSet!.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Basic")!
        if listNumber == 1{
            
            if gngChecked![indexPath.row] as! Bool == false {
                
                cell.accessoryType = .None
            }
            else if gngChecked![indexPath.row] as! NSObject == true {
                
                cell.accessoryType = .Checkmark
            }
            
            cell.textLabel?.text = GrabNGoDataSet![indexPath.row] as? String
            return cell
        }
        if listNumber == 2{
            
            if vehicleChecked![indexPath.row] as! Bool == false {
                
                cell.accessoryType = .None
            }
            else if vehicleChecked![indexPath.row] as! NSObject == true {
                
                cell.accessoryType = .Checkmark
                //Score.update ("info",value : 1)
            }
            
            cell.textLabel?.text = VehicleDataSet![indexPath.row] as? String
            return cell
        }
        if listNumber == 3{
            
            if workChecked![indexPath.row] as! Bool == false {
                
                cell.accessoryType = .None
            }
            else if workChecked![indexPath.row] as! NSObject == true {
                
                cell.accessoryType = .Checkmark
                //Score.update ("info",value : 1)
            }
            
            cell.textLabel?.text = WorkDataSet![indexPath.row] as? String
            return cell
        }
        if listNumber == 4{
            
            if campChecked![indexPath.row] as! Bool == false {
                
                cell.accessoryType = .None
            }
            else if campChecked![indexPath.row] as! NSObject == true {
                
                cell.accessoryType = .Checkmark
                //Score.update ("info",value : 1)
            }
            
            cell.textLabel?.text = CampingDataSet![indexPath.row] as? String
            return cell
        }
        return cell
    }
    
    
}
    