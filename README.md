Foundations 2 iOS Homework
Class Roster

Homework #5:

Replace the UILabels with UITextFields
When the user presses the return key, dismiss the keyboard.
Use autolayout to layout your detail view controller so that it looks good in both portrait and landscape modes.
Add an optional UIImage property to your Person class.

Homework #4:

Embed your main view controller (the one with the table view) in a navigation controller.
Create a 2nd view controller class and name it DetailViewController.
Drag out a view controller in storyboard, and set its class to DetailViewController
Create a show segue from your table view cell to your detail view controller on your storyboard.
Using prepareForSegue(), pass the person they clicked on in the tableview to the detail view controller
Show the person's first and last name in separate labels on the detail view controller.

Homework #3:

Replace whatever interface you have (random labels and button) with a table view. This table view should display a list Person object's names.

Homework #2:

In your ViewController class:
Add a property called myPerson that is of type Person, the class we made in the first homework.
Add a button to your view controller via storyboard.
Hook up an @IBAction from the button to your ViewController.Swift file. This will create a method that will fire every time the user presses on your button.
Inside this method, print your myPerson's full name to the console.

In your storyboard:
Drag out a 2nd View Controller from the object library.
Add a 2nd button, that fires a segue to a second view controller when pressed.

Homework#1:

Create a Person class in Swift with the following functionality:
Properties for a person’s first name and last name and a bool declaring if the person is a student or not
An init method that takes in 3 parameters that are used to set each property on the person.
A method that returns the persons full name (the first name and last name combined!)