//
//  SeccondContrloller.swift
//  StoryboardProgram
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

class SeccondContrloller: NSViewController {
    var window : NSWindow?
    var message = PrintLog()
    @IBOutlet weak var labelName: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    override func viewDidAppear() {
         window = self.view.window!
    }
    @IBAction func changeButton(_ sender: NSButton) {
        labelName.stringValue = "Button Clicked"
    }
    
    @IBAction func closeButton(_ sender: NSButtonCell) {
        message.write()
        window?.performClose(nil)
    }
}
