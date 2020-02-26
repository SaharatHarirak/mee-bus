//
//  NotificationViewController.swift
//  MeeVan
//
//  Created by CherChamp on 24/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupLanguage()
    }
    
    private func setupLanguage() {
        testLabel.text = Localizable.localizer(word: "fullname", loc: CurrentLanguage.language)
    }
}
