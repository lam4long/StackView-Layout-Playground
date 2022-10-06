//
//  UIView+ScrollView.swift
//  StackViewLayout
//
//  Created by alexlam on 3/10/2022.
//

import UIKit

extension UIView {
    public func addScrollView(
        _ scrollView: UIScrollView = UIScrollView(),
        forContent contentView: UIView,
        onAxis axis: NSLayoutConstraint.Axis,
        anchors: Set<AnchorType> = [.top, .leading, .trailing, .bottom]
    ) {
        
        addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints: [NSLayoutConstraint] = []
        
        if anchors.contains(.top) {
            constraints.append(
                scrollView.frameLayoutGuide.topAnchor.constraint(
                    equalTo: topAnchor
                )
            )
        }
        if anchors.contains(.leading) {
            constraints.append(
                scrollView.frameLayoutGuide.leadingAnchor.constraint(
                    equalTo: leadingAnchor
                )
            )
        }
        if anchors.contains(.bottom) {
            constraints.append(
                scrollView.frameLayoutGuide.bottomAnchor.constraint(
                    equalTo: bottomAnchor
                )
            )
        }
        if anchors.contains(.trailing) {
            constraints.append(
                scrollView.frameLayoutGuide.trailingAnchor.constraint(
                    equalTo: trailingAnchor
                )
            )
        }
        
        let sizeConstraint =
            axis == .vertical
            ? scrollView.contentLayoutGuide.widthAnchor.constraint(
                equalTo: scrollView.frameLayoutGuide.widthAnchor
            )
            : scrollView.contentLayoutGuide.heightAnchor.constraint(
                equalTo: scrollView.frameLayoutGuide.heightAnchor
            )

        constraints += [
            scrollView.contentLayoutGuide.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor
            ),
            scrollView.contentLayoutGuide.topAnchor.constraint(
                equalTo: contentView.topAnchor
            ),
            scrollView.contentLayoutGuide.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor
            ),
            scrollView.contentLayoutGuide.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor
            ),
            sizeConstraint,
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}
