//
//  DetailViewController.swift
//  ClassRoster
//
//  Created by Patrick Landin on 11/8/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    // text field outlets
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    
    var selectedPerson = Person()
    // uses the defailt init() with no parameters
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //We're becoming the delegate for each text field
        self.firstNameText.delegate = self
        self.lastNameText.delegate = self
        
        self.title = "Their First and Last Names"
        
        // filling names into labels
        self.firstNameText.text = self.selectedPerson.firstName
        self.lastNameText.text = self.selectedPerson.lastName
        
        }
    
    //Dismiss the keyboard after user presses return key
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

