//
//  UIView+add.swift
//  DemoSocialNetwork
//
//  Created by Fabricio Cordella on 25/07/20.
//  Copyright © 2020 Fabricio Cordella. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func add(_ view: UIView) -> Self{
        addSubview(view)
        return self
    }
}
