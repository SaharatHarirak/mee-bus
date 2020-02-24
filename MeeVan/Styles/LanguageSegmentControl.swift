//
//  LanguageSegmentControl.swift
//  MeeVan
//
//  Created by CherChamp on 23/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LanguageSegmentControl: UIView {
    var buttons = [UIButton]()
    var selector: UIView!
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable
    var commarSeparateButtonTitles: String = "" {
        didSet {
            uploadView()
        }
    }
    @IBInspectable
    var textColor: UIColor = .black {
        didSet {
            uploadView()
        }
    }
    @IBInspectable
    var selectorColor: UIColor = .orange {
        didSet {
            uploadView()
        }
    }
    @IBInspectable
    var selectorTextColor: UIColor = .white {
        didSet {
            uploadView()
        }
    }

    private func uploadView() {
        buttons.removeAll()
        subviews.forEach { $0.removeFromSuperview() }
        let buttonTitles = commarSeparateButtonTitles.components(separatedBy: ",")

        for buttonTitle in buttonTitles {
            let button = UIButton(type: .system)
            button.setTitle(buttonTitle, for: .normal)
            button.setTitleColor(textColor, for: .normal)
            button.addTarget(self, action: #selector(buttonDidTap(button:)), for: .touchUpInside)
            buttons.append(button)
        }

        buttons[0].setTitleColor(selectorTextColor, for: .normal)

        let selectorWidth = frame.width / CGFloat(buttonTitles.count)
        selector = UIView(frame: CGRect(x: 0, y: 0, width: selectorWidth, height: frame.height))
        selector.layer.cornerRadius = frame.height / 2
        selector.backgroundColor = selectorColor
        addSubview(selector)

        let stackView = UIStackView(arrangedSubviews: buttons)
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 165).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = frame.height/2
    }
    
    @objc private func buttonDidTap(button: UIButton) {
        for (buttonIndex, btn) in buttons.enumerated() {
            btn.setTitleColor(textColor, for: .normal)
            
            if btn == button {
                UIView.animate(withDuration: 0.3) {
                    let selectorStartPosition = self.frame.width/CGFloat(self.buttons.count) * CGFloat(buttonIndex)
                    self.selector.frame.origin.x = selectorStartPosition
                }
                btn.setTitleColor(selectorTextColor, for: .normal)
            }
        }
    }
}
