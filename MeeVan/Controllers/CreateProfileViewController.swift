//
//  CreateProfileViewController.swift
//  MeeVan
//
//  Created by CherChamp on 22/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class CreateProfileViewController: UIViewController {

    @IBOutlet weak var confirmButton: DarkBlueButton!
    @IBOutlet weak var usernameTextField: UnderlineTextField!
    @IBOutlet weak var phoneNumberTextField: UnderlineTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func confirmButtonDidTap(_ sender: Any) {
        let mainTabBar = storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as! MainTabBarController
        present(mainTabBar, animated: false, completion: nil)
    }
    
}
