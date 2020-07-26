//
//  UIView+centerX.swift
//  DemoSocialNetwork
//
//  Created by Fabricio Cordella on 25/07/20.
//  Copyright © 2020 Fabricio Cordella. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func centerX(_ constraint: NSLayoutXAxisAnchor,
             _ spacing: CGFloat = 0,
             priority: UILayoutPriority = .required) -> Self {
        let centerXConstraint = centerXAnchor.constraint(equalTo: constraint, constant: spacing)
        centerXConstraint.priority = priority
        centerXConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func centerX(_ spacing: CGFloat = 0,
             priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.centerXAnchor else { return self }
        centerX(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func centerXGreaterThen(_ constraint: NSLayoutXAxisAnchor,
                        _ spacing: CGFloat = 0,
                        priority: UILayoutPriority = .required) -> Self {
        let centerXConstraint = centerXAnchor.constraint(greaterThanOrEqualTo: constraint, constant: spacing)
        centerXConstraint.priority = priority
        centerXConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func centerXGreaterThen(_ spacing: CGFloat = 0,
                        priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.centerXAnchor else { return self }
        centerXGreaterThen(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func centerXLessThan(_ constraint: NSLayoutXAxisAnchor,
                     _ spacing: CGFloat = 0,
                     priority: UILayoutPriority = .required) -> Self {
        let centerXConstraint = centerXAnchor.constraint(lessThanOrEqualTo: constraint, constant: spacing)
        centerXConstraint.priority = priority
        centerXConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func centerXLessThan(_ spacing: CGFloat = 0,
                     priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.centerXAnchor else { return self }
        centerXLessThan(constraint, spacing, priority: priority)
        return self
    }
}
