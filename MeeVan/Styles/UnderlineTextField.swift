//
//  UnderlineTextField.swift
//  MeeVan
//
//  Created by CherChamp on 22/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import Foundation
import UIKit
class UnderlineTextField: UITextField {
    func setup() {
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
    }
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
    }
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
}
