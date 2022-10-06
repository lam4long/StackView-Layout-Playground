//
//  HStack.swift
//  StackViewLayout
//
//  Created by alexlam on 3/10/2022.
//

import UIKit

open class HStack: Stack {
    public init(
        alignment: Alignment = .fill,
        distribution: Distribution = .fill,
        spacing: CGFloat = 0,
        layoutMargins: UIEdgeInsets? = nil,
        @StackBuilder _ content: () -> [UIView] = { [] }
    ) {
        super.init(
            axis: .horizontal,
            alignment: alignment,
            distribution: distribution,
            spacing: spacing,
            layoutMargins: layoutMargins,
            content
        )
    }

    public required init(
        coder: NSCoder
    ) {
        fatalError("init(coder:) has not been implemented")
    }
}

