//
//  IconTextField.swift
//  MeeBus
//
//  Created by CherChamp on 18/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class IconTextField {
    
    static func iconTextField(_ textField: UITextField, _ image: UIImage) {
        let iconView = UIImageView(frame:
            CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        textField.leftView = iconContainerView
        textField.leftViewMode = .always
    }
}
