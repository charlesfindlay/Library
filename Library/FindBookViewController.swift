//
//  FindBookViewController.swift
//  Library
//
//  Created by Student on 10/2/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class FindBookViewController : UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var titleToFind: UITextField!
    
    
    var workingLibrary = Library()
    var myBook: Book!
    var isDelete = false
    var isEdit = true
    
    override func viewWillAppear(animated: Bool) {
        //Set code here to update label text to display either edit or delete.
        if isEdit == true {
            mainLabel.text = "Which book do you want to edit?"
        } else {
            mainLabel.text = "Which book do you want to delete?"
        }
    }
    
    
    @IBAction func findTheBook(sender: UIButton) {
        
        
        //Basic Error check to eliminate empty string requests
        if titleToFind.text != "" {
        myBook = Library().findBook(workingLibrary, editTitle: titleToFind.text!)
        }
        
        //Verify that the title returned is equal to the user input. If it is then execute either delete or edit segue.
        if titleToFind.text == myBook.title {
            if isEdit == true {
                self.performSegueWithIdentifier("editBook", sender: sender)
            } else {
                self.performSegueWithIdentifier("deleteBook", sender: sender)
            }
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "editBook" {
            let vc = segue.destinationViewController as! AddBookViewController
            vc.workingLibrary = workingLibrary
            vc.bookToEdit = myBook
            vc.isEdit = true
        } else {
            let vc = segue.destinationViewController as! DeleteBookViewController
            vc.workingLibrary = workingLibrary
            vc.bookToDelete = myBook
            //This code threw nil while unwrapping optional errors
//            vc.deleteTitle.text = myBook.title!
//            vc.deleteAuthor.text = myBook.author!
            
        }
    }
    
    
}