//
//  AppDelegate.swift
//  PanelProgram
//
//  Created by Tomasz Heflik on 30/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    @IBAction func myMenu(_ sender: NSMenuItem) {
        print(sender.title)
    }

}

