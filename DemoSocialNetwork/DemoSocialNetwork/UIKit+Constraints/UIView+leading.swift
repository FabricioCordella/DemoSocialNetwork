//
//  UIView+leading.swift
//  DemoSocialNetwork
//
//  Created by Fabricio Cordella on 25/07/20.
//  Copyright © 2020 Fabricio Cordella. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func leading(_ constraint: NSLayoutXAxisAnchor,
                 _ spacing: CGFloat = 0,
                 priority: UILayoutPriority = .required) -> Self {
        let leadingConstraint = leadingAnchor.constraint(equalTo: constraint, constant: spacing)
        leadingConstraint.priority = priority
        leadingConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func leading(_ spacing: CGFloat = 0,
                 priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.leadingAnchor else { return self }
        leading(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func leadingGreaterThan(_ constraint: NSLayoutXAxisAnchor,
                            _ spacing: CGFloat = 0,
                            priority: UILayoutPriority = .required) -> Self {
        let leadingConstraint = leadingAnchor.constraint(greaterThanOrEqualTo: constraint, constant: spacing)
        leadingConstraint.priority = priority
        leadingConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func leadingGreaterThan(_ spacing: CGFloat = 0,
                            priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.leadingAnchor else { return self }
        leadingGreaterThan(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func leadingLessThan(_ constraint: NSLayoutXAxisAnchor,
                         _ spacing: CGFloat = 0,
                         priority: UILayoutPriority = .required) -> Self {
        let leadingConstraint = leadingAnchor.constraint(lessThanOrEqualTo: constraint, constant: spacing)
        leadingConstraint.priority = priority
        leadingConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func leadingLessThan(_ spacing: CGFloat = 0,
                         priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.leadingAnchor else { return self }
        leadingLessThan(constraint, spacing, priority: priority)
        return self
    }
}
