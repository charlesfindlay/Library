//
//  Book.swift
//  Library
//
//  Created by Student on 9/30/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

enum genreList: String {
    case Romance = "Romance"
    case YA = "YA"
    case Mystery = "Mystery"
    case Suspense = "Suspense"
    case Horror = "Horror"
    case Biography = "Biography"
    case Western = "Western"
    
    
    static func getGenre(rawValue: String) -> genreList {
        return genreList(rawValue: rawValue)!
    }
}



struct Book {
    var title: String?
    var author: String?
    var genre: genreList?
    var length: Int?
    
    let genreArray = ["Romance","YA","Mystery","Suspense","Horror","Biography","Western"]

}
