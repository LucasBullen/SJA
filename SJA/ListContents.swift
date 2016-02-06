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
    
    var checked = [false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] // Have an array equal to the number of cells in your table
    
    
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
                checked[indexPath.row] = true
            }
        }    
    }
    
    var listNumber = -1
    
    
    let GrabNGoDataSet = ["2 litres of water per person", "Pre-packaged snack foods","Portable radio","Extra batteries – if needed","Paper and waterproof marker","OK and HELP signs","Whistle (3 short blasts for help)","Flashlight","Identification, contact lists","Medical records","Photos of family members","Spare eye glasses","Medications","Spare house and car keys","Toys for children","Quarters for pay phones","Toilet paper, garbage bags","Small bucket with lid"," Hand sanitizers or soap"," Towel or paper towels","Toothpaste, toothbrush","Deodorant","Emergency blanket","Waterproof poncho","Change of clothes","cold weather clothes","First aid kit and a whistle","Work boots, gloves, safety goggles","Respirator mask (N95).","Duct tape and multi-tool","Garbage bags (large and small)","Candles and matches or a lighter","Sturdy shoes or boots","Hat, socks and underwear","Warm jacket and pants","Raingear","Gloves or mittens","Thermal underwear","Tent or large tarp","Sleeping bag or warm blankets","Air mattress with manual pump","Thermal pad","Ground sheet","Small cook stove","Barbeque with fuel","Pot and cooking utensils","Paper plates, plastic cups","Eating utensils","Solid waste disposal kit","Liquid waste disposal kit"]
    
    let VehicleDataSet = ["Bottled water (3 day supply)","Non-perishable snack foods","Portable radio","OK and HELP signs","Quarters for a pay phone","Whistle (3 short blasts for help)","Flashlight","Candles and matches","Identification, contact lists","Medical records","Photo of family members","Prescribed medications","Hand sanitizers, soap and towel","Toothbrush, toothpaste","Feminine hygiene products","Emergency blanket","Warm clothes, sturdy footwear","Hat, gloves, and socks","Waterproof poncho","Small first aid kit","Emergency flares","Fire extinguisher","Compass and road map","Sand, cat litter or salt","Shovel and booster cables","Ice scraper and brush"]
    
    let WorkDataSet = ["Bottled water (3 day supply)","Non-perishable snack foods","Portable radio","Flashlight","Extra batteries","Candles and matches"," Identification, contact lists","Medical records","Photo of family members","Prescribed medications","Toilet paper, garbage bags","Small bucket with lid","Toothbrush, toothpaste","Feminine hygiene products","Emergency blanket","Warm outerwear, sturdy footwear","Small first aid kit"]
    
    let CampingDataSet = ["Tent or large tarp","Sleeping bags or warm blankets","Air mattress or thermal pad","Small camping stove","Small fuel tank","Lighter or matches","Cooking pot","Eating utensils","Paper towels and cleaning kit","Sturdy bucket","Child's toilet seat","Large garbage bags","Cat litter","Hand cleaning supplies"]
    
    
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
    