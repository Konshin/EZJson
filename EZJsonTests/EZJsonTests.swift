//
//  EZJsonTests.swift
//  EZJsonTests
//
//  Created by Konshin on 15.06.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import XCTest
@testable import EZJson

private let json: [[String: AnyObject]] =
    [
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ]
]

struct Item: JSONDecodable {
    let id: Int
    let name: String
    let maybeValue: String?
    let shouldBeNumber: Int
    let date: NSDate
    let object: Object?
    let children: [Item]?
    
    private static let dateFormatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "ddMMyyyy"
        return formatter
    }()
    
    static func dateFromString(str: String) throws -> NSDate {
        guard let date = dateFormatter.dateFromString(str) else {
            throw "Не получилось распарсить дату"
        }
        
        return date
    }
    
    static func decode(json: JSON) throws -> Item {
        return Item(
            id: try json["id"].decode(),
            name: try json["name"].decode(),
            maybeValue: json["maybeValue"].decode(),
            shouldBeNumber: try json["shouldBeNumber"].decode(),
            date: try json["date"].map(dateFromString).decode(),
            object: json["object"].decode(),
            children: json["children"].decode()
        )
    }
}


struct Object: JSONDecodable {
    let id: Int
    let name: String
    
    static func decode(json: JSON) throws -> Object {
        return Object(
            id: try json["id"].decode(),
            name: try json["name"].decode()
        )
    }
}

class EZJsonTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let jsonArray = JSON(json)
        do {
            let items: [Item] = try jsonArray.decode()
            XCTAssertFalse(items.isEmpty)
        } catch {
            XCTAssert(false, String(error))
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
}
