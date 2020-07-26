//
//  UIView+height.swift
//  DemoSocialNetwork
//
//  Created by Fabricio Cordella on 25/07/20.
//  Copyright © 2020 Fabricio Cordella. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func height(_ constraint: NSLayoutDimension,
               _ constant: CGFloat = 0,
               priority: UILayoutPriority = .required) -> Self {
        let heightConstraint = heightAnchor.constraint(equalTo: constraint, constant: constant)
        heightConstraint.priority = priority
        heightConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func heightGreaterThan(_ constraint: NSLayoutDimension,
                          _ constant: CGFloat,
                          priority: UILayoutPriority) -> Self {
        let heightConstraint = heightAnchor.constraint(greaterThanOrEqualTo: constraint, constant: constant)
        heightConstraint.priority = priority
        heightConstraint.isActive = true
        return self
    }
    
    func heightLessThan(_ constraint: NSLayoutDimension,
                       _ constant: CGFloat,
                       priority: UILayoutPriority) -> Self {
        let heightConstraint = heightAnchor.constraint(lessThanOrEqualTo: constraint, constant: constant)
        heightConstraint.priority = priority
        heightConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func height(_ constant: CGFloat,
               priority: UILayoutPriority = .required) -> Self {
        let heightConstraint = heightAnchor.constraint(equalToConstant: constant)
        heightConstraint.priority = priority
        heightConstraint.isActive = true
        return self
    }
}
