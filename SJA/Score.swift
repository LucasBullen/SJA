//
//  editScore.swift
//  SJA
//
//  Created by Christopher on 2016-02-06.
//  Copyright © 2016 Lucas Bullen. All rights reserved.
//

import Foundation
import UIKit

class Score{
    func update(category: String!, value: Int){  //reg, quiz, info
        var newValue: String
        newValue = accessPlist().get_userInfo(category.lowercaseString + "Score")!
        newValue = "\(Int(newValue)! + value)"
        accessPlist().set_userInfo(category.lowercaseString + "Score", value:newValue)
    }
    
}
