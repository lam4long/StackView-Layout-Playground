//
//  ViewController.swift
//  StackViewLayout
//
//  Created by alexlam on 2/10/2022.
//

import UIKit

class ViewController: UIViewController {
    private let labelView = LabelView()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Label"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = labelView
    }


}

