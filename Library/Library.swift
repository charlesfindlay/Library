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
    
    
    func addBook(workingLibrary: Library, newTitle: String, newAuthor: String, newGenre: String, newLength: String) {
        var newBook = Book()
        newBook.title = newTitle
        newBook.author = newAuthor
        newBook.genre = genreList.getGenre(newGenre)
        newBook.length = Int(newLength)
        workingLibrary.books.append(newBook)
        
    }
    
    
    //TODO: Edit book
    
    
    //TODO: Delete book
    func deleteABookFromLibrary(workingLibrary: Library, bookToDelete: Book) {
        let titleToDelete = bookToDelete.title
        if let i = workingLibrary.books.indexOf({$0.title == titleToDelete}) {
            workingLibrary.books.removeAtIndex(i)
        }
    }
    
    
    
    
    
    //TODO: List all books
    
    //TODO: Find a book - needed to implement both edit and delete functions
    func findBook(workingLibrary: Library, editTitle: String) -> Book {
        var bookToEdit: Book?
        let libraryBooks = workingLibrary.books
        for item in libraryBooks {
            if editTitle == item.title {
                bookToEdit = item
            }
        }
        return bookToEdit!
    }
    
    
    
    
    
    
    
    //Library Seed
    func seedLibrary() -> Library {
        let newLibrary = Library()
        let booksSeedArray = [
            ["The Shining", "Stephen King", "Horror", "688"],
            ["The Last Apprentice 1", "Joseph Delaney", "YA", "384"]
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


//extension RangeReplaceableCollectionType where Generator.Element : Equatable {
//    mutating func removeObject(object: Generator.Element) {
//        if let index = self.indexOf(object) {
//            self.removeAtIndex(index)
//        }
//    }
//}
