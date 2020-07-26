//
//  UIView+top.swift
//  DemoSocialNetwork
//
//  Created by Fabricio Cordella on 25/07/20.
//  Copyright © 2020 Fabricio Cordella. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func top(_ constraint: NSLayoutYAxisAnchor,
             _ spacing: CGFloat = 0,
             priority: UILayoutPriority = .required) -> Self {
        let topConstraint = topAnchor.constraint(equalTo: constraint, constant: spacing)
        topConstraint.priority = priority
        topConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func top(_ spacing: CGFloat = 0,
             priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.topAnchor else { return self }
        top(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func topGreaterThen(_ constraint: NSLayoutYAxisAnchor,
                        _ spacing: CGFloat = 0,
                        priority: UILayoutPriority = .required) -> Self {
        let topConstraint = topAnchor.constraint(greaterThanOrEqualTo: constraint, constant: spacing)
        topConstraint.priority = priority
        topConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func topGreaterThen(_ spacing: CGFloat = 0,
                        priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.topAnchor else { return self }
        topGreaterThen(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func topLessThan(_ constraint: NSLayoutYAxisAnchor,
                     _ spacing: CGFloat = 0,
                     priority: UILayoutPriority = .required) -> Self {
        let topConstraint = topAnchor.constraint(lessThanOrEqualTo: constraint, constant: spacing)
        topConstraint.priority = priority
        topConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func topLessThan(_ spacing: CGFloat = 0,
                     priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.topAnchor else { return self }
        topLessThan(constraint, spacing, priority: priority)
        return self
    }
}
