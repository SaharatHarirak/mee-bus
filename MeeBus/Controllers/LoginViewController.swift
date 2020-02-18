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
    
    
    @IBAction func loginButtonDidTap(_ sender: Any) {
    }
    @IBAction func signUpButtonDidTap(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setElementStyle()
        // Do any additional setup after loading the view.
    }
    func setElementStyle() {
        Utilities.customTextField(phoneNumberTextField)
        Utilities.blueColorButton(loginButton)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
