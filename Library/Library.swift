//
//  Library.swift
//  Library
//
//  Created by Student on 9/30/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

class Library {
    var name: String?
    var books: Array<Book> = []
    
    
    
    //TODO: Add book
    func addBook() {
        
    }
    
    
    //TODO: Edit book
    
    
    //TODO: Delete book
    
    //TODO: List all books
    
    
    
    
    
    
    
    //Library Seed
    func seedLibrary() -> Library {
        var newLibrary = Library()
        let booksSeedArray = [
            ["The Shining", "Stephen King", "horror", "688"],
            ["The Last Apprentice: Revenge of the Witch", "Joseph Delaney", "ya", "384"]
        ] //END bookSeedArray
        
        for item in booksSeedArray {
            var nextBook = Book()
            nextBook.title = item[0]
            nextBook.author = item[1]
            nextBook.genre = genreList.getGenre(item[2])
            nextBook.length = Int(item[3])
            newLibrary.books.append(nextBook)
        }
        newLibrary.name = "Charles Findlay Bookshelf"
        return newLibrary
    }// END seed function
}

