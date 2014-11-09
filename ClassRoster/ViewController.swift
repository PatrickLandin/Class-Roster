//
//  ViewController.swift
//  ClassRoster
//
//  Created by Patrick Landin on 11/8/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var firstName = [Person]()
    var lastName = [PersonLastName]()

    override func viewDidLoad() {
        super.viewDidLoad()
    
    self.title = "Men that are all of the bass"
    self.tableView.dataSource = self
    self.tableView.delegate = self
    
    var santa = Person()
    santa.firstName = "Santa H."
    var clifton = Person()
    clifton.firstName = "Clifton B."
    var rufferford = Person()
    rufferford.firstName = "Rufferford T."
    var poppington = Person()
    poppington.firstName = "Poppington H."
    
    self.firstName = [santa, clifton, rufferford, poppington]
    
    var me = Person()
    self.firstName.append(me)
    
    var barnswallow = PersonLastName()
    barnswallow.lastName = "Barnswallow"
    var clumberbatch = PersonLastName()
    clumberbatch.lastName = "Clumberbatch"
    var woofinghausen = PersonLastName()
    woofinghausen.lastName = "Woofinghausen"
    var bostwicken = PersonLastName()
    bostwicken.lastName = "Bostwicken"
    
    self.lastName = [barnswallow, clumberbatch, woofinghausen, bostwicken]
    
}


func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.firstName.count
}

func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as UITableViewCell
    
    var PersonToDisplay = self.firstName[indexPath.row]
    
    cell.textLabel.text = PersonToDisplay.firstName
    return cell
}


override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "SHOW_DETAIL" {
        let detailViewController = segue.destinationViewController as DetailViewController
        let selectedIndexPath = self.tableView.indexPathForSelectedRow()
        var firstNameToPass = self.firstName[selectedIndexPath!.row]
        var lastNameToPass = self.lastName[selectedIndexPath!.row]
        detailViewController.selectedPerson = firstNameToPass
        detailViewController.selectedLastName = lastNameToPass
        
        }
    
    }

}