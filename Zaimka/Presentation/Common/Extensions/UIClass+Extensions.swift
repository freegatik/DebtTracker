//
//  UIClass+Extensions.swift
//  Zaimka
//
//  Created by Anton Solovev on 05.04.2024.
//

import Foundation
import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
