//
//  LoginViewController.swift
//  MeeBus
//
//  Created by CherChamp on 21/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.YellowButton(loginButton)
        Utilities.iconTextField(phoneNumberTextField, #imageLiteral(resourceName: "icon-phone"))
    }
    
}
