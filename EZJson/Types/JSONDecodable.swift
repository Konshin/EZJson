//
//  JSONDecodable.swift
//  EZJson
//
//  Created by Konshin on 15.06.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import Foundation

public protocol JSONDecodable {
    init(json: JSON) throws
}


extension JSONDecodable where Self: NSNumber {
    public init(json: JSON) throws {
        guard case let .Number(num as Double) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        self.init(double: num)
    }
}


extension JSONDecodable where Self: NSDate {
    public init(json: JSON) throws {
        guard case let .Date(date) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        self.init(timeIntervalSince1970: date.timeIntervalSince1970)
    }
}