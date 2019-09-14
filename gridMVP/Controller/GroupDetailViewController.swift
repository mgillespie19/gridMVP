//
//  GroupDetailViewController.swift
//  gridMVP
//
//  Created by Max Gillespie on 9/13/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit

class GroupDetailViewController: UIViewController {
    
    @IBOutlet weak var CoverImage: UIImageView!
    @IBOutlet weak var GroupNameLabel: UILabel!
    
    var group: Group? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let g = group {
            CoverImage.image = g.image
            GroupNameLabel.text = g.name
            GroupNameLabel.textColor = g.fontColor
        }
    }
    
    @IBAction func backButtonClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
