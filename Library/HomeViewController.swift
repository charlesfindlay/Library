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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Debugging code
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addBook" {
            let vc = segue.destinationViewController as! AddBookViewController
            vc.workingLibrary = myLibrary
        }
    }
    
    
    @IBAction func printBookTitles(sender: UIButton) {
        print(myLibrary.name!)
        for item in myLibrary.books {
            print(item.title!)
        }
    }
    

}

