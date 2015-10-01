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
    @IBOutlet weak var newAuthor: UITextField!
    @IBOutlet weak var newLength: UITextField!
    
    
    
    var workingLibrary = Library()
    
    
    @IBAction func getNewBook(sender: AnyObject) {
        
        Library().addBook(workingLibrary, newTitle: newTitle.text!, newAuthor: newAuthor.text!, newLength: newLength.text!)
        //Dismiss modal view
        self.dismissViewControllerAnimated(true) {
        }
    }
    
    
}
