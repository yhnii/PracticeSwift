//
//  Exam3_20060301Tests.swift
//  Exam3-20060301Tests
//
//  Created by Digital Media Dept on 2019. 3. 23..
//  Copyright © 2019년 Digital Media Dept. All rights reserved.
//

import XCTest
@testable import Exam3_20060301

class Exam3_20060301Tests: XCTestCase {

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
        let givenValue = [ 1 : [ "A" ] ]
        let results = DictConv.conversion(given: givenValue)
        let expected =  ["a" : 1 ]
        XCTAssertEqual(results, expected)
    }
    
    func test2() {
        let givenValue = [ 1 : [ "A", "E", "I", "O", "U" ] ]
        let results = DictConv.conversion(given: givenValue)
        let expected =  ["a" : 1, "e": 1, "i": 1, "o": 1, "u": 1 ]
        XCTAssertEqual(results, expected)
    }
    
    func test3() {
        let givenValue = [ 1 : [ "A", "E" ], 2: ["D", "G"] ]
        let results = DictConv.conversion(given: givenValue)
        let expected =  ["a" : 1, "e": 1, "d": 2, "g": 2 ]
        XCTAssertEqual(results, expected)
    }

    func test4() {
        let givenValue = [ 1 : [ "A", "E", "I", "O", "U", "L", "N", "R", "S", "T" ],
                           2 : [ "D", "G" ],
                           3 : [ "B", "C", "M", "P" ],
                           4 : [ "F", "H", "V", "W", "Y" ],
                           5 : [ "K"],
                           8 : [ "J", "X" ],
                           10 : [ "Q", "Z" ]
        ]
        let results = DictConv.conversion(given: givenValue)
        let expected =  [  "a" : 1, "b" : 3, "c" : 3, "d" : 2, "e" : 1,
                           "f" : 4, "g" : 2, "h" : 4, "i" : 1, "j" : 8,
                           "k" : 5, "l" : 1, "m" : 3, "n" : 1, "o" : 1,
                           "p" : 3, "q" : 10, "r" : 1, "s" : 1, "t" : 1,
                           "u" : 1, "v" : 4, "w" : 4, "x" : 8, "y" : 4,
                           "z" : 10 ]
        XCTAssertEqual(results, expected)
    }

}
