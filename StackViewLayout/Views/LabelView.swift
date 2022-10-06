//
//  LabelView.swift
//  StackViewLayout
//
//  Created by alexlam on 3/10/2022.
//

import Foundation
import UIKit

class LabelView: UIView {
    let label = Label(text: "hello world!", textColor: .black)
    
    let label2 = Label(text: "hello world!21434", textColor: .black)
    
    let rowTitles = RowTitlesView(title: "hi", subtitle: nil)
    
    let rowTitles2 = RowTitlesView(title: "hello", subtitle: "world")

    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .white
      
        
        addSubviewFill(VStack {
            rowTitles
            rowTitles2
            Spacer()
        }, insets: .init(top: 16, left: 16, bottom: 16, right: 16), safeArea: true)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
