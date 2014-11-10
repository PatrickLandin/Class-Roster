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

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.title = "Men that are all of the bass"
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        var firstPerson = Person(first: "Santa", last: "H. Barnswallow", studentStatus: false)
        var secondPerson = Person(first: "Clifton", last: "B. Clumberbatch", studentStatus: false)
        var thirdPerson = Person(first: "Rufferford", last: "T. Woofinghausen", studentStatus: false)
        var fourthPerson = Person(first: "Poppington", last: "H. Lardvaarkian", studentStatus: false)
        var fifthPerson = Person(first: "Bernard", last: "B. Bluffingshire", studentStatus: false)
        var sixthPerson = Person(first: "Brownie", last: "P. Shytles", studentStatus: false)
        
        self.names.append(firstPerson)
        self.names.append(secondPerson)
        self.names.append(thirdPerson)
        self.names.append(fourthPerson)
        self.names.append(fifthPerson)
        self.names.append(sixthPerson)
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as UITableViewCell
    
        var PersonToDisplay = self.names[indexPath.row]
    
        cell.textLabel.text = PersonToDisplay.firstName
        return cell
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