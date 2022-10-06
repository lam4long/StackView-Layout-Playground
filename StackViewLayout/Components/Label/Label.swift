//
//  Label.swift
//  StackViewLayout
//
//  Created by alexlam on 3/10/2022.
//

import UIKit

open class Label: UILabel {
    public init(
        text: String? = nil,
        textColor: UIColor = .black,
        font: UIFont = .systemFont(ofSize: 17, weight: .regular),
        backgroundColor: UIColor = .white
    ) {
        super.init(frame: .zero)
        self.text = text
        self.textColor = textColor
        self.font = font
        self.backgroundColor = backgroundColor
        
        configure()
    }
    
    public required init?(
        coder: NSCoder
    ) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        sizeToFit()
    }
}
