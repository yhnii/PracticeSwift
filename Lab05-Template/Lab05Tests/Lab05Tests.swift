//
//  Lab05Tests.swift
//  Lab05Tests
//
//  Created by Digital Media Dept on 2019. 2. 8..
//  Copyright © 2019년 Digital Media Dept. All rights reserved.
//

import XCTest
@testable import Lab05

class Lab05Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    func test1() {
        let result = CountWord.convert(words: "word")
        let expected = ["word": 1]
        XCTAssertEqual(expected, result)
    }
    
    func test2() {
        let result = CountWord.convert(words: "one of each")
        let expected = ["one" : 1, "of" : 1, "each" : 1 ]
        XCTAssertEqual(expected, result)
    }
    
    func test3() {
        let result = CountWord.convert(words: "one fish two fish red fish blue fish")
        let expected = ["one" : 1, "fish" : 4, "two" : 1, "red" : 1, "blue" : 1 ]
        XCTAssertEqual(expected, result)
    }
    func test4() {
        let result = CountWord.convert(words: "testing 1 2 testing")
        let expected = [ "testing" : 2, "1" : 1, "2" : 1 ]
        XCTAssertEqual(expected, result)
        print(result)
    }
    
    func test5() {
        let result = CountWord.convert(words:"go Go GO")
        let expected = [ "go" : 3]
        XCTAssertEqual(expected, result)
    }
    
}
