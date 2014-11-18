//
//  Person.swift
//  ClassRoster
//
//  Created by Patrick Landin on 11/8/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import Foundation
import UIKit

class Person {
    
    var firstName : String
    var lastName : String
    var isStudent = true
    var image : UIImage?
    
    init() {
        self.firstName = "Patrick"
        self.lastName = "Landin"
        self.isStudent = true
    }
    // default init()
    
    init (first: String, last: String, studentStatus: Bool) {
        self.firstName = first
        self.lastName = last
        self.isStudent = studentStatus
    }
    // init() with parameters
    
    // return the first and last names in a string
    func returnFullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}



