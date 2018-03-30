//
//  ViewController.swift
//  PanelProgram
//
//  Created by Tomasz Heflik on 30/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    override func viewDidDisappear() {
      print ("application will be terminated")
        
    }

    @IBAction func openPanel(_ sender: NSButton) {
        let myOpen = NSOpenPanel()
        myOpen.canChooseFiles = true
        myOpen.canChooseDirectories = true
        
        myOpen.begin { (result) -> Void in
            if result == NSApplication.ModalResponse.OK {
                print (myOpen.urls)
            }
            
        }
    }
    
    @IBAction func savePabel(_ sender: NSButton) {
        let mySave = NSSavePanel()
        mySave.title = "Save a File Here"
        mySave.prompt = "Save me"
        
        mySave.begin { (result) -> Void in
            if result == NSApplication.ModalResponse.OK {
                print(mySave.url!)
                print(mySave.nameFieldStringValue)
            }
            
        }
        
    }
    @IBAction func closeApp(_ sender: NSButton){
        print(sender.title)
        
    }
    
}

