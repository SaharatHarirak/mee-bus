//
//  ProfileViewModel.swift
//  MeeVan
//
//  Created by CherChamp on 24/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import Foundation
import UIKit
class ProfileTab {
    var title: String
    var image: UIImage
    
    init(title: String, image: UIImage) {
        self.title = title
        self.image = image
    }
}

class ProfileTabs {
    private var tabs = [ProfileTab]()
    func add(item: ProfileTab) {
        tabs.insert(item, at: 0)
    }
}
