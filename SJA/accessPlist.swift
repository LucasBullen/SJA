//
//  accessPlist.swift
//  SJA
//
//  Created by Lucas Bullen on 2016-02-06.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import Foundation
import UIKit
import SystemConfiguration

//logic for calling the Plist
class accessPlist {
    //getters
    func get(list: String, id: String)->NSDictionary?{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("\(list).plist")
        if let dict = NSMutableDictionary(contentsOfFile: path){
            return dict.objectForKey("event_info") as? NSDictionary
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("data", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    if let event_info = dict.objectForKey(id){
                        return event_info as? NSDictionary
                    }else{
                        print("error_read_2")
                    }
                }else{
                    print("error_read")
                }
            }else{
                print("error_read")
            }
        }
        return nil
    }
    //setters
    func set(id: String, location:String, title:String, description:String, start_time:String,image:String) {
        var event = [String: String]()
        event["location"] = location
        event["title"] = title
        event["description"] = description
        event["start_time"] = start_time
        event["create_time"] = ""
        event["image"] = image
        
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("data.plist")
        
        if let dict = NSMutableDictionary(contentsOfFile: path){
            dict.objectForKey("event_info")!.setObject(event, forKey: id)
            if dict.writeToFile(path, atomically: true){
                print("plist_write")
            }else{
                print("plist_write_error")
            }
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("data", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    dict.objectForKey("event_info")!.setObject(event, forKey: id)
                    if dict.writeToFile(path, atomically: true){
                        print("plist_write")
                    }else{
                        print("plist_write_error")
                    }
                }else{
                    print("plist_write")
                }
            }else{
                print("error_find_plist")
            }
        }
    }
}
