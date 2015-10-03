//
//  DeleteBookViewController.swift
//  Library
//
//  Created by Student on 10/3/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class DeleteBookViewController: UIViewController {
    
    
    @IBOutlet weak var deleteTitle: UILabel!
    @IBOutlet weak var deleteAuthor: UILabel!
    
    var workingLibrary = Library()
    var bookToDelete: Book!
    
    override func viewWillAppear(animated: Bool) {
        deleteTitle.text = bookToDelete.title
        deleteAuthor.text = bookToDelete.author
    }
    
    
    
    @IBAction func deleteConfirmed(sender: AnyObject) {
    }
    
    
}
