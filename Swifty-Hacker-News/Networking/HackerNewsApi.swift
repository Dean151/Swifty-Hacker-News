//
//  HackerNewsApi.swift
//  Swifty-Hacker-News
//
//  Created by Thomas Durand on 10/12/2017.
//  Copyright © 2017 Thomas Durand. All rights reserved.
//

import Alamofire
import Foundation
import UIKit

class HackerNewsApi {
    
    var appDelegate: AppDelegate! {
        return UIApplication.shared.delegate as? AppDelegate
    }
    
    let session = SessionManager()
    let baseUrl = URL(string: "https://hacker-news.firebaseio.com/v0/")!
    
    enum Ranking: String {
        case topstories
        case newstories
        case beststories
    }
    
    func retreiveStoriesIds(ranking: Ranking, completion: @escaping ([Int]?, Error?) -> Void) {
        let url = baseUrl.appendingPathComponent("\(ranking.rawValue).json")
        session.request(url).validate().responseJSON { (response) in
            switch response.result {
            case .success(let array):
                completion(array as? [Int], nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}
