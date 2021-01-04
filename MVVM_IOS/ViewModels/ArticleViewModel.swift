//
//  ArticleViewModel.swift
//  MVVM_IOS
//
//  Created by 신동규 on 2021/01/04.
//

import Foundation

class ArticleViewModel {
    
    var articles:Articles? {
        didSet {
            self.bindArticleViewModelToController()
        }
    }
    
    var bindArticleViewModelToController:(() -> Void) = {}
    
    init() {
        callFuncToGetArticles()
    }
    
    func callFuncToGetArticles() {
        ApiService.shared.apiToGetArticlesData { (articles) in
            self.articles = articles
        }
    }
    
}
