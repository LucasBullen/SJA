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
    
    
    var checked = [Bool]()
    
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
                    checked = gngChecked
                    gngChecked[indexPath.row] = true }
                if listNumber == 2{
                    checked = vehicleChecked
                    vehicleChecked[indexPath.row] = true }
                if listNumber == 3{
                    checked = workChecked
                    workChecked[indexPath.row] = true }
                if listNumber == 4{
                    checked = campChecked
                    campChecked[indexPath.row] = true }
                
            }
        }
    }
    
    override func numberOfSectionsInTableView
        (tableView: UITableView) -> Int {
            return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if listNumber == 1{
                return GrabNGoDataSet.count
            }
            if listNumber == 2{
                return VehicleDataSet.count
            }
            if listNumber == 3{
                return WorkDataSet.count
            }
            if listNumber == 4{
                return CampingDataSet.count
            }
        return VehicleDataSet.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Basic")!
        if checked[indexPath.row] == false {
            
            cell.accessoryType = .None
        }
        else if checked[indexPath.row] == true {
            
            cell.accessoryType = .Checkmark
            //Score.update ("info",value : 1)
        }
        if listNumber == 1{
            cell.frame.origin.x += 1000
            cell.textLabel?.text = GrabNGoDataSet[indexPath.row]
            return cell
        }
        if listNumber == 2{
            cell.frame.origin.x += 1000
            cell.textLabel?.text = VehicleDataSet[indexPath.row]
            return cell
        }
        if listNumber == 3{
            cell.frame.origin.x += 1000
            cell.textLabel?.text = WorkDataSet[indexPath.row]
            return cell
        }
        if listNumber == 4{
            cell.frame.origin.x += 1000
            cell.textLabel?.text = CampingDataSet[indexPath.row]
            return cell
        }
        return cell
    }
    
    
}
    