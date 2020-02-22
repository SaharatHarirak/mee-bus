//
//  VerifyCodeTextField.swift
//  MeeBus
//
//  Created by CherChamp on 18/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class VerifyCodeTextField {

    
    static func verifyCodeTextField(_ textField: UITextField) {
        let slotCount: Int = 6
        var isConfigured = false
        var digitLabels = [UILabel]()
        guard isConfigured == false else {
            return
        }
        isConfigured.toggle()
        textField.tintColor = .clear
        textField.textColor = .clear
        textField.keyboardType = .numberPad
        textField.textContentType = .oneTimeCode
//        configureTextField()
        
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        
        for _ in 1 ... slotCount {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            label.font = .systemFont(ofSize: 40)
            label.backgroundColor = .blue
            
            stackView.addArrangedSubview(label)
            
            digitLabels.append(label)
        }
        textField.addSubview(stackView)
        
//        NSLayoutConstraint.activate([
//            labelsStackView.topAnchor.constraint(equalTo: topAnchor),
//            labelsStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            labelsStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            labelsStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
//            ])
    }
    
}
