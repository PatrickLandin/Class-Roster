//
//  ViewController.swift
//  ClassRoster
//
//  Created by Patrick Landin on 11/8/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var names = [Person]()
        // backing array

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.title = "Men that are all about that bass"
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.loadFromPlist()
        
//        USING PLIST INSTEAD OF APPENDING NAMES WITHIN VIEWCONTROLLER
//        // new persons
//        var firstPerson = Person(first: "Santa H.", last: "Barnswallow", studentStatus: false)
//        var secondPerson = Person(first: "Clifton B.", last: "Clumberbatch", studentStatus: false)
//        var thirdPerson = Person(first: "Rufferford T.", last: "Woofinghausen", studentStatus: false)
//        var fourthPerson = Person(first: "Poppington H.", last: "Bumblebumpin", studentStatus: false)
//        var fifthPerson = Person(first: "Bernard B.", last: "Bluffingshire", studentStatus: false)
//        var sixthPerson = Person(first: "Brownie P.", last: "McShytles", studentStatus: false)
//        
//        // adding persons to the array
//        self.names.append(firstPerson)
//        self.names.append(secondPerson)
//        self.names.append(thirdPerson)
//        self.names.append(fourthPerson)
//        self.names.append(fifthPerson)
//        self.names.append(sixthPerson)
    }
    
    // PList Action
    func loadFromPlist() {
        
        let plistURL = NSBundle.mainBundle().pathForResource("Roster", ofType: "plist")
        
        let plistArray = NSArray(contentsOfFile: plistURL!)
        
        for object in plistArray! {
            println("looped")
            if let personDictionary = object as? NSDictionary   {
                    let firstName = personDictionary["First Name"] as String
                    let lastName =  personDictionary["Last Name"] as String
                var person = Person(first: firstName, last: lastName)
                self.names.append(person)
            }
        }
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
            // how many cells?
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as UITableViewCell
    
        var PersonToDisplay = self.names[indexPath.row]
    
        cell.textLabel.text = PersonToDisplay.firstName
        cell.textLabel.font = UIFont(name: "Avenir", size: 22)
        
        return cell
            // what goes in the cells?
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL" {
            let detailViewController = segue.destinationViewController as DetailViewController
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            var nameToPass = self.names[selectedIndexPath!.row]
            detailViewController.selectedPerson = nameToPass
        }
    }
}