//
//  VerifyCodeViewController.swift
//  MeeBus
//
//  Created by CherChamp on 18/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class VerifyCodeViewController: UIViewController, UITextFieldDelegate {
    
    var phoneNumber: String = ""
    var previousPage: String = ""
    var timer = Timer()
    var seconds = 5
    var verifyCode: String = ""

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var otpTextField1: UITextField!
    @IBOutlet weak var otpTextField2: UITextField!
    @IBOutlet weak var otpTextField3: UITextField!
    @IBOutlet weak var otpTextField4: UITextField!
    @IBOutlet weak var otpTextField5: UITextField!
    @IBOutlet weak var otpTextField6: UITextField!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var sendAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = phoneNumber
        errorLabel.isHidden = true
        timerLabel.text = String(seconds)
        otpTextField1.backgroundColor = UIColor.clear
        otpTextField2.backgroundColor = UIColor.clear
        otpTextField3.backgroundColor = UIColor.clear
        otpTextField4.backgroundColor = UIColor.clear
        otpTextField5.backgroundColor = UIColor.clear
        otpTextField6.backgroundColor = UIColor.clear
        addBottomBorderTo(textField: otpTextField1)
        addBottomBorderTo(textField: otpTextField2)
        addBottomBorderTo(textField: otpTextField3)
        addBottomBorderTo(textField: otpTextField4)
        addBottomBorderTo(textField: otpTextField5)
        addBottomBorderTo(textField: otpTextField6)
        otpTextField1.delegate = self
        otpTextField2.delegate = self
        otpTextField3.delegate = self
        otpTextField4.delegate = self
        otpTextField5.delegate = self
        otpTextField6.delegate = self
        
        otpTextField1.becomeFirstResponder()
        timerLabel.text = String(seconds) + " Seconds"
        startCounter()
        sendAgainButton.isHidden = true
        
    }
    
    func startCounter() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(VerifyCodeViewController.countTime), userInfo: nil, repeats: true)
    }

    @objc func countTime() {
        seconds -= 1
        timerLabel.text = String(seconds) + " Seconds"
        if (seconds == 0) {
            timer.invalidate()
            sendAgainButton.isHidden = false
            timerLabel.isHidden = true
        }
    }
    
    func addBottomBorderTo(textField: UITextField) {
        let layer = CALayer()
        layer.backgroundColor = UIColor.gray.cgColor
        layer.frame = CGRect(x: 0.0, y: textField.frame.size.height - 1.0, width: textField.frame.size.width, height: 2.0)
        textField.layer.addSublayer(layer)
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if ((textField.text?.count)! < 1) && (string.count > 0) {
            if textField == otpTextField1 {
                otpTextField2.becomeFirstResponder()
            }
            if textField == otpTextField2 {
                otpTextField3.becomeFirstResponder()
            }
            if textField == otpTextField3 {
                otpTextField4.becomeFirstResponder()
            }
            if textField == otpTextField4 {
                otpTextField5.becomeFirstResponder()
            }
            if textField == otpTextField5 {
                otpTextField6.becomeFirstResponder()
            }
            if textField == otpTextField6 {
                otpTextField6.resignFirstResponder()
                checkVerifyCode(code: verifyCode + string)
            }
            
            textField.text = string
            verifyCode = verifyCode + textField.text!
            return false
        } else if ((textField.text?.count)! >= 1) && (string.count == 0) {
            if textField == otpTextField2 {
                otpTextField1.becomeFirstResponder()
            }
            if textField == otpTextField3 {
                otpTextField2.becomeFirstResponder()
            }
            if textField == otpTextField4 {
                otpTextField3.becomeFirstResponder()
            }
            if textField == otpTextField5 {
                otpTextField4.becomeFirstResponder()
            }
            if textField == otpTextField6 {
                otpTextField5.becomeFirstResponder()
                verifyCode = verifyCode.replacingOccurrences(of: textField.text!, with: "")
            }
            if textField == otpTextField1 {
                otpTextField1.resignFirstResponder()
                otpTextField1.becomeFirstResponder()
                errorLabel.isHidden = true
                verifyCode = verifyCode.replacingOccurrences(of: textField.text!, with: "")
            }
            textField.text = ""
            verifyCode = verifyCode.replacingOccurrences(of: textField.text!, with: "")
            return false
        } else if ((textField.text?.count)! >= 1) {
            textField.text = string
            return false
        }
        return true
    }
    
    private func checkVerifyCode(code: String) {
        
        // Wait Auth Verify
        if code == "111111" {
            errorLabel.isHidden = true
            checkPreviousPage()
        } else {
            errorLabel.isHidden = false
            verifyCode = ""
            otpTextField6.becomeFirstResponder()
        }
    }
    
    private func checkPreviousPage() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        if previousPage == "SignUp" {
            guard let vc = mainStoryboard.instantiateViewController(withIdentifier: "CreateProfileNavigatorController") as? CreateProfileNavigatorController else { return }
            present(vc, animated: true, completion: nil)
        } else {
            let mainTabBar = storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as! MainTabBarController
            present(mainTabBar, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func sendAgainButtonDidTap(_ sender: Any) {
        seconds = 5
        timerLabel.text = String(seconds) + " Seconds"
        timerLabel.isHidden = false
        sendAgainButton.isHidden = true
        startCounter()
    }
    @IBAction func cancelButtonDidTap(_ sender: Any) {
        let firstPageVC = storyboard?.instantiateViewController(withIdentifier: "FirstPageViewController") as! FirstPageViewController
        present(firstPageVC, animated: false, completion: nil)
    }
}
