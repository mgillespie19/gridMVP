//
//  Group.swift
//  gridMVP
//
//  Created by Max Gillespie on 9/13/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit

class Group {
    let name: String
    let type: String
    let description: String
    let image: UIImage
    let fontColor: UIColor
    
    init(n: String, t: String, d: String, fc: UIColor, i: UIImage) {
        self.name = n
        self.type = t
        self.description = d
        self.fontColor = fc
        self.image = i
    }
    
    init(n: String, t: String, d: String) {
        self.name = n
        self.type = t
        self.description = d
        self.fontColor = UIColor.white
        self.image = UIImage(named: "Group Background 1")!
    }
}


