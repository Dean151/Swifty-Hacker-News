//
//  NewsSplitViewController.swift
//  Swifty-Hacker-News
//
//  Created by Thomas Durand on 11/12/2017.
//  Copyright © 2017 Thomas Durand. All rights reserved.
//

import UIKit

class NewsSplitViewController: UISplitViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
}

extension NewsSplitViewController: UISplitViewControllerDelegate {
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        // Make sure details is always present
        return true
    }
}
