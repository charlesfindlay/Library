//
//  HomeViewController.swift
//  Library
//
//  Created by Student on 9/30/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        var myLibrary = Library().seedLibrary()
        print(myLibrary.name!)
        for item in myLibrary.books {
            print(item.title!)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

