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
    
    @IBAction func cancelButtonDidTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VerifyCodeSegue" {
            if let nav = segue.destination as? UINavigationController,
                let controller = nav.topViewController as? VerifyCodeViewController {
                guard let phoneNumber = phoneNumberTextField.text else { return }
                controller.phoneNumber = phoneNumber
                controller.previousPage = "Login"
            }
        }
    }
}
