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
    let image: UIImage?
    let backgroundColor: UIColor?
    
    init(n: String, t: String, d: String, bgc: UIColor?, i: UIImage?) {
        self.name = n
        self.type = t
        self.description = d
        
        
        if let bg = bgc {
            self.backgroundColor = bg
        } else {
            self.backgroundColor = UIColor.white
        }
        
        if let img = i {
            self.image = img
        } else {
            self.image = UIImage(named: "Feed Header")
        }
    }
}
