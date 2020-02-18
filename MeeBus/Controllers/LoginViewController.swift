//
//  LoginViewController.swift
//  MeeBus
//
//  Created by CherChamp on 17/2/2563 BE.
//

import UIKit

class LoginViewController: UIViewController {
    

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.iconTextField(phoneNumberTextField, #imageLiteral(resourceName: "icon-phone"))
        Utilities.AcceptBotton(loginButton)
    }

}
