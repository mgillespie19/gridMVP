//
//  GroupTableViewCell.swift
//  gridMVP
//
//  Created by Max Gillespie on 9/13/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var GroupView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        GroupView.layer.shadowRadius = 5
        GroupView.layer.shadowColor = UIColor.black.cgColor
        GroupView.layer.shadowOpacity = 0.25
        GroupView.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        self.layer.masksToBounds = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
