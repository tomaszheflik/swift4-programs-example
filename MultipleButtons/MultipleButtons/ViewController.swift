//
//  ViewController.swift
//  MultipleButtons
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var displayName: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func buttonPressed(_ sender: NSButton) {
        print(sender.tag)
        switch sender.tag {
        case 1:
            displayName.stringValue = "Push button"
        case 2:
            displayName.stringValue = "Recessed button"
        case 3:
            displayName.stringValue = "Inline button"
        default:
            displayName.stringValue = "Unknown"
        }
    }
    
}

