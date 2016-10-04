//
//  Extensions.swift
//  EZJson
//
//  Created by Konshin on 15.06.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import Foundation

extension Int: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .number(num as Int) = json else {
            throw JSONError.typeMismatch(expected: "Number", actual: json.description)
        }
        self = num
    }
}


extension Float: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .number(num as Float) = json else {
            throw JSONError.typeMismatch(expected: "Number", actual: json.description)
        }
        self = num
    }
}


extension Double: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .number(num as Double) = json else {
            throw JSONError.typeMismatch(expected: "Number", actual: json.description)
        }
        self = num
    }
}


extension Bool: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .bool(bool) = json else {
            throw JSONError.typeMismatch(expected: "Bool", actual: json.description)
        }
        self = bool
    }
}


extension String: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .string(value) = json else {
            throw JSONError.typeMismatch(expected: "String", actual: json.description)
        }
        self = value
    }
}


extension Date: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .date(value) = json else {
            throw JSONError.typeMismatch(expected: "Number", actual: json.description)
        }
        self = value
    }
}


