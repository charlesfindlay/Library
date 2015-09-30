//
//  Book.swift
//  Library
//
//  Created by Student on 9/30/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

enum genreList: String {
    case Romance = "romance"
    case YA = "ya"
    case Mystery = "mystery"
    case Suspense = "suspense"
    case Horror = "horror"
    case Biography = "biography"
    case Western = "western"
    
    static func getGenre(rawValue: String) -> genreList {
        return genreList(rawValue: rawValue)!
    }
    
}


struct Book {
    var title: String?
    var author: String?
    var genre: genreList?
    var length: Int?
    
    
}
