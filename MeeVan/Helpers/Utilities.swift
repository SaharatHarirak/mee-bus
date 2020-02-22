//
//  Utilities.swift
//  MeeBUs
//
//  Created by CherChamp on 17/2/2563 BE.
//

import UIKit

class Utilities {
    static func YellowButton(_ button: UIButton) {
        button.backgroundColor = UIColor(red: 1, green: 217/255, blue: 37/255, alpha: 1)
        button.layer.cornerRadius = 7.5
        button.tintColor = UIColor.black
    }
    
    static func DarkBlueButton(_ button: UIButton) {
        button.backgroundColor = UIColor(red: 23/255, green: 56/255, blue: 100/255, alpha: 1)
        button.layer.cornerRadius = 7.5
        button.tintColor = UIColor.white
    }
    
    static func NoBackgroundButton(_ button: UIButton) {
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor
        button.layer.cornerRadius = 7.5
        button.tintColor = UIColor.black
    }
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
    
    static func resizeImage(_ image: UIImageView, _ height: Int, _ width: Int) {
        let frame = CGRect(x: 10, y: 10, width: width, height: height)
        image.frame = frame
    }
}
