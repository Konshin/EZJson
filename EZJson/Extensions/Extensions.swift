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
        guard case let .Number(num as Int) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        self = num
    }
}


extension Float: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .Number(num as Float) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        self = num
    }
}


extension Double: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .Number(num as Double) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        self = num
    }
}


extension NSNumber: JSONDecodable {
//    public convenience required init(json: JSON) throws {
//        guard case let .Number(num as Double) = json else {
//            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
//        }
//        self.init(double: num)
//    }
}


extension Bool: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .Bool(bool) = json else {
            throw JSONError.TypeMismatch(expected: "Bool", actual: json.description)
        }
        self = bool
    }
}


extension String: JSONDecodable {
    public init(json: JSON) throws {
        guard case let .String(value) = json else {
            throw JSONError.TypeMismatch(expected: "String", actual: json.description)
        }
        self = value
    }
}


extension NSDate: JSONDecodable {
    public static func decode(json: JSON) throws -> NSDate {
        guard case let .Date(value) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        return value
    }
}




