//
//  SettingViewController.swift
//  MeeVan
//
//  Created by CherChamp on 25/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func cancelButtonDidTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func notificationSwitchDidTap(_ sender: Any) {
        print("Notification !")
    }
    @IBAction func signoutDidTap(_ sender: Any) {
        
        print("Sign out")
    }
}
