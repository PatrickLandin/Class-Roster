//
//  DetailViewController.swift
//  ClassRoster
//
//  Created by Patrick Landin on 11/8/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    var selectedPerson = Person()
    
    var selectedLastName = PersonLastName()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "First and Last Name"
        
        self.nameLabel.text = self.selectedPerson.firstName
        self.lastNameLabel.text = self.selectedLastName.lastName
        
        
        
        // self.view.backgroundColor = UIColor.redColor()
        
        }
    
}