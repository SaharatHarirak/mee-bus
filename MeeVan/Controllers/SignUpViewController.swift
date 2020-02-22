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
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.DarkBlueButton(signUpButton)
        setupLanguage()
    }

    
    @IBAction func cancelButtonDidTap(_ sender: UIStoryboard) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VerifyCodeSegue" {
            if let nav = segue.destination as? UINavigationController,
                let controller = nav.topViewController as? VerifyCodeViewController {
                guard let phoneNumber = phoneNumberTextField.text else { return }
                controller.phoneNumber = phoneNumber
                controller.previousPage = "SignUp"
            }
        }
    }
    
    func setupLanguage() {
        signUpButton.setTitle(Localizable.localizer(word: "Signup", loc: CurrentLanguage.language), for: .normal)
        fullNameTextField.placeholder = Localizable.localizer(word: "fullname", loc: CurrentLanguage.language)
        phoneNumberTextField.placeholder = Localizable.localizer(word: "phonenumber", loc: CurrentLanguage.language)
    }
 
}
