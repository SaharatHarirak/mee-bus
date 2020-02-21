//
//  SignUpViewController.swift
//  MeeBus
//
//  Created by CherChamp on 17/2/2563 BE.
//
import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.BlueButton(signUpButton)
    }

    
    @IBAction func cancelButtonDidTap(_ sender: UIStoryboard) {
        
    }
    
}
