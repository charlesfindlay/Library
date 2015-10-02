//
//  AddBookViewController.swift
//  Library
//
//  Created by Student on 9/30/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class AddBookViewController : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var newTitle: UITextField!
    @IBOutlet weak var newAuthor: UITextField!
    @IBOutlet weak var newLength: UITextField!    
    @IBOutlet weak var newGenre: UITextField!
    
    var workingLibrary = Library()
    var genrePicker = Book().genreArray
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pickerView = UIPickerView()
        pickerView.delegate = self
        newGenre.inputView = pickerView
        
    }
    
    
    @IBAction func cancelAddBook(sender: AnyObject) {
        self.dismissViewControllerAnimated(true) {
        }
    }
    
    @IBAction func getNewBook(sender: AnyObject) {
        
        Library().addBook(workingLibrary, newTitle: newTitle.text!, newAuthor: newAuthor.text!, newGenre: newGenre.text!, newLength: newLength.text!)
        //Dismiss modal view
        self.dismissViewControllerAnimated(true) {
        }
    }
    
    //Configure PickerView
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genrePicker.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return genrePicker[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        newGenre.text = genrePicker[row]
    }
    //End Picker Configuration
    
}
