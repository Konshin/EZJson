//
//  EZJsonArrayTests.swift
//  EZJson
//
//  Created by Konshin on 08.09.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import XCTest
@testable import EZJson

class EZJsonArrayTests: XCTestCase {
    private let jsonArray = [
        [1, 2],
        [3, 4],
        [5, 6]
    ]
    
    func testParse() {
        let json = JSON(jsonArray)
        guard case .Array(let jsons) = json else {
            XCTAssert(false)
            return
        }
    }
}
