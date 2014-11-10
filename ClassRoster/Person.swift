//
//  Person.swift
//  ClassRoster
//
//  Created by Patrick Landin on 11/8/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import Foundation

class Person {
    
    var firstName = "Patrick"
    var lastName = "Landin"
    var isStudent = true
    
    init() {
        self.firstName = "Patrick"
        self.lastName = "Landin"
        self.isStudent = true
    } // default init()
    
    init (first: String, last: String, studentStatus: Bool) {
        self.firstName = first
        self.lastName = last
        self.isStudent = studentStatus
    } // init() with parameters
    
    func returnFullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}