//
//  Friend.swift
//  PADCassignment2
//
//  Created by saw pyaehtun on 09/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import Foundation
import UIKit

class Friend {
    var picture : UIImage?
    var name : String?
    var address : String?
    var foodieLevel : String?
    
    init(picture : UIImage, name : String, address : String, foodieLevel : String) {
        self.picture = picture
        self.name = name
        self.address = address
        self.foodieLevel = foodieLevel
    }
}
