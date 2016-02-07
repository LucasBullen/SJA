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
    func get_userInfo(id: String)->String?{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("profile.plist")
        if let dict = NSMutableDictionary(contentsOfFile: path){
            return dict.objectForKey(id) as? String
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("profile", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    if let event_info = dict.objectForKey(id){
                        return event_info as? String
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
    func get_class(id: String)->NSArray?{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("classes.plist")
        if let dict = NSMutableDictionary(contentsOfFile: path){
            return dict.objectForKey("Courses")?.objectForKey(id)?.objectForKey("date") as? NSArray
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("classes", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    if let event_info = dict.objectForKey("Courses")?.objectForKey(id)?.objectForKey("date"){
                        return event_info as? NSArray
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
    func get_class_info(id: String, value:String)->NSString?{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("classes.plist")
        if let dict = NSMutableDictionary(contentsOfFile: path){
            return dict.objectForKey("Courses")?.objectForKey(id)?.objectForKey(value) as? NSString
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("classes", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    if let event_info = dict.objectForKey("Courses")?.objectForKey(id)?.objectForKey(value){
                        return event_info as? NSString
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
    func get_quiz_progress()->NSString?{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("quizzes.plist")
        if let dict = NSMutableDictionary(contentsOfFile: path){
            return dict.objectForKey("progress") as? NSString
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("quizzes", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    if let event_info = dict.objectForKey("progress"){
                        return event_info as? NSString
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
    func get_quiz_question(id: String)->NSDictionary?{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("quizzes.plist")
        if let dict = NSMutableDictionary(contentsOfFile: path){
            return dict.objectForKey(id) as? NSDictionary
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("quizzes", ofType: "plist"){
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
    func get_lists_set(id: String)->NSMutableArray?{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("checklists.plist")
        if let dict = NSMutableDictionary(contentsOfFile: path){
            print("Testssetsetstsets:\(dict.objectForKey(id))")
            return dict.objectForKey(id) as? NSMutableArray
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("checklists", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    if let event_info = dict.objectForKey(id){
                        print("Testssetsetstsets:\(dict.objectForKey(id))")
                        return event_info as? NSMutableArray
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
    func get_lists_state(id: String)->NSMutableArray?{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("checklists.plist")
        if let dict = NSMutableDictionary(contentsOfFile: path){
            return dict.objectForKey(id) as? NSMutableArray
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("checklists", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    if let event_info = dict.objectForKey(id){
                        return event_info as? NSMutableArray
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
    func set_userInfo(id: String, value:String) {
        
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("profile.plist")
        
        if let dict = NSMutableDictionary(contentsOfFile: path){
            dict.setObject(value, forKey: id)
            if dict.writeToFile(path, atomically: true){
                print("plist_write")
            }else{
                print("plist_write_error")
            }
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("profile", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    dict.setObject(value, forKey: id)
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
    func set_quiz_progress(id: String) {
        
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("quizzes.plist")
        
        if let dict = NSMutableDictionary(contentsOfFile: path){
            dict.setObject(id, forKey: "progress")
            if dict.writeToFile(path, atomically: true){
                print("plist_write")
            }else{
                print("plist_write_error")
            }
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("quizzes", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    dict.setObject(id, forKey: "progress")
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
    func set_list_state(id: String, value:NSMutableArray) {
        
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("checklists.plist")
        
        if let dict = NSMutableDictionary(contentsOfFile: path){
            dict.setObject(value, forKey: id)
            if dict.writeToFile(path, atomically: true){
                print("plist_write")
            }else{
                print("plist_write_error")
            }
        }else{
            if let privPath = NSBundle.mainBundle().pathForResource("checklists", ofType: "plist"){
                if let dict = NSMutableDictionary(contentsOfFile: privPath){
                    dict.setObject(value, forKey: id)
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