//
//  JSON.swift
//  EZJson
//
//  Created by Konshin on 15.06.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import Foundation

public enum JSON {
    case object([Swift.String: JSON])
    case array([JSON])
    case string(Swift.String)
    case number(NSNumber)
    case bool(Swift.Bool)
    case date(Foundation.Date)
    case null
    
    public init(_ jsons: [[Swift.String: Any]]) {
        self = .array(jsons.map({ JSON($0) }))
    }
    
    public init(_ json: Any) {
        switch json {
            
        case let v as [Any]:
            self = .array(v.map(JSON.init))
            
        case let v as [Swift.String: AnyObject]:
            var dict: [Swift.String: JSON] = [:]
            for (key, value) in v {
                dict[key] = JSON(value)
            }
            self = .object(dict)
            
        case let v as Foundation.Date:
            self = .date(v)
            
        case let v as Swift.String:
            self = .string(v)
            
        case let v as NSNumber:
            if CFBooleanGetTypeID() == CFGetTypeID(v) {
                self = .bool(v as Swift.Bool)
            } else {
                self = .number(v)
            }
            
        default:
            self = .null
        }
    }
    
    
    public func map<T, U: Any>(_ block: (T) throws -> U) throws -> JSON {
        let resultValue: U
    
        switch self {
        case .object(let obj as T):
            resultValue = try block(obj)
        case .array(let arr as T):
            resultValue = try block(arr)
        case .string(let str as T):
            resultValue = try block(str)
        case .number(let num as T):
            resultValue = try block(num)
        case .bool(let bool as T):
            resultValue = try block(bool)
        case .date(let date as T):
            resultValue = try block(date)
        default:
            throw JSONError.typeMismatch(expected: "Any Value", actual: description)
        }
        return JSON(resultValue)
    }
    
    //MARK: - subscript
    
    public subscript(key: Swift.String) -> JSON {
        guard case .object(let object) = self, let value = object[key] else {
            return .null
        }
        return value
    }
    
    public subscript(index: Swift.Int) -> JSON {
        guard case .array(let jsons) = self , jsons.count > index else {
            return .null
        }
        return jsons[index]
    }
    
    //MARK: - decode
    
    public func decode<T: JSONDecodable>() throws -> T {
        return try T(json: self)
    }
    
    public func decode<T: JSONDecodable>() -> T? {
        do {
            return try T(json: self)
        } catch {
            return nil
        }
    }
    
    public func decode<T: JSONDecodable>() throws -> [T] {
        guard case .array(let jsons) = self else {
            throw JSONError.typeMismatch(expected: "Array", actual: description)
        }
        return try jsons.map() { try $0.decode() }
    }
    
    public func decode<T: JSONDecodable>() -> [T]? {
        guard case .array(let jsons) = self else {
            return nil
        }
        do {
            return try jsons.map() { try $0.decode() }
        } catch {
            return nil
        }
    }
}


extension JSON: CustomStringConvertible {
    public var description: Swift.String {
        switch self {
        case let .string(v): return "String(\(v))"
        case let .number(v): return "Number(\(v))"
        case let .bool(v): return "Bool(\(v))"
        case let .array(a): return "Array(\(a.description))"
        case let .object(o): return "Object(\(o.description))"
        case let .date(d): return "Date(\(d.description))"
        case .null: return "Null"
        }
    }
}
