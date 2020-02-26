//
//  YellowButton.swift
//  MeeVan
//
//  Created by CherChamp on 22/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class YellowButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()

        self.backgroundColor = UIColor(red: 1, green: 217/255, blue: 37/255, alpha: 1)
        self.layer.cornerRadius = frame.height / 2
        self.tintColor = UIColor.black
    }

}
