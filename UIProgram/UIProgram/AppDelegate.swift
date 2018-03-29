//
//  AppDelegate.swift
//  UIProgram
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    @IBAction func DoSomething(_ sender: Any) {
        print("Yes we do")
    }
    

}

