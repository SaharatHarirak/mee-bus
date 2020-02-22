//
//  LoginViewController.swift
//  MeeBus
//
//  Created by CherChamp on 17/2/2563 BE.
//

import UIKit

class FirstPageViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var languageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.YellowButton(registerButton)
        Utilities.DarkBlueButton(loginButton)
        logoImage.image = UIImage(named: "logoMee")
        setupLanguage()
        
    }
    func setupLanguage() {
        orLabel.text = Localizable.localizer(word: "Or", loc: CurrentLanguage.language)
        registerButton.setTitle(Localizable.localizer(word: "Register", loc: CurrentLanguage.language), for: .normal)
        loginButton.setTitle(Localizable.localizer(word: "Login", loc: CurrentLanguage.language), for: .normal)
        languageButton.setTitle(Localizable.localizer(word: "Language", loc: CurrentLanguage.language), for: .normal)
        
    }
    @IBAction func languageButton(_ sender: Any) {
        if CurrentLanguage.language == "th" {
            CurrentLanguage.language = "en"
            setupLanguage()
        } else {
            CurrentLanguage.language = "th"
            setupLanguage()
        }
    }
}
