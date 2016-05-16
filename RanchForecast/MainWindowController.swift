//
//  MainWindowController.swift
//  RanchForecast
//
//  Created by Sebastian on 5/16/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet var tableView: NSTableView!
    @IBOutlet var arrayController: NSArrayController!
    
    let fetcher = ScheduleFetcher()
    dynamic var courses: [Course] = []
    
    

    override func windowDidLoad() {
        super.windowDidLoad()

        tableView.target = self
        tableView.doubleAction = #selector(MainWindowController.openClass(_:))
        
        fetcher.fetchCoursesUsingCompletionHandler { (result) -> (Void) in
            
            switch result {
            case .Success(let courses):
                print("courses \(courses)")
                self.courses = courses
            case .Failure(let error):
                print("error \(error)")
                NSAlert(error: error).runModal()
                self.courses = []
            }
        }
    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    func openClass(sender: AnyObject!) {
        if let course = arrayController.selectedObjects.first as? Course {
            NSWorkspace.sharedWorkspace().openURL(course.url)
        }
    }
}
