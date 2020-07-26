//
//  UIView+width.swift
//  DemoSocialNetwork
//
//  Created by Fabricio Cordella on 25/07/20.
//  Copyright © 2020 Fabricio Cordella. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func width(_ constraint: NSLayoutDimension,
               _ constant: CGFloat = 0,
               priority: UILayoutPriority = .required) -> Self {
        let widthConstraint = widthAnchor.constraint(equalTo: constraint, constant: constant)
        widthConstraint.priority = priority
        widthConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func widthGreaterThan(_ constraint: NSLayoutDimension,
                          _ constant: CGFloat,
                          priority: UILayoutPriority) -> Self {
        let widthConstraint = widthAnchor.constraint(greaterThanOrEqualTo: constraint, constant: constant)
        widthConstraint.priority = priority
        widthConstraint.isActive = true
        return self
    }
    
    func widthLessThan(_ constraint: NSLayoutDimension,
                       _ constant: CGFloat,
                       priority: UILayoutPriority) -> Self {
        let widthConstraint = widthAnchor.constraint(lessThanOrEqualTo: constraint, constant: constant)
        widthConstraint.priority = priority
        widthConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func width(_ constant: CGFloat,
               priority: UILayoutPriority = .required) -> Self {
        widthAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }
}
