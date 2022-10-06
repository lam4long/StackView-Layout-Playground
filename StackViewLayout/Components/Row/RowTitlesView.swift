//
//  RowTitlesView.swift
//  StackViewLayout
//
//  Created by alexlam on 4/10/2022.
//

import UIKit

class RowTitlesView: UIView {
    private enum Layout {
        static let spacing: CGFloat = 8
    }
    
    var title: String? {
        didSet {
            update()
        }
    }
    
    var subtitle: String? {
        didSet {
            update()
        }
    }
    
    let titleLabel = Label()
    
    let subtitleLabel = Label()
    
    init(
        title: String?,
        subtitle: String?
    ) {
        self.title = title
        self.subtitle = subtitle
        
        super.init(frame: .zero)
        
        configure()
        update()
    }
    
    required init?(
        coder: NSCoder
    ) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubviewFill(
            VStack(
                spacing: Layout.spacing
            ) {
                titleLabel
                subtitleLabel
            }
        )
    }
    
    private func update() {
        if let title = title?.nilIfEmpty {
            titleLabel.text = title
        }
        
        if let subtitle = subtitle?.nilIfEmpty {
            subtitleLabel.text = subtitle
        }
        
        titleLabel.isHidden = titleLabel.text.isNilOrEmpty
        subtitleLabel.isHidden = subtitleLabel.text.isNilOrEmpty
    
    }
}
