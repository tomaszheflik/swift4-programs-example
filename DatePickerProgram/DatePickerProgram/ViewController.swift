//
//  ViewController.swift
//  DatePickerProgram
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var textual: NSTextField!
    @IBOutlet weak var stopper: NSTextField!
    @IBOutlet weak var graphical: NSTextField!
    @IBOutlet weak var DatePicker: NSDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.DatePicker.dateValue = NSDate() as Date
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func graphical(_ sender: NSDatePicker) {
        print(sender.dateValue)
        graphical.stringValue = sender.stringValue
        self.DatePicker.dateValue = NSDate() as Date
    }
    
}

