//
//  Utilities.swift
//  MeeBUs
//
//  Created by CherChamp on 17/2/2563 BE.
//

import UIKit

class Utilities {
    static func customTextField(_ textfield: UITextField) {
        textfield.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1)
//        textfield.layer.cornerRadius = 10.0
        textfield.tintColor = UIColor.black
    }
    
    static func blueColorButton(_ button: UIButton) {
        button.backgroundColor = UIColor(red: 5/255, green: 134/255, blue: 1, alpha: 1)
        button.layer.cornerRadius = 20.0
        button.tintColor = UIColor.white
    }
    
    static func noneColorButton(_ button: UIButton) {
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 20.0
        button.tintColor = UIColor.black
    }
}
