//
//  ViewController.swift
//  SliderProgram
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var mySlider: NSSlider!
    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var progress: NSProgressIndicator!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidDisappear() {
        print("Cleaning code before close")
        progress.doubleValue = 0
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func getValue(_ sender: NSSlider) {
        print(mySlider.integerValue)
        label.integerValue = mySlider.integerValue
        progress.minValue = mySlider.minValue
        progress.maxValue = mySlider.maxValue
        progress.doubleValue  = mySlider.doubleValue
//        progress.startAnimation(nil)
    }
    
    @IBAction func close(_ sender: NSButton) {
        NSApp.terminate(nil)
    }
}

