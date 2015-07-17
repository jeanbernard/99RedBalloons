//
//  Balloon.swift
//  99RedBallons
//
//  Created by Jean Bernard on 7/16/15.
//  Copyright (c) 2015 Jean Bernard. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    var number = 0
    var image = UIImage(named: "")
    
    init(number:Int, image:String) {
        self.number = number
        self.image = UIImage(named: image)
    }
}