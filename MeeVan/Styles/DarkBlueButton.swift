//
//  BlueButton.swift
//  MeeVan
//
//  Created by CherChamp on 22/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class DarkBlueButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 7.5
        self.tintColor = UIColor.white
        self.backgroundColor = UIColor(red: 23/255, green: 56/255, blue: 100/255, alpha: 1)

    }
}
