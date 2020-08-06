//
//  UIView+Extension.swift
//  TestTableView
//
//  Created by Stefan V. de Moraes on 05/08/20.
//  Copyright © 2020 Stefan V. de Moraes. All rights reserved.
//

import UIKit

extension UIView {
    
    func setUpContraint(pattern: String, options:NSLayoutConstraint.FormatOptions, views: UIView...) {
        var myViews: [String : UIView] = [:]
        
        for (index, view) in views.enumerated() {
            view.translatesAutoresizingMaskIntoConstraints = false
            myViews["v\(index)"] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: pattern, options: options, metrics: nil, views: myViews))
    }
}

