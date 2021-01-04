//
//  ArticleModel.swift
//  MVVM_IOS
//
//  Created by 신동규 on 2021/01/04.
//

import Foundation

struct Articles:Codable {
    let articles:[ArticleData]
}

struct ArticleData:Codable {
    var author:String?
    var title:String?
    var description:String?
}
