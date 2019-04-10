//
//  CountWord.swift
//  Lab05Tests
//
//  Created by Digital Media Dept on 2019. 2. 8..
//  Copyright © 2019년 Digital Media Dept. All rights reserved.
//

import Foundation

class CountWord {
    class func convert (words: String) -> [String: Int] {
        var returnValue: [String: Int]! = [String: Int]()
        
        /* CountWord 내용을 생성하는 코드를 작성하세요 */
        for kWord in words.components(separatedBy: " ") {
            let cWord = kWord.lowercased()
            /* for loop 안쪽 이곳에 코드를 완성하세요 */
            if let count = returnValue[cWord]
            {
                returnValue[cWord] = count + 1
            }
            else
            {
                returnValue[cWord] = 1
            }
        }
        return returnValue
    }
}
