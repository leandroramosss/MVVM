//
//  Article.swift
//  MVVM
//
//  Created by Leandro Ramos on 8/6/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import Foundation

struct ArticleList: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String
}
