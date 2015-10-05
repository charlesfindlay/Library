//
//  ListBooksViewController.swift
//  Library
//
//  Created by Student on 10/3/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class ListBooksViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    //model
    var workingLibrary: Library?
    var bookList: Array<Book>!
    
    
    //number of rows
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.bookList.count)
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("BookTitleCell")
        let titleForRow = self.bookList[indexPath.row].title
        cell!.textLabel?.text = titleForRow
        
        return cell!
    }
    
    
}
