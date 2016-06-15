//
//  Extensions.swift
//  EZJson
//
//  Created by Konshin on 15.06.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import Foundation

extension Int: JSONDecodable {
    public static func decode(json: JSON) throws -> Int {
        guard case let .Number(num as Int) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        return num
    }
}


extension Float: JSONDecodable {
    public static func decode(json: JSON) throws -> Float {
        guard case let .Number(num as Float) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        return num
    }
}


extension Double: JSONDecodable {
    public static func decode(json: JSON) throws -> Double {
        guard case let .Number(num as Double) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        return num
    }
}


extension NSNumber: JSONDecodable {
    public static func decode(json: JSON) throws -> NSNumber {
        guard case let .Number(num) = json else {
            throw JSONError.TypeMismatch(expected: "Number", actual: json.description)
        }
        return num
    }
}


extension Bool: JSONDecodable {
    public static func decode(json: JSON) throws -> Bool {
        guard case let .Bool(bool) = json else {
            throw JSONError.TypeMismatch(expected: "Bool", actual: json.description)
        }
        return bool
    }
}


extension String: JSONDecodable {
    public static func decode(json: JSON) throws -> String {
        guard case let .String(value) = json else {
            throw JSONError.TypeMismatch(expected: "String", actual: json.description)
        }
        return value
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




