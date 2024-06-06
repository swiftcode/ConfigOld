//
//  Configuration.swift
//  Configuration
//
//  Created by mpc on 10/9/20.
//  Copyright © 2020 mpc. All rights reserved.
//

import Foundation

func configure<T>(
    _ value: T,
    using closure: (inout T) throws -> Void
) rethrows -> T {
    var value = value
    try closure(&value)
    return value
}
