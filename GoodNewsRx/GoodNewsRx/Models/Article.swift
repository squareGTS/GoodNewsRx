//
//  Article.swift
//  GoodNewsRx
//
//  Created by Maxim Bekmetov on 26.10.2022.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
