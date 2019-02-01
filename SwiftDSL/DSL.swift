//
//  DSL.swift
//  SwiftDSL
//
//  Created by Maxim Volgin on 01/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import Foundation

public protocol DSL {
    associatedtype Base
    @discardableResult
    func apply(_ closure: (Base) -> Void) -> Base
}

public extension DSL {
    @discardableResult
    public func apply(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
