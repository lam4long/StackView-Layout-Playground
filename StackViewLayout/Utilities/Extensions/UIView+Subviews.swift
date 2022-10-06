//
//  UIView+Subviews.swift
//  StackViewLayout
//
//  Created by alexlam on 3/10/2022.
//

import Foundation
import UIKit

extension UIView {
    public func allSubviews() -> [UIView] {
        return subviews + subviews.flatMap { $0.allSubviews() }
    }
    
    public func addSubviewFill(
        _ view: UIView,
        anchors: Set<AnchorType> = [.top, .leading, .trailing, .bottom],
        insets: UIEdgeInsets = .zero,
        safeArea: Bool = false
    ) {
        addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints: [NSLayoutConstraint] = []
        
        if anchors.contains(.top) {
            constraints.append(
                view.topAnchor.constraint(
                    equalTo: safeArea ? safeAreaLayoutGuide.topAnchor : topAnchor,
                    constant: insets.top
                )
            )
        }

        if anchors.contains(.leading) {
            constraints.append(
                view.leadingAnchor.constraint(
                    equalTo: safeArea ? safeAreaLayoutGuide.leadingAnchor : leadingAnchor,
                    constant: insets.left
                )
            )
        }

        if anchors.contains(.trailing) {
            constraints.append(
                view.trailingAnchor.constraint(
                    equalTo: safeArea ? safeAreaLayoutGuide.trailingAnchor : trailingAnchor,
                    constant: -insets.right
                )
            )
        }

        if anchors.contains(.bottom) {
            constraints.append(
                view.bottomAnchor.constraint(
                    equalTo: safeArea ? safeAreaLayoutGuide.bottomAnchor : bottomAnchor,
                    constant: -insets.bottom
                )
            )
        }
        
        NSLayoutConstraint.activate(constraints)
    }
    
    public func addSubviewCentered(_ subview: UIView) {
        addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subview.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            subview.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    
    
    public func removeAllSubviews() {
        subviews.forEach { $0.removeFromSuperview() }
    }
}
