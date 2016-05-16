//
//  AppDelegate.swift
//  RanchForecast
//
//  Created by Sebastian on 5/16/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
        
var mainWindowController: MainWindowController?


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        let mainWindowController = MainWindowController()
        mainWindowController.showWindow(self)
        
        //so that appdelegate can keep a reference
        self.mainWindowController = mainWindowController
    }

}

