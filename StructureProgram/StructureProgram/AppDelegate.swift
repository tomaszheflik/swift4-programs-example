//
//  AppDelegate.swift
//  StructureProgram
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    struct Person {
        var Name : String = ""
        var Address : String = ""
        var Phone : String = ""
    }
    
    func cleanInput() {
        nameField.stringValue = ""
        addressField.stringValue = ""
        phoneField.stringValue = ""
    }
    var employee = Person()
    var arrayOfEmployee = [Person]()
    
    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var nameField: NSTextField!
    @IBOutlet weak var addressField: NSTextField!
    @IBOutlet weak var phoneField: NSTextField!
    @IBOutlet weak var totalNumField: NSTextField!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func addButton(_ sender: NSButton) {
        if nameField.stringValue == "" || addressField.stringValue == "" || phoneField.stringValue == ""{
            let myAlert = NSAlert()
            myAlert.messageText = "One of field is empty!"
            myAlert.runModal()
        } else{
            employee.Name       = nameField.stringValue
            employee.Address    = addressField.stringValue
            employee.Phone      = phoneField.stringValue
            arrayOfEmployee.append(employee)
            totalNumField.integerValue = arrayOfEmployee.count
            cleanInput()
        }
    }
    
    @IBAction func viewButton(_ sender: NSButton) {
        let myAlert = NSAlert()
        if arrayOfEmployee.isEmpty {
            myAlert.messageText = "Address book is empty!"
            myAlert.runModal()
        } else {
            print(arrayOfEmployee.count)
            var person = Person()
            person = arrayOfEmployee.removeLast()
            totalNumField.integerValue = arrayOfEmployee.count
            myAlert.messageText = person.Name + "\r\n" +  person.Address + "\r\n" + person.Phone
            myAlert.runModal()
        }
    }
    
}

