//
//  DebuggingTests.swift
//  DebuggingTests
//
//  Created by Todd Perkins on 12/13/18.
//  Copyright © 2018 Todd Perkins. All rights reserved.
//

import XCTest

class DebuggingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let example = Example()
        XCTAssert(example.exampleProp == "example", "example needs to be example")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
