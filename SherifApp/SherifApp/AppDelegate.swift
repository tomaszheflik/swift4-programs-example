//
//  AppDelegate.swift
//  SherifApp
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var SheriffCounter: NSTextField!
    @IBOutlet weak var OutlawCounter: NSTextField!
    
    var sheriff = Person()
    var outlaw = Person()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        SheriffCounter.integerValue = sheriff.hitPoints
        OutlawCounter.integerValue = outlaw.hitPoints
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func shootButton(_ sender: NSButton) {
        if sender.title == "Sheriff Shoot" {
            print("sherif firing tag -> \(sender.title)")
            outlaw.hitPoints -= sheriff.shoot()
            window.title = "Now Outlaw will shoot"
        }
        if sender.title == "Outlaw Shoot" {
            print("Outlaw firing tag -> \(sender.title)")
            sheriff.hitPoints -= outlaw.shoot()
            window.title = "Now Sheriff will shoot"
        }

        SheriffCounter.integerValue = sheriff.hitPoints
        OutlawCounter.integerValue = outlaw.hitPoints
        
        if sheriff.hitPoints <= 0 {
            let myAlert = NSAlert()
            myAlert.messageText = "Sherif died"
            myAlert.runModal()
        } else if outlaw.hitPoints <= 0 {
            let myAlert = NSAlert()
            myAlert.messageText = "Outlaw died"
            myAlert.runModal()
        }
    }
    
}

