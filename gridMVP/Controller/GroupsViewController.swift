//
//  GroupsViewController.swift
//  gridMVP
//
//  Created by Max Gillespie on 9/13/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit

class GroupsViewController: UITableViewController {
    
    let TAG = "GVC:"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let cellNib = UINib(nibName: "GroupTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "GroupCell")
        
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupTableViewCell
        let group = groups[indexPath.row]
        
        cell.GroupNameLabel.text = group.name
        cell.GroupNameLabel.textColor = group.fontColor
        cell.GroupNameLabel.isHidden = group.hideLabel
        
        cell.GroupCellBackground.image = groups[indexPath.row].image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(TAG) click at \(indexPath.row)")
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "groupsToGroupDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "groupsToGroupDetail" {
            print("destination: \(segue.destination)")
            let navController = segue.destination as! UINavigationController
            let groupController = navController.viewControllers.first as! GroupDetailViewController
            let indexPath = sender as! IndexPath
            let group = groups[indexPath.row]

//            groupController.navigationItem.title = group.name
            groupController.group = group
        }
    }
}
