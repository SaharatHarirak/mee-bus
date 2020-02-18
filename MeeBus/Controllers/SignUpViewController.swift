//
//  SignUpViewController.swift
//  MeeBus
//
//  Created by CherChamp on 17/2/2563 BE.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBAction func signUpButtonDidTap(_ sender: Any) {
    }
    @IBOutlet weak var errorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.iconTextField(phoneNumberTextField, #imageLiteral(resourceName: "icon-phone"))
    }


}
