//
//  Course.swift
//  RanchForecast
//
//  Created by Sebastian on 5/16/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import Foundation

public class Course: NSObject {
    
    public let title: String
    public let url: NSURL
    public let nextStartDate: NSDate
    
    public init(title: String, url: NSURL, nextStartDate: NSDate) {
        self.title = title
        self.url = url
        self.nextStartDate = nextStartDate
        super.init()
    }
}