//
//  ViewController.swift
//  ToolBarProgram
//
//  Created by Tomasz Heflik on 30/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa
import CoreGraphics

class ViewController: NSViewController {

    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var button: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func closeAlternative(_ sender : NSToolbarItem) {
        print ("Aternative use")
    }
    
    @IBAction func fall(_ sender: NSButton) {
        let vector = CGVector(dx: 2, dy:6)
        let vector1 = CGVector(dx: 2, dy: 6.1)
        if vector == vector1 {
            print ("EQUAL")
        } else {
            print ("NOT EQUAL")
        }
        
    }
    
}

