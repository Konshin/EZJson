//
//  Extensions.swift
//  EZJson
//
//  Created by Konshin on 15.06.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import Foundation

extension String: ErrorType {
    
}

extension Int: JSONDecodable {
    public static func decode(json: JSON) throws -> Int {
        guard case let .Number(num as Int) = json else {
            throw "Пришло не число"
        }
        return num
    }
}


extension Float: JSONDecodable {
    public static func decode(json: JSON) throws -> Float {
        guard case let .Number(num as Float) = json else {
            throw "Пришло не число"
        }
        return num
    }
}


extension Double: JSONDecodable {
    public static func decode(json: JSON) throws -> Double {
        guard case let .Number(num as Double) = json else {
            throw "Пришло не число"
        }
        return num
    }
}


extension NSNumber: JSONDecodable {
    public static func decode(json: JSON) throws -> NSNumber {
        guard case let .Number(num) = json else {
            throw "Пришло не число"
        }
        return num
    }
}


extension Bool: JSONDecodable {
    public static func decode(json: JSON) throws -> Bool {
        guard case let .Bool(bool) = json else {
            throw "Пришло не число"
        }
        return bool
    }
}


extension String: JSONDecodable {
    public static func decode(json: JSON) throws -> String {
        guard case let .String(value) = json else {
            throw "Пришла не строка"
        }
        return value
    }
}


extension NSDate: JSONDecodable {
    public static func decode(json: JSON) throws -> NSDate {
        guard case let .Date(value) = json else {
            throw "Пришла не дата"
        }
        return value
    }
}




