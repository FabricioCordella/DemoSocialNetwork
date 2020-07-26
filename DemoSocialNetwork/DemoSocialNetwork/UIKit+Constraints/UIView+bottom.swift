//
//  UIView+bottom.swift
//  DemoSocialNetwork
//
//  Created by Fabricio Cordella on 25/07/20.
//  Copyright © 2020 Fabricio Cordella. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func bottom(_ constraint: NSLayoutYAxisAnchor,
             _ spacing: CGFloat = 0,
             priority: UILayoutPriority = .required) -> Self {
        let bottomConstraint = bottomAnchor.constraint(equalTo: constraint, constant: spacing)
        bottomConstraint.priority = priority
        bottomConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func bottom(_ spacing: CGFloat = 0,
             priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.bottomAnchor else { return self }
        bottom(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func bottomGreaterThen(_ constraint: NSLayoutYAxisAnchor,
                        _ spacing: CGFloat = 0,
                        priority: UILayoutPriority = .required) -> Self {
        let bottomConstraint = bottomAnchor.constraint(greaterThanOrEqualTo: constraint, constant: spacing)
        bottomConstraint.priority = priority
        bottomConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func bottomGreaterThen(_ spacing: CGFloat = 0,
                        priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.bottomAnchor else { return self }
        bottomGreaterThen(constraint, spacing, priority: priority)
        return self
    }
    
    @discardableResult
    func bottomLessThan(_ constraint: NSLayoutYAxisAnchor,
                     _ spacing: CGFloat = 0,
                     priority: UILayoutPriority = .required) -> Self {
        let bottomConstraint = bottomAnchor.constraint(lessThanOrEqualTo: constraint, constant: spacing)
        bottomConstraint.priority = priority
        bottomConstraint.isActive = true
        return self
    }
    
    @discardableResult
    func bottomLessThan(_ spacing: CGFloat = 0,
                     priority: UILayoutPriority = .required) -> Self {
        guard let constraint = superview?.bottomAnchor else { return self }
        bottomLessThan(constraint, spacing, priority: priority)
        return self
    }
}
