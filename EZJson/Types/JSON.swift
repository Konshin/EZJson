//
//  JSON.swift
//  EZJson
//
//  Created by Konshin on 15.06.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import Foundation

public protocol JSONDecodable {
    associatedtype DecodeType = Self
    
    static func decode(json: JSON) throws -> DecodeType
}

public enum JSON {
    case Object([Swift.String: JSON])
    case Array([JSON])
    case String(Swift.String)
    case Number(NSNumber)
    case Bool(Swift.Bool)
    case Date(NSDate)
    case Null
    
    init(_ json: AnyObject) {
        switch json {
            
        case let v as [AnyObject]:
            self = .Array(v.map(JSON.init))
            
        case let v as [Swift.String: AnyObject]:
            var dict: [Swift.String: JSON] = [:]
            for (key, value) in v {
                dict[key] = JSON(value)
            }
            self = .Object(dict)
            
        case let v as NSDate:
            self = .Date(v)
            
        case let v as Swift.String:
            self = .String(v)
            
        case let v as NSNumber:
            if CFBooleanGetTypeID() == CFGetTypeID(v) {
                self = .Bool(v as Swift.Bool)
            } else {
                self = .Number(v)
            }
            
        default:
            self = .Null
        }
    }
    
    
    public func map<T, U: AnyObject>(block: T throws -> U) throws -> JSON {
        let resultValue: U
    
        switch self {
        case .Object(let obj as T):
            resultValue = try block(obj)
        case .Array(let arr as T):
            resultValue = try block(arr)
        case .String(let str as T):
            resultValue = try block(str)
        case .Number(let num as T):
            resultValue = try block(num)
        case .Bool(let bool as T):
            resultValue = try block(bool)
        case .Date(let date as T):
            resultValue = try block(date)
        default:
            throw JSONError.TypeMismatch
        }
        return JSON(resultValue)
    }
    
    //MARK: - subscript
    
    public subscript(key: Swift.String) -> JSON {
        guard case .Object(let object) = self, let value = object[key] else {
            return .Null
        }
        return value
    }
    
    //MARK: - decode
    
    public func decode<T: JSONDecodable>() throws -> T {
        return try T.decode(self) as! T
    }
    
    public func decode<T: JSONDecodable>() -> T? {
        do {
            return try T.decode(self) as? T
        } catch {
            return nil
        }
    }
    
    public func decode<T: JSONDecodable>() throws -> [T] {
        guard case .Array(let jsons) = self else {
            throw JSONError.TypeMismatch
        }
        return try jsons.map() { try $0.decode() }
    }
    
    public func decode<T: JSONDecodable>() -> [T]? {
        guard case .Array(let jsons) = self else {
            return nil
        }
        do {
            return try jsons.map() { try $0.decode() }
        } catch {
            return nil
        }
    }
}