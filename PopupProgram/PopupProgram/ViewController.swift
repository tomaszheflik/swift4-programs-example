//
//  ViewController.swift
//  PopupProgram
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var displayDecission: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func popup(_ sender: NSPopUpButton) {
        print(sender.itemArray[sender.indexOfSelectedItem].tag)
        print(sender.titleOfSelectedItem!)
        switch sender.itemArray[sender.indexOfSelectedItem].tag {
        case 0:
            displayDecission.stringValue = sender.titleOfSelectedItem!
        case 1:
            displayDecission.stringValue = sender.titleOfSelectedItem!
        case 2:
            displayDecission.stringValue = sender.titleOfSelectedItem!
        default:
            displayDecission.stringValue = "Unknown"
        }
    }
    
}

