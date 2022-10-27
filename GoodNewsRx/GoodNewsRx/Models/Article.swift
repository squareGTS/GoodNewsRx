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

extension ArticlesList {
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=c3c25d770bd44a8eb00c0064f06067b5")!
        return Resource(url: url)
    }()
}
