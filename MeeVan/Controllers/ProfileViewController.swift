//
//  SettingViewController.swift
//  MeeVan
//
//  Created by CherChamp on 23/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func languageCustomSegmentControlValueChange(_ sender: LanguageSegmentControl) {
        switch sender.segmentIndex {
        case 0:
            CurrentLanguage.language = "th"
            break
        case 1:
            CurrentLanguage.language = "en"
        default:
            break
        }
    }
}
