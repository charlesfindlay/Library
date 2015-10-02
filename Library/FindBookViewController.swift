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
    var isDelete = false
    var isEdit = true
    
    override func viewDidAppear(animated: Bool) {
        //Set code here to update label text to display either edit or delete.
        if isEdit == true {
            mainLabel.text = "Which book do you want to edit?"
        } else {
            mainLabel.text = "Which book do you want to delete?"
        }
    }
    
    
    @IBAction func findTheBook(sender: AnyObject) {
        var myBook: Book!
        
        myBook = Library().findBook(workingLibrary, editTitle: titleToFind.text!)
    }
    
    
    
}