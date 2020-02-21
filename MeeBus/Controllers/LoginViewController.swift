//
//  LoginViewController.swift
//  MeeBus
//
//  Created by CherChamp on 17/2/2563 BE.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.BlueButton(registerButton)
        Utilities.NoBackgroundButton(loginButton)
    }
}
