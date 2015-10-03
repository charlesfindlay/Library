//
//  HomeViewController.swift
//  Library
//
//  Created by Student on 9/30/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var myLibrary = Library().seedLibrary()
    @IBOutlet weak var libraryNameLabel: UILabel!
    var toEdit = false
    var toDelete = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        libraryNameLabel.text = myLibrary.name
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func editABook(sender: UIButton) {
        toEdit = true
        toDelete = false
        self.performSegueWithIdentifier("findBook", sender: sender)
    }
    
    @IBAction func deleteABook(sender: UIButton) {
        toEdit = false
        toDelete = true
        self.performSegueWithIdentifier("findBook", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addBook" {
            let vc = segue.destinationViewController as! AddBookViewController
            vc.workingLibrary = myLibrary
            //vc.viewDescriptionLabel!.text = "Add a New Book"
            vc.isEdit = false
        }
        else if toEdit == true {
            let vc = segue.destinationViewController as! FindBookViewController
            vc.workingLibrary = myLibrary
            vc.isEdit = toEdit
            vc.isDelete = toDelete
        } else if toDelete == true {
            let vc = segue.destinationViewController as! FindBookViewController
            vc.workingLibrary = myLibrary
            vc.isEdit = toEdit
            vc.isDelete = toDelete
        }
        else if segue.identifier == "listBooks" {
            let vc = segue.destinationViewController as! ListBooksViewController
            vc.workingLibrary = myLibrary
        }
    }
    
    
    @IBAction func printBookTitles(sender: UIButton) {
        print(myLibrary.name!)
        for item in myLibrary.books {
            print("\(item.title!) - \(item.author!) - \(item.genre!) - \(item.length!)")
        }
        self.performSegueWithIdentifier("listBooks", sender: sender)
    }
    

}

