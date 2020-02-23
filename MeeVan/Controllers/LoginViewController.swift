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
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        IconTextField.iconTextField(phoneNumberTextField, #imageLiteral(resourceName: "icon-phone"))
    }
    
    @IBAction func cancelButtonDidTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loginButtonDidTap(_ sender: Any) {
        let verifyCodeVC = storyboard?.instantiateViewController(withIdentifier: "VerifyCodeViewController") as! VerifyCodeViewController
        guard !phoneNumberTextField.text!.isEmpty, let phoneNumber = phoneNumberTextField.text else {
            errorLabel.isHidden = false
            return
        }
        errorLabel.isHidden = true
        verifyCodeVC.phoneNumber = phoneNumber
        verifyCodeVC.previousPage = "Login"
        present(verifyCodeVC, animated: true, completion: nil)
    }
}
