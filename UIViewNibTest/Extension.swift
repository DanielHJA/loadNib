//
//  Extension.swift
//  UIViewNibTest
//
//  Created by Daniel Hjärtström on 2019-11-29.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

extension UIView {
    static func loadNib() -> Self {
        return Bundle.main.loadNibNamed(String(describing: self), owner: self, options: nil)![0] as! Self
    }
}
