//
//  SignUpViewController.swift
//  MeeBus
//
//  Created by CherChamp on 17/2/2563 BE.
//
import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        setupLanguage()
    }

    
    @IBAction func cancelButtonDidTap(_ sender: UIStoryboard) {
        dismiss(animated: true, completion: nil)
    }

    func setupLanguage() {
        signUpButton.setTitle(Localizable.localizer(word: "Signup", loc: CurrentLanguage.language), for: .normal)
        fullNameTextField.placeholder = Localizable.localizer(word: "fullname", loc: CurrentLanguage.language)
        phoneNumberTextField.placeholder = Localizable.localizer(word: "phonenumber", loc: CurrentLanguage.language)
    }

    @IBAction func signupButtonDidTap(_ sender: Any) {
        let verifyCodeVC = storyboard?.instantiateViewController(withIdentifier: "VerifyCodeViewController") as! VerifyCodeViewController
        guard !phoneNumberTextField.text!.isEmpty, !fullNameTextField.text!.isEmpty, let phoneNumber = phoneNumberTextField.text else {
            errorLabel.isHidden = false
            return
        }
        errorLabel.isHidden = true
        verifyCodeVC.phoneNumber = phoneNumber
        verifyCodeVC.previousPage = "SignUp"
        present(verifyCodeVC, animated: false, completion: nil)
    }
}
