//
//  ViewController.swift
//  StoryboardProgram
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var window : NSWindow?
    var message = PrintLog()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear() {
        window = self.view.window!
    }
    override func viewDidDisappear() {
        print("Will close application")
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func close(_ sender: NSButton) {
        message.write()
        NSApp.terminate(nil)
    }
}

