//
//  Stack.swift
//  StackViewLayout
//
//  Created by alexlam on 3/10/2022.
//

import UIKit

open class Stack: UIStackView {
    public init(
        axis: NSLayoutConstraint.Axis,
        alignment: Alignment,
        distribution: Distribution,
        spacing: CGFloat = 0,
        layoutMargins: UIEdgeInsets?,
        @StackBuilder _ content: () -> [UIView] = { [] }
    ) {
        super.init(frame: .zero)
        
        self.axis = axis
        self.alignment = alignment
        self.distribution = distribution
        self.spacing = spacing

        if let layoutMargins = layoutMargins {
            self.isLayoutMarginsRelativeArrangement = true
            self.layoutMargins = layoutMargins
        }

        addContent(content())
    }
    
    public required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setContent(
        @StackBuilder _ content: () -> [UIView]
    ) {
        removeAllArrangedSubviews()
        addContent(content())
    }
    
    // MARK: - helpers

    private func addContent(
        _ views: [UIView]
    ) {
        views.forEach {
            addArrangedSubview($0)
        }
    }
}
