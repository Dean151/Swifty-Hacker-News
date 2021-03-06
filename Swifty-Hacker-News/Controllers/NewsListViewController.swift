//
//  ViewController.swift
//  Swifty-Hacker-News
//
//  Created by Thomas Durand on 10/12/2017.
//  Copyright © 2017 Thomas Durand. All rights reserved.
//

import UIKit

class NewsListViewController: UITableViewController {
    
    let api = HackerNewsApi()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set the title
        self.navigationItem.title = "Hacker News"
        
        // Update data
        api.retreiveStoriesIds(ranking: .topstories) { ids, error in
            print(ids)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

