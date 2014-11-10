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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Their First and Last Names"
        
        self.nameLabel.text = self.selectedPerson.firstName
        self.lastNameLabel.text = self.selectedPerson.lastName
        
        }
}