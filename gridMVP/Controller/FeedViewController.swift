//
//  ViewController.swift
//  gridMVP
//
//  Created by Max Gillespie on 9/13/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var FeedBackgroundView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.delegate = self
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension FeedViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let offsetY = scrollView.contentOffset.y
        let navigationIsHidden = offsetY <= 0
        navigationController?.setNavigationBarHidden(navigationIsHidden, animated: true)
        
        if (offsetY < 0) {
            FeedBackgroundView.transform = CGAffineTransform(translationX: 0, y: -offsetY/5)
        }
    }
}
