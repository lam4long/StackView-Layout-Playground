//
//  UIStackView+Utils.swift
//  StackViewLayout
//
//  Created by alexlam on 3/10/2022.
//

import UIKit

extension UIStackView {
    func removeAllArrangedSubviews() {
        arrangedSubviews.forEach {
            removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
    }
}
