//
//  JSONError.swift
//  EZJson
//
//  Created by Konshin on 15.06.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import Foundation

public enum JSONError: Error {
    case typeMismatch(expected: String, actual: String)
}


extension JSONError: CustomStringConvertible {
    public var description: String {
        switch self {
        case let .typeMismatch(expected, actual): return "Type Mismatch: Expected \(expected), got \(actual))"
        }
    }
}
