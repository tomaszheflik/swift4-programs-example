//
//  ViewController.swift
//  NSAllertProgram
//
//  Created by Tomasz Heflik on 30/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var suppres : Bool = true
    @IBOutlet weak var alertButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func close(_ sender: NSButton) {
        print ("Application will terminate")
        NSApp.terminate(nil)
    }
    @IBAction func allert(_ sender: NSButton) {
        let myAlert = NSAlert()
        print (suppres)
        myAlert.messageText = "Bold message"
        myAlert.informativeText = "Non bold informative text"
        myAlert.alertStyle = NSAlert.Style.critical
        myAlert.showsSuppressionButton = true
        if suppres {
            myAlert.runModal()
            if (myAlert.suppressionButton!.state.rawValue == 1) {
                suppres = false
                alertButton.isEnabled = false
            }
        }
    }
    

}

