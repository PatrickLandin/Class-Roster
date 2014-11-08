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
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


//
//var selectedPerson = person()
//var relieverLast = personLast()
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    self.title = "Bullpen"
//    self.nameLabel.text = self.selectedPerson.name
//    self.lastNameLabel.text = self.relieverLast.lastName
//    self.view.backgroundColor = UIColor.whiteColor()
//    // Do any additional setup after loading the view.
//}
//
//override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//}
