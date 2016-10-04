//
//  EZJsonTests.swift
//  EZJsonTests
//
//  Created by Konshin on 15.06.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import XCTest
@testable import EZJson

extension String: Error {}

private let json: [[String: Any]] =
    [
        [
            "id": -1 as AnyObject,
            "name": "Vasya" as AnyObject,
            "maybeValue": NSNull(),
            "shouldBeNumber": 6 as AnyObject,
            "date": "03062016" as AnyObject,
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
        [
            "id": -1,
            "name": "Vasya",
            "maybeValue": NSNull(),
            "shouldBeNumber": 6,
            "date": "03062016",
            "object": [
                "id": 6,
                "name": "object"
            ],
            "children": [
                [
                    "id": 1,
                    "name": "Petya",
                    "maybeValue": "da",
                    "shouldBeNumber": "3",
                    "object": NSNull(),
                    "children": NSNull()
                ]
            ]
        ],
]

struct Item: JSONDecodable {
    let id: Int
    let name: String
    let maybeValue: String?
    let shouldBeNumber: Int
    let date: Date
    let object: Object?
    let children: [Item]?
    
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "ddMMyyyy"
        return formatter
    }()
    
    static func dateFromString(str: String) throws -> Date {
        guard let date = dateFormatter.date(from: str) else {
            throw "Не получилось распарсить дату"
        }
        
        return date
    }
    
    init(json: JSON) throws {
        id = try json["id"].decode()
        name = try json["name"].decode()
        maybeValue = json["maybeValue"].decode()
        shouldBeNumber = try json["shouldBeNumber"].decode()
        
        let dateJson = try json["date"].map(Item.dateFromString)
        
        date = try dateJson.decode()
        object = json["object"].decode()
        children = json["children"].decode()
    }
}

struct Object: JSONDecodable {
    let id: Int
    let name: String
    
    init(json: JSON) throws {
        id = try json["id"].decode()
        name = try json["name"].decode()
    }
}


class EZJsonTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let jsonArray = JSON(json)
        do {
            let items: [Item] = try jsonArray.decode()
            XCTAssertFalse(items.isEmpty)
        } catch {
            XCTAssert(false, String(describing: error))
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testPerformanceEZJson() {
        let jsonValue = json + json + json
        
        // This is an example of a performance test case.
        self.measure {
            let jsonArray = JSON(jsonValue)
            do {
                let items: [Item] = try jsonArray.decode()
                XCTAssertFalse(items.isEmpty)
            } catch {
                XCTAssert(false, String(describing: error))
            }
        }
    }
}
