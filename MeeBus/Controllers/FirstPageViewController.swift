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
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.YellowButton(registerButton)
        Utilities.DarkBlueButton(loginButton)
        logoImage.image = UIImage(named: "logoMee")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openSignUpSegue" {
            if let nav = segue.destination as? UINavigationController,
                let _ = nav.topViewController as? FirstPageViewController {
                
            }
        }
    }
}
