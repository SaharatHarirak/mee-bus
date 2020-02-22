//
//  CreateProfileViewController.swift
//  MeeVan
//
//  Created by CherChamp on 22/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class CreateProfileViewController: UIViewController {

    @IBOutlet weak var confirmButton: DarkBlueButton!
    @IBOutlet weak var usernameTextField: UnderlineTextField!
    @IBOutlet weak var phoneNumberTextField: UnderlineTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func confirmButtonDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "MainPageNavigatorController") as? MainPageNavigatorController else { return }
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: false, completion: nil)
    }
    
}
