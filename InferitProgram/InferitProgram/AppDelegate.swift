//
//  AppDelegate.swift
//  InferitProgram
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var ObjectOne: NSTextField!
    @IBOutlet weak var ObjectTwo: NSTextField!
    
    class One {
        var myColor : NSColor = NSColor.black
        func change () {
            myColor = NSColor.red
        }
    }
    class Two : One {
        var myBackground : NSColor = NSColor.white
        override func change() {
            myColor = NSColor.blue
            myBackground = NSColor.green
        }
    }
    
    var ThingOne = One()
    var ThingTwo = Two()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    @IBAction func changeButton(_ sender: NSButton) {
        ThingOne.change()
        ThingTwo.change()
        ObjectOne.textColor = ThingOne.myColor
        ObjectTwo.textColor = ThingTwo.myColor
        ObjectTwo.drawsBackground = true
        ObjectTwo.backgroundColor = ThingTwo.myBackground
    }
    

}

