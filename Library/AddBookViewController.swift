//
//  AddBookViewController.swift
//  Library
//
//  Created by Student on 9/30/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class AddBookViewController : UIViewController {
    
    
    @IBOutlet weak var newTitle: UITextField!
    var workingLibrary = Library()
    
    
    @IBAction func getNewBook(sender: AnyObject) {
        var newBook = Book()
        newBook.title = newTitle.text
        workingLibrary.books.append(newBook)
        
        //Dismiss modal view
        self.dismissViewControllerAnimated(true) {
            
        }
    }
    
    
}
