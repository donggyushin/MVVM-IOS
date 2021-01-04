//
//  APIService.swift
//  MVVM_IOS
//
//  Created by 신동규 on 2021/01/04.
//

import Foundation

class ApiService {
    static let shared = ApiService()
    
    private let sourceUrl = URL(string: "https://newsapi.org/v2/everything?q=bitcoin&from=2020-12-04&sortBy=publishedAt&apiKey=bb8e4fcfd4bc4ea4a1ba2b1b105a592f")!
    
    func apiToGetArticlesData(completion:@escaping(Articles) -> Void) {
        URLSession.shared.dataTask(with: sourceUrl) { (data, urlResponse, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                
                let articlesData = try! jsonDecoder.decode(Articles.self, from: data)
                completion(articlesData)
            }
        }.resume()
    }
}
