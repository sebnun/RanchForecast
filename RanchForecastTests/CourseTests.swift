//
//  CourseTests.swift
//  RanchForecast
//
//  Created by Sebastian on 5/16/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import XCTest
import RanchForecast

class CourseTests: XCTestCase {
    
    func testCourseInitialization() {
        let course = Course(title: Constants.title,
                            url: Constants.url,
                            nextStartDate: Constants.date)
        
        XCTAssertEqual(course.title, Constants.title)
        XCTAssertEqual(course.url, Constants.url)
        XCTAssertEqual(course.nextStartDate, Constants.date)
    }
    
    
}