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
        guard case let .number(num as Double) = json else {
            throw JSONError.typeMismatch(expected: "Number", actual: json.description)
        }
        self.init(value: num as Double)
    }
}
