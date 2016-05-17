//
//  ScheduleFetcherTests.swift
//  RanchForecast
//
//  Created by Sebastian on 5/16/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import XCTest
import RanchForecast

class ScheduleFetcherTests: XCTestCase {
    
    var fetcher: ScheduleFetcher!
    
    
    override func setUp() {
        super.setUp()
        fetcher = ScheduleFetcher()
    }
    
    
    override func tearDown() {
        fetcher = nil
        super.tearDown()
    }
    
    
    func testCreateCourseFromValidDictionary() {
        let course: Course! = fetcher.courseFromDictionary(Constants.validCourseDict)
        XCTAssertNotNil(course)
        XCTAssertEqual(course.title, Constants.title)
        XCTAssertEqual(course.url, Constants.url)
        XCTAssertEqual(course.nextStartDate, Constants.date)
    }
    
    
    func testResultFromValidHTTPResponseAndValidData() {
        let result = fetcher.resultFromData(Constants.jsonData,
                                            response: Constants.okResponse,
                                            error: nil)
        
        switch result {
        case .Success(let courses):
            XCTAssert(courses.count == 1)
            let theCourse = courses[0]
            XCTAssertEqual(theCourse.title, Constants.title)
            XCTAssertEqual(theCourse.url, Constants.url)
            XCTAssertEqual(theCourse.nextStartDate, Constants.date)
        default:
            XCTFail("Result contains Failure, but Success was expected.")
        }
    }
}