//
//  HackerNewsApi.swift
//  Swifty-Hacker-News
//
//  Created by Thomas Durand on 10/12/2017.
//  Copyright © 2017 Thomas Durand. All rights reserved.
//

import Alamofire
import Foundation

class HackerNewsApi {
    
    let baseUrl = URL(string: "https://hacker-news.firebaseio.com/v0/")!
    
    enum Ranking: String {
        case topstories
        case newstories
        case beststories
    }
    
}
