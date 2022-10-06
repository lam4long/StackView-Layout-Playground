//
//  StackBuilder.swift
//  StackViewLayout
//
//  Created by alexlam on 3/10/2022.
//

import UIKit

@resultBuilder
public struct StackBuilder {
    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: UIView) -> [UIView] {
        [expression]
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: [UIView]) -> [UIView] {
        expression
    }

    // Required by every result builder to build combined results from
    /// statement blocks.
    public static func buildBlock() -> [UIView] {
        []
    }

    /// Required by every result builder to build combined results from
    /// statement blocks.
    public static func buildBlock(_ component: [UIView]...) -> [UIView] {
        component.flatMap { $0 }
    }

    //// Enables support for `if` statements that do not have an `else`.
    public static func buildOptional(_ component: [UIView]?) -> [UIView] {
        component ?? []
    }

    /// With buildEither(second:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(first component: [UIView]) -> [UIView] {
        component
    }

    /// With buildEither(first:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(second component: [UIView]) -> [UIView] {
        component
    }

    /// Enables support for 'for..in' loops by combining the
    /// results of all iterations into a single result.
    public static func buildArray(_ components: [[UIView]]) -> [UIView] {
        components.flatMap { $0 }
    }

    /// If declared, this will be called on the partial result of an 'if
    /// #available' block to allow the result builder to erase type
    /// information.
    public static func buildLimitedAvailability(_ component: [UIView]) -> [UIView] {
        component
    }
}
