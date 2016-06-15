//
//  JSONDecodable.swift
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