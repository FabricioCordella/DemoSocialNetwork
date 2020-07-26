//
//  UIView+centerY.swift
//  DemoSocialNetwork
//
//  Created by Fabricio Cordella on 25/07/20.
//  Copyright © 2020 Fabricio Cordella. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func centerY(_ constraint: NSLayoutYAxisAnchor,
             _ spacing: CGFloat = 0,
             priority: UILayoutPriority = .required) -> Self {
        let centerYConstraint = centerYAnchor.constraint(equalTo: constraint, constant: spacing)
        centerYConstraint.priority = priority
        centerYConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func centerY(_ spacing: CGFloat = 0,
             priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.centerYAnchor else { return self }
        centerY(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func centerYGreaterThen(_ constraint: NSLayoutYAxisAnchor,
                        _ spacing: CGFloat = 0,
                        priority: UILayoutPriority = .required) -> Self {
        let centerYConstraint = centerYAnchor.constraint(greaterThanOrEqualTo: constraint, constant: spacing)
        centerYConstraint.priority = priority
        centerYConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func centerYGreaterThen(_ spacing: CGFloat = 0,
                        priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.centerYAnchor else { return self }
        centerYGreaterThen(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func centerYLessThan(_ constraint: NSLayoutYAxisAnchor,
                     _ spacing: CGFloat = 0,
                     priority: UILayoutPriority = .required) -> Self {
        let centerYConstraint = centerYAnchor.constraint(lessThanOrEqualTo: constraint, constant: spacing)
        centerYConstraint.priority = priority
        centerYConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func centerYLessThan(_ spacing: CGFloat = 0,
                     priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.centerYAnchor else { return self }
        centerYLessThan(constraint, spacing, priority: priority)
        return self
    }
}
