//
//  Collection+Helpers.swift
//  StackViewLayout
//
//  Created by alexlam on 5/10/2022.
//

import Foundation

extension Collection {
    var nilIfEmpty: Self? {
        isEmpty ? nil : self
    }
}

extension Optional where Wrapped: Collection {
    var isNilOrEmpty: Bool {
        self?.isEmpty ?? true
    }
}
